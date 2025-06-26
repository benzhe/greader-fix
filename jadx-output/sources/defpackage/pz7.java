package defpackage;

import java.util.Objects;
import org.apache.commons.lang3.function.FailableLongUnaryOperator;

/* compiled from: FailableLongUnaryOperator.java */
/* loaded from: classes2.dex */
public final /* synthetic */ class pz7 {
    public static FailableLongUnaryOperator $default$andThen(final FailableLongUnaryOperator _this, final FailableLongUnaryOperator failableLongUnaryOperator) {
        Objects.requireNonNull(failableLongUnaryOperator);
        return new FailableLongUnaryOperator() { // from class: my7
            @Override // org.apache.commons.lang3.function.FailableLongUnaryOperator
            public /* synthetic */ FailableLongUnaryOperator andThen(FailableLongUnaryOperator failableLongUnaryOperator2) {
                return pz7.$default$andThen(this, failableLongUnaryOperator2);
            }

            @Override // org.apache.commons.lang3.function.FailableLongUnaryOperator
            public final long applyAsLong(long j) {
                return failableLongUnaryOperator.applyAsLong(_this.applyAsLong(j));
            }

            @Override // org.apache.commons.lang3.function.FailableLongUnaryOperator
            public /* synthetic */ FailableLongUnaryOperator compose(FailableLongUnaryOperator failableLongUnaryOperator2) {
                return pz7.$default$compose(this, failableLongUnaryOperator2);
            }
        };
    }

    public static FailableLongUnaryOperator $default$compose(final FailableLongUnaryOperator _this, final FailableLongUnaryOperator failableLongUnaryOperator) {
        Objects.requireNonNull(failableLongUnaryOperator);
        return new FailableLongUnaryOperator() { // from class: ly7
            @Override // org.apache.commons.lang3.function.FailableLongUnaryOperator
            public /* synthetic */ FailableLongUnaryOperator andThen(FailableLongUnaryOperator failableLongUnaryOperator2) {
                return pz7.$default$andThen(this, failableLongUnaryOperator2);
            }

            @Override // org.apache.commons.lang3.function.FailableLongUnaryOperator
            public final long applyAsLong(long j) {
                return _this.applyAsLong(failableLongUnaryOperator.applyAsLong(j));
            }

            @Override // org.apache.commons.lang3.function.FailableLongUnaryOperator
            public /* synthetic */ FailableLongUnaryOperator compose(FailableLongUnaryOperator failableLongUnaryOperator2) {
                return pz7.$default$compose(this, failableLongUnaryOperator2);
            }
        };
    }
}
