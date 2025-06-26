package defpackage;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.zza;
import com.google.android.gms.internal.ads.zzbos;
import com.google.android.gms.internal.ads.zzvq;
import com.google.android.gms.internal.ads.zzvt;
import java.io.IOException;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class l02 implements sz1<j41, zl2, g12> {
    public final Context a;
    public final g51 b;
    public final Executor c;

    public l02(Context context, g51 g51Var, Executor executor) {
        this.a = context;
        this.b = g51Var;
        this.c = executor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.sz1
    public final j41 a(hl2 hl2Var, final sk2 sk2Var, mz1 mz1Var) throws pl2, z22 {
        pl2 pl2Var;
        final View view;
        if (((Boolean) os3.j.f.a(y40.y4)).booleanValue() && sk2Var.b0) {
            zl2 zl2Var = (zl2) mz1Var.b;
            Objects.requireNonNull(zl2Var);
            try {
                og0 og0VarF6 = zl2Var.a.F6();
                if (og0VarF6 == null) {
                    is0.zzex("getInterscrollerAd should not be null after loadInterscrollerAd loaded ad.");
                    throw new pl2(new Exception("getInterscrollerAd should not be null after loadInterscrollerAd loaded ad."));
                }
                try {
                    view = (View) y20.l0(og0VarF6.H());
                    boolean zShouldDelegateInterscrollerEffect = og0VarF6.shouldDelegateInterscrollerEffect();
                    if (view == null) {
                        throw new pl2(new Exception("BannerAdapterWrapper interscrollerView should not be null"));
                    }
                    if (zShouldDelegateInterscrollerEffect) {
                        try {
                            view = (View) ((su2) vt2.m(vt2.j(null), new cv2(this, view, sk2Var) { // from class: n02
                                public final l02 a;
                                public final View b;
                                public final sk2 c;

                                {
                                    this.a = this;
                                    this.b = view;
                                    this.c = sk2Var;
                                }

                                @Override // defpackage.cv2
                                public final aw2 a(Object obj) {
                                    l02 l02Var = this.a;
                                    return vt2.j(zzbos.a(l02Var.a, this.b, this.c));
                                }
                            }, ms0.e)).get();
                        } catch (InterruptedException | ExecutionException e) {
                            throw new pl2(e);
                        }
                    }
                } catch (RemoteException e2) {
                    throw new pl2(e2);
                }
            } finally {
            }
        } else {
            zl2 zl2Var2 = (zl2) mz1Var.b;
            Objects.requireNonNull(zl2Var2);
            try {
                view = (View) y20.l0(zl2Var2.a.H());
            } finally {
            }
        }
        g51 g51Var = this.b;
        v61 v61Var = new v61(hl2Var, sk2Var, mz1Var.a);
        final zl2 zl2Var3 = (zl2) mz1Var.b;
        zl2Var3.getClass();
        m41 m41VarB = g51Var.b(v61Var, new q41(view, null, new g61(zl2Var3) { // from class: o02
            public final zl2 a;

            {
                this.a = zl2Var3;
            }

            @Override // defpackage.g61
            public final su3 getVideoController() throws pl2 {
                zl2 zl2Var4 = this.a;
                Objects.requireNonNull(zl2Var4);
                try {
                    return zl2Var4.a.getVideoController();
                } catch (Throwable th) {
                    throw new pl2(th);
                }
            }
        }, sk2Var.t.get(0)));
        ((e01) m41VarB).T0.get().G0(view);
        m41VarB.a().F0(new e21((zl2) mz1Var.b), this.c);
        g12 g12Var = (g12) mz1Var.c;
        n42 n42VarF = m41VarB.f();
        synchronized (g12Var) {
            g12Var.e = n42VarF;
        }
        return m41VarB.h();
    }

    @Override // defpackage.sz1
    public final void b(hl2 hl2Var, sk2 sk2Var, mz1<zl2, g12> mz1Var) throws pl2, IOException {
        zzvt zzvtVar;
        pl2 pl2Var;
        zzvt zzvtVar2 = hl2Var.a.a.e;
        if (zzvtVar2.r) {
            zzvtVar = new zzvt(this.a, zza.zzb(zzvtVar2.i, zzvtVar2.f));
        } else {
            zzvtVar = (((Boolean) os3.j.f.a(y40.y4)).booleanValue() && sk2Var.b0) ? new zzvt(this.a, zza.zzc(zzvtVar2.i, zzvtVar2.f)) : c50.V2(this.a, sk2Var.t);
        }
        zzvt zzvtVar3 = zzvtVar;
        if (((Boolean) os3.j.f.a(y40.y4)).booleanValue() && sk2Var.b0) {
            zl2 zl2Var = mz1Var.b;
            Context context = this.a;
            zzvq zzvqVar = hl2Var.a.a.d;
            String string = sk2Var.u.toString();
            String strZza = zzbh.zza(sk2Var.r);
            ng0 ng0Var = (ng0) mz1Var.c;
            Objects.requireNonNull(zl2Var);
            try {
                zl2Var.a.w2(new y20(context), zzvtVar3, zzvqVar, string, strZza, ng0Var);
                return;
            } finally {
            }
        }
        zl2 zl2Var2 = mz1Var.b;
        Context context2 = this.a;
        zzvq zzvqVar2 = hl2Var.a.a.d;
        String string2 = sk2Var.u.toString();
        String strZza2 = zzbh.zza(sk2Var.r);
        ng0 ng0Var2 = (ng0) mz1Var.c;
        Objects.requireNonNull(zl2Var2);
        try {
            zl2Var2.a.s3(new y20(context2), zzvtVar3, zzvqVar2, string2, strZza2, ng0Var2);
        } finally {
        }
    }
}
