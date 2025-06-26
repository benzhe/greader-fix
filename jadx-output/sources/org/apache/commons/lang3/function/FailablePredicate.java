package org.apache.commons.lang3.function;

import java.lang.Throwable;
import org.apache.commons.lang3.function.FailablePredicate;

@FunctionalInterface
/* loaded from: classes2.dex */
public interface FailablePredicate<T, E extends Throwable> {
    public static final FailablePredicate FALSE = new FailablePredicate() { // from class: qy7
        @Override // org.apache.commons.lang3.function.FailablePredicate
        public /* synthetic */ FailablePredicate and(FailablePredicate failablePredicate) {
            return qz7.$default$and(this, failablePredicate);
        }

        @Override // org.apache.commons.lang3.function.FailablePredicate
        public /* synthetic */ FailablePredicate negate() {
            return qz7.$default$negate(this);
        }

        @Override // org.apache.commons.lang3.function.FailablePredicate
        public /* synthetic */ FailablePredicate or(FailablePredicate failablePredicate) {
            return qz7.$default$or(this, failablePredicate);
        }

        @Override // org.apache.commons.lang3.function.FailablePredicate
        public final boolean test(Object obj) {
            return false;
        }
    };
    public static final FailablePredicate TRUE = new FailablePredicate() { // from class: uy7
        @Override // org.apache.commons.lang3.function.FailablePredicate
        public /* synthetic */ FailablePredicate and(FailablePredicate failablePredicate) {
            return qz7.$default$and(this, failablePredicate);
        }

        @Override // org.apache.commons.lang3.function.FailablePredicate
        public /* synthetic */ FailablePredicate negate() {
            return qz7.$default$negate(this);
        }

        @Override // org.apache.commons.lang3.function.FailablePredicate
        public /* synthetic */ FailablePredicate or(FailablePredicate failablePredicate) {
            return qz7.$default$or(this, failablePredicate);
        }

        @Override // org.apache.commons.lang3.function.FailablePredicate
        public final boolean test(Object obj) {
            return true;
        }
    };

    FailablePredicate<T, E> and(FailablePredicate<? super T, E> failablePredicate);

    FailablePredicate<T, E> negate();

    FailablePredicate<T, E> or(FailablePredicate<? super T, E> failablePredicate);

    boolean test(T t) throws Throwable;
}
