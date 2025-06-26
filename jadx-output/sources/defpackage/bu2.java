package defpackage;

import java.util.AbstractMap;
import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* loaded from: classes.dex */
public final class bu2<K, V> extends nt2<Map.Entry<K, V>> {
    public final /* synthetic */ cu2 g;

    public bu2(cu2 cu2Var) {
        this.g = cu2Var;
    }

    @Override // java.util.List
    public final /* synthetic */ Object get(int i) {
        c50.F4(i, this.g.j);
        Object[] objArr = this.g.i;
        int i2 = i * 2;
        return new AbstractMap.SimpleImmutableEntry(objArr[i2], objArr[i2 + 1]);
    }

    @Override // defpackage.it2
    public final boolean p() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.g.j;
    }
}
