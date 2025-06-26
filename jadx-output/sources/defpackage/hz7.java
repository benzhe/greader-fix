package defpackage;

import java.util.Objects;
import org.apache.commons.lang3.function.FailableDoublePredicate;

/* compiled from: FailableDoublePredicate.java */
/* loaded from: classes2.dex */
public final /* synthetic */ class hz7 {
    public static FailableDoublePredicate $default$and(final FailableDoublePredicate _this, final FailableDoublePredicate failableDoublePredicate) {
        Objects.requireNonNull(failableDoublePredicate);
        return new FailableDoublePredicate() { // from class: cx7
            @Override // org.apache.commons.lang3.function.FailableDoublePredicate
            public /* synthetic */ FailableDoublePredicate and(FailableDoublePredicate failableDoublePredicate2) {
                return hz7.$default$and(this, failableDoublePredicate2);
            }

            @Override // org.apache.commons.lang3.function.FailableDoublePredicate
            public /* synthetic */ FailableDoublePredicate negate() {
                return hz7.$default$negate(this);
            }

            @Override // org.apache.commons.lang3.function.FailableDoublePredicate
            public /* synthetic */ FailableDoublePredicate or(FailableDoublePredicate failableDoublePredicate2) {
                return hz7.$default$or(this, failableDoublePredicate2);
            }

            @Override // org.apache.commons.lang3.function.FailableDoublePredicate
            public final boolean test(double d) {
                return _this.test(d) && failableDoublePredicate.test(d);
            }
        };
    }

    public static FailableDoublePredicate $default$negate(final FailableDoublePredicate _this) {
        return new FailableDoublePredicate() { // from class: bx7
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
                return !_this.test(d);
            }
        };
    }

    public static FailableDoublePredicate $default$or(final FailableDoublePredicate _this, final FailableDoublePredicate failableDoublePredicate) {
        Objects.requireNonNull(failableDoublePredicate);
        return new FailableDoublePredicate() { // from class: ax7
            @Override // org.apache.commons.lang3.function.FailableDoublePredicate
            public /* synthetic */ FailableDoublePredicate and(FailableDoublePredicate failableDoublePredicate2) {
                return hz7.$default$and(this, failableDoublePredicate2);
            }

            @Override // org.apache.commons.lang3.function.FailableDoublePredicate
            public /* synthetic */ FailableDoublePredicate negate() {
                return hz7.$default$negate(this);
            }

            @Override // org.apache.commons.lang3.function.FailableDoublePredicate
            public /* synthetic */ FailableDoublePredicate or(FailableDoublePredicate failableDoublePredicate2) {
                return hz7.$default$or(this, failableDoublePredicate2);
            }

            @Override // org.apache.commons.lang3.function.FailableDoublePredicate
            public final boolean test(double d) {
                return _this.test(d) || failableDoublePredicate.test(d);
            }
        };
    }
}
