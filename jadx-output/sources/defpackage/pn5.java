package defpackage;

import defpackage.on5;

/* loaded from: classes.dex */
public class pn5<K, V> extends qn5<K, V> {
    /* JADX WARN: Illegal instructions before constructor call */
    public pn5(K k, V v) {
        nn5 nn5Var = nn5.a;
        super(k, v, nn5Var, nn5Var);
    }

    @Override // defpackage.on5
    public boolean d() {
        return true;
    }

    @Override // defpackage.qn5
    public qn5<K, V> k(K k, V v, on5<K, V> on5Var, on5<K, V> on5Var2) {
        if (k == null) {
            k = this.a;
        }
        if (v == null) {
            v = this.b;
        }
        if (on5Var == null) {
            on5Var = this.c;
        }
        if (on5Var2 == null) {
            on5Var2 = this.d;
        }
        return new pn5(k, v, on5Var, on5Var2);
    }

    @Override // defpackage.qn5
    public on5.a m() {
        return on5.a.RED;
    }

    @Override // defpackage.on5
    public int size() {
        return this.d.size() + this.c.size() + 1;
    }

    public pn5(K k, V v, on5<K, V> on5Var, on5<K, V> on5Var2) {
        super(k, v, on5Var, on5Var2);
    }
}
