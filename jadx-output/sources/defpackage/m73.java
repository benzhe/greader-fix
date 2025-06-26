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
public final class m73 extends f53<String> implements l73, RandomAccess {
    public static final m73 g;
    public final List<Object> f;

    static {
        m73 m73Var = new m73(10);
        g = m73Var;
        m73Var.e = false;
    }

    public m73(int i) {
        this.f = new ArrayList(i);
    }

    public static String h(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if (!(obj instanceof k53)) {
            Charset charset = u63.a;
            return new String((byte[]) obj, u63.a);
        }
        k53 k53Var = (k53) obj;
        Objects.requireNonNull(k53Var);
        return k53Var.size() == 0 ? "" : k53Var.j(u63.a);
    }

    @Override // defpackage.b73
    public final /* synthetic */ b73 D(int i) {
        if (i < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i);
        arrayList.addAll(this.f);
        return new m73((ArrayList<Object>) arrayList);
    }

    @Override // defpackage.l73
    public final Object L(int i) {
        return this.f.get(i);
    }

    @Override // defpackage.l73
    public final void Z(k53 k53Var) {
        d();
        this.f.add(k53Var);
        ((AbstractList) this).modCount++;
    }

    @Override // defpackage.l73
    public final List<?> a0() {
        return Collections.unmodifiableList(this.f);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        d();
        this.f.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // defpackage.f53, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // defpackage.f53, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
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
        if (obj instanceof k53) {
            k53 k53Var = (k53) obj;
            Objects.requireNonNull(k53Var);
            String strJ = k53Var.size() == 0 ? "" : k53Var.j(u63.a);
            if (k53Var.u()) {
                this.f.set(i, strJ);
            }
            return strJ;
        }
        byte[] bArr = (byte[]) obj;
        Charset charset = u63.a;
        String str = new String(bArr, u63.a);
        if (u93.a.a(0, bArr, 0, bArr.length) == 0) {
            this.f.set(i, str);
        }
        return str;
    }

    @Override // defpackage.l73
    public final l73 j0() {
        return this.e ? new q93(this) : this;
    }

    @Override // defpackage.f53, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        d();
        Object objRemove = this.f.remove(i);
        ((AbstractList) this).modCount++;
        return h(objRemove);
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

    @Override // defpackage.f53, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends String> collection) {
        d();
        if (collection instanceof l73) {
            collection = ((l73) collection).a0();
        }
        boolean zAddAll = this.f.addAll(i, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    public m73(ArrayList<Object> arrayList) {
        this.f = arrayList;
    }
}
