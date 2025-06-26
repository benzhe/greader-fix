package defpackage;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class va4 implements Iterator<Map.Entry> {
    public int e = -1;
    public boolean f;
    public Iterator<Map.Entry> g;
    public final /* synthetic */ xa4 h;

    public final Iterator<Map.Entry> a() {
        if (this.g == null) {
            this.g = this.h.g.entrySet().iterator();
        }
        return this.g;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.e + 1 >= this.h.f.size()) {
            return !this.h.g.isEmpty() && a().hasNext();
        }
        return true;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Map.Entry next() {
        this.f = true;
        int i = this.e + 1;
        this.e = i;
        return (Map.Entry) (i < this.h.f.size() ? this.h.f.get(this.e) : a().next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.f = false;
        xa4 xa4Var = this.h;
        int i = xa4.k;
        xa4Var.g();
        if (this.e >= this.h.f.size()) {
            a().remove();
            return;
        }
        xa4 xa4Var2 = this.h;
        int i2 = this.e;
        this.e = i2 - 1;
        xa4Var2.e(i2);
    }
}
