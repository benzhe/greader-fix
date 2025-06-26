package org.apache.commons.lang3.function;

import java.lang.Throwable;
import org.apache.commons.lang3.function.FailableDoubleUnaryOperator;

/* loaded from: classes2.dex */
public interface FailableDoubleUnaryOperator<E extends Throwable> {
    public static final FailableDoubleUnaryOperator NOP = new FailableDoubleUnaryOperator() { // from class: jx7
        @Override // org.apache.commons.lang3.function.FailableDoubleUnaryOperator
        public /* synthetic */ FailableDoubleUnaryOperator andThen(FailableDoubleUnaryOperator failableDoubleUnaryOperator) {
            return iz7.$default$andThen(this, failableDoubleUnaryOperator);
        }

        @Override // org.apache.commons.lang3.function.FailableDoubleUnaryOperator
        public final double applyAsDouble(double d) {
            return 0.0d;
        }

        @Override // org.apache.commons.lang3.function.FailableDoubleUnaryOperator
        public /* synthetic */ FailableDoubleUnaryOperator compose(FailableDoubleUnaryOperator failableDoubleUnaryOperator) {
            return iz7.$default$compose(this, failableDoubleUnaryOperator);
        }
    };

    FailableDoubleUnaryOperator<E> andThen(FailableDoubleUnaryOperator<E> failableDoubleUnaryOperator);

    double applyAsDouble(double d) throws Throwable;

    FailableDoubleUnaryOperator<E> compose(FailableDoubleUnaryOperator<E> failableDoubleUnaryOperator);
}
