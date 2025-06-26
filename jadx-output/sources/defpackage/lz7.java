package defpackage;

import java.util.Objects;
import org.apache.commons.lang3.function.FailableIntPredicate;

/* compiled from: FailableIntPredicate.java */
/* loaded from: classes2.dex */
public final /* synthetic */ class lz7 {
    public static FailableIntPredicate $default$and(final FailableIntPredicate _this, final FailableIntPredicate failableIntPredicate) {
        Objects.requireNonNull(failableIntPredicate);
        return new FailableIntPredicate() { // from class: rx7
            @Override // org.apache.commons.lang3.function.FailableIntPredicate
            public /* synthetic */ FailableIntPredicate and(FailableIntPredicate failableIntPredicate2) {
                return lz7.$default$and(this, failableIntPredicate2);
            }

            @Override // org.apache.commons.lang3.function.FailableIntPredicate
            public /* synthetic */ FailableIntPredicate negate() {
                return lz7.$default$negate(this);
            }

            @Override // org.apache.commons.lang3.function.FailableIntPredicate
            public /* synthetic */ FailableIntPredicate or(FailableIntPredicate failableIntPredicate2) {
                return lz7.$default$or(this, failableIntPredicate2);
            }

            @Override // org.apache.commons.lang3.function.FailableIntPredicate
            public final boolean test(int i) {
                return _this.test(i) && failableIntPredicate.test(i);
            }
        };
    }

    public static FailableIntPredicate $default$negate(final FailableIntPredicate _this) {
        return new FailableIntPredicate() { // from class: ux7
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
                return !_this.test(i);
            }
        };
    }

    public static FailableIntPredicate $default$or(final FailableIntPredicate _this, final FailableIntPredicate failableIntPredicate) {
        Objects.requireNonNull(failableIntPredicate);
        return new FailableIntPredicate() { // from class: sx7
            @Override // org.apache.commons.lang3.function.FailableIntPredicate
            public /* synthetic */ FailableIntPredicate and(FailableIntPredicate failableIntPredicate2) {
                return lz7.$default$and(this, failableIntPredicate2);
            }

            @Override // org.apache.commons.lang3.function.FailableIntPredicate
            public /* synthetic */ FailableIntPredicate negate() {
                return lz7.$default$negate(this);
            }

            @Override // org.apache.commons.lang3.function.FailableIntPredicate
            public /* synthetic */ FailableIntPredicate or(FailableIntPredicate failableIntPredicate2) {
                return lz7.$default$or(this, failableIntPredicate2);
            }

            @Override // org.apache.commons.lang3.function.FailableIntPredicate
            public final boolean test(int i) {
                return _this.test(i) || failableIntPredicate.test(i);
            }
        };
    }
}
