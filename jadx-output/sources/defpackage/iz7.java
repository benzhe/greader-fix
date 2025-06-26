package defpackage;

import java.util.Objects;
import org.apache.commons.lang3.function.FailableDoubleUnaryOperator;

/* compiled from: FailableDoubleUnaryOperator.java */
/* loaded from: classes2.dex */
public final /* synthetic */ class iz7 {
    public static FailableDoubleUnaryOperator $default$andThen(final FailableDoubleUnaryOperator _this, final FailableDoubleUnaryOperator failableDoubleUnaryOperator) {
        Objects.requireNonNull(failableDoubleUnaryOperator);
        return new FailableDoubleUnaryOperator() { // from class: hx7
            @Override // org.apache.commons.lang3.function.FailableDoubleUnaryOperator
            public /* synthetic */ FailableDoubleUnaryOperator andThen(FailableDoubleUnaryOperator failableDoubleUnaryOperator2) {
                return iz7.$default$andThen(this, failableDoubleUnaryOperator2);
            }

            @Override // org.apache.commons.lang3.function.FailableDoubleUnaryOperator
            public final double applyAsDouble(double d) {
                return failableDoubleUnaryOperator.applyAsDouble(_this.applyAsDouble(d));
            }

            @Override // org.apache.commons.lang3.function.FailableDoubleUnaryOperator
            public /* synthetic */ FailableDoubleUnaryOperator compose(FailableDoubleUnaryOperator failableDoubleUnaryOperator2) {
                return iz7.$default$compose(this, failableDoubleUnaryOperator2);
            }
        };
    }

    public static FailableDoubleUnaryOperator $default$compose(final FailableDoubleUnaryOperator _this, final FailableDoubleUnaryOperator failableDoubleUnaryOperator) {
        Objects.requireNonNull(failableDoubleUnaryOperator);
        return new FailableDoubleUnaryOperator() { // from class: ix7
            @Override // org.apache.commons.lang3.function.FailableDoubleUnaryOperator
            public /* synthetic */ FailableDoubleUnaryOperator andThen(FailableDoubleUnaryOperator failableDoubleUnaryOperator2) {
                return iz7.$default$andThen(this, failableDoubleUnaryOperator2);
            }

            @Override // org.apache.commons.lang3.function.FailableDoubleUnaryOperator
            public final double applyAsDouble(double d) {
                return _this.applyAsDouble(failableDoubleUnaryOperator.applyAsDouble(d));
            }

            @Override // org.apache.commons.lang3.function.FailableDoubleUnaryOperator
            public /* synthetic */ FailableDoubleUnaryOperator compose(FailableDoubleUnaryOperator failableDoubleUnaryOperator2) {
                return iz7.$default$compose(this, failableDoubleUnaryOperator2);
            }
        };
    }
}
