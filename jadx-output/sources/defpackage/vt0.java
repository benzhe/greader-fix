package defpackage;

import com.google.android.gms.internal.ads.zzbcb;

/* loaded from: classes.dex */
public final class vt0 implements Runnable {
    public final /* synthetic */ zzbcb e;

    public vt0(zzbcb zzbcbVar) {
        this.e = zzbcbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = zzbcb.v;
        this.e.h("surfaceDestroyed", new String[0]);
    }
}
