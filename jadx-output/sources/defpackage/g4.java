package defpackage;

import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [E] */
/* loaded from: classes.dex */
public class g4<E> extends l4<E, E> {
    public final /* synthetic */ h4 d;

    public g4(h4 h4Var) {
        this.d = h4Var;
    }

    @Override // defpackage.l4
    public void a() {
        this.d.clear();
    }

    @Override // defpackage.l4
    public Object b(int i, int i2) {
        return this.d.f[i];
    }

    @Override // defpackage.l4
    public Map<E, E> c() {
        throw new UnsupportedOperationException("not a map");
    }

    @Override // defpackage.l4
    public int d() {
        return this.d.g;
    }

    @Override // defpackage.l4
    public int e(Object obj) {
        return this.d.indexOf(obj);
    }

    @Override // defpackage.l4
    public int f(Object obj) {
        return this.d.indexOf(obj);
    }

    @Override // defpackage.l4
    public void g(E e, E e2) {
        this.d.add(e);
    }

    @Override // defpackage.l4
    public void h(int i) {
        this.d.n(i);
    }

    @Override // defpackage.l4
    public E i(int i, E e) {
        throw new UnsupportedOperationException("not a map");
    }
}
