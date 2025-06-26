package defpackage;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzvh;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class g21 implements ca1, ra1, va1, ob1, er3 {
    public final Context e;
    public final Executor f;
    public final ScheduledExecutorService g;
    public final hl2 h;
    public final sk2 i;
    public final hq2 j;
    public final rl2 k;
    public final d23 l;
    public final b60 m;
    public final c60 n;
    public final WeakReference<View> o;
    public boolean p;
    public boolean q;

    public g21(Context context, Executor executor, ScheduledExecutorService scheduledExecutorService, hl2 hl2Var, sk2 sk2Var, hq2 hq2Var, rl2 rl2Var, View view, d23 d23Var, b60 b60Var, c60 c60Var) {
        this.e = context;
        this.f = executor;
        this.g = scheduledExecutorService;
        this.h = hl2Var;
        this.i = sk2Var;
        this.j = hq2Var;
        this.k = rl2Var;
        this.l = d23Var;
        this.o = new WeakReference<>(view);
        this.m = b60Var;
        this.n = c60Var;
    }

    @Override // defpackage.ca1
    public final void O(gn0 gn0Var, String str, String str2) {
        String str3;
        rl2 rl2Var = this.k;
        hq2 hq2Var = this.j;
        sk2 sk2Var = this.i;
        List<String> list = sk2Var.h;
        Objects.requireNonNull(hq2Var);
        ArrayList arrayList = new ArrayList();
        long jA = hq2Var.g.a();
        try {
            String type = gn0Var.getType();
            String string = Integer.toString(gn0Var.getAmount());
            gl2 gl2Var = hq2Var.f;
            String str4 = "";
            if (gl2Var == null) {
                str3 = "";
            } else {
                str3 = gl2Var.a;
                if (!TextUtils.isEmpty(str3) && ds0.a()) {
                    str3 = "fakeForAdDebugLog";
                }
            }
            gl2 gl2Var2 = hq2Var.f;
            if (gl2Var2 != null) {
                str4 = gl2Var2.b;
                if (!TextUtils.isEmpty(str4) && ds0.a()) {
                    str4 = "fakeForAdDebugLog";
                }
            }
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(c50.A3(hq2.c(hq2.c(hq2.c(hq2.c(hq2.c(hq2.c(it.next(), "@gw_rwd_userid@", Uri.encode(str3)), "@gw_rwd_custom_data@", Uri.encode(str4)), "@gw_tmstmp@", Long.toString(jA)), "@gw_rwd_itm@", Uri.encode(type)), "@gw_rwd_amt@", string), "@gw_sdkver@", hq2Var.b), hq2Var.e, sk2Var.Q));
            }
        } catch (RemoteException e) {
            is0.zzc("Unable to determine award type and amount.", e);
        }
        rl2Var.c(arrayList);
    }

    @Override // defpackage.ra1
    public final void d(zzvh zzvhVar) {
        if (((Boolean) os3.j.f.a(y40.a1)).booleanValue()) {
            int i = zzvhVar.e;
            List<String> list = this.i.n;
            ArrayList arrayList = new ArrayList();
            for (String str : list) {
                StringBuilder sb = new StringBuilder(23);
                sb.append(2);
                sb.append(".");
                sb.append(i);
                arrayList.add(hq2.c(str, "@gw_mpe@", sb.toString()));
            }
            this.k.c(this.j.a(this.h, this.i, arrayList));
        }
    }

    @Override // defpackage.er3
    public final void onAdClicked() {
        if (!(((Boolean) os3.j.f.a(y40.g0)).booleanValue() && this.h.b.b.g) && o60.a.a().booleanValue()) {
            c60 c60Var = this.n;
            Context context = this.e;
            b60 b60Var = this.m;
            nv2 nv2VarX = nv2.A(c60Var.b(context, b60Var.a, b60Var.b)).x(((Long) os3.j.f.a(y40.E0)).longValue(), TimeUnit.MILLISECONDS, this.g);
            nv2VarX.i(new sv2(nv2VarX, new f21(this)), this.f);
            return;
        }
        rl2 rl2Var = this.k;
        hq2 hq2Var = this.j;
        hl2 hl2Var = this.h;
        sk2 sk2Var = this.i;
        List<String> listA = hq2Var.a(hl2Var, sk2Var, sk2Var.c);
        zzr.zzkv();
        rl2Var.a(listA, zzj.zzbd(this.e) ? 2 : 1);
    }

    @Override // defpackage.ca1
    public final void onAdClosed() {
    }

    @Override // defpackage.va1
    public final synchronized void onAdImpression() {
        if (!this.q) {
            String strZza = ((Boolean) os3.j.f.a(y40.N1)).booleanValue() ? this.l.b.zza(this.e, this.o.get(), (Activity) null) : null;
            if (!(((Boolean) os3.j.f.a(y40.g0)).booleanValue() && this.h.b.b.g) && o60.b.a().booleanValue()) {
                nv2 nv2VarX = nv2.A(this.n.a(this.e)).x(((Long) os3.j.f.a(y40.E0)).longValue(), TimeUnit.MILLISECONDS, this.g);
                nv2VarX.i(new sv2(nv2VarX, new j21(this, strZza)), this.f);
                this.q = true;
            }
            rl2 rl2Var = this.k;
            hq2 hq2Var = this.j;
            hl2 hl2Var = this.h;
            sk2 sk2Var = this.i;
            rl2Var.c(hq2Var.b(hl2Var, sk2Var, false, strZza, null, sk2Var.d));
            this.q = true;
        }
    }

    @Override // defpackage.ca1
    public final void onAdLeftApplication() {
    }

    @Override // defpackage.ob1
    public final synchronized void onAdLoaded() {
        if (this.p) {
            ArrayList arrayList = new ArrayList(this.i.d);
            arrayList.addAll(this.i.f);
            this.k.c(this.j.b(this.h, this.i, true, null, null, arrayList));
        } else {
            rl2 rl2Var = this.k;
            hq2 hq2Var = this.j;
            hl2 hl2Var = this.h;
            sk2 sk2Var = this.i;
            rl2Var.c(hq2Var.a(hl2Var, sk2Var, sk2Var.m));
            rl2 rl2Var2 = this.k;
            hq2 hq2Var2 = this.j;
            hl2 hl2Var2 = this.h;
            sk2 sk2Var2 = this.i;
            rl2Var2.c(hq2Var2.a(hl2Var2, sk2Var2, sk2Var2.f));
        }
        this.p = true;
    }

    @Override // defpackage.ca1
    public final void onAdOpened() {
    }

    @Override // defpackage.ca1
    public final void onRewardedVideoCompleted() {
        rl2 rl2Var = this.k;
        hq2 hq2Var = this.j;
        hl2 hl2Var = this.h;
        sk2 sk2Var = this.i;
        rl2Var.c(hq2Var.a(hl2Var, sk2Var, sk2Var.i));
    }

    @Override // defpackage.ca1
    public final void onRewardedVideoStarted() {
        rl2 rl2Var = this.k;
        hq2 hq2Var = this.j;
        hl2 hl2Var = this.h;
        sk2 sk2Var = this.i;
        rl2Var.c(hq2Var.a(hl2Var, sk2Var, sk2Var.g));
    }
}
