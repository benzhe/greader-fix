package defpackage;

import java.util.Deque;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingDeque;

/* loaded from: classes.dex */
public final class yl2<T> {
    public final Deque<aw2<T>> a = new LinkedBlockingDeque();
    public final Callable<T> b;
    public final zv2 c;

    public yl2(Callable<T> callable, zv2 zv2Var) {
        this.b = callable;
        this.c = zv2Var;
    }

    public final synchronized void a(int i) {
        int size = i - this.a.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.a.add(this.c.y(this.b));
        }
    }

    public final synchronized aw2<T> b() {
        a(1);
        return this.a.poll();
    }
}
