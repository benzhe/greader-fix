package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzar;
import com.google.android.gms.ads.internal.util.zzbs;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzbar;
import java.util.Objects;

/* loaded from: classes.dex */
public final class yd0 {
    public final Context b;
    public final String c;
    public final zzbar d;
    public zzar<pd0> e;
    public zzar<pd0> f;
    public se0 g;
    public final Object a = new Object();
    public int h = 1;

    public yd0(Context context, zzbar zzbarVar, String str, zzar<pd0> zzarVar, zzar<pd0> zzarVar2) {
        this.c = str;
        this.b = context.getApplicationContext();
        this.d = zzbarVar;
        this.e = new me0();
        this.f = new me0();
        this.e = zzarVar;
        this.f = zzarVar2;
    }

    public final se0 a(final d23 d23Var) {
        final se0 se0Var = new se0(this.f);
        ms0.e.execute(new Runnable(this, d23Var, se0Var) { // from class: be0
            public final yd0 e;
            public final d23 f;
            public final se0 g;

            {
                this.e = this;
                this.f = d23Var;
                this.g = se0Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                yd0 yd0Var = this.e;
                d23 d23Var2 = this.f;
                se0 se0Var2 = this.g;
                Objects.requireNonNull(yd0Var);
                try {
                    final rd0 rd0Var = new rd0(yd0Var.b, yd0Var.d, d23Var2);
                    final ce0 ce0Var = new ce0(yd0Var, se0Var2, rd0Var);
                    ((ww0) rd0Var.e.I()).l = new iy0(ce0Var) { // from class: xd0
                        public final ce0 a;

                        {
                            this.a = ce0Var;
                        }

                        @Override // defpackage.iy0
                        public final void a() {
                            ce0 ce0Var2 = this.a;
                            zzj.zzegq.postDelayed(new Runnable(ce0Var2.a, ce0Var2.b, ce0Var2.c) { // from class: fe0
                                public final yd0 e;
                                public final se0 f;
                                public final pd0 g;

                                {
                                    this.e = yd0Var;
                                    this.f = se0Var;
                                    this.g = pd0Var;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    yd0 yd0Var2 = this.e;
                                    se0 se0Var3 = this.f;
                                    pd0 pd0Var = this.g;
                                    synchronized (yd0Var2.a) {
                                        if (se0Var3.a() != -1 && se0Var3.a() != 1) {
                                            se0Var3.b();
                                            zv2 zv2Var = ms0.e;
                                            pd0Var.getClass();
                                            zv2Var.execute(new Runnable(pd0Var) { // from class: ee0
                                                public final pd0 e;

                                                {
                                                    this.e = pd0Var;
                                                }

                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    this.e.destroy();
                                                }
                                            });
                                            zzd.zzed("Could not receive loaded message in a timely manner. Rejecting.");
                                        }
                                    }
                                }
                            }, 10000);
                        }
                    };
                    rd0Var.e.o("/jsLoaded", new wd0(rd0Var, new he0(yd0Var, se0Var2, rd0Var)));
                    zzbs zzbsVar = new zzbs();
                    ge0 ge0Var = new ge0(yd0Var, d23Var2, rd0Var, zzbsVar);
                    zzbsVar.set(ge0Var);
                    rd0Var.e.o("/requestReload", new wd0(rd0Var, ge0Var));
                    if (yd0Var.c.endsWith(".js")) {
                        final String str = String.format("<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>", yd0Var.c);
                        rd0.t(new Runnable(rd0Var, str) { // from class: td0
                            public final rd0 e;
                            public final String f;

                            {
                                this.e = rd0Var;
                                this.f = str;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                rd0 rd0Var2 = this.e;
                                rd0Var2.e.loadData(this.f, "text/html", "UTF-8");
                            }
                        });
                    } else if (yd0Var.c.startsWith("<html>")) {
                        final String str2 = yd0Var.c;
                        rd0.t(new Runnable(rd0Var, str2) { // from class: sd0
                            public final rd0 e;
                            public final String f;

                            {
                                this.e = rd0Var;
                                this.f = str2;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                rd0 rd0Var2 = this.e;
                                rd0Var2.e.loadData(this.f, "text/html", "UTF-8");
                            }
                        });
                    } else {
                        final String str3 = yd0Var.c;
                        rd0.t(new Runnable(rd0Var, str3) { // from class: vd0
                            public final rd0 e;
                            public final String f;

                            {
                                this.e = rd0Var;
                                this.f = str3;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                rd0 rd0Var2 = this.e;
                                rd0Var2.e.loadUrl(this.f);
                            }
                        });
                    }
                    zzj.zzegq.postDelayed(new je0(yd0Var, se0Var2, rd0Var), 60000);
                } catch (Throwable th) {
                    is0.zzc("Error creating webview.", th);
                    or0 or0VarZzkz = zzr.zzkz();
                    xl0.d(or0VarZzkz.e, or0VarZzkz.f).a(th, "SdkJavascriptFactory.loadJavascriptEngine");
                    se0Var2.b();
                }
            }
        });
        se0Var.c(new le0(this, se0Var), new ke0(this, se0Var));
        return se0Var;
    }

    public final oe0 b() {
        synchronized (this.a) {
            synchronized (this.a) {
                se0 se0Var = this.g;
                if (se0Var != null && this.h == 0) {
                    se0Var.c(new bt0(this) { // from class: ae0
                        public final yd0 a;

                        {
                            this.a = this;
                        }

                        @Override // defpackage.bt0
                        public final void zzg(Object obj) {
                            yd0 yd0Var = this.a;
                            Objects.requireNonNull(yd0Var);
                            if (((pd0) obj).j()) {
                                yd0Var.h = 1;
                            }
                        }
                    }, de0.a);
                }
            }
            se0 se0Var2 = this.g;
            if (se0Var2 != null && se0Var2.a() != -1) {
                int i = this.h;
                if (i == 0) {
                    return this.g.d();
                }
                if (i == 1) {
                    this.h = 2;
                    a(null);
                    return this.g.d();
                }
                if (i == 2) {
                    return this.g.d();
                }
                return this.g.d();
            }
            this.h = 2;
            se0 se0VarA = a(null);
            this.g = se0VarA;
            return se0VarA.d();
        }
    }
}
