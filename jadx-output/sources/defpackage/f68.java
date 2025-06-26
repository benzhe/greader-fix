package defpackage;

import java.util.Locale;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public abstract class f68 {
    public static final AtomicReference<f68> a = new AtomicReference<>();

    public static class a {
        public static final f68 a;

        static {
            AtomicReference<f68> atomicReference = f68.a;
            atomicReference.compareAndSet(null, new l68());
            a = atomicReference.get();
        }
    }

    public abstract String a(y68 y68Var, long j, m68 m68Var, Locale locale);
}
