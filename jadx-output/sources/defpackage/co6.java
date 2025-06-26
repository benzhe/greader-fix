package defpackage;

import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class co6<T, R> implements uc7<Integer, w38<? extends Long>> {
    public static final co6 e = new co6();

    @Override // defpackage.uc7
    public w38<? extends Long> apply(Integer num) {
        im7.e(num, "it");
        return mb7.u(3L, TimeUnit.SECONDS);
    }
}
