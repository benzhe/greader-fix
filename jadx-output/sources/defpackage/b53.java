package defpackage;

import defpackage.a53;
import defpackage.b53;
import defpackage.b63;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public abstract class b53<MessageType extends b53<MessageType, BuilderType>, BuilderType extends a53<MessageType, BuilderType>> implements e83 {
    public int zziop = 0;

    public static <T> void a(Iterable<T> iterable, List<? super T> list) {
        Charset charset = u63.a;
        Objects.requireNonNull(iterable);
        if (iterable instanceof l73) {
            List<?> listA0 = ((l73) iterable).a0();
            l73 l73Var = (l73) list;
            int size = list.size();
            for (Object obj : listA0) {
                if (obj == null) {
                    int size2 = l73Var.size() - size;
                    StringBuilder sb = new StringBuilder(37);
                    sb.append("Element at index ");
                    sb.append(size2);
                    sb.append(" is null.");
                    String string = sb.toString();
                    int size3 = l73Var.size();
                    while (true) {
                        size3--;
                        if (size3 < size) {
                            throw new NullPointerException(string);
                        }
                        l73Var.remove(size3);
                    }
                } else if (obj instanceof k53) {
                    l73Var.Z((k53) obj);
                } else {
                    l73Var.add((String) obj);
                }
            }
            return;
        }
        if (iterable instanceof n83) {
            list.addAll((Collection) iterable);
            return;
        }
        if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
            ((ArrayList) list).ensureCapacity(((Collection) iterable).size() + list.size());
        }
        int size4 = list.size();
        for (T t : iterable) {
            if (t == null) {
                int size5 = list.size() - size4;
                StringBuilder sb2 = new StringBuilder(37);
                sb2.append("Element at index ");
                sb2.append(size5);
                sb2.append(" is null.");
                String string2 = sb2.toString();
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

    @Override // defpackage.e83
    public final byte[] b() {
        try {
            s63 s63Var = (s63) this;
            int iG = s63Var.g();
            byte[] bArr = new byte[iG];
            Logger logger = b63.b;
            b63.b bVar = new b63.b(bArr, iG);
            s63Var.h(bVar);
            if (bVar.s() == 0) {
                return bArr;
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sbY = jo.y(name.length() + 62 + 10, "Serializing ", name, " to a ", "byte array");
            sbY.append(" threw an IOException (should never happen).");
            throw new RuntimeException(sbY.toString(), e);
        }
    }

    @Override // defpackage.e83
    public final k53 f() {
        try {
            s63 s63Var = (s63) this;
            int iG = s63Var.g();
            k53 k53Var = k53.f;
            byte[] bArr = new byte[iG];
            Logger logger = b63.b;
            b63.b bVar = new b63.b(bArr, iG);
            s63Var.h(bVar);
            if (bVar.s() == 0) {
                return new t53(bArr);
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sbY = jo.y(name.length() + 62 + 10, "Serializing ", name, " to a ", "ByteString");
            sbY.append(" threw an IOException (should never happen).");
            throw new RuntimeException(sbY.toString(), e);
        }
    }

    public int i() {
        throw new UnsupportedOperationException();
    }

    public void j(int i) {
        throw new UnsupportedOperationException();
    }
}
