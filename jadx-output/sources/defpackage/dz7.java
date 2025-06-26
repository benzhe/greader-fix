package defpackage;

import java.util.Objects;
import org.apache.commons.lang3.function.FailableBiFunction;
import org.apache.commons.lang3.function.FailableFunction;

/* compiled from: FailableBiFunction.java */
/* loaded from: classes2.dex */
public final /* synthetic */ class dz7 {
    public static FailableBiFunction $default$andThen(final FailableBiFunction _this, final FailableFunction failableFunction) {
        Objects.requireNonNull(failableFunction);
        return new FailableBiFunction() { // from class: pw7
            @Override // org.apache.commons.lang3.function.FailableBiFunction
            public /* synthetic */ FailableBiFunction andThen(FailableFunction failableFunction2) {
                return dz7.$default$andThen(this, failableFunction2);
            }

            @Override // org.apache.commons.lang3.function.FailableBiFunction
            public final Object apply(Object obj, Object obj2) {
                return failableFunction.apply(_this.apply(obj, obj2));
            }
        };
    }
}
