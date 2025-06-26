package defpackage;

import defpackage.on5;

/* loaded from: classes.dex */
public class mn5<K, V> extends qn5<K, V> {
    public int e;

    public mn5(K k, V v, on5<K, V> on5Var, on5<K, V> on5Var2) {
        super(k, v, on5Var, on5Var2);
        this.e = -1;
    }

    @Override // defpackage.on5
    public boolean d() {
        return false;
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
        return new mn5(k, v, on5Var, on5Var2);
    }

    @Override // defpackage.qn5
    public on5.a m() {
        return on5.a.BLACK;
    }

    @Override // defpackage.qn5
    public void s(on5<K, V> on5Var) {
        if (this.e != -1) {
            throw new IllegalStateException("Can't set left after using size");
        }
        this.c = on5Var;
    }

    @Override // defpackage.on5
    public int size() {
        if (this.e == -1) {
            this.e = this.d.size() + this.c.size() + 1;
        }
        return this.e;
    }
}
