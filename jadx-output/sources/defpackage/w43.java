package defpackage;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public final class w43 {
    public final ConcurrentHashMap<v43, List<Throwable>> a = new ConcurrentHashMap<>(16, 0.75f, 10);
    public final ReferenceQueue<Throwable> b = new ReferenceQueue<>();

    public final List<Throwable> a(Throwable th, boolean z) {
        Reference<? extends Throwable> referencePoll = this.b.poll();
        while (referencePoll != null) {
            this.a.remove(referencePoll);
            referencePoll = this.b.poll();
        }
        List<Throwable> list = this.a.get(new v43(th, null));
        if (!z || list != null) {
            return list;
        }
        Vector vector = new Vector(2);
        List<Throwable> listPutIfAbsent = this.a.putIfAbsent(new v43(th, this.b), vector);
        return listPutIfAbsent == null ? vector : listPutIfAbsent;
    }
}
