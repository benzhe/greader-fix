package defpackage;

import java.util.Iterator;

/* JADX INFO: Add missing generic type declarations: [T] */
/* loaded from: classes2.dex */
public final class un7<T> implements Iterable<T>, wm7 {
    public final /* synthetic */ sn7 e;

    public un7(sn7 sn7Var) {
        this.e = sn7Var;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        return this.e.iterator();
    }
}
