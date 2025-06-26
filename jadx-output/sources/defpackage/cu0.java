package defpackage;

import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzbcb;

/* loaded from: classes.dex */
public final class cu0 implements Runnable {
    public final /* synthetic */ rt0 e;

    public cu0(rt0 rt0Var) {
        this.e = rt0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbcb zzbcbVar = (zzbcb) this.e;
        if (zzbcbVar.k) {
            if (zzbcbVar.t.getParent() != null) {
                zzbcbVar.f.removeView(zzbcbVar.t);
            }
        }
        if (zzbcbVar.s != null) {
            long jB = zzr.zzlc().b();
            if (zzbcbVar.j.getBitmap(zzbcbVar.s) != null) {
                zzbcbVar.u = true;
            }
            long jB2 = zzr.zzlc().b() - jB;
            if (zzd.zzyz()) {
                StringBuilder sb = new StringBuilder(46);
                sb.append("Spinner frame grab took ");
                sb.append(jB2);
                sb.append("ms");
                zzd.zzed(sb.toString());
            }
            if (jB2 > zzbcbVar.i) {
                is0.zzez("Spinner frame grab crossed jank threshold! Suspending spinner.");
                zzbcbVar.n = false;
                zzbcbVar.s = null;
                o50 o50Var = zzbcbVar.g;
                if (o50Var != null) {
                    o50Var.b("spinner_jank", Long.toString(jB2));
                }
            }
        }
    }
}
