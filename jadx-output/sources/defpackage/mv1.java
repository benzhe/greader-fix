package defpackage;

import android.os.Binder;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.internal.ads.zzauj;
import defpackage.i00;
import java.io.InputStream;

/* loaded from: classes.dex */
public abstract class mv1 implements i00.a, i00.b {
    public final xs0<InputStream> a = new xs0<>();
    public final Object b = new Object();
    public boolean c = false;
    public boolean d = false;
    public zzauj e;
    public cm0 f;

    @Override // i00.a
    public void Z(int i) {
        is0.zzdz("Cannot connect to remote service, fallback to local instance.");
    }

    public final void a() {
        synchronized (this.b) {
            this.d = true;
            if (this.f.isConnected() || this.f.isConnecting()) {
                this.f.disconnect();
            }
            Binder.flushPendingCommands();
        }
    }

    public void g0(ConnectionResult connectionResult) {
        is0.zzdz("Disconnected from remote ad request service.");
        this.a.b(new yv1(dm2.INTERNAL_ERROR));
    }
}
