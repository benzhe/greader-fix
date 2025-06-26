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
public final class gy3 extends mw3<String> implements hy3, RandomAccess {
    public static final gy3 g;
    public final List<Object> f;

    static {
        gy3 gy3Var = new gy3(10);
        g = gy3Var;
        gy3Var.e = false;
    }

    public gy3(int i) {
        this.f = new ArrayList(i);
    }

    public gy3(ArrayList<Object> arrayList) {
        this.f = arrayList;
    }

    public static String h(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if (!(obj instanceof sw3)) {
            Charset charset = ux3.a;
            return new String((byte[]) obj, ux3.a);
        }
        sw3 sw3Var = (sw3) obj;
        Objects.requireNonNull(sw3Var);
        return sw3Var.size() == 0 ? "" : sw3Var.h(ux3.a);
    }

    @Override // defpackage.hy3
    public final List<?> I() {
        return Collections.unmodifiableList(this.f);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        d();
        this.f.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // defpackage.mw3, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends String> collection) {
        d();
        if (collection instanceof hy3) {
            collection = ((hy3) collection).I();
        }
        boolean zAddAll = this.f.addAll(i, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    @Override // defpackage.mw3, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // defpackage.mw3, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
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
        if (obj instanceof sw3) {
            sw3 sw3Var = (sw3) obj;
            Objects.requireNonNull(sw3Var);
            String strH = sw3Var.size() == 0 ? "" : sw3Var.h(ux3.a);
            if (sw3Var.l()) {
                this.f.set(i, strH);
            }
            return strH;
        }
        byte[] bArr = (byte[]) obj;
        Charset charset = ux3.a;
        String str = new String(bArr, ux3.a);
        if (j04.a.a(0, bArr, 0, bArr.length) == 0) {
            this.f.set(i, str);
        }
        return str;
    }

    @Override // defpackage.xx3
    public final /* synthetic */ xx3 k(int i) {
        if (i < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i);
        arrayList.addAll(this.f);
        return new gy3((ArrayList<Object>) arrayList);
    }

    @Override // defpackage.hy3
    public final Object m(int i) {
        return this.f.get(i);
    }

    @Override // java.util.AbstractList, java.util.List
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

    @Override // defpackage.hy3
    public final hy3 v0() {
        return this.e ? new e04(this) : this;
    }
}
