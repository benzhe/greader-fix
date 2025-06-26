package defpackage;

import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public abstract class og {
    public final AtomicBoolean a = new AtomicBoolean(false);
    public final lg b;
    public volatile eh c;

    public og(lg lgVar) {
        this.b = lgVar;
    }

    public eh a() {
        this.b.a();
        if (!this.a.compareAndSet(false, true)) {
            return this.b.d(b());
        }
        if (this.c == null) {
            this.c = this.b.d(b());
        }
        return this.c;
    }

    public abstract String b();

    public void c(eh ehVar) {
        if (ehVar == this.c) {
            this.a.set(false);
        }
    }
}
