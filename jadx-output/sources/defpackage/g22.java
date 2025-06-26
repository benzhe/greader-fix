package defpackage;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzbar;

/* loaded from: classes.dex */
public final class g22 implements sz1<kj1, vi0, g12> {
    public final Context a;
    public final ji1 b;
    public bh0 c;
    public final zzbar d;

    public g22(Context context, ji1 ji1Var, zzbar zzbarVar) {
        this.a = context;
        this.b = ji1Var;
        this.d = zzbarVar;
    }

    @Override // defpackage.sz1
    public final kj1 a(hl2 hl2Var, sk2 sk2Var, mz1 mz1Var) throws pl2, z22 {
        if (!hl2Var.a.a.g.contains(Integer.toString(6))) {
            throw new z22(dm2.INVALID_REQUEST, "Unified must be used for RTB.");
        }
        wj1 wj1VarS = wj1.s(this.c);
        if (!hl2Var.a.a.g.contains(Integer.toString(wj1VarS.k()))) {
            throw new z22(dm2.INTERNAL_ERROR, "No corresponding native ad listener");
        }
        xj1 xj1VarA = this.b.a(new v61(hl2Var, sk2Var, mz1Var.a), new jk1(wj1VarS), new am1(null, null, this.c));
        g12 g12Var = (g12) mz1Var.c;
        h42 h42VarG = xj1VarA.g();
        synchronized (g12Var) {
            g12Var.e = h42VarG;
        }
        return xj1VarA.h();
    }

    @Override // defpackage.sz1
    public final void b(hl2 hl2Var, sk2 sk2Var, mz1<vi0, g12> mz1Var) throws pl2 {
        try {
            mz1Var.b.z1(sk2Var.T);
            if (this.d.g < ((Integer) os3.j.f.a(y40.e1)).intValue()) {
                mz1Var.b.t0(sk2Var.O, sk2Var.u.toString(), hl2Var.a.a.d, new y20(this.a), new i22(this, mz1Var, null), (ng0) mz1Var.c);
            } else {
                mz1Var.b.S3(sk2Var.O, sk2Var.u.toString(), hl2Var.a.a.d, new y20(this.a), new i22(this, mz1Var, null), (ng0) mz1Var.c, hl2Var.a.a.i);
            }
        } catch (RemoteException e) {
            throw new pl2(e);
        }
    }
}
