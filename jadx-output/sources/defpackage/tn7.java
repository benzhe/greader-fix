package defpackage;

import java.util.Iterator;

/* JADX INFO: Add missing generic type declarations: [T] */
/* loaded from: classes2.dex */
public final class tn7<T> implements sn7<T> {
    public final /* synthetic */ Iterator a;

    public tn7(Iterator it) {
        this.a = it;
    }

    @Override // defpackage.sn7
    public Iterator<T> iterator() {
        return this.a;
    }
}
