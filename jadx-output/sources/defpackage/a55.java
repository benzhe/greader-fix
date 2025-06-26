package defpackage;

import java.util.ArrayDeque;
import java.util.Queue;

/* loaded from: classes.dex */
public final class a55<TResult> {
    public final Object a = new Object();
    public Queue<b55<TResult>> b;
    public boolean c;

    public final void a(e45<TResult> e45Var) {
        b55<TResult> b55VarPoll;
        synchronized (this.a) {
            if (this.b != null && !this.c) {
                this.c = true;
                while (true) {
                    synchronized (this.a) {
                        b55VarPoll = this.b.poll();
                        if (b55VarPoll == null) {
                            this.c = false;
                            return;
                        }
                    }
                    b55VarPoll.a(e45Var);
                }
            }
        }
    }

    public final void b(b55<TResult> b55Var) {
        synchronized (this.a) {
            if (this.b == null) {
                this.b = new ArrayDeque();
            }
            this.b.add(b55Var);
        }
    }
}
