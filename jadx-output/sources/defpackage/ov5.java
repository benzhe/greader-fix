package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.os.Build;
import defpackage.pv5;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class ov5 implements pv5 {
    public final Context a;
    public final ConnectivityManager b;
    public final List<kx5<pv5.a>> c = new ArrayList();

    public class a extends ConnectivityManager.NetworkCallback {
        public a(nv5 nv5Var) {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            synchronized (ov5.this.c) {
                Iterator<kx5<pv5.a>> it = ov5.this.c.iterator();
                while (it.hasNext()) {
                    it.next().accept(pv5.a.REACHABLE);
                }
            }
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            synchronized (ov5.this.c) {
                Iterator<kx5<pv5.a>> it = ov5.this.c.iterator();
                while (it.hasNext()) {
                    it.next().accept(pv5.a.UNREACHABLE);
                }
            }
        }
    }

    public class b extends BroadcastReceiver {
        public boolean a = false;

        public b(nv5 nv5Var) {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            boolean z = this.a;
            boolean z2 = activeNetworkInfo != null && activeNetworkInfo.isConnected();
            this.a = z2;
            if (z2 && !z) {
                synchronized (ov5.this.c) {
                    Iterator<kx5<pv5.a>> it = ov5.this.c.iterator();
                    while (it.hasNext()) {
                        it.next().accept(pv5.a.REACHABLE);
                    }
                }
                return;
            }
            if (z2 || !z) {
                return;
            }
            synchronized (ov5.this.c) {
                Iterator<kx5<pv5.a>> it2 = ov5.this.c.iterator();
                while (it2.hasNext()) {
                    it2.next().accept(pv5.a.UNREACHABLE);
                }
            }
        }
    }

    public ov5(Context context) {
        bx5.c(context != null, "Context must be non-null", new Object[0]);
        this.a = context;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        this.b = connectivityManager;
        if (Build.VERSION.SDK_INT < 24 || connectivityManager == null) {
            context.registerReceiver(new b(null), new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        } else {
            connectivityManager.registerDefaultNetworkCallback(new a(null));
        }
    }
}
