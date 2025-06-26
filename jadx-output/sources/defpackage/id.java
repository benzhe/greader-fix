package defpackage;

import androidx.lifecycle.LiveData;

/* loaded from: classes.dex */
public class id<T> extends LiveData<T> {
    @Override // androidx.lifecycle.LiveData
    public void h(T t) {
        LiveData.a("setValue");
        this.f++;
        this.d = t;
        c(null);
    }

    public void i(T t) {
        boolean z;
        synchronized (this.a) {
            z = this.e == LiveData.j;
            this.e = t;
        }
        if (z) {
            k3.d().a.c(this.i);
        }
    }
}
