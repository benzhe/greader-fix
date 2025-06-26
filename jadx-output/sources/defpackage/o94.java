package defpackage;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class o94 extends u74<String> implements RandomAccess, p94 {
    public static final o94 g;
    public final List<Object> f;

    static {
        o94 o94Var = new o94(10);
        g = o94Var;
        o94Var.e = false;
    }

    public o94() {
        this(10);
    }

    public static String j(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof g84) {
            g84 g84Var = (g84) obj;
            return g84Var.j() == 0 ? "" : g84Var.o(j94.a);
        }
        Charset charset = j94.a;
        return new String((byte[]) obj, j94.a);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        d();
        this.f.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // defpackage.u74, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends String> collection) {
        d();
        if (collection instanceof p94) {
            collection = ((p94) collection).g();
        }
        boolean zAddAll = this.f.addAll(i, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    @Override // defpackage.u74, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        d();
        this.f.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // defpackage.p94
    public final p94 e() {
        return this.e ? new fb4(this) : this;
    }

    @Override // defpackage.p94
    public final List<?> g() {
        return Collections.unmodifiableList(this.f);
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public final String get(int i) {
        Object obj = this.f.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof g84) {
            g84 g84Var = (g84) obj;
            String strO = g84Var.j() == 0 ? "" : g84Var.o(j94.a);
            if (g84Var.p()) {
                this.f.set(i, strO);
            }
            return strO;
        }
        byte[] bArr = (byte[]) obj;
        Charset charset = j94.a;
        String str = new String(bArr, j94.a);
        if (qb4.a.a(0, bArr, 0, bArr.length) == 0) {
            this.f.set(i, str);
        }
        return str;
    }

    @Override // defpackage.u74, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        d();
        Object objRemove = this.f.remove(i);
        ((AbstractList) this).modCount++;
        return j(objRemove);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        d();
        return j(this.f.set(i, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f.size();
    }

    @Override // defpackage.i94
    public final /* bridge */ /* synthetic */ i94 w(int i) {
        if (i < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i);
        arrayList.addAll(this.f);
        return new o94((ArrayList<Object>) arrayList);
    }

    @Override // defpackage.p94
    public final void x(g84 g84Var) {
        d();
        this.f.add(g84Var);
        ((AbstractList) this).modCount++;
    }

    @Override // defpackage.p94
    public final Object z0(int i) {
        return this.f.get(i);
    }

    public o94(int i) {
        this.f = new ArrayList(i);
    }

    public o94(ArrayList<Object> arrayList) {
        this.f = arrayList;
    }

    @Override // defpackage.u74, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }
}
