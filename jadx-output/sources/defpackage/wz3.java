package defpackage;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* loaded from: classes.dex */
public final class wz3<K, V> implements Iterator<Map.Entry<K, V>> {
    public int e = -1;
    public boolean f;
    public Iterator<Map.Entry<K, V>> g;
    public final /* synthetic */ qz3 h;

    public wz3(qz3 qz3Var, rz3 rz3Var) {
        this.h = qz3Var;
    }

    public final Iterator<Map.Entry<K, V>> a() {
        if (this.g == null) {
            this.g = this.h.g.entrySet().iterator();
        }
        return this.g;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.e + 1 < this.h.f.size() || (!this.h.g.isEmpty() && a().hasNext());
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        this.f = true;
        int i = this.e + 1;
        this.e = i;
        return i < this.h.f.size() ? this.h.f.get(this.e) : a().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.f = false;
        qz3 qz3Var = this.h;
        int i = qz3.k;
        qz3Var.g();
        if (this.e >= this.h.f.size()) {
            a().remove();
            return;
        }
        qz3 qz3Var2 = this.h;
        int i2 = this.e;
        this.e = i2 - 1;
        qz3Var2.d(i2);
    }
}
