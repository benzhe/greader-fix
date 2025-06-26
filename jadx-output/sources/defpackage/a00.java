package defpackage;

import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import defpackage.zy;

/* loaded from: classes.dex */
public final class a00 extends yz<Boolean> {
    public final cz<?> b;

    public a00(cz<?> czVar, f45<Boolean> f45Var) {
        super(4, f45Var);
        this.b = czVar;
    }

    @Override // defpackage.iz
    public final /* bridge */ /* synthetic */ void c(ez ezVar, boolean z) {
    }

    @Override // defpackage.sz
    public final Feature[] f(zy.a<?> aVar) {
        if (aVar.k.get(this.b) == null) {
            return null;
        }
        throw null;
    }

    @Override // defpackage.sz
    public final boolean g(zy.a<?> aVar) {
        if (aVar.k.get(this.b) == null) {
            return false;
        }
        throw null;
    }

    @Override // defpackage.yz
    public final void h(zy.a<?> aVar) throws RemoteException {
        if (aVar.k.remove(this.b) != null) {
            throw null;
        }
        this.a.b(Boolean.FALSE);
    }
}
