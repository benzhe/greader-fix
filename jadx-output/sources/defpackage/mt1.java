package defpackage;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzajm;
import com.google.android.gms.internal.ads.zzbar;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class mt1 {
    public final Context f;
    public final WeakReference<Context> g;
    public final nq1 h;
    public final Executor i;
    public final Executor j;
    public final ScheduledExecutorService k;
    public final ws1 l;
    public final zzbar m;
    public final ye1 o;
    public boolean a = false;
    public boolean b = false;
    public boolean c = false;
    public final xs0<Boolean> e = new xs0<>();
    public Map<String, zzajm> n = new ConcurrentHashMap();
    public boolean p = true;
    public final long d = zzr.zzlc().b();

    public mt1(Executor executor, Context context, WeakReference<Context> weakReference, Executor executor2, nq1 nq1Var, ScheduledExecutorService scheduledExecutorService, ws1 ws1Var, zzbar zzbarVar, ye1 ye1Var) {
        this.h = nq1Var;
        this.f = context;
        this.g = weakReference;
        this.i = executor2;
        this.k = scheduledExecutorService;
        this.j = executor;
        this.l = ws1Var;
        this.m = zzbarVar;
        this.o = ye1Var;
        this.n.put("com.google.android.gms.ads.MobileAds", new zzajm("com.google.android.gms.ads.MobileAds", false, 0, ""));
    }

    public static void a(mt1 mt1Var, String str, boolean z, String str2, int i) {
        mt1Var.n.put(str, new zzajm(str, z, i, str2));
    }

    public final void b(String str, boolean z, String str2, int i) {
        this.n.put(str, new zzajm(str, z, i, str2));
    }

    public final void c() {
        if (((Boolean) os3.j.f.a(y40.h1)).booleanValue() && !s60.a.a().booleanValue()) {
            if (this.m.g >= ((Integer) os3.j.f.a(y40.i1)).intValue() && this.p) {
                if (this.a) {
                    return;
                }
                synchronized (this) {
                    if (this.a) {
                        return;
                    }
                    this.l.a();
                    this.o.D0(cf1.a);
                    xs0<Boolean> xs0Var = this.e;
                    xs0Var.e.i(new Runnable(this) { // from class: ot1
                        public final mt1 e;

                        {
                            this.e = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            mt1 mt1Var = this.e;
                            ws1 ws1Var = mt1Var.l;
                            synchronized (ws1Var) {
                                if (((Boolean) os3.j.f.a(y40.o1)).booleanValue()) {
                                    if (!((Boolean) os3.j.f.a(y40.e5)).booleanValue()) {
                                        if (!ws1Var.d) {
                                            Map<String, String> mapB = ws1Var.b();
                                            ((HashMap) mapB).put("action", "init_finished");
                                            ws1Var.b.add(mapB);
                                            Iterator<Map<String, String>> it = ws1Var.b.iterator();
                                            while (it.hasNext()) {
                                                ws1Var.f.a(it.next());
                                            }
                                            ws1Var.d = true;
                                        }
                                    }
                                }
                            }
                            mt1Var.o.D0(bf1.a);
                            mt1Var.b = true;
                        }
                    }, this.i);
                    this.a = true;
                    aw2<String> aw2VarE = e();
                    this.k.schedule(new Runnable(this) { // from class: qt1
                        public final mt1 e;

                        {
                            this.e = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            mt1 mt1Var = this.e;
                            synchronized (mt1Var) {
                                if (mt1Var.c) {
                                    return;
                                }
                                mt1Var.n.put("com.google.android.gms.ads.MobileAds", new zzajm("com.google.android.gms.ads.MobileAds", false, (int) (zzr.zzlc().b() - mt1Var.d), "Timeout."));
                                mt1Var.e.b(new Exception());
                            }
                        }
                    }, ((Long) os3.j.f.a(y40.k1)).longValue(), TimeUnit.SECONDS);
                    xt1 xt1Var = new xt1(this);
                    aw2VarE.i(new sv2(aw2VarE, xt1Var), this.i);
                    return;
                }
            }
        }
        if (this.a) {
            return;
        }
        this.n.put("com.google.android.gms.ads.MobileAds", new zzajm("com.google.android.gms.ads.MobileAds", true, 0, ""));
        this.e.a(Boolean.FALSE);
        this.a = true;
        this.b = true;
    }

    public final List<zzajm> d() {
        ArrayList arrayList = new ArrayList();
        for (String str : this.n.keySet()) {
            zzajm zzajmVar = this.n.get(str);
            arrayList.add(new zzajm(str, zzajmVar.f, zzajmVar.g, zzajmVar.h));
        }
        return arrayList;
    }

    public final synchronized aw2<String> e() {
        String str = zzr.zzkz().f().zzzg().e;
        if (!TextUtils.isEmpty(str)) {
            return vt2.j(str);
        }
        final xs0 xs0Var = new xs0();
        zzr.zzkz().f().zzb(new Runnable(this, xs0Var) { // from class: rt1
            public final mt1 e;
            public final xs0 f;

            {
                this.e = this;
                this.f = xs0Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                final mt1 mt1Var = this.e;
                final xs0 xs0Var2 = this.f;
                mt1Var.i.execute(new Runnable(mt1Var, xs0Var2) { // from class: ut1
                    public final xs0 e;

                    {
                        this.e = xs0Var2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        xs0 xs0Var3 = this.e;
                        String str2 = zzr.zzkz().f().zzzg().e;
                        if (TextUtils.isEmpty(str2)) {
                            xs0Var3.b(new Exception());
                        } else {
                            xs0Var3.a(str2);
                        }
                    }
                });
            }
        });
        return xs0Var;
    }
}
