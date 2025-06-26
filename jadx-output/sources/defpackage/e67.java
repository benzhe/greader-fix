package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class e67 {
    public ArrayList<a> a = new ArrayList<>();
    public volatile i37 b = i37.IDLE;

    public static final class a {
        public final Runnable a;
        public final Executor b;

        public a(Runnable runnable, Executor executor) {
            this.a = runnable;
            this.b = executor;
        }
    }

    public void a(i37 i37Var) {
        c50.A(i37Var, "newState");
        if (this.b == i37Var || this.b == i37.SHUTDOWN) {
            return;
        }
        this.b = i37Var;
        if (this.a.isEmpty()) {
            return;
        }
        ArrayList<a> arrayList = this.a;
        this.a = new ArrayList<>();
        Iterator<a> it = arrayList.iterator();
        while (it.hasNext()) {
            a next = it.next();
            next.b.execute(next.a);
        }
    }
}
