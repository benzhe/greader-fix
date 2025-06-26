package org.apache.commons.lang3.function;

import java.lang.Throwable;
import org.apache.commons.lang3.function.FailableDoublePredicate;

@FunctionalInterface
/* loaded from: classes2.dex */
public interface FailableDoublePredicate<E extends Throwable> {
    public static final FailableDoublePredicate FALSE = new FailableDoublePredicate() { // from class: ex7
        @Override // org.apache.commons.lang3.function.FailableDoublePredicate
        public /* synthetic */ FailableDoublePredicate and(FailableDoublePredicate failableDoublePredicate) {
            return hz7.$default$and(this, failableDoublePredicate);
        }

        @Override // org.apache.commons.lang3.function.FailableDoublePredicate
        public /* synthetic */ FailableDoublePredicate negate() {
            return hz7.$default$negate(this);
        }

        @Override // org.apache.commons.lang3.function.FailableDoublePredicate
        public /* synthetic */ FailableDoublePredicate or(FailableDoublePredicate failableDoublePredicate) {
            return hz7.$default$or(this, failableDoublePredicate);
        }

        @Override // org.apache.commons.lang3.function.FailableDoublePredicate
        public final boolean test(double d) {
            return false;
        }
    };
    public static final FailableDoublePredicate TRUE = new FailableDoublePredicate() { // from class: dx7
        @Override // org.apache.commons.lang3.function.FailableDoublePredicate
        public /* synthetic */ FailableDoublePredicate and(FailableDoublePredicate failableDoublePredicate) {
            return hz7.$default$and(this, failableDoublePredicate);
        }

        @Override // org.apache.commons.lang3.function.FailableDoublePredicate
        public /* synthetic */ FailableDoublePredicate negate() {
            return hz7.$default$negate(this);
        }

        @Override // org.apache.commons.lang3.function.FailableDoublePredicate
        public /* synthetic */ FailableDoublePredicate or(FailableDoublePredicate failableDoublePredicate) {
            return hz7.$default$or(this, failableDoublePredicate);
        }

        @Override // org.apache.commons.lang3.function.FailableDoublePredicate
        public final boolean test(double d) {
            return true;
        }
    };

    FailableDoublePredicate<E> and(FailableDoublePredicate<E> failableDoublePredicate);

    FailableDoublePredicate<E> negate();

    FailableDoublePredicate<E> or(FailableDoublePredicate<E> failableDoublePredicate);

    boolean test(double d) throws Throwable;
}
