package defpackage;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class dd7 {
    public static final uc7<Object, Object> a = new f();
    public static final Runnable b = new d();
    public static final qc7 c = new b();
    public static final tc7<Object> d = new c();
    public static final tc7<Throwable> e = new i();
    public static final vc7<Object> f = new j();

    public static final class a<T1, T2, R> implements uc7<Object[], R> {
        public final rc7<? super T1, ? super T2, ? extends R> e;

        public a(rc7<? super T1, ? super T2, ? extends R> rc7Var) {
            this.e = rc7Var;
        }

        @Override // defpackage.uc7
        public Object apply(Object[] objArr) throws Exception {
            Object[] objArr2 = objArr;
            if (objArr2.length == 2) {
                return this.e.apply(objArr2[0], objArr2[1]);
            }
            StringBuilder sbZ = jo.z("Array of size 2 expected but got ");
            sbZ.append(objArr2.length);
            throw new IllegalArgumentException(sbZ.toString());
        }
    }

    public static final class b implements qc7 {
        @Override // defpackage.qc7
        public void run() {
        }

        public String toString() {
            return "EmptyAction";
        }
    }

    public static final class c implements tc7<Object> {
        @Override // defpackage.tc7
        public void accept(Object obj) {
        }

        public String toString() {
            return "EmptyConsumer";
        }
    }

    public static final class d implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
        }

        public String toString() {
            return "EmptyRunnable";
        }
    }

    public static final class e<T> implements vc7<T> {
        public final T e;

        public e(T t) {
            this.e = t;
        }

        @Override // defpackage.vc7
        public boolean test(T t) throws Exception {
            T t2 = this.e;
            return t == t2 || (t != null && t.equals(t2));
        }
    }

    public static final class f implements uc7<Object, Object> {
        @Override // defpackage.uc7
        public Object apply(Object obj) {
            return obj;
        }

        public String toString() {
            return "IdentityFunction";
        }
    }

    public static final class g<T, U> implements Callable<U>, uc7<T, U> {
        public final U e;

        public g(U u) {
            this.e = u;
        }

        @Override // defpackage.uc7
        public U apply(T t) throws Exception {
            return this.e;
        }

        @Override // java.util.concurrent.Callable
        public U call() throws Exception {
            return this.e;
        }
    }

    public static final class h<T> implements uc7<List<T>, List<T>> {
        public final Comparator<? super T> e;

        public h(Comparator<? super T> comparator) {
            this.e = comparator;
        }

        @Override // defpackage.uc7
        public Object apply(Object obj) throws Exception {
            List list = (List) obj;
            Collections.sort(list, this.e);
            return list;
        }
    }

    public static final class i implements tc7<Throwable> {
        @Override // defpackage.tc7
        public void accept(Throwable th) throws Exception {
            n56.z1(new mc7(th));
        }
    }

    public static final class j implements vc7<Object> {
        @Override // defpackage.vc7
        public boolean test(Object obj) {
            return true;
        }
    }
}
