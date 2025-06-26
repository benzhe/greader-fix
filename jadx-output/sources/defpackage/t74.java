package defpackage;

import defpackage.s74;
import defpackage.t74;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public abstract class t74<MessageType extends t74<MessageType, BuilderType>, BuilderType extends s74<MessageType, BuilderType>> implements da4 {
    public int zzb = 0;

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> void i(Iterable<T> iterable, List<? super T> list) {
        Charset charset = j94.a;
        Objects.requireNonNull(iterable);
        if (iterable instanceof p94) {
            List<?> listG = ((p94) iterable).g();
            p94 p94Var = (p94) list;
            int size = list.size();
            for (Object obj : listG) {
                if (obj == null) {
                    int size2 = p94Var.size();
                    StringBuilder sbW = jo.w(37, "Element at index ");
                    sbW.append(size2 - size);
                    sbW.append(" is null.");
                    String string = sbW.toString();
                    int size3 = p94Var.size();
                    while (true) {
                        size3--;
                        if (size3 < size) {
                            throw new NullPointerException(string);
                        }
                        p94Var.remove(size3);
                    }
                } else if (obj instanceof g84) {
                    p94Var.x((g84) obj);
                } else {
                    p94Var.add((String) obj);
                }
            }
            return;
        }
        if (iterable instanceof ja4) {
            list.addAll(iterable);
            return;
        }
        if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
            ((ArrayList) list).ensureCapacity(iterable.size() + list.size());
        }
        int size4 = list.size();
        for (T t : iterable) {
            if (t == null) {
                int size5 = list.size();
                StringBuilder sbW2 = jo.w(37, "Element at index ");
                sbW2.append(size5 - size4);
                sbW2.append(" is null.");
                String string2 = sbW2.toString();
                int size6 = list.size();
                while (true) {
                    size6--;
                    if (size6 < size4) {
                        throw new NullPointerException(string2);
                    }
                    list.remove(size6);
                }
            } else {
                list.add(t);
            }
        }
    }

    public final byte[] a() {
        try {
            c94 c94Var = (c94) this;
            int iE = c94Var.e();
            byte[] bArr = new byte[iE];
            Logger logger = l84.b;
            j84 j84Var = new j84(bArr, 0, iE);
            c94Var.o(j84Var);
            if (j84Var.u() == 0) {
                return bArr;
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(name.length() + 72);
            jo.J(sb, "Serializing ", name, " to a ", "byte array");
            sb.append(" threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e);
        }
    }

    @Override // defpackage.da4
    public final g84 d() {
        try {
            c94 c94Var = (c94) this;
            int iE = c94Var.e();
            g84 g84Var = g84.f;
            byte[] bArr = new byte[iE];
            Logger logger = l84.b;
            j84 j84Var = new j84(bArr, 0, bArr.length);
            c94Var.o(j84Var);
            if (j84Var.u() == 0) {
                return new e84(bArr);
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(name.length() + 72);
            jo.J(sb, "Serializing ", name, " to a ", "ByteString");
            sb.append(" threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e);
        }
    }

    public int g() {
        throw null;
    }

    public void h(int i) {
        throw null;
    }
}
