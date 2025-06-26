package defpackage;

import java.util.Objects;
import org.apache.commons.lang3.function.FailableFunction;

/* compiled from: FailableFunction.java */
/* loaded from: classes2.dex */
public final /* synthetic */ class jz7 {
    public static FailableFunction $default$andThen(final FailableFunction _this, final FailableFunction failableFunction) {
        Objects.requireNonNull(failableFunction);
        return new FailableFunction() { // from class: lx7
            @Override // org.apache.commons.lang3.function.FailableFunction
            public /* synthetic */ FailableFunction andThen(FailableFunction failableFunction2) {
                return jz7.$default$andThen(this, failableFunction2);
            }

            @Override // org.apache.commons.lang3.function.FailableFunction
            public final Object apply(Object obj) {
                return failableFunction.apply(_this.apply(obj));
            }

            @Override // org.apache.commons.lang3.function.FailableFunction
            public /* synthetic */ FailableFunction compose(FailableFunction failableFunction2) {
                return jz7.$default$compose(this, failableFunction2);
            }
        };
    }

    public static FailableFunction $default$compose(final FailableFunction _this, final FailableFunction failableFunction) {
        Objects.requireNonNull(failableFunction);
        return new FailableFunction() { // from class: kx7
            @Override // org.apache.commons.lang3.function.FailableFunction
            public /* synthetic */ FailableFunction andThen(FailableFunction failableFunction2) {
                return jz7.$default$andThen(this, failableFunction2);
            }

            @Override // org.apache.commons.lang3.function.FailableFunction
            public final Object apply(Object obj) {
                return _this.apply(failableFunction.apply(obj));
            }

            @Override // org.apache.commons.lang3.function.FailableFunction
            public /* synthetic */ FailableFunction compose(FailableFunction failableFunction2) {
                return jz7.$default$compose(this, failableFunction2);
            }
        };
    }
}
