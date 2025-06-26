package defpackage;

import java.util.Objects;
import org.apache.commons.lang3.function.FailableIntConsumer;

/* compiled from: FailableIntConsumer.java */
/* loaded from: classes2.dex */
public final /* synthetic */ class kz7 {
    public static FailableIntConsumer $default$andThen(final FailableIntConsumer _this, final FailableIntConsumer failableIntConsumer) {
        Objects.requireNonNull(failableIntConsumer);
        return new FailableIntConsumer() { // from class: nx7
            @Override // org.apache.commons.lang3.function.FailableIntConsumer
            public final void accept(int i) throws Throwable {
                FailableIntConsumer failableIntConsumer2 = _this;
                FailableIntConsumer failableIntConsumer3 = failableIntConsumer;
                failableIntConsumer2.accept(i);
                failableIntConsumer3.accept(i);
            }

            @Override // org.apache.commons.lang3.function.FailableIntConsumer
            public /* synthetic */ FailableIntConsumer andThen(FailableIntConsumer failableIntConsumer2) {
                return kz7.$default$andThen(this, failableIntConsumer2);
            }
        };
    }
}
