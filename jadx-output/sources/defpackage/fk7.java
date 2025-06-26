package defpackage;

import java.util.Iterator;

/* JADX INFO: Add missing generic type declarations: [T] */
/* loaded from: classes2.dex */
public final class fk7<T> implements sn7<T> {
    public final /* synthetic */ Iterable a;

    public fk7(Iterable iterable) {
        this.a = iterable;
    }

    @Override // defpackage.sn7
    public Iterator<T> iterator() {
        return this.a.iterator();
    }
}
