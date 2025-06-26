package defpackage;

import defpackage.on5;
import java.util.Comparator;

/* loaded from: classes.dex */
public abstract class qn5<K, V> implements on5<K, V> {
    public final K a;
    public final V b;
    public on5<K, V> c;
    public final on5<K, V> d;

    public qn5(K k, V v, on5<K, V> on5Var, on5<K, V> on5Var2) {
        this.a = k;
        this.b = v;
        this.c = on5Var == null ? nn5.a : on5Var;
        this.d = on5Var2 == null ? nn5.a : on5Var2;
    }

    public static on5.a o(on5 on5Var) {
        return on5Var.d() ? on5.a.BLACK : on5.a.RED;
    }

    @Override // defpackage.on5
    public on5<K, V> a() {
        return this.c;
    }

    @Override // defpackage.on5
    public on5<K, V> b(K k, V v, Comparator<K> comparator) {
        int iCompare = comparator.compare(k, this.a);
        return (iCompare < 0 ? k(null, null, this.c.b(k, v, comparator), null) : iCompare == 0 ? k(k, v, null, null) : k(null, null, null, this.d.b(k, v, comparator))).l();
    }

    @Override // defpackage.on5
    public on5<K, V> c(K k, Comparator<K> comparator) {
        qn5<K, V> qn5VarK;
        if (comparator.compare(k, this.a) < 0) {
            qn5<K, V> qn5VarN = (this.c.isEmpty() || this.c.d() || ((qn5) this.c).c.d()) ? this : n();
            qn5VarK = qn5VarN.k(null, null, qn5VarN.c.c(k, comparator), null);
        } else {
            qn5<K, V> qn5VarR = this.c.d() ? r() : this;
            if (!qn5VarR.d.isEmpty() && !qn5VarR.d.d() && !((qn5) qn5VarR.d).c.d()) {
                qn5VarR = qn5VarR.i();
                if (qn5VarR.c.a().d()) {
                    qn5VarR = qn5VarR.r().i();
                }
            }
            if (comparator.compare(k, qn5VarR.a) == 0) {
                if (qn5VarR.d.isEmpty()) {
                    return nn5.a;
                }
                on5<K, V> on5VarG = qn5VarR.d.g();
                qn5VarR = qn5VarR.k(on5VarG.getKey(), on5VarG.getValue(), null, ((qn5) qn5VarR.d).p());
            }
            qn5VarK = qn5VarR.k(null, null, null, qn5VarR.d.c(k, comparator));
        }
        return qn5VarK.l();
    }

    @Override // defpackage.on5
    public on5<K, V> e() {
        return this.d;
    }

    @Override // defpackage.on5
    public /* bridge */ /* synthetic */ on5 f(Object obj, Object obj2, on5.a aVar, on5 on5Var, on5 on5Var2) {
        return j(null, null, aVar, on5Var, on5Var2);
    }

    @Override // defpackage.on5
    public on5<K, V> g() {
        return this.c.isEmpty() ? this : this.c.g();
    }

    @Override // defpackage.on5
    public K getKey() {
        return this.a;
    }

    @Override // defpackage.on5
    public V getValue() {
        return this.b;
    }

    @Override // defpackage.on5
    public on5<K, V> h() {
        return this.d.isEmpty() ? this : this.d.h();
    }

    public final qn5<K, V> i() {
        on5<K, V> on5Var = this.c;
        on5<K, V> on5VarF = on5Var.f(null, null, o(on5Var), null, null);
        on5<K, V> on5Var2 = this.d;
        return j(null, null, d() ? on5.a.BLACK : on5.a.RED, on5VarF, on5Var2.f(null, null, o(on5Var2), null, null));
    }

    @Override // defpackage.on5
    public boolean isEmpty() {
        return false;
    }

    public qn5<K, V> j(K k, V v, on5.a aVar, on5<K, V> on5Var, on5<K, V> on5Var2) {
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
        return aVar == on5.a.RED ? new pn5(k, v, on5Var, on5Var2) : new mn5(k, v, on5Var, on5Var2);
    }

    public abstract qn5<K, V> k(K k, V v, on5<K, V> on5Var, on5<K, V> on5Var2);

    public final qn5<K, V> l() {
        qn5<K, V> qn5VarQ = (!this.d.d() || this.c.d()) ? this : q();
        if (qn5VarQ.c.d() && ((qn5) qn5VarQ.c).c.d()) {
            qn5VarQ = qn5VarQ.r();
        }
        return (qn5VarQ.c.d() && qn5VarQ.d.d()) ? qn5VarQ.i() : qn5VarQ;
    }

    public abstract on5.a m();

    public final qn5<K, V> n() {
        qn5<K, V> qn5VarI = i();
        return qn5VarI.d.a().d() ? qn5VarI.k(null, null, null, ((qn5) qn5VarI.d).r()).q().i() : qn5VarI;
    }

    public final on5<K, V> p() {
        if (this.c.isEmpty()) {
            return nn5.a;
        }
        qn5<K, V> qn5VarN = (this.c.d() || this.c.a().d()) ? this : n();
        return qn5VarN.k(null, null, ((qn5) qn5VarN.c).p(), null).l();
    }

    public final qn5<K, V> q() {
        return (qn5) this.d.f(null, null, m(), j(null, null, on5.a.RED, null, ((qn5) this.d).c), null);
    }

    public final qn5<K, V> r() {
        return (qn5) this.c.f(null, null, m(), null, j(null, null, on5.a.RED, ((qn5) this.c).d, null));
    }

    public void s(on5<K, V> on5Var) {
        this.c = on5Var;
    }
}
