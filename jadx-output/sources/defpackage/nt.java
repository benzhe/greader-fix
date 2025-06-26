package defpackage;

import defpackage.kt;
import java.util.Collections;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class nt {

    public static abstract class a {

        /* renamed from: nt$a$a, reason: collision with other inner class name */
        public static abstract class AbstractC0027a {
            public abstract a a();

            public abstract AbstractC0027a b(long j);

            public abstract AbstractC0027a c(long j);
        }

        public static AbstractC0027a a() {
            kt.b bVar = new kt.b();
            Set<b> setEmptySet = Collections.emptySet();
            Objects.requireNonNull(setEmptySet, "Null flags");
            bVar.c = setEmptySet;
            return bVar;
        }

        public abstract long b();

        public abstract Set<b> c();

        public abstract long d();
    }

    public enum b {
        NETWORK_UNMETERED,
        DEVICE_IDLE,
        DEVICE_CHARGING
    }

    public abstract dv a();

    public long b(wq wqVar, long j, int i) {
        long jA = j - a().a();
        a aVar = c().get(wqVar);
        long jB = aVar.b();
        return Math.min(Math.max((long) (Math.pow(3.0d, i - 1) * jB * Math.max(1.0d, Math.log(10000.0d) / Math.log((jB > 1 ? jB : 2L) * r12))), jA), aVar.d());
    }

    public abstract Map<wq, a> c();
}
