package defpackage;

import android.content.Context;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class t12 implements sz1<qg1, vi0, g12> {
    public final Context a;
    public final oh1 b;

    public t12(Context context, oh1 oh1Var) {
        this.a = context;
        this.b = oh1Var;
    }

    @Override // defpackage.sz1
    public final qg1 a(hl2 hl2Var, sk2 sk2Var, mz1 mz1Var) throws pl2, z22 {
        q12 q12Var = new q12(sk2Var, (vi0) mz1Var.b, false);
        sg1 sg1VarA = this.b.a(new v61(hl2Var, sk2Var, mz1Var.a), new rg1(q12Var));
        q12Var.d = sg1VarA.d();
        ((g12) mz1Var.c).X6(sg1VarA.g());
        return sg1VarA.j();
    }

    @Override // defpackage.sz1
    public final void b(hl2 hl2Var, sk2 sk2Var, mz1<vi0, g12> mz1Var) throws pl2 {
        try {
            mz1Var.b.z1(sk2Var.T);
            mz1Var.b.e6(sk2Var.O, sk2Var.u.toString(), hl2Var.a.a.d, new y20(this.a), new v12(this, mz1Var), (ng0) mz1Var.c);
        } catch (RemoteException e) {
            throw new pl2(e);
        }
    }
}
