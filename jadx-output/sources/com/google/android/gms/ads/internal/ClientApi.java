package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzaa;
import com.google.android.gms.ads.internal.overlay.zzac;
import com.google.android.gms.ads.internal.overlay.zzs;
import com.google.android.gms.ads.internal.overlay.zzt;
import com.google.android.gms.ads.internal.overlay.zzu;
import com.google.android.gms.ads.internal.overlay.zzy;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzvt;
import defpackage.a01;
import defpackage.bt3;
import defpackage.c50;
import defpackage.d01;
import defpackage.f80;
import defpackage.fo0;
import defpackage.g01;
import defpackage.hg0;
import defpackage.hl0;
import defpackage.i01;
import defpackage.it3;
import defpackage.jk0;
import defpackage.jn0;
import defpackage.l01;
import defpackage.n01;
import defpackage.o01;
import defpackage.ok1;
import defpackage.os3;
import defpackage.pz0;
import defpackage.q01;
import defpackage.rk1;
import defpackage.s52;
import defpackage.sy0;
import defpackage.u52;
import defpackage.ut3;
import defpackage.x20;
import defpackage.x70;
import defpackage.xk0;
import defpackage.y20;
import defpackage.y40;
import defpackage.zq0;
import defpackage.zt3;
import java.util.HashMap;
import java.util.Objects;

/* loaded from: classes.dex */
public class ClientApi extends ut3 {
    @Override // defpackage.qt3
    public final it3 zza(x20 x20Var, zzvt zzvtVar, String str, hg0 hg0Var, int i) {
        Context context = (Context) y20.l0(x20Var);
        g01 g01VarM = sy0.b(context, hg0Var, i).m();
        Objects.requireNonNull(g01VarM);
        Objects.requireNonNull(context);
        g01VarM.a = context;
        Objects.requireNonNull(zzvtVar);
        g01VarM.c = zzvtVar;
        Objects.requireNonNull(str);
        g01VarM.b = str;
        c50.l2(g01VarM.a, Context.class);
        c50.l2(g01VarM.b, String.class);
        c50.l2(g01VarM.c, zzvt.class);
        pz0 pz0Var = g01VarM.d;
        Context context2 = g01VarM.a;
        String str2 = g01VarM.b;
        zzvt zzvtVar2 = g01VarM.c;
        i01 i01Var = new i01(pz0Var, context2, str2, zzvtVar2, null);
        return new u52(context2, zzvtVar2, str2, i01Var.h.get(), i01Var.f.get());
    }

    @Override // defpackage.qt3
    public final it3 zzb(x20 x20Var, zzvt zzvtVar, String str, hg0 hg0Var, int i) {
        Context context = (Context) y20.l0(x20Var);
        l01 l01VarR = sy0.b(context, hg0Var, i).r();
        Objects.requireNonNull(l01VarR);
        Objects.requireNonNull(context);
        l01VarR.a = context;
        Objects.requireNonNull(zzvtVar);
        l01VarR.c = zzvtVar;
        Objects.requireNonNull(str);
        l01VarR.b = str;
        c50.l2(l01VarR.a, Context.class);
        c50.l2(l01VarR.b, String.class);
        c50.l2(l01VarR.c, zzvt.class);
        return new o01(l01VarR.d, l01VarR.a, l01VarR.b, l01VarR.c, null).g.get();
    }

    @Override // defpackage.qt3
    public final it3 zzc(x20 x20Var, zzvt zzvtVar, String str, hg0 hg0Var, int i) {
        Context context = (Context) y20.l0(x20Var);
        a01 a01VarP = sy0.b(context, hg0Var, i).p();
        Objects.requireNonNull(a01VarP);
        Objects.requireNonNull(str);
        a01VarP.b = str;
        Objects.requireNonNull(context);
        a01VarP.a = context;
        c50.l2(context, Context.class);
        c50.l2(a01VarP.b, String.class);
        d01 d01Var = new d01(a01VarP.c, a01VarP.a, a01VarP.b, null);
        return i >= ((Integer) os3.j.f.a(y40.Z2)).intValue() ? d01Var.i.get() : d01Var.f.get();
    }

