package defpackage;

import java.util.Objects;
import org.apache.commons.lang3.function.FailableLongPredicate;

/* compiled from: FailableLongPredicate.java */
/* loaded from: classes2.dex */
public final /* synthetic */ class oz7 {
    public static FailableLongPredicate $default$and(final FailableLongPredicate _this, final FailableLongPredicate failableLongPredicate) {
        Objects.requireNonNull(failableLongPredicate);
        return new FailableLongPredicate() { // from class: dy7
            @Override // org.apache.commons.lang3.function.FailableLongPredicate
            public /* synthetic */ FailableLongPredicate and(FailableLongPredicate failableLongPredicate2) {
                return oz7.$default$and(this, failableLongPredicate2);
            }

            @Override // org.apache.commons.lang3.function.FailableLongPredicate
            public /* synthetic */ FailableLongPredicate negate() {
                return oz7.$default$negate(this);
            }

            @Override // org.apache.commons.lang3.function.FailableLongPredicate
            public /* synthetic */ FailableLongPredicate or(FailableLongPredicate failableLongPredicate2) {
                return oz7.$default$or(this, failableLongPredicate2);
            }

            @Override // org.apache.commons.lang3.function.FailableLongPredicate
            public final boolean test(long j) {
                return _this.test(j) && failableLongPredicate.test(j);
            }
        };
    }

    public static FailableLongPredicate $default$negate(final FailableLongPredicate _this) {
        return new FailableLongPredicate() { // from class: ey7
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
                return !_this.test(j);
            }
        };
    }

    public static FailableLongPredicate $default$or(final FailableLongPredicate _this, final FailableLongPredicate failableLongPredicate) {
        Objects.requireNonNull(failableLongPredicate);
        return new FailableLongPredicate() { // from class: fy7
            @Override // org.apache.commons.lang3.function.FailableLongPredicate
            public /* synthetic */ FailableLongPredicate and(FailableLongPredicate failableLongPredicate2) {
                return oz7.$default$and(this, failableLongPredicate2);
            }

            @Override // org.apache.commons.lang3.function.FailableLongPredicate
            public /* synthetic */ FailableLongPredicate negate() {
                return oz7.$default$negate(this);
            }

            @Override // org.apache.commons.lang3.function.FailableLongPredicate
            public /* synthetic */ FailableLongPredicate or(FailableLongPredicate failableLongPredicate2) {
                return oz7.$default$or(this, failableLongPredicate2);
            }

            @Override // org.apache.commons.lang3.function.FailableLongPredicate
            public final boolean test(long j) {
                return _this.test(j) || failableLongPredicate.test(j);
            }
        };
    }
}
