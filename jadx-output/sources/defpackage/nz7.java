package defpackage;

import java.util.Objects;
import org.apache.commons.lang3.function.FailableLongConsumer;

/* compiled from: FailableLongConsumer.java */
/* loaded from: classes2.dex */
public final /* synthetic */ class nz7 {
    public static FailableLongConsumer $default$andThen(final FailableLongConsumer _this, final FailableLongConsumer failableLongConsumer) {
        Objects.requireNonNull(failableLongConsumer);
        return new FailableLongConsumer() { // from class: ay7
            @Override // org.apache.commons.lang3.function.FailableLongConsumer
            public final void accept(long j) throws Throwable {
                FailableLongConsumer failableLongConsumer2 = _this;
                FailableLongConsumer failableLongConsumer3 = failableLongConsumer;
                failableLongConsumer2.accept(j);
                failableLongConsumer3.accept(j);
            }

            @Override // org.apache.commons.lang3.function.FailableLongConsumer
            public /* synthetic */ FailableLongConsumer andThen(FailableLongConsumer failableLongConsumer2) {
                return nz7.$default$andThen(this, failableLongConsumer2);
            }
        };
    }
}
