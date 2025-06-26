package org.apache.commons.lang3.function;

import java.lang.Throwable;
import org.apache.commons.lang3.function.FailableLongPredicate;

@FunctionalInterface
/* loaded from: classes2.dex */
public interface FailableLongPredicate<E extends Throwable> {
    public static final FailableLongPredicate FALSE = new FailableLongPredicate() { // from class: gy7
        @Override // org.apache.commons.lang3.function.FailableLongPredicate
        public /* synthetic */ FailableLongPredicate and(FailableLongPredicate failableLongPredicate) {
            return oz7.$default$and(this, failableLongPredicate);
        }

        @Override // org.apache.commons.lang3.function.FailableLongPredicate
        public /* synthetic */ FailableLongPredicate negate() {
            return oz7.$default$negate(this);
        }

        @Override // org.apache.commons.lang3.function.FailableLongPredicate
        public /* synthetic */ FailableLongPredicate or(FailableLongPredicate failableLongPredicate) {
            return oz7.$default$or(this, failableLongPredicate);
        }

        @Override // org.apache.commons.lang3.function.FailableLongPredicate
        public final boolean test(long j) {
            return false;
        }
    };
    public static final FailableLongPredicate TRUE = new FailableLongPredicate() { // from class: hy7
        @Override // org.apache.commons.lang3.function.FailableLongPredicate
        public /* synthetic */ FailableLongPredicate and(FailableLongPredicate failableLongPredicate) {
            return oz7.$default$and(this, failableLongPredicate);
        }

        @Override // org.apache.commons.lang3.function.FailableLongPredicate
        public /* synthetic */ FailableLongPredicate negate() {
            return oz7.$default$negate(this);
        }

        @Override // org.apache.commons.lang3.function.FailableLongPredicate
        public /* synthetic */ FailableLongPredicate or(FailableLongPredicate failableLongPredicate) {
            return oz7.$default$or(this, failableLongPredicate);
        }

        @Override // org.apache.commons.lang3.function.FailableLongPredicate
        public final boolean test(long j) {
            return true;
        }
    };

    FailableLongPredicate<E> and(FailableLongPredicate<E> failableLongPredicate);

    FailableLongPredicate<E> negate();

    FailableLongPredicate<E> or(FailableLongPredicate<E> failableLongPredicate);

    boolean test(long j) throws Throwable;
}
