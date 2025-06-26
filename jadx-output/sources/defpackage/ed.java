package defpackage;

import androidx.lifecycle.CompositeGeneratedAdaptersObserver;
import androidx.lifecycle.FullLifecycleObserverAdapter;
import androidx.lifecycle.ReflectiveGenericLifecycleObserver;
import androidx.lifecycle.SingleGeneratedAdapterObserver;
import defpackage.ad;
import defpackage.o3;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class ed extends ad {
    public final WeakReference<dd> c;
    public n3<cd, a> a = new n3<>();
    public int d = 0;
    public boolean e = false;
    public boolean f = false;
    public ArrayList<ad.b> g = new ArrayList<>();
    public ad.b b = ad.b.INITIALIZED;

    public static class a {
        public ad.b a;
        public bd b;

        public a(cd cdVar, ad.b bVar) {
            bd reflectiveGenericLifecycleObserver;
            Map<Class, Integer> map = gd.a;
            boolean z = cdVar instanceof bd;
            boolean z2 = cdVar instanceof yc;
            if (z && z2) {
                reflectiveGenericLifecycleObserver = new FullLifecycleObserverAdapter((yc) cdVar, (bd) cdVar);
            } else if (z2) {
                reflectiveGenericLifecycleObserver = new FullLifecycleObserverAdapter((yc) cdVar, null);
            } else if (z) {
                reflectiveGenericLifecycleObserver = (bd) cdVar;
            } else {
                Class<?> cls = cdVar.getClass();
                if (gd.c(cls) == 2) {
                    List<Constructor<? extends zc>> list = gd.b.get(cls);
                    if (list.size() == 1) {
                        reflectiveGenericLifecycleObserver = new SingleGeneratedAdapterObserver(gd.a(list.get(0), cdVar));
                    } else {
                        zc[] zcVarArr = new zc[list.size()];
                        for (int i = 0; i < list.size(); i++) {
                            zcVarArr[i] = gd.a(list.get(i), cdVar);
                        }
                        reflectiveGenericLifecycleObserver = new CompositeGeneratedAdaptersObserver(zcVarArr);
                    }
                } else {
                    reflectiveGenericLifecycleObserver = new ReflectiveGenericLifecycleObserver(cdVar);
                }
            }
            this.b = reflectiveGenericLifecycleObserver;
            this.a = bVar;
        }

        public void a(dd ddVar, ad.a aVar) {
            ad.b bVarC = ed.c(aVar);
            this.a = ed.e(this.a, bVarC);
            this.b.c(ddVar, aVar);
            this.a = bVarC;
        }
    }

    public ed(dd ddVar) {
        this.c = new WeakReference<>(ddVar);
    }

    public static ad.b c(ad.a aVar) {
        int iOrdinal = aVar.ordinal();
        if (iOrdinal != 0) {
            if (iOrdinal != 1) {
                if (iOrdinal == 2) {
                    return ad.b.RESUMED;
                }
                if (iOrdinal != 3) {
                    if (iOrdinal != 4) {
                        if (iOrdinal == 5) {
                            return ad.b.DESTROYED;
                        }
                        throw new IllegalArgumentException("Unexpected event value " + aVar);
                    }
                }
            }
            return ad.b.STARTED;
        }
        return ad.b.CREATED;
    }

    public static ad.b e(ad.b bVar, ad.b bVar2) {
        return (bVar2 == null || bVar2.compareTo(bVar) >= 0) ? bVar : bVar2;
    }

    public static ad.a i(ad.b bVar) {
        int iOrdinal = bVar.ordinal();
        if (iOrdinal == 0 || iOrdinal == 1) {
            return ad.a.ON_CREATE;
        }
        if (iOrdinal == 2) {
            return ad.a.ON_START;
        }
        if (iOrdinal == 3) {
            return ad.a.ON_RESUME;
        }
        if (iOrdinal == 4) {
            throw new IllegalArgumentException();
        }
        throw new IllegalArgumentException("Unexpected state value " + bVar);
    }

    @Override // defpackage.ad
    public void a(cd cdVar) {
        dd ddVar;
        ad.b bVar = this.b;
        ad.b bVar2 = ad.b.DESTROYED;
        if (bVar != bVar2) {
            bVar2 = ad.b.INITIALIZED;
        }
        a aVar = new a(cdVar, bVar2);
        if (this.a.l(cdVar, aVar) == null && (ddVar = this.c.get()) != null) {
            boolean z = this.d != 0 || this.e;
            ad.b bVarB = b(cdVar);
            this.d++;
            while (aVar.a.compareTo(bVarB) < 0 && this.a.i.containsKey(cdVar)) {
                this.g.add(aVar.a);
                aVar.a(ddVar, i(aVar.a));
                g();
                bVarB = b(cdVar);
            }
            if (!z) {
                h();
            }
            this.d--;
        }
    }

    public final ad.b b(cd cdVar) {
        n3<cd, a> n3Var = this.a;
        ad.b bVar = null;
        o3.c<cd, a> cVar = n3Var.i.containsKey(cdVar) ? n3Var.i.get(cdVar).h : null;
        ad.b bVar2 = cVar != null ? cVar.f.a : null;
        if (!this.g.isEmpty()) {
            bVar = this.g.get(r0.size() - 1);
        }
        return e(e(this.b, bVar2), bVar);
    }

    public void d(ad.a aVar) {
        f(c(aVar));
    }

    public final void f(ad.b bVar) {
        if (this.b == bVar) {
            return;
        }
        this.b = bVar;
        if (this.e || this.d != 0) {
            this.f = true;
            return;
        }
        this.e = true;
        h();
        this.e = false;
    }

    public final void g() {
        this.g.remove(r0.size() - 1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0029  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void h() {
        /*
            Method dump skipped, instructions count: 317
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ed.h():void");
    }
}
