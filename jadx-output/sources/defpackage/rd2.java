package defpackage;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final /* synthetic */ class rd2 implements Callable {
    public final List e;
    public final Object f;

    public rd2(List list, Object obj) {
        this.e = list;
        this.f = obj;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        List list = this.e;
        Object obj = this.f;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            nd2 nd2Var = (nd2) ((aw2) it.next()).get();
            if (nd2Var != null) {
                nd2Var.b(obj);
            }
        }
        return obj;
    }
}
