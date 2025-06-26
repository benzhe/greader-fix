package defpackage;

import java.util.Objects;
import org.apache.commons.lang3.function.FailableConsumer;

/* compiled from: FailableConsumer.java */
/* loaded from: classes2.dex */
public final /* synthetic */ class fz7 {
    public static FailableConsumer $default$andThen(final FailableConsumer _this, final FailableConsumer failableConsumer) {
        Objects.requireNonNull(failableConsumer);
        return new FailableConsumer() { // from class: vw7
            @Override // org.apache.commons.lang3.function.FailableConsumer
            public final void accept(Object obj) throws Throwable {
                FailableConsumer failableConsumer2 = _this;
                FailableConsumer failableConsumer3 = failableConsumer;
                failableConsumer2.accept(obj);
                failableConsumer3.accept(obj);
            }

            @Override // org.apache.commons.lang3.function.FailableConsumer
            public /* synthetic */ FailableConsumer andThen(FailableConsumer failableConsumer2) {
                return fz7.$default$andThen(this, failableConsumer2);
            }
        };
    }
}
