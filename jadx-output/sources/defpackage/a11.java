package defpackage;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzad;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzaat;
import com.google.android.gms.internal.ads.zzajm;
import com.google.android.gms.internal.ads.zzbar;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class a11 extends cu3 {
    public final Context e;
    public final zzbar f;
    public final nq1 g;
    public final lz1<zl2, f12> h;
    public final l52 i;
    public final mt1 j;
    public final cq0 k;
    public final pq1 l;
    public boolean m = false;

    public a11(Context context, zzbar zzbarVar, nq1 nq1Var, lz1<zl2, f12> lz1Var, l52 l52Var, mt1 mt1Var, cq0 cq0Var, pq1 pq1Var) {
        this.e = context;
        this.f = zzbarVar;
        this.g = nq1Var;
        this.h = lz1Var;
        this.i = l52Var;
        this.j = mt1Var;
        this.k = cq0Var;
        this.l = pq1Var;
    }

    @Override // defpackage.zt3
    public final void B6(String str) {
        this.i.b(str);
    }

    @Override // defpackage.zt3
    public final synchronized boolean D2() {
        return zzr.zzla().zzrh();
    }

    @Override // defpackage.zt3
    public final List<zzajm> E1() throws RemoteException {
        return this.j.d();
    }

    @Override // defpackage.zt3
    public final String E3() {
        return this.f.e;
    }

    @Override // defpackage.zt3
    public final void H0() {
        this.j.p = false;
    }

    @Override // defpackage.zt3
    public final void J3(String str, x20 x20Var) throws JSONException {
        String strZzbb;
        y40.a(this.e);
        if (((Boolean) os3.j.f.a(y40.g2)).booleanValue()) {
            zzr.zzkv();
            strZzbb = zzj.zzbb(this.e);
        } else {
            strZzbb = "";
        }
        if (!TextUtils.isEmpty(strZzbb)) {
            str = strZzbb;
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        boolean zBooleanValue = ((Boolean) os3.j.f.a(y40.d2)).booleanValue();
        o40<Boolean> o40Var = y40.y0;
        boolean zBooleanValue2 = zBooleanValue | ((Boolean) os3.j.f.a(o40Var)).booleanValue();
        Runnable runnable = null;
        if (((Boolean) os3.j.f.a(o40Var)).booleanValue()) {
            zBooleanValue2 = true;
            final Runnable runnable2 = (Runnable) y20.l0(x20Var);
            runnable = new Runnable(this, runnable2) { // from class: z01
                public final a11 e;
                public final Runnable f;

                {
                    this.e = this;
                    this.f = runnable2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    ms0.e.execute(new Runnable(this.e, this.f) { // from class: c11
                        public final a11 e;
                        public final Runnable f;

                        {
                            this.e = a11Var;
                            this.f = runnable;
                        }

                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // java.lang.Runnable
                        public final void run() {
                            pl2 pl2Var;
                            a11 a11Var = this.e;
                            Runnable runnable3 = this.f;
                            Objects.requireNonNull(a11Var);
                            bi.f("Adapters must be initialized on the main thread.");
                            Map<String, cg0> map = zzr.zzkz().f().zzzg().c;
                            if (map == null || map.isEmpty()) {
                                return;
                            }
                            if (runnable3 != null) {
                                try {
                                    runnable3.run();
                                } catch (Throwable th) {
                                    is0.zzd("Could not initialize rewarded ads.", th);
                                    return;
                                }
                            }
                            if (a11Var.g.b.get() != null) {
                                HashMap map2 = new HashMap();
                                Iterator<cg0> it = map.values().iterator();
                                while (it.hasNext()) {
                                    for (dg0 dg0Var : it.next().a) {
                                        String str2 = dg0Var.g;
                                        for (String str3 : dg0Var.a) {
                                            if (!map2.containsKey(str3)) {
                                                map2.put(str3, new ArrayList());
                                            }
                                            if (str2 != null) {
                                                ((Collection) map2.get(str3)).add(str2);
                                            }
                                        }
                                    }
                                }
                                JSONObject jSONObject = new JSONObject();
                                for (Map.Entry entry : map2.entrySet()) {
                                    String str4 = (String) entry.getKey();
                                    try {
                                        mz1<zl2, ListenerT> mz1VarA = a11Var.h.a(str4, jSONObject);
                                        if (mz1VarA != 0) {
                                            zl2 zl2Var = (zl2) mz1VarA.b;
                                            if (!zl2Var.a()) {
                                                try {
                                                    if (zl2Var.a.v4()) {
                                                        try {
                                                            zl2Var.a.R6(new y20(a11Var.e), (f12) mz1VarA.c, (List) entry.getValue());
                                                            String strValueOf = String.valueOf(str4);
                                                            is0.zzdz(strValueOf.length() != 0 ? "Initialized rewarded video mediation adapter ".concat(strValueOf) : new String("Initialized rewarded video mediation adapter "));
                                                        } finally {
                                                        }
                                                    }
                                                } finally {
                                                }
                                            }
                                        }
                                    } catch (pl2 e) {
                                        StringBuilder sb = new StringBuilder(String.valueOf(str4).length() + 56);
                                        sb.append("Failed to initialize rewarded video mediation adapter \"");
                                        sb.append(str4);
                                        sb.append("\"");
                                        is0.zzd(sb.toString(), e);
                                    }
                                }
                            }
                        }
                    });
                }
            };
        }
        if (zBooleanValue2) {
            zzr.zzld().zza(this.e, this.f, str, runnable);
        }
    }

    @Override // defpackage.zt3
    public final synchronized void L1(boolean z) {
        zzr.zzla().setAppMuted(z);
    }

    @Override // defpackage.zt3
    public final void L4(hg0 hg0Var) throws RemoteException {
        this.g.b.compareAndSet(null, hg0Var);
    }

    @Override // defpackage.zt3
    public final void N2(zzaat zzaatVar) throws RemoteException {
        cq0 cq0Var = this.k;
        Context context = this.e;
        Objects.requireNonNull(cq0Var);
        xp0.a(context).b().a.a(-1);
        if (((Boolean) os3.j.f.a(y40.f0)).booleanValue() && cq0Var.h(context) && cq0.i(context)) {
            synchronized (cq0Var.l) {
            }
        }
    }

    @Override // defpackage.zt3
    public final synchronized void Z5(String str) {
        y40.a(this.e);
        if (!TextUtils.isEmpty(str)) {
            if (((Boolean) os3.j.f.a(y40.d2)).booleanValue()) {
                zzr.zzld().zza(this.e, this.f, str, (Runnable) null);
            }
        }
    }

    @Override // defpackage.zt3
    public final void e4(final tc0 tc0Var) throws RemoteException {
        final mt1 mt1Var = this.j;
        xs0<Boolean> xs0Var = mt1Var.e;
        xs0Var.e.i(new Runnable(mt1Var, tc0Var) { // from class: pt1
            public final mt1 e;
            public final tc0 f;

            {
                this.e = mt1Var;
                this.f = tc0Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                mt1 mt1Var2 = this.e;
                tc0 tc0Var2 = this.f;
                Objects.requireNonNull(mt1Var2);
                try {
                    tc0Var2.O5(mt1Var2.d());
                } catch (RemoteException e) {
                    is0.zzc("", e);
                }
            }
        }, mt1Var.j);
    }

    @Override // defpackage.zt3
    public final synchronized void k5(float f) {
        zzr.zzla().setAppVolume(f);
    }

    @Override // defpackage.zt3
    public final synchronized void m0() {
        if (this.m) {
            is0.zzez("Mobile ads is initialized already.");
            return;
        }
        y40.a(this.e);
        zzr.zzkz().d(this.e, this.f);
        zzr.zzlb().b(this.e);
        this.m = true;
        this.j.c();
        if (((Boolean) os3.j.f.a(y40.X0)).booleanValue()) {
            final l52 l52Var = this.i;
            Objects.requireNonNull(l52Var);
            zzr.zzkz().f().zzb(new Runnable(l52Var) { // from class: k52
                public final l52 e;

                {
                    this.e = l52Var;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    final l52 l52Var2 = this.e;
                    l52Var2.c.execute(new Runnable(l52Var2) { // from class: m52
                        public final l52 e;

                        {
                            this.e = l52Var2;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.e.a();
                        }
                    });
                }
            });
            l52Var.c.execute(new Runnable(l52Var) { // from class: n52
                public final l52 e;

                {
                    this.e = l52Var;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.e.a();
                }
            });
        }
        if (((Boolean) os3.j.f.a(y40.e2)).booleanValue()) {
            final pq1 pq1Var = this.l;
            Objects.requireNonNull(pq1Var);
            zzr.zzkz().f().zzb(new Runnable(pq1Var) { // from class: oq1
                public final pq1 e;

                {
                    this.e = pq1Var;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    final pq1 pq1Var2 = this.e;
                    pq1Var2.c.execute(new Runnable(pq1Var2) { // from class: qq1
                        public final pq1 e;

                        {
                            this.e = pq1Var2;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.e.a();
                        }
                    });
                }
            });
            pq1Var.c.execute(new Runnable(pq1Var) { // from class: rq1
                public final pq1 e;

                {
                    this.e = pq1Var;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.e.a();
                }
            });
        }
    }

    @Override // defpackage.zt3
    public final void r0(x20 x20Var, String str) {
        if (x20Var == null) {
            is0.zzex("Wrapped context is null. Failed to open debug menu.");
            return;
        }
        Context context = (Context) y20.l0(x20Var);
        if (context == null) {
            is0.zzex("Context is null. Failed to open debug menu.");
            return;
        }
        zzad zzadVar = new zzad(context);
        zzadVar.setAdUnitId(str);
        zzadVar.zzu(this.f.e);
        zzadVar.showDialog();
    }

    @Override // defpackage.zt3
    public final synchronized float v3() {
        return zzr.zzla().zzrg();
    }
}
