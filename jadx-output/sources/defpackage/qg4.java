package defpackage;

import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public final class qg4 {
    public final ConcurrentHashMap<tg4, List<Throwable>> a = new ConcurrentHashMap<>(16, 0.75f, 10);
    public final ReferenceQueue<Throwable> b = new ReferenceQueue<>();
}
