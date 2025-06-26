package defpackage;

import android.app.AlertDialog;
import com.google.android.gms.ads.internal.overlay.zze;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public final class fz1 extends TimerTask {
    public final /* synthetic */ AlertDialog e;
    public final /* synthetic */ Timer f;
    public final /* synthetic */ zze g;

    public fz1(AlertDialog alertDialog, Timer timer, zze zzeVar) {
        this.e = alertDialog;
        this.f = timer;
        this.g = zzeVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        this.e.dismiss();
        this.f.cancel();
        zze zzeVar = this.g;
        if (zzeVar != null) {
            zzeVar.close();
        }
    }
}
