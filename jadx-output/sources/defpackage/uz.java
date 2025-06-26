package defpackage;

import com.google.android.gms.common.ConnectionResult;
import defpackage.zy;

/* loaded from: classes.dex */
public final class uz implements Runnable {
    public final /* synthetic */ tz e;

    public uz(tz tzVar) {
        this.e = tzVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ((zy.c) this.e.k).b(new ConnectionResult(4));
    }
}
