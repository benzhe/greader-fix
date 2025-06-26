package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* loaded from: classes.dex */
public final class yw4 extends BroadcastReceiver {
    public final j25 a;
    public boolean b;
    public boolean c;

    public yw4(j25 j25Var) {
        this.a = j25Var;
    }

    public final void a() {
        this.a.S();
        this.a.m().d();
        this.a.m().d();
        if (this.b) {
            this.a.a().n.a("Unregistering connectivity change receiver");
            this.b = false;
            this.c = false;
            try {
                this.a.j.a.unregisterReceiver(this);
            } catch (IllegalArgumentException e) {
                this.a.a().f.b("Failed to unregister the network broadcast receiver", e);
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) throws IllegalStateException {
        this.a.S();
        String action = intent.getAction();
        this.a.a().n.b("NetworkBroadcastReceiver received action", action);
        if (!"android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            this.a.a().i.b("NetworkBroadcastReceiver received unknown action", action);
            return;
        }
        boolean zI = this.a.K().i();
        if (this.c != zI) {
            this.c = zI;
            this.a.m().q(new xw4(this, zI));
        }
    }
}
