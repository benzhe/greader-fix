package defpackage;

import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import defpackage.i47;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.TreeMap;

/* loaded from: classes2.dex */
public final class x47 {
    public static final boolean d = Boolean.parseBoolean(System.getProperty("io.grpc.Status.failOnEqualsForTest", "false"));
    public static final List<x47> e;
    public static final x47 f;
    public static final x47 g;
    public static final x47 h;
    public static final x47 i;
    public static final x47 j;
    public static final x47 k;
    public static final x47 l;
    public static final x47 m;
    public static final x47 n;
    public static final i47.f<x47> o;
    public static final i47.i<String> p;
    public static final i47.f<String> q;
    public final b a;
    public final String b;
    public final Throwable c;

    public enum b {
        OK(0),
        CANCELLED(1),
        UNKNOWN(2),
        INVALID_ARGUMENT(3),
        DEADLINE_EXCEEDED(4),
        NOT_FOUND(5),
        ALREADY_EXISTS(6),
        PERMISSION_DENIED(7),
        RESOURCE_EXHAUSTED(8),
        FAILED_PRECONDITION(9),
        ABORTED(10),
        OUT_OF_RANGE(11),
        UNIMPLEMENTED(12),
        INTERNAL(13),
        UNAVAILABLE(14),
        DATA_LOSS(15),
        UNAUTHENTICATED(16);

        public final int e;
        public final byte[] f;

        b(int i) {
            this.e = i;
            this.f = Integer.toString(i).getBytes(kd5.a);
        }

        public x47 i() {
            return x47.e.get(this.e);
        }
    }

    public static final class c implements i47.i<x47> {
        public c(a aVar) {
        }

        @Override // i47.i
        public byte[] a(x47 x47Var) {
            return x47Var.a.f;
        }

        @Override // i47.i
        public x47 b(byte[] bArr) {
            int i;
            char c = 1;
            if (bArr.length == 1 && bArr[0] == 48) {
                return x47.f;
            }
            int length = bArr.length;
            if (length != 1) {
                i = (length == 2 && bArr[0] >= 48 && bArr[0] <= 57) ? 0 + ((bArr[0] - 48) * 10) : 0;
                x47 x47Var = x47.h;
                StringBuilder sbZ = jo.z("Unknown code ");
                sbZ.append(new String(bArr, kd5.a));
                return x47Var.h(sbZ.toString());
            }
            c = 0;
            if (bArr[c] >= 48 && bArr[c] <= 57) {
                int i2 = (bArr[c] - 48) + i;
                List<x47> list = x47.e;
                if (i2 < list.size()) {
                    return list.get(i2);
                }
            }
            x47 x47Var2 = x47.h;
            StringBuilder sbZ2 = jo.z("Unknown code ");
            sbZ2.append(new String(bArr, kd5.a));
            return x47Var2.h(sbZ2.toString());
        }
    }

    public static final class d implements i47.i<String> {
        public static final byte[] a = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70};

        public d(a aVar) {
        }

        public static boolean c(byte b) {
            return b < 32 || b >= 126 || b == 37;
        }

        @Override // i47.i
        public byte[] a(String str) {
            byte[] bytes = str.getBytes(kd5.b);
            int i = 0;
            while (i < bytes.length) {
                if (c(bytes[i])) {
                    byte[] bArr = new byte[((bytes.length - i) * 3) + i];
                    if (i != 0) {
                        System.arraycopy(bytes, 0, bArr, 0, i);
                    }
                    int i2 = i;
                    while (i < bytes.length) {
                        byte b = bytes[i];
                        if (c(b)) {
                            bArr[i2] = 37;
                            byte[] bArr2 = a;
                            bArr[i2 + 1] = bArr2[(b >> 4) & 15];
                            bArr[i2 + 2] = bArr2[b & 15];
                            i2 += 3;
                        } else {
                            bArr[i2] = b;
                            i2++;
                        }
                        i++;
                    }
                    byte[] bArr3 = new byte[i2];
                    System.arraycopy(bArr, 0, bArr3, 0, i2);
                    return bArr3;
                }
                i++;
            }
            return bytes;
        }

