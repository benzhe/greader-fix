package defpackage;

import defpackage.wu2;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public abstract class fv2<V, C> extends wu2<V, C> {
    public List<hv2<V>> t;

    public fv2(it2 it2Var) {
        List<hv2<V>> arrayList;
        super(it2Var, true, true);
        if (it2Var.isEmpty()) {
            mu2<Object> mu2Var = nt2.f;
            arrayList = au2.i;
        } else {
            int size = it2Var.size();
            c50.g4(size, "initialArraySize");
            arrayList = new ArrayList(size);
        }
        for (int i = 0; i < it2Var.size(); i++) {
            arrayList.add(null);
        }
        this.t = arrayList;
    }

    @Override // defpackage.wu2
    public final void F(wu2.a aVar) {
        super.F(aVar);
        this.t = null;
    }

    @Override // defpackage.wu2
    public final void H(int i, V v) {
        List<hv2<V>> list = this.t;
        if (list != null) {
            list.set(i, new hv2<>(v));
        }
    }

    @Override // defpackage.wu2
    public final void K() {
        List<hv2<V>> list = this.t;
        if (list != null) {
            int size = list.size();
            c50.g4(size, "initialArraySize");
            ArrayList arrayList = new ArrayList(size);
            Iterator<hv2<V>> it = list.iterator();
            while (it.hasNext()) {
                hv2<V> next = it.next();
                arrayList.add(next != null ? next.a : null);
            }
            h(Collections.unmodifiableList(arrayList));
        }
    }
}
