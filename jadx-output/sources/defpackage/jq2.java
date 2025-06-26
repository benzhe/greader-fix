package defpackage;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class jq2 {
    public final Executor a;
    public final ls0 b;

    public jq2(Executor executor, ls0 ls0Var) {
        this.a = executor;
        this.b = ls0Var;
    }

    public final void a(String str) {
        this.a.execute(new iq2(this, str));
    }

    public final void b(List<String> list) {
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
    }
}
