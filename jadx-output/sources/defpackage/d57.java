package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.os.Build;
import android.util.Log;

/* loaded from: classes2.dex */
public final class d57 extends r37<d57> {
    public final g47<?> a;
    public Context b;

    public static final class b extends f47 {
        public final f47 a;
        public final Context b;
        public final ConnectivityManager c;
        public final Object d = new Object();
        public Runnable e;

        public class a implements Runnable {
            public final /* synthetic */ c e;

            public a(c cVar) {
                this.e = cVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                b.this.c.unregisterNetworkCallback(this.e);
            }
        }

        /* renamed from: d57$b$b, reason: collision with other inner class name */
        public class RunnableC0010b implements Runnable {
            public final /* synthetic */ d e;

            public RunnableC0010b(d dVar) {
                this.e = dVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                b.this.b.unregisterReceiver(this.e);
            }
        }

        public class c extends ConnectivityManager.NetworkCallback {
            public boolean a = false;

            public c(a aVar) {
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(Network network) {
                if (this.a) {
                    b.this.a.i();
                } else {
                    b.this.a.l();
                }
                this.a = true;
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(Network network) {
                this.a = false;
            }
        }

        public class d extends BroadcastReceiver {
            public boolean a = false;

            public d(a aVar) {
            }

            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
                boolean z = this.a;
                boolean z2 = activeNetworkInfo != null && activeNetworkInfo.isConnected();
                this.a = z2;
                if (!z2 || z) {
                    return;
                }
                b.this.a.l();
            }
        }

        public b(f47 f47Var, Context context) {
            this.a = f47Var;
            this.b = context;
            if (context == null) {
                this.c = null;
                return;
            }
            this.c = (ConnectivityManager) context.getSystemService("connectivity");
            try {
                n();
            } catch (SecurityException e) {
                Log.w("AndroidChannelBuilder", "Failed to configure network monitoring. Does app have ACCESS_NETWORK_STATE permission?", e);
            }
        }

        @Override // defpackage.y27
        public String a() {
            return this.a.a();
        }

        @Override // defpackage.y27
        public <RequestT, ResponseT> a37<RequestT, ResponseT> h(j47<RequestT, ResponseT> j47Var, x27 x27Var) {
            return this.a.h(j47Var, x27Var);
        }

        @Override // defpackage.f47
        public void i() {
            this.a.i();
        }

        @Override // defpackage.f47
        public i37 j(boolean z) {
            return this.a.j(z);
        }

        @Override // defpackage.f47
        public void k(i37 i37Var, Runnable runnable) {
            this.a.k(i37Var, runnable);
        }

        @Override // defpackage.f47
        public void l() {
            this.a.l();
        }

        @Override // defpackage.f47
        public f47 m() {
            synchronized (this.d) {
                Runnable runnable = this.e;
                if (runnable != null) {
                    runnable.run();
                    this.e = null;
                }
            }
            return this.a.m();
        }

        public final void n() {
            if (Build.VERSION.SDK_INT >= 24 && this.c != null) {
                c cVar = new c(null);
                this.c.registerDefaultNetworkCallback(cVar);
                this.e = new a(cVar);
            } else {
                d dVar = new d(null);
                this.b.registerReceiver(dVar, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                this.e = new RunnableC0010b(dVar);
            }
        }
    }

    static {
        try {
            Class.forName("m97");
        } catch (ClassNotFoundException unused) {
        }
    }

    public d57(g47<?> g47Var) {
        c50.A(g47Var, "delegateBuilder");
        this.a = g47Var;
    }

    @Override // defpackage.g47
    public f47 a() {
        return new b(this.a.a(), this.b);
    }
}
