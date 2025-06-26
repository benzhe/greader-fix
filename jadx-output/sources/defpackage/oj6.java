package defpackage;

import defpackage.jj6;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public class oj6 extends ki6<String> implements pj6, RandomAccess {
    public static final oj6 g;
    public final List<Object> f;

    static {
        oj6 oj6Var = new oj6(10);
        g = oj6Var;
        oj6Var.e = false;
    }

    public oj6(int i) {
        this.f = new ArrayList(i);
    }

    public static String h(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if (!(obj instanceof qi6)) {
            Charset charset = jj6.a;
            return new String((byte[]) obj, jj6.a);
        }
        qi6 qi6Var = (qi6) obj;
        Objects.requireNonNull(qi6Var);
        return qi6Var.size() == 0 ? "" : qi6Var.J(jj6.a);
    }

    @Override // jj6.d
    public jj6.d E(int i) {
        if (i < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i);
        arrayList.addAll(this.f);
        return new oj6((ArrayList<Object>) arrayList);
    }

    @Override // defpackage.pj6
    public void F(qi6 qi6Var) {
        d();
        this.f.add(qi6Var);
        ((AbstractList) this).modCount++;
    }

    @Override // defpackage.pj6
    public List<?> S() {
        return Collections.unmodifiableList(this.f);
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i, Object obj) {
        d();
        this.f.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // defpackage.ki6, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // defpackage.ki6, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        d();
        this.f.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i) {
        String str;
        Object obj = this.f.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof qi6) {
            qi6 qi6Var = (qi6) obj;
            Objects.requireNonNull(qi6Var);
            str = qi6Var.size() == 0 ? "" : qi6Var.J(jj6.a);
            if (qi6Var.y()) {
                this.f.set(i, str);
            }
        } else {
            byte[] bArr = (byte[]) obj;
            Charset charset = jj6.a;
            str = new String(bArr, jj6.a);
            if (dl6.a.c(0, bArr, 0, bArr.length) == 0) {
                this.f.set(i, str);
            }
        }
        return str;
    }

    @Override // defpackage.pj6
    public Object m(int i) {
        return this.f.get(i);
    }

    @Override // defpackage.pj6
    public pj6 p0() {
        return this.e ? new bl6(this) : this;
    }

    @Override // defpackage.ki6, java.util.AbstractList, java.util.List
    public Object remove(int i) {
        d();
        Object objRemove = this.f.remove(i);
        ((AbstractList) this).modCount++;
        return h(objRemove);
    }

    @Override // java.util.AbstractList, java.util.List
    public Object set(int i, Object obj) {
        d();
        return h(this.f.set(i, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f.size();
    }

    @Override // defpackage.ki6, java.util.AbstractList, java.util.List
    public boolean addAll(int i, Collection<? extends String> collection) {
        d();
        if (collection instanceof pj6) {
            collection = ((pj6) collection).S();
        }
        boolean zAddAll = this.f.addAll(i, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    public oj6(ArrayList<Object> arrayList) {
        this.f = arrayList;
    }
}
