package defpackage;

import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public class bh6 {
    public final ReferenceQueue<Object> a = new ReferenceQueue<>();
    public final Set<a> b = Collections.synchronizedSet(new HashSet());

    /* JADX WARN: Unexpected interfaces in signature: [java.lang.Object] */
    public static class a extends PhantomReference<Object> {
        public final Set<a> a;
        public final Runnable b;

        public a(Object obj, ReferenceQueue referenceQueue, Set set, Runnable runnable, ph6 ph6Var) {
            super(obj, referenceQueue);
            this.a = set;
            this.b = runnable;
        }
    }
}
