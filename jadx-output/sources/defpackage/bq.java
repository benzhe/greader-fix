package defpackage;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public class bq {
    public final Map<SoftReference<wp>, Boolean> a = new ConcurrentHashMap();
    public final ReferenceQueue<wp> b = new ReferenceQueue<>();

    public static final class a {
        public static final bq a = new bq();
    }
}
