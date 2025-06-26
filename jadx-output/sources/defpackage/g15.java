package defpackage;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.ConnectionResult;
import defpackage.i00;
import java.util.Objects;

/* loaded from: classes.dex */
public final class g15 implements ServiceConnection, i00.a, i00.b {
    public volatile boolean a;
    public volatile mw4 b;
    public final /* synthetic */ h15 c;

    public g15(h15 h15Var) {
        this.c = h15Var;
    }

    @Override // i00.a
    public final void Z(int i) throws IllegalStateException {
        bi.f("MeasurementServiceConnection.onConnectionSuspended");
        this.c.a.a().m.a("Service connection suspended");
        this.c.a.m().q(new e15(this));
    }

    @Override // i00.b
    public final void g0(ConnectionResult connectionResult) throws IllegalStateException {
        bi.f("MeasurementServiceConnection.onConnectionFailed");
        rx4 rx4Var = this.c.a;
        qw4 qw4Var = rx4Var.i;
        qw4 qw4Var2 = (qw4Var == null || !qw4Var.h()) ? null : rx4Var.i;
        if (qw4Var2 != null) {
            qw4Var2.i.b("Service connection failed", connectionResult);
        }
        synchronized (this) {
            this.a = false;
            this.b = null;
        }
        this.c.a.m().q(new f15(this));
    }

    @Override // i00.a
    public final void l0(Bundle bundle) {
        bi.f("MeasurementServiceConnection.onConnected");
        synchronized (this) {
            try {
                Objects.requireNonNull(this.b, "null reference");
                this.c.a.m().q(new d15(this, this.b.getService()));
            } catch (DeadObjectException | IllegalStateException unused) {
                this.b = null;
                this.a = false;
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        bi.f("MeasurementServiceConnection.onServiceConnected");
        synchronized (this) {
            if (iBinder == null) {
                this.a = false;
                this.c.a.a().f.a("Service connected with null binder");
                return;
            }
            hw4 fw4Var = null;
            try {
                String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                if ("com.google.android.gms.measurement.internal.IMeasurementService".equals(interfaceDescriptor)) {
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
                    fw4Var = iInterfaceQueryLocalInterface instanceof hw4 ? (hw4) iInterfaceQueryLocalInterface : new fw4(iBinder);
                    this.c.a.a().n.a("Bound to IMeasurementService interface");
                } else {
                    this.c.a.a().f.b("Got binder with a wrong descriptor", interfaceDescriptor);
                }
            } catch (RemoteException unused) {
                this.c.a.a().f.a("Service connect failed to get IMeasurementService");
            }
            if (fw4Var == null) {
                this.a = false;
                try {
                    x10 x10VarB = x10.b();
                    h15 h15Var = this.c;
                    x10VarB.c(h15Var.a.a, h15Var.c);
                } catch (IllegalArgumentException unused2) {
                }
            } else {
                this.c.a.m().q(new b15(this, fw4Var));
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) throws IllegalStateException {
        bi.f("MeasurementServiceConnection.onServiceDisconnected");
        this.c.a.a().m.a("Service disconnected");
        this.c.a.m().q(new c15(this, componentName));
    }
}
