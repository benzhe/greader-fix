package defpackage;

import android.content.Context;

/* loaded from: classes.dex */
public final class gw2 implements Runnable {
    public final /* synthetic */ Context e;

    public gw2(Context context) {
        this.e = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            lu2.C.zzb(this.e);
        } catch (Exception e) {
            lu2.E.b(2019, -1L, e);
        }
    }
}
