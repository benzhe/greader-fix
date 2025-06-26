package defpackage;

import android.content.Context;
import android.webkit.WebView;
import com.google.android.gms.ads.internal.util.zzj;

/* loaded from: classes.dex */
public final class ww implements Runnable {
    public final /* synthetic */ Context e;
    public final /* synthetic */ zzj f;

    public ww(zzj zzjVar, Context context) {
        this.f = zzjVar;
        this.e = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String strG;
        synchronized (this.f.d) {
            zzj zzjVar = this.f;
            try {
                strG = new WebView(this.e).getSettings().getUserAgentString();
            } catch (Throwable unused) {
                strG = zzj.g();
            }
            zzjVar.e = strG;
            this.f.d.notifyAll();
        }
    }
}
