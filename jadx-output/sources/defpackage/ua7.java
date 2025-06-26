package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
public final class ua7 {
    public static volatile yi6 a = yi6.a();

    public static final class a<T extends ak6> implements Object<T> {
        public static final ThreadLocal<Reference<byte[]>> c = new ThreadLocal<>();
        public final ik6<T> a;
        public final T b;

        public a(T t) {
            this.b = t;
            this.a = (ik6<T>) t.k();
        }

        public Object a(InputStream inputStream) throws IOException {
            byte[] bArr;
            if ((inputStream instanceof ta7) && ((ta7) inputStream).f == this.a) {
                try {
                    ak6 ak6Var = ((ta7) inputStream).e;
                    if (ak6Var != null) {
                        return ak6Var;
                    }
                    throw new IllegalStateException("message not available");
                } catch (IllegalStateException unused) {
                }
            }
            ri6 ri6VarF = null;
            try {
                if (inputStream instanceof b47) {
                    int iAvailable = inputStream.available();
                    if (iAvailable > 0 && iAvailable <= 4194304) {
                        ThreadLocal<Reference<byte[]>> threadLocal = c;
                        Reference<byte[]> reference = threadLocal.get();
                        if (reference == null || (bArr = reference.get()) == null || bArr.length < iAvailable) {
                            bArr = new byte[iAvailable];
                            threadLocal.set(new WeakReference(bArr));
                        }
                        int i = iAvailable;
                        while (i > 0) {
                            int i2 = inputStream.read(bArr, iAvailable - i, i);
                            if (i2 == -1) {
                                break;
                            }
                            i -= i2;
                        }
                        if (i != 0) {
                            throw new RuntimeException("size inaccurate: " + iAvailable + " != " + (iAvailable - i));
                        }
                        ri6VarF = ri6.g(bArr, 0, iAvailable, false);
                    } else if (iAvailable == 0) {
                        return this.b;
                    }
                }
                if (ri6VarF == null) {
                    ri6VarF = ri6.f(inputStream);
                }
                ri6VarF.c = Integer.MAX_VALUE;
                try {
                    T tB = this.a.b(ri6VarF, ua7.a);
                    try {
                        ri6VarF.a(0);
                        return tB;
                    } catch (kj6 e) {
                        e.e = tB;
                        throw e;
                    }
                } catch (kj6 e2) {
                    throw x47.m.h("Invalid protobuf byte sequence").g(e2).a();
                }
            } catch (IOException e3) {
                throw new RuntimeException(e3);
            }
        }

        public InputStream b(Object obj) {
            return new ta7((ak6) obj, this.a);
        }
    }
}