        @Override // i47.i
        public String b(byte[] bArr) {
            for (int i = 0; i < bArr.length; i++) {
                byte b = bArr[i];
                if (b < 32 || b >= 126 || (b == 37 && i + 2 < bArr.length)) {
                    ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bArr.length);
                    int i2 = 0;
                    while (i2 < bArr.length) {
                        if (bArr[i2] == 37 && i2 + 2 < bArr.length) {
                            try {
                                byteBufferAllocate.put((byte) Integer.parseInt(new String(bArr, i2 + 1, 2, kd5.a), 16));
                                i2 += 3;
                            } catch (NumberFormatException unused) {
                            }
                        }
                        byteBufferAllocate.put(bArr[i2]);
                        i2++;
                    }
                    return new String(byteBufferAllocate.array(), 0, byteBufferAllocate.position(), kd5.b);
                }
            }
            return new String(bArr, 0);
        }
    }

    static {
        TreeMap treeMap = new TreeMap();
        b[] bVarArrValues = b.values();
        for (int i2 = 0; i2 < 17; i2++) {
            b bVar = bVarArrValues[i2];
            x47 x47Var = (x47) treeMap.put(Integer.valueOf(bVar.e), new x47(bVar, null, null));
            if (x47Var != null) {
                StringBuilder sbZ = jo.z("Code value duplication between ");
                sbZ.append(x47Var.a.name());
                sbZ.append(" & ");
                sbZ.append(bVar.name());
                throw new IllegalStateException(sbZ.toString());
            }
        }
        e = Collections.unmodifiableList(new ArrayList(treeMap.values()));
        f = b.OK.i();
        g = b.CANCELLED.i();
        h = b.UNKNOWN.i();
        b.INVALID_ARGUMENT.i();
        i = b.DEADLINE_EXCEEDED.i();
        b.NOT_FOUND.i();
        b.ALREADY_EXISTS.i();
        j = b.PERMISSION_DENIED.i();
        k = b.UNAUTHENTICATED.i();
        l = b.RESOURCE_EXHAUSTED.i();
        b.FAILED_PRECONDITION.i();
        b.ABORTED.i();
        b.OUT_OF_RANGE.i();
        b.UNIMPLEMENTED.i();
        m = b.INTERNAL.i();
        n = b.UNAVAILABLE.i();
        b.DATA_LOSS.i();
        o = i47.f.b("grpc-status", false, new c(null));
        d dVar = new d(null);
        p = dVar;
        q = i47.f.b("grpc-message", false, dVar);
    }

    public x47(b bVar, String str, Throwable th) {
        c50.A(bVar, "code");
        this.a = bVar;
        this.b = str;
        this.c = th;
    }

    public static String c(x47 x47Var) {
        if (x47Var.b == null) {
            return x47Var.a.toString();
        }
        return x47Var.a + ": " + x47Var.b;
    }

    public static x47 d(int i2) {
        if (i2 >= 0) {
            List<x47> list = e;
            if (i2 <= list.size()) {
                return list.get(i2);
            }
        }
        return h.h("Unknown code " + i2);
    }

    public static x47 e(Throwable th) {
        c50.A(th, "t");
        for (Throwable cause = th; cause != null; cause = cause.getCause()) {
            if (cause instanceof y47) {
                return ((y47) cause).e;
            }
            if (cause instanceof z47) {
                return ((z47) cause).e;
            }
        }
        return h.g(th);
    }

    public z47 a() {
        return new z47(this, null);
    }

    public x47 b(String str) {
        return str == null ? this : this.b == null ? new x47(this.a, str, this.c) : new x47(this.a, jo.t(new StringBuilder(), this.b, "\n", str), this.c);
    }

    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    public boolean f() {
        return b.OK == this.a;
    }

    public x47 g(Throwable th) {
        return c50.T(this.c, th) ? this : new x47(this.a, this.b, th);
    }

    public x47 h(String str) {
        return c50.T(this.b, str) ? this : new x47(this.a, str, this.c);
    }

    public int hashCode() {
        return super.hashCode();
    }

    public String toString() {
        nd5 nd5VarK0 = c50.K0(this);
        nd5VarK0.d("code", this.a.name());
        nd5VarK0.d(NSRSS20.DESCR, this.b);
        Throwable th = this.c;
        Object string = th;
        if (th != null) {
            Object obj = rd5.a;
            StringWriter stringWriter = new StringWriter();
            th.printStackTrace(new PrintWriter(stringWriter));
            string = stringWriter.toString();
        }
        nd5VarK0.d("cause", string);
        return nd5VarK0.toString();
    }
}
