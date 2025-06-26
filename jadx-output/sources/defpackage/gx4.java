package defpackage;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes.dex */
public final class gx4 implements ServiceConnection {
    public final String a;
    public final /* synthetic */ hx4 b;

    public gx4(hx4 hx4Var, String str) {
        this.b = hx4Var;
        this.a = str;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (iBinder == null) {
            this.b.a.a().i.a("Install Referrer connection returned with null binder");
            return;
        }
        try {
            int i = w54.e;
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
            u64 x44Var = iInterfaceQueryLocalInterface instanceof u64 ? (u64) iInterfaceQueryLocalInterface : new x44(iBinder);
            if (x44Var == null) {
                this.b.a.a().i.a("Install Referrer Service implementation was not found");
            } else {
                this.b.a.a().n.a("Install Referrer Service connected");
                this.b.a.m().q(new fx4(this, x44Var, this));
            }
        } catch (Exception e) {
            this.b.a.a().i.b("Exception occurred while calling Install Referrer API", e);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.b.a.a().n.a("Install Referrer Service disconnected");
    }
}
