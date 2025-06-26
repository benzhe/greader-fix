package defpackage;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbar;

/* loaded from: classes.dex */
public final class jp2 implements cb3<hf0> {
    public final mb3<Context> a;
    public final mb3<zzbar> b;

    public jp2(kp2 kp2Var, mb3<Context> mb3Var, mb3<zzbar> mb3Var2) {
        this.a = mb3Var;
        this.b = mb3Var2;
    }

    @Override // defpackage.mb3
    public final Object get() {
        hf0 hf0Var;
        Context context = this.a.get();
        zzbar zzbarVar = this.b.get();
        synchronized (new Object()) {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            hf0Var = new hf0(context, zzbarVar, (String) os3.j.f.a(y40.a));
        }
        return hf0Var;
    }
}
