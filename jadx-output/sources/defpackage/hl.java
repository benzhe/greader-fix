package defpackage;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class hl<T> implements bl<T> {
    public final List<String> a = new ArrayList();
    public T b;
    public ql<T> c;
    public a d;

    public interface a {
    }

    public hl(ql<T> qlVar) {
        this.c = qlVar;
    }

    @Override // defpackage.bl
    public void a(T t) {
        this.b = t;
        e();
    }

    public abstract boolean b(dm dmVar);

    public abstract boolean c(T t);

    public void d(List<dm> list) {
        this.a.clear();
        for (dm dmVar : list) {
            if (b(dmVar)) {
                this.a.add(dmVar.a);
            }
        }
        if (this.a.isEmpty()) {
            this.c.b(this);
        } else {
            ql<T> qlVar = this.c;
            synchronized (qlVar.c) {
                if (qlVar.d.add(this)) {
                    if (qlVar.d.size() == 1) {
                        qlVar.e = qlVar.a();
                        vj.c().a(ql.f, String.format("%s: initial state = %s", qlVar.getClass().getSimpleName(), qlVar.e), new Throwable[0]);
                        qlVar.d();
                    }
                    a(qlVar.e);
                }
            }
        }
        e();
    }

    public final void e() {
        if (this.a.isEmpty() || this.d == null) {
            return;
        }
        T t = this.b;
        if (t == null || c(t)) {
            a aVar = this.d;
            List<String> list = this.a;
            el elVar = (el) aVar;
            synchronized (elVar.c) {
                dl dlVar = elVar.a;
                if (dlVar != null) {
                    dlVar.b(list);
                }
            }
            return;
        }
        a aVar2 = this.d;
        List<String> list2 = this.a;
        el elVar2 = (el) aVar2;
        synchronized (elVar2.c) {
            ArrayList arrayList = new ArrayList();
            for (String str : list2) {
                if (elVar2.a(str)) {
                    vj.c().a(el.d, String.format("Constraints met for %s", str), new Throwable[0]);
                    arrayList.add(str);
                }
            }
            dl dlVar2 = elVar2.a;
            if (dlVar2 != null) {
                dlVar2.e(arrayList);
            }
        }
    }
}
