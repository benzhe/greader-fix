package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzbar;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class vo1 implements Callable<io1> {
    public final zzb e;
    public final fx0 f;
    public final Context g;
    public final ns1 h;
    public final pp2 i;
    public final sy1 j;
    public final Executor k;
    public final d23 l;
    public final zzbar m;
    public final jq2 n;

    public vo1(Context context, Executor executor, d23 d23Var, zzbar zzbarVar, zzb zzbVar, fx0 fx0Var, sy1 sy1Var, jq2 jq2Var, ns1 ns1Var, pp2 pp2Var) {
        this.g = context;
        this.k = executor;
        this.l = d23Var;
        this.m = zzbarVar;
        this.e = zzbVar;
        this.f = fx0Var;
        this.j = sy1Var;
        this.n = jq2Var;
        this.h = ns1Var;
        this.i = pp2Var;
    }

    @Override // java.util.concurrent.Callable
    public final io1 call() throws Exception {
        final io1 io1Var = new io1(this);
        synchronized (io1Var) {
            final Context context = io1Var.c;
            final zzbar zzbarVar = io1Var.h;
            final String str = (String) os3.j.f.a(y40.R1);
            final d23 d23Var = io1Var.g;
            final zzb zzbVar = io1Var.b;
            aw2<xw0> aw2VarL = vt2.l(vt2.m(vt2.j(null), new cv2(context, d23Var, zzbarVar, zzbVar, str) { // from class: ex0
                public final Context a;
                public final d23 b;
                public final zzbar c;
                public final zzb d;
                public final String e;

                {
                    this.a = context;
                    this.b = d23Var;
                    this.c = zzbarVar;
                    this.d = zzbVar;
                    this.e = str;
                }

                @Override // defpackage.cv2
                public final aw2 a(Object obj) throws ix0 {
                    Context context2 = this.a;
                    d23 d23Var2 = this.b;
                    zzbar zzbarVar2 = this.c;
                    zzb zzbVar2 = this.d;
                    String str2 = this.e;
                    zzr.zzkw();
                    xw0 xw0VarA = fx0.a(context2, jy0.a(), "", false, false, d23Var2, null, zzbarVar2, null, zzbVar2, new ep3(), null, null);
                    final us0 us0Var = new us0(xw0VarA);
                    ((ww0) xw0VarA.I()).k = new gy0(us0Var) { // from class: gx0
                        public final us0 a;

                        {
                            this.a = us0Var;
                        }

                        @Override // defpackage.gy0
                        public final void a(boolean z) {
                            us0 us0Var2 = this.a;
                            us0Var2.a(us0Var2.f);
                        }
                    };
                    xw0VarA.loadUrl(str2);
                    return us0Var;
                }
            }, ms0.e), new vs2(io1Var) { // from class: lo1
                public final io1 a;

                {
                    this.a = io1Var;
                }

                @Override // defpackage.vs2
                public final Object apply(Object obj) {
                    io1 io1Var2 = this.a;
                    xw0 xw0Var = (xw0) obj;
                    xw0Var.o("/result", io1Var2.i);
                    hy0 hy0VarI = xw0Var.I();
                    qo1 qo1Var = io1Var2.a;
                    ((ww0) hy0VarI).z(null, qo1Var, qo1Var, qo1Var, qo1Var, false, null, new zza(io1Var2.c, null, null), null, null, io1Var2.j, io1Var2.k, io1Var2.d, io1Var2.e);
                    return xw0Var;
                }
            }, io1Var.f);
            io1Var.l = aw2VarL;
            c50.e2(aw2VarL, "NativeJavascriptExecutor.initializeEngine");
        }
        return io1Var;
    }
}
