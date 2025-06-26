package defpackage;

/* loaded from: classes.dex */
public abstract class hg<T> extends og {
    public hg(lg lgVar) {
        super(lgVar);
    }

    public abstract void d(eh ehVar, T t);

    public final void e(T t) {
        eh ehVarA = a();
        try {
            d(ehVarA, t);
            ehVarA.f.executeInsert();
            if (ehVarA == this.c) {
                this.a.set(false);
            }
        } catch (Throwable th) {
            c(ehVarA);
            throw th;
        }
    }
}
