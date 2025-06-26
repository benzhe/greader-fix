package defpackage;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import defpackage.e27;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
public abstract class l17<T> {
    public final e27 a;
    public final h27 b;
    public final WeakReference<T> c;
    public final boolean d;
    public final int e;
    public final int f;
    public final int g;
    public final Drawable h;
    public final String i;
    public final Object j;
    public boolean k;
    public boolean l;

    public static class a<M> extends WeakReference<M> {
        public final l17 a;

        public a(l17 l17Var, M m, ReferenceQueue<? super M> referenceQueue) {
            super(m, referenceQueue);
            this.a = l17Var;
        }
    }

    public l17(e27 e27Var, T t, h27 h27Var, int i, int i2, int i3, Drawable drawable, String str, Object obj, boolean z) {
        this.a = e27Var;
        this.b = h27Var;
        this.c = t == null ? null : new a(this, t, e27Var.k);
        this.e = i;
        this.f = i2;
        this.d = z;
        this.g = i3;
        this.h = drawable;
        this.i = str;
        this.j = obj == null ? this : obj;
    }

    public void a() {
        this.l = true;
    }

    public abstract void b(Bitmap bitmap, e27.d dVar);

    public abstract void c(Exception exc);

    public T d() {
        WeakReference<T> weakReference = this.c;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }
}
