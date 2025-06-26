package defpackage;

import java.util.Objects;
import org.apache.commons.lang3.function.FailableBiPredicate;

/* compiled from: FailableBiPredicate.java */
/* loaded from: classes2.dex */
public final /* synthetic */ class ez7 {
    public static FailableBiPredicate $default$and(final FailableBiPredicate _this, final FailableBiPredicate failableBiPredicate) {
        Objects.requireNonNull(failableBiPredicate);
        return new FailableBiPredicate() { // from class: rw7
            @Override // org.apache.commons.lang3.function.FailableBiPredicate
            public /* synthetic */ FailableBiPredicate and(FailableBiPredicate failableBiPredicate2) {
                return ez7.$default$and(this, failableBiPredicate2);
            }

            @Override // org.apache.commons.lang3.function.FailableBiPredicate
            public /* synthetic */ FailableBiPredicate negate() {
                return ez7.$default$negate(this);
            }

            @Override // org.apache.commons.lang3.function.FailableBiPredicate
            public /* synthetic */ FailableBiPredicate or(FailableBiPredicate failableBiPredicate2) {
                return ez7.$default$or(this, failableBiPredicate2);
            }

            @Override // org.apache.commons.lang3.function.FailableBiPredicate
            public final boolean test(Object obj, Object obj2) {
                return _this.test(obj, obj2) && failableBiPredicate.test(obj, obj2);
            }
        };
    }

    public static FailableBiPredicate $default$negate(final FailableBiPredicate _this) {
        return new FailableBiPredicate() { // from class: qw7
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
                return !_this.test(obj, obj2);
            }
        };
    }

    public static FailableBiPredicate $default$or(final FailableBiPredicate _this, final FailableBiPredicate failableBiPredicate) {
        Objects.requireNonNull(failableBiPredicate);
        return new FailableBiPredicate() { // from class: uw7
            @Override // org.apache.commons.lang3.function.FailableBiPredicate
            public /* synthetic */ FailableBiPredicate and(FailableBiPredicate failableBiPredicate2) {
                return ez7.$default$and(this, failableBiPredicate2);
            }

            @Override // org.apache.commons.lang3.function.FailableBiPredicate
            public /* synthetic */ FailableBiPredicate negate() {
                return ez7.$default$negate(this);
            }

            @Override // org.apache.commons.lang3.function.FailableBiPredicate
            public /* synthetic */ FailableBiPredicate or(FailableBiPredicate failableBiPredicate2) {
                return ez7.$default$or(this, failableBiPredicate2);
            }

            @Override // org.apache.commons.lang3.function.FailableBiPredicate
            public final boolean test(Object obj, Object obj2) {
                return _this.test(obj, obj2) || failableBiPredicate.test(obj, obj2);
            }
        };
    }
}
