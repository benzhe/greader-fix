package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes2.dex */
public abstract class nq7<T> extends vq7 {
    public static final AtomicReferenceFieldUpdater a = AtomicReferenceFieldUpdater.newUpdater(nq7.class, Object.class, "_consensus");
    private volatile Object _consensus = mq7.a;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.vq7
    public final Object a(Object obj) {
        Object objC = this._consensus;
        Object obj2 = mq7.a;
        if (objC == obj2) {
            objC = c(obj);
            boolean z = fp7.a;
            Object obj3 = this._consensus;
            if (obj3 != obj2) {
                objC = obj3;
            } else if (!a.compareAndSet(this, obj2, objC)) {
                objC = this._consensus;
            }
        }
        b(obj, objC);
        return objC;
    }

    public abstract void b(T t, Object obj);

    public abstract Object c(T t);
}
