package defpackage;

import java.util.Comparator;

/* JADX INFO: Add missing generic type declarations: [T] */
/* loaded from: classes2.dex */
public class v47<T> implements Comparator<T> {
    public final /* synthetic */ w47 e;

    public v47(w47 w47Var) {
        this.e = w47Var;
    }

    @Override // java.util.Comparator
    public int compare(T t, T t2) {
        int iB = this.e.b(t) - this.e.b(t2);
        return iB != 0 ? iB : t.getClass().getName().compareTo(t2.getClass().getName());
    }
}
