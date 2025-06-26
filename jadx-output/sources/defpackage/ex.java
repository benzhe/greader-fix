package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.zzf;

/* loaded from: classes.dex */
public final class ex implements Runnable {
    public final /* synthetic */ boolean e;
    public final /* synthetic */ zzf f;

    public ex(zzf zzfVar, boolean z) {
        this.f = zzfVar;
        this.e = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            zzf zzfVar = this.f;
            String str = zzfVar.p.e;
            Context context = zzfVar.n;
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            rn2.b(str, context, this.e).d();
        } catch (NullPointerException e) {
            this.f.l.b(2027, System.currentTimeMillis() - jCurrentTimeMillis, e);
        }
    }
}
