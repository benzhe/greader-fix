package defpackage;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class il4 extends qj4<String> implements hl4, RandomAccess {
    public static final il4 g;
    public final List<Object> f;

    static {
        il4 il4Var = new il4(10);
        g = il4Var;
        il4Var.e = false;
    }

    public il4(int i) {
        this.f = new ArrayList(i);
    }

    public static String h(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if (!(obj instanceof vj4)) {
            Charset charset = rk4.a;
            return new String((byte[]) obj, rk4.a);
        }
        vj4 vj4Var = (vj4) obj;
        Objects.requireNonNull(vj4Var);
        return vj4Var.h() == 0 ? "" : vj4Var.n(rk4.a);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        d();
        this.f.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // defpackage.qj4, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // defpackage.hl4
    public final List<?> b() {
        return Collections.unmodifiableList(this.f);
    }

    @Override // defpackage.hl4
    public final Object c(int i) {
        return this.f.get(i);
    }

    @Override // defpackage.qj4, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        d();
        this.f.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        Object obj = this.f.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof vj4) {
            vj4 vj4Var = (vj4) obj;
            Objects.requireNonNull(vj4Var);
            String strN = vj4Var.h() == 0 ? "" : vj4Var.n(rk4.a);
            if (vj4Var.s()) {
                this.f.set(i, strN);
            }
            return strN;
        }
        byte[] bArr = (byte[]) obj;
        Charset charset = rk4.a;
        String str = new String(bArr, rk4.a);
        if (kn4.a.a(0, bArr, 0, bArr.length) == 0) {
            this.f.set(i, str);
        }
        return str;
    }

    @Override // defpackage.wk4
    public final /* synthetic */ wk4 i(int i) {
        if (i < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i);
        arrayList.addAll(this.f);
        return new il4((ArrayList<Object>) arrayList);
    }

    @Override // defpackage.hl4
    public final hl4 k0() {
        return this.e ? new dn4(this) : this;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        d();
        Object objRemove = this.f.remove(i);
        ((AbstractList) this).modCount++;
        return h(objRemove);
    }

    @Override // defpackage.hl4
    public final void s0(vj4 vj4Var) {
        d();
        this.f.add(vj4Var);
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        d();
        return h(this.f.set(i, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f.size();
    }

    @Override // defpackage.qj4, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends String> collection) {
        d();
        if (collection instanceof hl4) {
            collection = ((hl4) collection).b();
        }
        boolean zAddAll = this.f.addAll(i, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    public il4(ArrayList<Object> arrayList) {
        this.f = arrayList;
    }
}
