package defpackage;

import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class ob0 {
    public boolean a = false;
    public boolean b = false;
    public float c = 0.0f;
    public AtomicBoolean d = new AtomicBoolean(false);

    public final synchronized boolean a(boolean z) {
        if (!this.d.get()) {
            return z;
        }
        return this.a;
    }

    public final synchronized boolean b() {
        return this.b;
    }

    public final synchronized float c() {
        return this.c;
    }
}
