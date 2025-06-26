package defpackage;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.internal.ads.zzdwc;
import defpackage.i00;

/* loaded from: classes.dex */
public final class zq2 implements i00.a, i00.b {
    public final tr2 a;
    public final nr2 b;
    public final Object c = new Object();
    public boolean d = false;
    public boolean e = false;

    public zq2(Context context, Looper looper, nr2 nr2Var) {
        this.b = nr2Var;
        this.a = new tr2(context, looper, this, this, 12800000);
    }

    @Override // i00.a
    public final void Z(int i) {
    }

    public final void a() {
        synchronized (this.c) {
            if (this.a.isConnected() || this.a.isConnecting()) {
                this.a.disconnect();
            }
            Binder.flushPendingCommands();
        }
    }

    @Override // i00.b
    public final void g0(ConnectionResult connectionResult) {
    }

    @Override // i00.a
    public final void l0(Bundle bundle) {
        synchronized (this.c) {
            if (this.e) {
                return;
            }
            this.e = true;
            try {
                this.a.p().U0(new zzdwc(this.b.b()));
                a();
            } catch (Exception unused) {
                a();
            } catch (Throwable th) {
                a();
                throw th;
            }
        }
    }
}
