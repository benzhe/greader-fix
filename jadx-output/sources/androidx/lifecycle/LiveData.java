package androidx.lifecycle;

import defpackage.ad;
import defpackage.dd;
import defpackage.ed;
import defpackage.jd;
import defpackage.k3;
import defpackage.o3;
import defpackage.td;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class LiveData<T> {
    public static final Object j = new Object();
    public final Object a = new Object();
    public o3<jd<? super T>, LiveData<T>.b> b = new o3<>();
    public int c = 0;
    public volatile Object d;
    public volatile Object e;
    public int f;
    public boolean g;
    public boolean h;
    public final Runnable i;

    public class LifecycleBoundObserver extends LiveData<T>.b implements Object {
        public final dd i;

        public LifecycleBoundObserver(dd ddVar, jd<? super T> jdVar) {
            super(jdVar);
            this.i = ddVar;
        }

        public void c(dd ddVar, ad.a aVar) {
            if (((ed) this.i.getLifecycle()).b == ad.b.DESTROYED) {
                LiveData.this.g(this.e);
            } else {
                d(k());
            }
        }

        @Override // androidx.lifecycle.LiveData.b
        public void h() {
            ((ed) this.i.getLifecycle()).a.n(this);
        }

        @Override // androidx.lifecycle.LiveData.b
        public boolean j(dd ddVar) {
            return this.i == ddVar;
        }

        @Override // androidx.lifecycle.LiveData.b
        public boolean k() {
            return ((ed) this.i.getLifecycle()).b.compareTo(ad.b.STARTED) >= 0;
        }
    }

    public class a implements Runnable {
        public a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            Object obj;
            synchronized (LiveData.this.a) {
                obj = LiveData.this.e;
                LiveData.this.e = LiveData.j;
            }
            LiveData.this.h(obj);
        }
    }

    public abstract class b {
        public final jd<? super T> e;
        public boolean f;
        public int g = -1;

        public b(jd<? super T> jdVar) {
            this.e = jdVar;
        }

        public void d(boolean z) {
            if (z == this.f) {
                return;
            }
            this.f = z;
            LiveData liveData = LiveData.this;
            int i = liveData.c;
            boolean z2 = i == 0;
            liveData.c = i + (z ? 1 : -1);
            if (z2 && z) {
                liveData.e();
            }
            LiveData liveData2 = LiveData.this;
            if (liveData2.c == 0 && !this.f) {
                liveData2.f();
            }
            if (this.f) {
                LiveData.this.c(this);
            }
        }

        public void h() {
        }

        public boolean j(dd ddVar) {
            return false;
        }

        public abstract boolean k();
    }

    public LiveData() {
        Object obj = j;
        this.d = obj;
        this.e = obj;
        this.f = -1;
        this.i = new a();
    }

    public static void a(String str) {
        if (k3.d().a.b()) {
            return;
        }
        throw new IllegalStateException("Cannot invoke " + str + " on a background thread");
    }

    public final void b(LiveData<T>.b bVar) {
        if (bVar.f) {
            if (!bVar.k()) {
                bVar.d(false);
                return;
            }
            int i = bVar.g;
            int i2 = this.f;
            if (i >= i2) {
                return;
            }
            bVar.g = i2;
            jd<? super T> jdVar = bVar.e;
            td.b bVar2 = (td.b) jdVar;
            bVar2.b.f(bVar2.a, this.d);
            bVar2.c = true;
        }
    }

    public void c(LiveData<T>.b bVar) {
        if (this.g) {
            this.h = true;
            return;
        }
        this.g = true;
        do {
            this.h = false;
            if (bVar != null) {
                b(bVar);
                bVar = null;
            } else {
                o3<jd<? super T>, LiveData<T>.b>.d dVarH = this.b.h();
                while (dVarH.hasNext()) {
                    b((b) ((Map.Entry) dVarH.next()).getValue());
                    if (this.h) {
                        break;
                    }
                }
            }
        } while (this.h);
        this.g = false;
    }

    public void d(dd ddVar, jd<? super T> jdVar) {
        a("observe");
        if (((ed) ddVar.getLifecycle()).b == ad.b.DESTROYED) {
            return;
        }
        LifecycleBoundObserver lifecycleBoundObserver = new LifecycleBoundObserver(ddVar, jdVar);
        LiveData<T>.b bVarL = this.b.l(jdVar, lifecycleBoundObserver);
        if (bVarL != null && !bVarL.j(ddVar)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (bVarL != null) {
            return;
        }
        ddVar.getLifecycle().a(lifecycleBoundObserver);
    }

    public void e() {
    }

    public void f() {
    }

    public void g(jd<? super T> jdVar) {
        a("removeObserver");
        LiveData<T>.b bVarN = this.b.n(jdVar);
        if (bVarN == null) {
            return;
        }
        bVarN.h();
        bVarN.d(false);
    }

    public abstract void h(T t);
}
