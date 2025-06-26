package defpackage;

import android.os.Bundle;
import android.os.Looper;
import androidx.lifecycle.LiveData;
import defpackage.d0;
import defpackage.sd;
import defpackage.wd;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import java.util.Objects;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public class td extends sd {
    public final dd a;
    public final c b;

    public static class a<D> extends id<D> implements wd.b<D> {
        public final int k;
        public final Bundle l;
        public final wd<D> m;
        public dd n;
        public b<D> o;
        public wd<D> p;

        public a(int i, Bundle bundle, wd<D> wdVar, wd<D> wdVar2) {
            this.k = i;
            this.l = bundle;
            this.m = wdVar;
            this.p = wdVar2;
            if (wdVar.b != null) {
                throw new IllegalStateException("There is already a listener registered");
            }
            wdVar.b = this;
            wdVar.a = i;
        }

        @Override // androidx.lifecycle.LiveData
        public void e() {
            wd<D> wdVar = this.m;
            wdVar.d = true;
            wdVar.f = false;
            wdVar.e = false;
            wdVar.f();
        }

        @Override // androidx.lifecycle.LiveData
        public void f() {
            wd<D> wdVar = this.m;
            wdVar.d = false;
            wdVar.g();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.lifecycle.LiveData
        public void g(jd<? super D> jdVar) {
            super.g(jdVar);
            this.n = null;
            this.o = null;
        }

        @Override // defpackage.id, androidx.lifecycle.LiveData
        public void h(D d) {
            super.h(d);
            wd<D> wdVar = this.p;
            if (wdVar != null) {
                wdVar.e();
                wdVar.f = true;
                wdVar.d = false;
                wdVar.e = false;
                wdVar.g = false;
                wdVar.h = false;
                this.p = null;
            }
        }

        public wd<D> j(boolean z) {
            this.m.c();
            this.m.e = true;
            b<D> bVar = this.o;
            if (bVar != null) {
                super.g(bVar);
                this.n = null;
                this.o = null;
                if (z && bVar.c) {
                    bVar.b.k(bVar.a);
                }
            }
            wd<D> wdVar = this.m;
            wd.b<D> bVar2 = wdVar.b;
            if (bVar2 == null) {
                throw new IllegalStateException("No listener register");
            }
            if (bVar2 != this) {
                throw new IllegalArgumentException("Attempting to unregister the wrong listener");
            }
            wdVar.b = null;
            if ((bVar == null || bVar.c) && !z) {
                return wdVar;
            }
            wdVar.e();
            wdVar.f = true;
            wdVar.d = false;
            wdVar.e = false;
            wdVar.g = false;
            wdVar.h = false;
            return this.p;
        }

        public void k() {
            dd ddVar = this.n;
            b<D> bVar = this.o;
            if (ddVar == null || bVar == null) {
                return;
            }
            super.g(bVar);
            d(ddVar, bVar);
        }

        public String toString() {
            StringBuilder sbW = jo.w(64, "LoaderInfo{");
            sbW.append(Integer.toHexString(System.identityHashCode(this)));
            sbW.append(" #");
            sbW.append(this.k);
            sbW.append(" : ");
            d0.h.e(this.m, sbW);
            sbW.append("}}");
            return sbW.toString();
        }
    }

    public static class b<D> implements jd<D> {
        public final wd<D> a;
        public final sd.a<D> b;
        public boolean c = false;

        public b(wd<D> wdVar, sd.a<D> aVar) {
            this.a = wdVar;
            this.b = aVar;
        }

        public String toString() {
            return this.b.toString();
        }
    }

    public static class c extends nd {
        public static final od d = new a();
        public n4<a> b = new n4<>(10);
        public boolean c = false;

        public static class a implements od {
            public <T extends nd> T a(Class<T> cls) {
                return new c();
            }
        }

        @Override // defpackage.nd
        public void a() {
            int iJ = this.b.j();
            for (int i = 0; i < iJ; i++) {
                this.b.k(i).j(true);
            }
            n4<a> n4Var = this.b;
            int i2 = n4Var.h;
            Object[] objArr = n4Var.g;
            for (int i3 = 0; i3 < i2; i3++) {
                objArr[i3] = null;
            }
            n4Var.h = 0;
            n4Var.e = false;
        }
    }

    public td(dd ddVar, qd qdVar) {
        this.a = ddVar;
        od odVar = c.d;
        String canonicalName = c.class.getCanonicalName();
        if (canonicalName == null) {
            throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
        }
        String strN = jo.n("androidx.lifecycle.ViewModelProvider.DefaultKey:", canonicalName);
        nd ndVarA = qdVar.a.get(strN);
        if (!c.class.isInstance(ndVarA)) {
            ndVarA = odVar instanceof pd ? ((pd) odVar).a(strN, c.class) : ((c.a) odVar).a(c.class);
            nd ndVarPut = qdVar.a.put(strN, ndVarA);
            if (ndVarPut != null) {
                ndVarPut.a();
            }
        }
        this.b = (c) ndVarA;
    }

    @Override // defpackage.sd
    @Deprecated
    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        c cVar = this.b;
        if (cVar.b.j() > 0) {
            printWriter.print(str);
            printWriter.println("Loaders:");
            String str2 = str + "    ";
            for (int i = 0; i < cVar.b.j(); i++) {
                a aVarK = cVar.b.k(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(cVar.b.g(i));
                printWriter.print(": ");
                printWriter.println(aVarK.toString());
                printWriter.print(str2);
                printWriter.print("mId=");
                printWriter.print(aVarK.k);
                printWriter.print(" mArgs=");
                printWriter.println(aVarK.l);
                printWriter.print(str2);
                printWriter.print("mLoader=");
                printWriter.println(aVarK.m);
                aVarK.m.b(jo.n(str2, "  "), fileDescriptor, printWriter, strArr);
                if (aVarK.o != null) {
                    printWriter.print(str2);
                    printWriter.print("mCallbacks=");
                    printWriter.println(aVarK.o);
                    b<D> bVar = aVarK.o;
                    Objects.requireNonNull(bVar);
                    printWriter.print(str2 + "  ");
                    printWriter.print("mDeliveredData=");
                    printWriter.println(bVar.c);
                }
                printWriter.print(str2);
                printWriter.print("mData=");
                Object obj = aVarK.m;
                Object obj2 = aVarK.d;
                if (obj2 == LiveData.j) {
                    obj2 = null;
                }
                Objects.requireNonNull(obj);
                StringBuilder sb = new StringBuilder(64);
                d0.h.e(obj2, sb);
                sb.append(StringSubstitutor.DEFAULT_VAR_END);
                printWriter.println(sb.toString());
                printWriter.print(str2);
                printWriter.print("mStarted=");
                printWriter.println(aVarK.c > 0);
            }
        }
    }

    @Override // defpackage.sd
    public <D> wd<D> c(int i, Bundle bundle, sd.a<D> aVar) {
        if (this.b.c) {
            throw new IllegalStateException("Called while creating a loader");
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new IllegalStateException("restartLoader must be called on the main thread");
        }
        a aVarF = this.b.b.f(i, null);
        wd<D> wdVarJ = aVarF != null ? aVarF.j(false) : null;
        try {
            this.b.c = true;
            wd<D> wdVarG = aVar.g(i, bundle);
            if (wdVarG == null) {
                throw new IllegalArgumentException("Object returned from onCreateLoader must not be null");
            }
            if (wdVarG.getClass().isMemberClass() && !Modifier.isStatic(wdVarG.getClass().getModifiers())) {
                throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + wdVarG);
            }
            a aVar2 = new a(i, bundle, wdVarG, wdVarJ);
            this.b.b.h(i, aVar2);
            this.b.c = false;
            dd ddVar = this.a;
            b<D> bVar = new b<>(aVar2.m, aVar);
            aVar2.d(ddVar, bVar);
            b<D> bVar2 = aVar2.o;
            if (bVar2 != null) {
                aVar2.g(bVar2);
            }
            aVar2.n = ddVar;
            aVar2.o = bVar;
            return aVar2.m;
        } catch (Throwable th) {
            this.b.c = false;
            throw th;
        }
    }

    public String toString() {
        StringBuilder sbW = jo.w(128, "LoaderManager{");
        sbW.append(Integer.toHexString(System.identityHashCode(this)));
        sbW.append(" in ");
        d0.h.e(this.a, sbW);
        sbW.append("}}");
        return sbW.toString();
    }
}
