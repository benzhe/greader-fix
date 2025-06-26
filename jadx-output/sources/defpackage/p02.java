package defpackage;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.internal.ads.zzbos;
import java.util.concurrent.ExecutionException;

/* loaded from: classes.dex */
public final class p02 implements sz1<j41, vi0, g12> {
    public final Context a;
    public final g51 b;
    public View c;
    public og0 d;

    public p02(Context context, g51 g51Var) {
        this.a = context;
        this.b = g51Var;
    }

    @Override // defpackage.sz1
    public final j41 a(hl2 hl2Var, final sk2 sk2Var, final mz1 mz1Var) throws pl2, z22 {
        final View view;
        if (((Boolean) os3.j.f.a(y40.y4)).booleanValue() && sk2Var.b0) {
            try {
                view = (View) y20.l0(this.d.H());
                boolean zShouldDelegateInterscrollerEffect = this.d.shouldDelegateInterscrollerEffect();
                if (view == null) {
                    throw new pl2(new Exception("BannerRtbAdapterWrapper interscrollerView should not be null"));
                }
                if (zShouldDelegateInterscrollerEffect) {
                    try {
                        view = (View) ((su2) vt2.m(vt2.j(null), new cv2(this, view, sk2Var) { // from class: r02
                            public final p02 a;
                            public final View b;
                            public final sk2 c;

                            {
                                this.a = this;
                                this.b = view;
                                this.c = sk2Var;
                            }

                            @Override // defpackage.cv2
                            public final aw2 a(Object obj) {
                                p02 p02Var = this.a;
                                return vt2.j(zzbos.a(p02Var.a, this.b, this.c));
                            }
                        }, ms0.e)).get();
                    } catch (InterruptedException | ExecutionException e) {
                        throw new pl2(e);
                    }
                }
            } catch (RemoteException e2) {
                throw new pl2(e2);
            }
        } else {
            view = this.c;
        }
        m41 m41VarB = this.b.b(new v61(hl2Var, sk2Var, mz1Var.a), new q41(view, null, new g61(mz1Var) { // from class: s02
            public final mz1 a;

            {
                this.a = mz1Var;
            }

            @Override // defpackage.g61
            public final su3 getVideoController() throws pl2 {
                try {
                    return ((vi0) this.a.b).getVideoController();
                } catch (RemoteException e3) {
                    throw new pl2(e3);
                }
            }
        }, sk2Var.t.get(0)));
        ((e01) m41VarB).T0.get().G0(view);
        g12 g12Var = (g12) mz1Var.c;
        h42 h42VarG = m41VarB.g();
        synchronized (g12Var) {
            g12Var.e = h42VarG;
        }
        return m41VarB.h();
    }

    @Override // defpackage.sz1
    public final void b(hl2 hl2Var, sk2 sk2Var, mz1<vi0, g12> mz1Var) throws pl2 {
        try {
            mz1Var.b.z1(sk2Var.T);
            if (((Boolean) os3.j.f.a(y40.y4)).booleanValue() && sk2Var.b0) {
                mz1Var.b.x3(sk2Var.O, sk2Var.u.toString(), hl2Var.a.a.d, new y20(this.a), new t02(this, mz1Var, null), (ng0) mz1Var.c, hl2Var.a.a.e);
            } else {
                mz1Var.b.B2(sk2Var.O, sk2Var.u.toString(), hl2Var.a.a.d, new y20(this.a), new t02(this, mz1Var, null), (ng0) mz1Var.c, hl2Var.a.a.e);
            }
        } catch (RemoteException e) {
            throw new pl2(e);
        }
    }
}
