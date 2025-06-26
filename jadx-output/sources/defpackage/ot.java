package defpackage;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import defpackage.cv;

/* loaded from: classes.dex */
public final /* synthetic */ class ot implements Runnable {
    public final tt e;
    public final ds f;
    public final int g;
    public final Runnable h;

    public ot(tt ttVar, ds dsVar, int i, Runnable runnable) {
        this.e = ttVar;
        this.f = dsVar;
        this.g = i;
        this.h = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        final tt ttVar = this.e;
        final ds dsVar = this.f;
        final int i = this.g;
        Runnable runnable = this.h;
        try {
            try {
                cv cvVar = ttVar.f;
                final cu cuVar = ttVar.c;
                cuVar.getClass();
                cvVar.a(new cv.a(cuVar) { // from class: rt
                    public final cu a;

                    {
                        this.a = cuVar;
                    }

                    @Override // cv.a
                    public Object execute() {
                        return Integer.valueOf(this.a.o());
                    }
                });
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) ttVar.a.getSystemService("connectivity")).getActiveNetworkInfo();
                if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                    ttVar.a(dsVar, i);
                } else {
                    ttVar.f.a(new cv.a(ttVar, dsVar, i) { // from class: st
                        public final tt a;
                        public final ds b;
                        public final int c;

                        {
                            this.a = ttVar;
                            this.b = dsVar;
                            this.c = i;
                        }

                        @Override // cv.a
                        public Object execute() {
                            tt ttVar2 = this.a;
                            ttVar2.d.a(this.b, this.c + 1);
                            return null;
                        }
                    });
                }
            } catch (bv unused) {
                ttVar.d.a(dsVar, i + 1);
            }
        } finally {
            runnable.run();
        }
    }
}
