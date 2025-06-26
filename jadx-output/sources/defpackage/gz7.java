package defpackage;

import java.util.Objects;
import org.apache.commons.lang3.function.FailableDoubleConsumer;

/* compiled from: FailableDoubleConsumer.java */
/* loaded from: classes2.dex */
public final /* synthetic */ class gz7 {
    public static FailableDoubleConsumer $default$andThen(final FailableDoubleConsumer _this, final FailableDoubleConsumer failableDoubleConsumer) {
        Objects.requireNonNull(failableDoubleConsumer);
        return new FailableDoubleConsumer() { // from class: yw7
            @Override // org.apache.commons.lang3.function.FailableDoubleConsumer
            public final void accept(double d) throws Throwable {
                FailableDoubleConsumer failableDoubleConsumer2 = _this;
                FailableDoubleConsumer failableDoubleConsumer3 = failableDoubleConsumer;
                failableDoubleConsumer2.accept(d);
                failableDoubleConsumer3.accept(d);
            }

            @Override // org.apache.commons.lang3.function.FailableDoubleConsumer
            public /* synthetic */ FailableDoubleConsumer andThen(FailableDoubleConsumer failableDoubleConsumer2) {
                return gz7.$default$andThen(this, failableDoubleConsumer2);
            }
        };
    }
}
