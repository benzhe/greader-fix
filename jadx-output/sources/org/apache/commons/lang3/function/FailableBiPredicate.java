package org.apache.commons.lang3.function;

import java.lang.Throwable;
import org.apache.commons.lang3.function.FailableBiPredicate;

@FunctionalInterface
/* loaded from: classes2.dex */
public interface FailableBiPredicate<T, U, E extends Throwable> {
    public static final FailableBiPredicate FALSE = new FailableBiPredicate() { // from class: tw7
        @Override // org.apache.commons.lang3.function.FailableBiPredicate
        public /* synthetic */ FailableBiPredicate and(FailableBiPredicate failableBiPredicate) {
            return ez7.$default$and(this, failableBiPredicate);
        }

        @Override // org.apache.commons.lang3.function.FailableBiPredicate
        public /* synthetic */ FailableBiPredicate negate() {
            return ez7.$default$negate(this);
        }

        @Override // org.apache.commons.lang3.function.FailableBiPredicate
        public /* synthetic */ FailableBiPredicate or(FailableBiPredicate failableBiPredicate) {
            return ez7.$default$or(this, failableBiPredicate);
        }

        @Override // org.apache.commons.lang3.function.FailableBiPredicate
        public final boolean test(Object obj, Object obj2) {
            return false;
        }
    };
    public static final FailableBiPredicate TRUE = new FailableBiPredicate() { // from class: sw7
        @Override // org.apache.commons.lang3.function.FailableBiPredicate
        public /* synthetic */ FailableBiPredicate and(FailableBiPredicate failableBiPredicate) {
            return ez7.$default$and(this, failableBiPredicate);
        }

        @Override // org.apache.commons.lang3.function.FailableBiPredicate
        public /* synthetic */ FailableBiPredicate negate() {
            return ez7.$default$negate(this);
        }

        @Override // org.apache.commons.lang3.function.FailableBiPredicate
        public /* synthetic */ FailableBiPredicate or(FailableBiPredicate failableBiPredicate) {
            return ez7.$default$or(this, failableBiPredicate);
        }

        @Override // org.apache.commons.lang3.function.FailableBiPredicate
        public final boolean test(Object obj, Object obj2) {
            return true;
        }
    };

    FailableBiPredicate<T, U, E> and(FailableBiPredicate<? super T, ? super U, E> failableBiPredicate);

    FailableBiPredicate<T, U, E> negate();

    FailableBiPredicate<T, U, E> or(FailableBiPredicate<? super T, ? super U, E> failableBiPredicate);

    boolean test(T t, U u) throws Throwable;
}
