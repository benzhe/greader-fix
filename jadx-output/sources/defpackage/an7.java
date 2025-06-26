package defpackage;

import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;

/* loaded from: classes2.dex */
public final class an7 extends xm7 {
    @Override // defpackage.xm7
    public Random b() {
        ThreadLocalRandom threadLocalRandomCurrent = ThreadLocalRandom.current();
        im7.d(threadLocalRandomCurrent, "ThreadLocalRandom.current()");
        return threadLocalRandomCurrent;
    }
}
