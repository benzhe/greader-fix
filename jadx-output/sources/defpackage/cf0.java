package defpackage;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbar;

/* loaded from: classes.dex */
public final class cf0 {
    public final Object a = new Object();
    public final Object b = new Object();
    public hf0 c;
    public hf0 d;

    public final hf0 a(Context context, zzbar zzbarVar) {
        hf0 hf0Var;
        synchronized (this.b) {
            if (this.d == null) {
                Context applicationContext = context.getApplicationContext();
                if (applicationContext != null) {
                    context = applicationContext;
                }
                this.d = new hf0(context, zzbarVar, z60.a.a());
            }
            hf0Var = this.d;
        }
        return hf0Var;
    }

    public final hf0 b(Context context, zzbar zzbarVar) {
        hf0 hf0Var;
        synchronized (this.a) {
            if (this.c == null) {
                Context applicationContext = context.getApplicationContext();
                if (applicationContext != null) {
                    context = applicationContext;
                }
                this.c = new hf0(context, zzbarVar, (String) os3.j.f.a(y40.a));
            }
            hf0Var = this.c;
        }
        return hf0Var;
    }
}
