package defpackage;

import java.util.Objects;
import org.apache.commons.lang3.function.FailableBiConsumer;

/* compiled from: FailableBiConsumer.java */
/* loaded from: classes2.dex */
public final /* synthetic */ class cz7 {
    public static FailableBiConsumer $default$andThen(final FailableBiConsumer _this, final FailableBiConsumer failableBiConsumer) {
        Objects.requireNonNull(failableBiConsumer);
        return new FailableBiConsumer() { // from class: nw7
            @Override // org.apache.commons.lang3.function.FailableBiConsumer
            public final void accept(Object obj, Object obj2) throws Throwable {
                FailableBiConsumer failableBiConsumer2 = _this;
                FailableBiConsumer failableBiConsumer3 = failableBiConsumer;
                failableBiConsumer2.accept(obj, obj2);
                failableBiConsumer3.accept(obj, obj2);
            }

            @Override // org.apache.commons.lang3.function.FailableBiConsumer
            public /* synthetic */ FailableBiConsumer andThen(FailableBiConsumer failableBiConsumer2) {
                return cz7.$default$andThen(this, failableBiConsumer2);
            }
        };
    }
}
