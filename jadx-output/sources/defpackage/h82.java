package defpackage;

import android.os.Binder;
import android.util.JsonReader;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzauj;
import defpackage.vv2;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;

/* loaded from: classes.dex */
public final class h82 implements cv2<zzauj, i82> {
    public Executor a;
    public yu1 b;

    public h82(Executor executor, yu1 yu1Var) {
        this.a = executor;
        this.b = yu1Var;
    }

    @Override // defpackage.cv2
    public final aw2<i82> a(zzauj zzaujVar) throws Exception {
        xs0<InputStream> xs0Var;
        aw2 aVar;
        final zzauj zzaujVar2 = zzaujVar;
        final yu1 yu1Var = this.b;
        Objects.requireNonNull(yu1Var);
        String str = zzaujVar2.h;
        zzr.zzkv();
        if (zzj.zzem(str)) {
            aVar = new vv2.a(new yv1(dm2.INTERNAL_ERROR));
        } else {
            final ov1 ov1Var = yu1Var.c;
            synchronized (ov1Var.b) {
                if (ov1Var.c) {
                    xs0Var = ov1Var.a;
                } else {
                    ov1Var.c = true;
                    ov1Var.e = zzaujVar2;
                    ov1Var.f.checkAvailabilityAndConnect();
                    ov1Var.a.e.i(new Runnable(ov1Var) { // from class: nv1
                        public final ov1 e;

                        {
                            this.e = ov1Var;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.e.a();
                        }
                    }, ms0.f);
                    xs0Var = ov1Var.a;
                }
            }
            aVar = xs0Var;
        }
        final int callingUid = Binder.getCallingUid();
        nv2 nv2VarX = nv2.A(aVar).x(((Integer) os3.j.f.a(y40.h3)).intValue(), TimeUnit.SECONDS, yu1Var.a);
        cv2 cv2Var = new cv2(yu1Var, zzaujVar2, callingUid) { // from class: xu1
            public final yu1 a;
            public final zzauj b;
            public final int c;

            {
                this.a = yu1Var;
                this.b = zzaujVar2;
                this.c = callingUid;
            }

            @Override // defpackage.cv2
            public final aw2 a(Object obj) {
                yu1 yu1Var2 = this.a;
                return yu1Var2.d.get().b7(this.b, this.c);
            }
        };
        zv2 zv2Var = yu1Var.b;
        ru2 ru2Var = new ru2(nv2VarX, Throwable.class, cv2Var);
        nv2VarX.i(ru2Var, vt2.g(zv2Var, ru2Var));
        return vt2.m(ru2Var, new cv2(zzaujVar2) { // from class: f82
            public final zzauj a;

            {
                this.a = zzaujVar2;
            }

            @Override // defpackage.cv2
            public final aw2 a(Object obj) {
                zzauj zzaujVar3 = this.a;
                i82 i82Var = new i82(new JsonReader(new InputStreamReader((InputStream) obj)));
                try {
                    i82Var.b = zzr.zzkv().zzc(zzaujVar3.e).toString();
                } catch (JSONException unused) {
                    i82Var.b = "{}";
                }
                return vt2.j(i82Var);
            }
        }, this.a);
    }
}
