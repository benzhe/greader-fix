package defpackage;

import android.content.Context;
import android.os.Binder;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzth;
import com.google.android.gms.internal.ads.zzti;

/* loaded from: classes.dex */
public final class io3 {
    public final Runnable a = new ko3(this);
    public final Object b = new Object();
    public oo3 c;
    public Context d;
    public so3 e;

    public static void d(io3 io3Var) {
        synchronized (io3Var.b) {
            oo3 oo3Var = io3Var.c;
            if (oo3Var == null) {
                return;
            }
            if (oo3Var.isConnected() || io3Var.c.isConnecting()) {
                io3Var.c.disconnect();
            }
            io3Var.c = null;
            io3Var.e = null;
            Binder.flushPendingCommands();
        }
    }

    public final void a() {
        oo3 oo3Var;
        synchronized (this.b) {
            if (this.d != null && this.c == null) {
                mo3 mo3Var = new mo3(this);
                lo3 lo3Var = new lo3(this);
                synchronized (this) {
                    oo3Var = new oo3(this.d, zzr.zzlj().zzaai(), mo3Var, lo3Var);
                }
                this.c = oo3Var;
                oo3Var.checkAvailabilityAndConnect();
            }
        }
    }

    public final void b(Context context) {
        if (context == null) {
            return;
        }
        synchronized (this.b) {
            if (this.d != null) {
                return;
            }
            this.d = context.getApplicationContext();
            if (((Boolean) os3.j.f.a(y40.k2)).booleanValue()) {
                a();
            } else {
                if (((Boolean) os3.j.f.a(y40.j2)).booleanValue()) {
                    zzr.zzky().d(new jo3(this));
                }
            }
        }
    }

    public final zzth c(zzti zztiVar) {
        synchronized (this.b) {
            if (this.e == null) {
                return new zzth();
            }
            try {
                if (this.c.q()) {
                    return this.e.D1(zztiVar);
                }
                return this.e.B5(zztiVar);
            } catch (RemoteException e) {
                is0.zzc("Unable to call into cache service.", e);
                return new zzth();
            }
        }
    }
}
