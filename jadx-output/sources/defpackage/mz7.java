package defpackage;

import java.util.Objects;
import org.apache.commons.lang3.function.FailableIntUnaryOperator;

/* compiled from: FailableIntUnaryOperator.java */
/* loaded from: classes2.dex */
public final /* synthetic */ class mz7 {
    public static FailableIntUnaryOperator $default$andThen(final FailableIntUnaryOperator _this, final FailableIntUnaryOperator failableIntUnaryOperator) {
        Objects.requireNonNull(failableIntUnaryOperator);
        return new FailableIntUnaryOperator() { // from class: xx7
            @Override // org.apache.commons.lang3.function.FailableIntUnaryOperator
            public /* synthetic */ FailableIntUnaryOperator andThen(FailableIntUnaryOperator failableIntUnaryOperator2) {
                return mz7.$default$andThen(this, failableIntUnaryOperator2);
            }

            @Override // org.apache.commons.lang3.function.FailableIntUnaryOperator
            public final int applyAsInt(int i) {
                return failableIntUnaryOperator.applyAsInt(_this.applyAsInt(i));
            }

            @Override // org.apache.commons.lang3.function.FailableIntUnaryOperator
            public /* synthetic */ FailableIntUnaryOperator compose(FailableIntUnaryOperator failableIntUnaryOperator2) {
                return mz7.$default$compose(this, failableIntUnaryOperator2);
            }
        };
    }

    public static FailableIntUnaryOperator $default$compose(final FailableIntUnaryOperator _this, final FailableIntUnaryOperator failableIntUnaryOperator) {
        Objects.requireNonNull(failableIntUnaryOperator);
        return new FailableIntUnaryOperator() { // from class: yx7
            @Override // org.apache.commons.lang3.function.FailableIntUnaryOperator
            public /* synthetic */ FailableIntUnaryOperator andThen(FailableIntUnaryOperator failableIntUnaryOperator2) {
                return mz7.$default$andThen(this, failableIntUnaryOperator2);
            }

            @Override // org.apache.commons.lang3.function.FailableIntUnaryOperator
            public final int applyAsInt(int i) {
                return _this.applyAsInt(failableIntUnaryOperator.applyAsInt(i));
            }

            @Override // org.apache.commons.lang3.function.FailableIntUnaryOperator
            public /* synthetic */ FailableIntUnaryOperator compose(FailableIntUnaryOperator failableIntUnaryOperator2) {
                return mz7.$default$compose(this, failableIntUnaryOperator2);
            }
        };
    }
}