    @Override // defpackage.qt3
    public final zt3 zzc(x20 x20Var) {
        return null;
    }

    @Override // defpackage.qt3
    public final hl0 zzd(x20 x20Var) {
        return null;
    }

    @Override // defpackage.qt3
    public final bt3 zza(x20 x20Var, String str, hg0 hg0Var, int i) {
        Context context = (Context) y20.l0(x20Var);
        return new s52(sy0.b(context, hg0Var, i), context, str);
    }

    @Override // defpackage.qt3
    public final xk0 zzb(x20 x20Var) {
        Activity activity = (Activity) y20.l0(x20Var);
        AdOverlayInfoParcel adOverlayInfoParcelZzd = AdOverlayInfoParcel.zzd(activity.getIntent());
        if (adOverlayInfoParcelZzd == null) {
            return new zzs(activity);
        }
        int i = adOverlayInfoParcelZzd.zzduk;
        if (i == 1) {
            return new zzt(activity);
        }
        if (i == 2) {
            return new zzaa(activity);
        }
        if (i == 3) {
            return new zzac(activity);
        }
        if (i == 4) {
            return new zzu(activity, adOverlayInfoParcelZzd);
        }
        if (i != 5) {
            return new zzs(activity);
        }
        return new zzy(activity);
    }

    @Override // defpackage.qt3
    public final jk0 zzc(x20 x20Var, hg0 hg0Var, int i) {
        return sy0.b((Context) y20.l0(x20Var), hg0Var, i).x();
    }

    @Override // defpackage.qt3
    public final x70 zza(x20 x20Var, x20 x20Var2) {
        return new rk1((FrameLayout) y20.l0(x20Var), (FrameLayout) y20.l0(x20Var2));
    }

    @Override // defpackage.qt3
    public final jn0 zza(x20 x20Var, hg0 hg0Var, int i) {
        Context context = (Context) y20.l0(x20Var);
        n01 n01VarU = sy0.b(context, hg0Var, i).u();
        Objects.requireNonNull(n01VarU);
        Objects.requireNonNull(context);
        n01VarU.a = context;
        c50.l2(context, Context.class);
        return new q01(n01VarU.c, n01VarU.a, n01VarU.b, null).f.get();
    }

    @Override // defpackage.qt3
    public final fo0 zzb(x20 x20Var, String str, hg0 hg0Var, int i) {
        Context context = (Context) y20.l0(x20Var);
        n01 n01VarU = sy0.b(context, hg0Var, i).u();
        Objects.requireNonNull(n01VarU);
        Objects.requireNonNull(context);
        n01VarU.a = context;
        n01VarU.b = str;
        c50.l2(context, Context.class);
        return new q01(n01VarU.c, n01VarU.a, n01VarU.b, null).h.get();
    }

    @Override // defpackage.qt3
    public final zt3 zza(x20 x20Var, int i) {
        return sy0.z((Context) y20.l0(x20Var), i).k();
    }

    @Override // defpackage.qt3
    public final it3 zza(x20 x20Var, zzvt zzvtVar, String str, int i) {
        return new zzl((Context) y20.l0(x20Var), zzvtVar, str, new zzbar(204890000, i, true, false, false));
    }

    @Override // defpackage.qt3
    public final zq0 zzb(x20 x20Var, hg0 hg0Var, int i) {
        return sy0.b((Context) y20.l0(x20Var), hg0Var, i).w();
    }

    @Override // defpackage.qt3
    public final f80 zza(x20 x20Var, x20 x20Var2, x20 x20Var3) {
        return new ok1((View) y20.l0(x20Var), (HashMap) y20.l0(x20Var2), (HashMap) y20.l0(x20Var3));
    }
}
