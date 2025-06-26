package org.apache.commons.lang3.compare;

import java.util.function.Predicate;
import org.apache.commons.lang3.compare.ComparableUtils;

/* loaded from: classes2.dex */
public class ComparableUtils {

    public static class ComparableCheckBuilder<A extends Comparable<A>> {
        private final A a;

        private boolean betweenOrdered(A a, A a2) {
            return greaterThanOrEqualTo(a) && lessThanOrEqualTo(a2);
        }

        private boolean betweenOrderedExclusive(A a, A a2) {
            return greaterThan(a) && lessThan(a2);
        }

        public boolean between(A a, A a2) {
            return betweenOrdered(a, a2) || betweenOrdered(a2, a);
        }

        public boolean betweenExclusive(A a, A a2) {
            return betweenOrderedExclusive(a, a2) || betweenOrderedExclusive(a2, a);
        }

        public boolean equalTo(A a) {
            return this.a.compareTo(a) == 0;
        }

        public boolean greaterThan(A a) {
            return this.a.compareTo(a) > 0;
        }

        public boolean greaterThanOrEqualTo(A a) {
            return this.a.compareTo(a) >= 0;
        }

        public boolean lessThan(A a) {
            return this.a.compareTo(a) < 0;
        }

        public boolean lessThanOrEqualTo(A a) {
            return this.a.compareTo(a) <= 0;
        }

        private ComparableCheckBuilder(A a) {
            this.a = a;
        }
    }

    private ComparableUtils() {
    }

    public static <A extends Comparable<A>> Predicate<A> between(final A a, final A a2) {
        return new Predicate() { // from class: fv7
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ComparableUtils.is((Comparable) obj).between(a, a2);
            }
        };
    }

    public static <A extends Comparable<A>> Predicate<A> betweenExclusive(final A a, final A a2) {
        return new Predicate() { // from class: iv7
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ComparableUtils.is((Comparable) obj).betweenExclusive(a, a2);
            }
        };
    }

    public static <A extends Comparable<A>> Predicate<A> ge(final A a) {
        return new Predicate() { // from class: kv7
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ComparableUtils.is((Comparable) obj).greaterThanOrEqualTo(a);
            }
        };
    }

    public static <A extends Comparable<A>> Predicate<A> gt(final A a) {
        return new Predicate() { // from class: hv7
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ComparableUtils.is((Comparable) obj).greaterThan(a);
            }
        };
    }

    public static <A extends Comparable<A>> ComparableCheckBuilder<A> is(A a) {
        return new ComparableCheckBuilder<>(a);
    }

    public static <A extends Comparable<A>> Predicate<A> le(final A a) {
        return new Predicate() { // from class: jv7
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ComparableUtils.is((Comparable) obj).lessThanOrEqualTo(a);
            }
        };
    }

    public static <A extends Comparable<A>> Predicate<A> lt(final A a) {
        return new Predicate() { // from class: gv7
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ComparableUtils.is((Comparable) obj).lessThan(a);
            }
        };
    }
}
