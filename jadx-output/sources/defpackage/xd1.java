package defpackage;

import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class xd1<ListenerT> {
    public final Map<ListenerT, Executor> e = new HashMap();

    public xd1(Set<sf1<ListenerT>> set) {
        synchronized (this) {
            for (sf1<ListenerT> sf1Var : set) {
                synchronized (this) {
                    F0(sf1Var.a, sf1Var.b);
                }
            }
        }
    }

    public final synchronized void D0(final zd1<ListenerT> zd1Var) {
        for (Map.Entry<ListenerT, Executor> entry : this.e.entrySet()) {
            final ListenerT key = entry.getKey();
            entry.getValue().execute(new Runnable(zd1Var, key) { // from class: wd1
                public final zd1 e;
                public final Object f;

                {
                    this.e = zd1Var;
                    this.f = key;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        this.e.e(this.f);
                    } catch (Throwable th) {
                        zzr.zzkz().c(th, "EventEmitter.notify");
                        zzd.zza("Event emitter exception.", th);
                    }
                }
            });
        }
    }

    public final synchronized void F0(ListenerT listenert, Executor executor) {
        this.e.put(listenert, executor);
    }
}
