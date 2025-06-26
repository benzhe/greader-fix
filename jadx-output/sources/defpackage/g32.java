package defpackage;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;

/* loaded from: classes.dex */
public final class g32 implements sz1<dp1, vi0, g12> {
    public final Context a;
    public final gp1 b;

    public g32(Context context, gp1 gp1Var) {
        this.a = context;
        this.b = gp1Var;
    }

    @Override // defpackage.sz1
    public final dp1 a(hl2 hl2Var, sk2 sk2Var, mz1 mz1Var) throws pl2, z22 {
        q12 q12Var = new q12(sk2Var, (vi0) mz1Var.b, true);
        fp1 fp1VarE = this.b.e(new v61(hl2Var, sk2Var, mz1Var.a), new ep1(q12Var));
        q12Var.d = fp1VarE.d();
        ((g12) mz1Var.c).X6(fp1VarE.n());
        return fp1VarE.k();
    }

    @Override // defpackage.sz1
    public final void b(hl2 hl2Var, sk2 sk2Var, mz1<vi0, g12> mz1Var) throws pl2 {
        try {
            mz1Var.b.z1(sk2Var.T);
            if (hl2Var.a.a.o.a == 3) {
                mz1Var.b.C6(sk2Var.O, sk2Var.u.toString(), hl2Var.a.a.d, new y20(this.a), new i32(this, mz1Var), (ng0) mz1Var.c);
            } else {
                mz1Var.b.K5(sk2Var.O, sk2Var.u.toString(), hl2Var.a.a.d, new y20(this.a), new i32(this, mz1Var), (ng0) mz1Var.c);
            }
        } catch (RemoteException e) {
            zzd.zza("Remote exception loading a rewarded RTB ad", e);
        }
    }
}
