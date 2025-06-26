package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import defpackage.ak6;
import defpackage.ii6;
import defpackage.qi6;
import defpackage.ti6;
import ii6.a;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public abstract class ii6<MessageType extends ii6<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> implements ak6 {
    public int memoizedHashCode = 0;

    public static abstract class a<MessageType extends ii6<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> implements ak6.a {
    }

    public static <T> void a(Iterable<T> iterable, List<? super T> list) {
        Charset charset = jj6.a;
        Objects.requireNonNull(iterable);
        if (iterable instanceof pj6) {
            List<?> listS = ((pj6) iterable).S();
            pj6 pj6Var = (pj6) list;
            int size = list.size();
            for (Object obj : listS) {
                if (obj == null) {
                    StringBuilder sbZ = jo.z("Element at index ");
                    sbZ.append(pj6Var.size() - size);
                    sbZ.append(" is null.");
                    String string = sbZ.toString();
                    int size2 = pj6Var.size();
                    while (true) {
                        size2--;
                        if (size2 < size) {
                            throw new NullPointerException(string);
                        }
                        pj6Var.remove(size2);
                    }
                } else if (obj instanceof qi6) {
                    pj6Var.F((qi6) obj);
                } else {
                    pj6Var.add((String) obj);
                }
            }
            return;
        }
        if (iterable instanceof jk6) {
            list.addAll((Collection) iterable);
            return;
        }
        if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
            ((ArrayList) list).ensureCapacity(((Collection) iterable).size() + list.size());
        }
        int size3 = list.size();
        for (T t : iterable) {
            if (t == null) {
                StringBuilder sbZ2 = jo.z("Element at index ");
                sbZ2.append(list.size() - size3);
                sbZ2.append(" is null.");
                String string2 = sbZ2.toString();
                int size4 = list.size();
                while (true) {
                    size4--;
                    if (size4 < size3) {
                        throw new NullPointerException(string2);
                    }
                    list.remove(size4);
                }
            } else {
                list.add(t);
            }
        }
    }

    @Override // defpackage.ak6
    public byte[] b() {
        try {
            gj6 gj6Var = (gj6) this;
            int iH = gj6Var.h();
            byte[] bArr = new byte[iH];
            Logger logger = ti6.b;
            ti6.c cVar = new ti6.c(bArr, 0, iH);
            gj6Var.f(cVar);
            cVar.b();
            return bArr;
        } catch (IOException e) {
            throw new RuntimeException(n("byte array"), e);
        }
    }

    @Override // defpackage.ak6
    public void e(OutputStream outputStream) throws IOException {
        gj6 gj6Var = (gj6) this;
        int iH = gj6Var.h();
        Logger logger = ti6.b;
        if (iH > 4096) {
            iH = RecyclerView.a0.FLAG_APPEARED_IN_PRE_LAYOUT;
        }
        ti6.e eVar = new ti6.e(outputStream, iH);
        gj6Var.f(eVar);
        if (eVar.f > 0) {
            eVar.h0();
        }
    }

    @Override // defpackage.ak6
    public qi6 g() {
        try {
            gj6 gj6Var = (gj6) this;
            int iH = gj6Var.h();
            qi6 qi6Var = qi6.f;
            byte[] bArr = new byte[iH];
            Logger logger = ti6.b;
            ti6.c cVar = new ti6.c(bArr, 0, iH);
            gj6Var.f(cVar);
            cVar.b();
            return new qi6.h(bArr);
        } catch (IOException e) {
            throw new RuntimeException(n("ByteString"), e);
        }
    }

    public int l() {
        throw new UnsupportedOperationException();
    }

    public int m(qk6 qk6Var) {
        int iL = l();
        if (iL != -1) {
            return iL;
        }
        int iJ = qk6Var.j(this);
        o(iJ);
        return iJ;
    }

    public final String n(String str) {
        StringBuilder sbZ = jo.z("Serializing ");
        sbZ.append(getClass().getName());
        sbZ.append(" to a ");
        sbZ.append(str);
        sbZ.append(" threw an IOException (should never happen).");
        return sbZ.toString();
    }

    public void o(int i) {
        throw new UnsupportedOperationException();
    }
}
