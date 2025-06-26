package defpackage;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;

/* loaded from: classes.dex */
public final class pk0 {
    public final Map<String, List<j40<?>>> a = new HashMap();
    public final jl3 b;
    public final zh3 c;
    public final BlockingQueue<j40<?>> d;

    public pk0(zh3 zh3Var, BlockingQueue<j40<?>> blockingQueue, jl3 jl3Var) {
        this.b = jl3Var;
        this.c = zh3Var;
        this.d = blockingQueue;
    }

    public final synchronized void a(j40<?> j40Var) {
        BlockingQueue<j40<?>> blockingQueue;
        String strZze = j40Var.zze();
        List<j40<?>> listRemove = this.a.remove(strZze);
        if (listRemove != null && !listRemove.isEmpty()) {
            if (tg0.a) {
                tg0.c("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(listRemove.size()), strZze);
            }
            j40<?> j40VarRemove = listRemove.remove(0);
            this.a.put(strZze, listRemove);
            synchronized (j40VarRemove.i) {
                j40VarRemove.q = this;
            }
            if (this.c != null && (blockingQueue = this.d) != null) {
                try {
                    blockingQueue.put(j40VarRemove);
                } catch (InterruptedException e) {
                    tg0.b("Couldn't add request to queue. %s", e.toString());
                    Thread.currentThread().interrupt();
                    zh3 zh3Var = this.c;
                    zh3Var.i = true;
                    zh3Var.interrupt();
                }
            }
        }
    }

    public final synchronized boolean b(j40<?> j40Var) {
        String strZze = j40Var.zze();
        if (!this.a.containsKey(strZze)) {
            this.a.put(strZze, null);
            synchronized (j40Var.i) {
                j40Var.q = this;
            }
            if (tg0.a) {
                tg0.a("new request, sending to network %s", strZze);
            }
            return false;
        }
        List<j40<?>> arrayList = this.a.get(strZze);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        j40Var.zzc("waiting-for-response");
        arrayList.add(j40Var);
        this.a.put(strZze, arrayList);
        if (tg0.a) {
            tg0.a("Request for cacheKey=%s is in flight, putting on hold.", strZze);
        }
        return true;
    }
}
