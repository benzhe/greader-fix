package defpackage;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzavy;

/* loaded from: classes.dex */
public class l32 extends n42 {
    public cg1 n;

    public l32(x91 x91Var, qa1 qa1Var, db1 db1Var, nb1 nb1Var, ga1 ga1Var, ld1 ld1Var, ig1 ig1Var, wb1 wb1Var, cg1 cg1Var, dd1 dd1Var) {
        super(x91Var, qa1Var, db1Var, nb1Var, ld1Var, wb1Var, ig1Var, dd1Var, ga1Var);
        this.n = cg1Var;
    }

    @Override // defpackage.n42, defpackage.ng0
    public final void E5() {
        this.n.x0();
    }

    @Override // defpackage.n42, defpackage.ng0
    public final void Q4() throws RemoteException {
        this.n.D0(dg1.a);
    }

    @Override // defpackage.n42, defpackage.ng0
    public final void S(bo0 bo0Var) throws RemoteException {
        this.n.D0(new eg1(new zzavy(bo0Var.getType(), bo0Var.getAmount())));
    }

    @Override // defpackage.n42, defpackage.ng0
    public final void X() {
        this.n.D0(dg1.a);
    }

    @Override // defpackage.n42, defpackage.ng0
    public final void v1(zzavy zzavyVar) {
        this.n.D0(new eg1(zzavyVar));
    }
}
