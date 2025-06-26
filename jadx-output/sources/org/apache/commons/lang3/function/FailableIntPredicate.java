package org.apache.commons.lang3.function;

import java.lang.Throwable;
import org.apache.commons.lang3.function.FailableIntPredicate;

@FunctionalInterface
/* loaded from: classes2.dex */
public interface FailableIntPredicate<E extends Throwable> {
    public static final FailableIntPredicate FALSE = new FailableIntPredicate() { // from class: tx7
        @Override // org.apache.commons.lang3.function.FailableIntPredicate
        public /* synthetic */ FailableIntPredicate and(FailableIntPredicate failableIntPredicate) {
            return lz7.$default$and(this, failableIntPredicate);
        }

        @Override // org.apache.commons.lang3.function.FailableIntPredicate
        public /* synthetic */ FailableIntPredicate negate() {
            return lz7.$default$negate(this);
        }

        @Override // org.apache.commons.lang3.function.FailableIntPredicate
        public /* synthetic */ FailableIntPredicate or(FailableIntPredicate failableIntPredicate) {
            return lz7.$default$or(this, failableIntPredicate);
        }

        @Override // org.apache.commons.lang3.function.FailableIntPredicate
        public final boolean test(int i) {
            return false;
        }
    };
    public static final FailableIntPredicate TRUE = new FailableIntPredicate() { // from class: qx7
        @Override // org.apache.commons.lang3.function.FailableIntPredicate
        public /* synthetic */ FailableIntPredicate and(FailableIntPredicate failableIntPredicate) {
            return lz7.$default$and(this, failableIntPredicate);
        }

        @Override // org.apache.commons.lang3.function.FailableIntPredicate
        public /* synthetic */ FailableIntPredicate negate() {
            return lz7.$default$negate(this);
        }

        @Override // org.apache.commons.lang3.function.FailableIntPredicate
        public /* synthetic */ FailableIntPredicate or(FailableIntPredicate failableIntPredicate) {
            return lz7.$default$or(this, failableIntPredicate);
        }

        @Override // org.apache.commons.lang3.function.FailableIntPredicate
        public final boolean test(int i) {
            return true;
        }
    };

    FailableIntPredicate<E> and(FailableIntPredicate<E> failableIntPredicate);

    FailableIntPredicate<E> negate();

    FailableIntPredicate<E> or(FailableIntPredicate<E> failableIntPredicate);

    boolean test(int i) throws Throwable;
}
