package defpackage;

import java.util.Random;

/* loaded from: classes2.dex */
public final class ym7 extends xm7 {
    public final a c = new a();

    public static final class a extends ThreadLocal<Random> {
        @Override // java.lang.ThreadLocal
        public Random initialValue() {
            return new Random();
        }
    }

    @Override // defpackage.xm7
    public Random b() {
        Random random = this.c.get();
        im7.d(random, "implStorage.get()");
        return random;
    }
}
