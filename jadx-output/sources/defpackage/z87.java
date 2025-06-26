package defpackage;

import defpackage.x87;

/* loaded from: classes2.dex */
public final class z87<T> implements h87<T> {
    public final x87.c<T> a;

    public z87(x87.c<T> cVar) {
        this.a = cVar;
    }

    @Override // defpackage.h87
    public T a() {
        return (T) x87.a(this.a);
    }

    @Override // defpackage.h87
    public T b(Object obj) {
        x87.b(this.a, obj);
        return null;
    }
}
