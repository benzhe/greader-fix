package defpackage;

import java.util.Objects;
import org.apache.commons.lang3.function.FailablePredicate;

/* compiled from: FailablePredicate.java */
/* loaded from: classes2.dex */
public final /* synthetic */ class qz7 {
    public static FailablePredicate $default$and(final FailablePredicate _this, final FailablePredicate failablePredicate) {
        Objects.requireNonNull(failablePredicate);
        return new FailablePredicate() { // from class: sy7
            @Override // org.apache.commons.lang3.function.FailablePredicate
            public /* synthetic */ FailablePredicate and(FailablePredicate failablePredicate2) {
                return qz7.$default$and(this, failablePredicate2);
            }

            @Override // org.apache.commons.lang3.function.FailablePredicate
            public /* synthetic */ FailablePredicate negate() {
                return qz7.$default$negate(this);
            }

            @Override // org.apache.commons.lang3.function.FailablePredicate
            public /* synthetic */ FailablePredicate or(FailablePredicate failablePredicate2) {
                return qz7.$default$or(this, failablePredicate2);
            }

            @Override // org.apache.commons.lang3.function.FailablePredicate
            public final boolean test(Object obj) {
                return _this.test(obj) && failablePredicate.test(obj);
            }
        };
    }

    public static FailablePredicate $default$negate(final FailablePredicate _this) {
        return new FailablePredicate() { // from class: ty7
            @Override // org.apache.commons.lang3.function.FailablePredicate
            public /* synthetic */ FailablePredicate and(FailablePredicate failablePredicate) {
                return qz7.$default$and(this, failablePredicate);
            }

            @Override // org.apache.commons.lang3.function.FailablePredicate
            public /* synthetic */ FailablePredicate negate() {
                return qz7.$default$negate(this);
            }

            @Override // org.apache.commons.lang3.function.FailablePredicate
            public /* synthetic */ FailablePredicate or(FailablePredicate failablePredicate) {
                return qz7.$default$or(this, failablePredicate);
            }

            @Override // org.apache.commons.lang3.function.FailablePredicate
            public final boolean test(Object obj) {
                return !_this.test(obj);
            }
        };
    }

    public static FailablePredicate $default$or(final FailablePredicate _this, final FailablePredicate failablePredicate) {
        Objects.requireNonNull(failablePredicate);
        return new FailablePredicate() { // from class: ry7
            @Override // org.apache.commons.lang3.function.FailablePredicate
            public /* synthetic */ FailablePredicate and(FailablePredicate failablePredicate2) {
                return qz7.$default$and(this, failablePredicate2);
            }

            @Override // org.apache.commons.lang3.function.FailablePredicate
            public /* synthetic */ FailablePredicate negate() {
                return qz7.$default$negate(this);
            }

            @Override // org.apache.commons.lang3.function.FailablePredicate
            public /* synthetic */ FailablePredicate or(FailablePredicate failablePredicate2) {
                return qz7.$default$or(this, failablePredicate2);
            }

            @Override // org.apache.commons.lang3.function.FailablePredicate
            public final boolean test(Object obj) {
                return _this.test(obj) || failablePredicate.test(obj);
            }
        };
    }
}
