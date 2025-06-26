package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Build;

/* loaded from: classes.dex */
public class rl extends ql<cl> {
    public static final String j = vj.e("NetworkStateTracker");
    public final ConnectivityManager g;
    public b h;
    public a i;

    public class a extends BroadcastReceiver {
        public a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || intent.getAction() == null || !intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                return;
            }
            vj.c().a(rl.j, "Network broadcast received", new Throwable[0]);
            rl rlVar = rl.this;
            rlVar.c(rlVar.f());
        }
    }

    public class b extends ConnectivityManager.NetworkCallback {
        public b() {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            vj.c().a(rl.j, String.format("Network capabilities changed: %s", networkCapabilities), new Throwable[0]);
            rl rlVar = rl.this;
            rlVar.c(rlVar.f());
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            vj.c().a(rl.j, "Network connection lost", new Throwable[0]);
            rl rlVar = rl.this;
            rlVar.c(rlVar.f());
        }
    }

    public rl(Context context, xm xmVar) {
        super(context, xmVar);
        this.g = (ConnectivityManager) this.b.getSystemService("connectivity");
        if (g()) {
            this.h = new b();
        } else {
            this.i = new a();
        }
    }

    public static boolean g() {
        return Build.VERSION.SDK_INT >= 24;
    }

    @Override // defpackage.ql
    public cl a() {
        return f();
    }

    @Override // defpackage.ql
    public void d() {
        if (g()) {
            vj.c().a(j, "Registering network callback", new Throwable[0]);
            this.g.registerDefaultNetworkCallback(this.h);
        } else {
            vj.c().a(j, "Registering broadcast receiver", new Throwable[0]);
            this.b.registerReceiver(this.i, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        }
    }

    @Override // defpackage.ql
    public void e() {
        if (!g()) {
            vj.c().a(j, "Unregistering broadcast receiver", new Throwable[0]);
            this.b.unregisterReceiver(this.i);
            return;
        }
        try {
            vj.c().a(j, "Unregistering network callback", new Throwable[0]);
            this.g.unregisterNetworkCallback(this.h);
        } catch (IllegalArgumentException e) {
            vj.c().b(j, "Received exception while unregistering network callback", e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public defpackage.cl f() {
        /*
            r6 = this;
            android.net.ConnectivityManager r0 = r6.g
            android.net.NetworkInfo r0 = r0.getActiveNetworkInfo()
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L12
            boolean r3 = r0.isConnected()
            if (r3 == 0) goto L12
            r3 = 1
            goto L13
        L12:
            r3 = 0
        L13:
            int r4 = android.os.Build.VERSION.SDK_INT
            r5 = 23
            if (r4 >= r5) goto L1a
            goto L32
        L1a:
            android.net.ConnectivityManager r4 = r6.g
            android.net.Network r4 = r4.getActiveNetwork()
            android.net.ConnectivityManager r5 = r6.g
            android.net.NetworkCapabilities r4 = r5.getNetworkCapabilities(r4)
            if (r4 == 0) goto L32
            r5 = 16
            boolean r4 = r4.hasCapability(r5)
            if (r4 == 0) goto L32
            r4 = 1
            goto L33
        L32:
            r4 = 0
        L33:
            android.net.ConnectivityManager r5 = r6.g
            boolean r5 = r5.isActiveNetworkMetered()
            if (r0 == 0) goto L42
            boolean r0 = r0.isRoaming()
            if (r0 != 0) goto L42
            goto L43
        L42:
            r1 = 0
        L43:
            cl r0 = new cl
            r0.<init>(r3, r4, r5, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.rl.f():cl");
    }
}
