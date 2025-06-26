package defpackage;

import android.os.Binder;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzauj;
import defpackage.vv2;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class zu1 implements zv1 {
    public static final Pattern f = Pattern.compile("Received error HTTP response code: (.*)");
    public final au1 a;
    public final zv2 b;
    public final ll2 c;
    public final ScheduledExecutorService d;
    public final dy1 e;

    public zu1(ll2 ll2Var, au1 au1Var, zv2 zv2Var, ScheduledExecutorService scheduledExecutorService, dy1 dy1Var) {
        this.c = ll2Var;
        this.a = au1Var;
        this.b = zv2Var;
        this.d = scheduledExecutorService;
        this.e = dy1Var;
    }

    @Override // defpackage.zv1
    public final aw2<hl2> a(final zzauj zzaujVar) {
        final au1 au1Var = this.a;
        Objects.requireNonNull(au1Var);
        String str = zzaujVar.h;
        zzr.zzkv();
        aw2 aVar = zzj.zzem(str) ? new vv2.a(new yv1(dm2.INTERNAL_ERROR)) : vt2.n(au1Var.a.y(new Callable(au1Var, zzaujVar) { // from class: du1
            public final au1 e;
            public final zzauj f;

            {
                this.e = au1Var;
                this.f = zzaujVar;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                xs0<InputStream> xs0Var;
                au1 au1Var2 = this.e;
                zzauj zzaujVar2 = this.f;
                final kv1 kv1Var = au1Var2.c;
                synchronized (kv1Var.b) {
                    if (kv1Var.c) {
                        xs0Var = kv1Var.a;
                    } else {
                        kv1Var.c = true;
                        kv1Var.e = zzaujVar2;
                        kv1Var.f.checkAvailabilityAndConnect();
                        kv1Var.a.e.i(new Runnable(kv1Var) { // from class: jv1
                            public final kv1 e;

                            {
                                this.e = kv1Var;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.e.a();
                            }
                        }, ms0.f);
                        xs0Var = kv1Var.a;
                    }
                }
                return xs0Var.get(((Integer) os3.j.f.a(y40.h3)).intValue(), TimeUnit.SECONDS);
            }
        }), ExecutionException.class, cu1.a, au1Var.b);
        final int callingUid = Binder.getCallingUid();
        aw2<hl2> aw2VarM = vt2.m(vt2.n(aVar, yv1.class, new cv2(au1Var, zzaujVar, callingUid) { // from class: fu1
            public final au1 a;
            public final zzauj b;
            public final int c;

            {
                this.a = au1Var;
                this.b = zzaujVar;
                this.c = callingUid;
            }

            @Override // defpackage.cv2
            public final aw2 a(Object obj) {
                au1 au1Var2 = this.a;
                return au1Var2.d.get().Z6(this.b, this.c);
            }
        }, au1Var.b), new cv2(this) { // from class: cv1
            public final zu1 a;

            {
                this.a = this;
            }

            @Override // defpackage.cv2
            public final aw2 a(Object obj) {
                return vt2.j(new hl2(new cl2(this.a.c), fl2.a(new InputStreamReader((InputStream) obj))));
            }
        }, this.b);
        if (((Boolean) os3.j.f.a(y40.g3)).booleanValue()) {
            aw2VarM = vt2.n(vt2.d(aw2VarM, ((Integer) os3.j.f.a(y40.h3)).intValue(), TimeUnit.SECONDS, this.d), TimeoutException.class, bv1.a, ms0.f);
        }
        ((su2) aw2VarM).i(new sv2(aw2VarM, new ev1(this)), ms0.f);
        return aw2VarM;
    }
}
