package defpackage;

import java.util.Objects;

/* loaded from: classes2.dex */
public final class bj7 {
    public static final pl7<Object, yj7> a = c.e;
    public static final pl7<Throwable, yj7> b = b.e;
    public static final el7<yj7> c = a.e;

    public static final class a extends jm7 implements el7<yj7> {
        public static final a e = new a();

        public a() {
            super(0);
        }

        @Override // defpackage.el7
        public yj7 invoke() {
            return yj7.a;
        }
    }

    public static final class b extends jm7 implements pl7<Throwable, yj7> {
        public static final b e = new b();

        public b() {
            super(1);
        }

        @Override // defpackage.pl7
        public yj7 invoke(Throwable th) {
            im7.f(th, "it");
            return yj7.a;
        }
    }

    public static final class c extends jm7 implements pl7<Object, yj7> {
        public static final c e = new c();

        public c() {
            super(1);
        }

        @Override // defpackage.pl7
        public yj7 invoke(Object obj) {
            im7.f(obj, "it");
            return yj7.a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [dj7] */
    public static final <T> tc7<T> a(pl7<? super T, yj7> pl7Var) {
        if (pl7Var == a) {
            tc7<T> tc7Var = (tc7<T>) dd7.d;
            im7.b(tc7Var, "Functions.emptyConsumer()");
            return tc7Var;
        }
        if (pl7Var != null) {
            pl7Var = new dj7(pl7Var);
        }
        return (tc7) pl7Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [cj7] */
    public static final qc7 b(el7<yj7> el7Var) {
        if (el7Var == c) {
            qc7 qc7Var = dd7.c;
            im7.b(qc7Var, "Functions.EMPTY_ACTION");
            return qc7Var;
        }
        if (el7Var != null) {
            el7Var = new cj7(el7Var);
        }
        return (qc7) el7Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [dj7] */
    public static final tc7<Throwable> c(pl7<? super Throwable, yj7> pl7Var) {
        if (pl7Var == b) {
            tc7<Throwable> tc7Var = dd7.e;
            im7.b(tc7Var, "Functions.ON_ERROR_MISSING");
            return tc7Var;
        }
        if (pl7Var != null) {
            pl7Var = new dj7(pl7Var);
        }
        return (tc7) pl7Var;
    }

    public static final ic7 d(hb7 hb7Var, pl7<? super Throwable, yj7> pl7Var, el7<yj7> el7Var) {
        im7.f(hb7Var, "$this$subscribeBy");
        im7.f(pl7Var, "onError");
        im7.f(el7Var, "onComplete");
        pl7<Throwable, yj7> pl7Var2 = b;
        if (pl7Var == pl7Var2 && el7Var == c) {
            ic7 ic7VarH = hb7Var.h();
            im7.b(ic7VarH, "subscribe()");
            return ic7VarH;
        }
        if (pl7Var == pl7Var2) {
            rd7 rd7Var = new rd7(new cj7(el7Var));
            hb7Var.a(rd7Var);
            im7.b(rd7Var, "subscribe(onComplete)");
            return rd7Var;
        }
        qc7 qc7VarB = b(el7Var);
        dj7 dj7Var = new dj7(pl7Var);
        Objects.requireNonNull(qc7VarB, "onComplete is null");
        rd7 rd7Var2 = new rd7(dj7Var, qc7VarB);
        hb7Var.a(rd7Var2);
        im7.b(rd7Var2, "subscribe(onComplete.asO…ion(), Consumer(onError))");
        return rd7Var2;
    }

    public static final <T> ic7 e(rb7<T> rb7Var, pl7<? super Throwable, yj7> pl7Var, el7<yj7> el7Var, pl7<? super T, yj7> pl7Var2) {
        im7.f(rb7Var, "$this$subscribeBy");
        im7.f(pl7Var, "onError");
        im7.f(el7Var, "onComplete");
        im7.f(pl7Var2, "onSuccess");
        tc7 tc7VarA = a(pl7Var2);
        tc7<Throwable> tc7VarC = c(pl7Var);
        qc7 qc7VarB = b(el7Var);
        Objects.requireNonNull(tc7VarA, "onSuccess is null");
        Objects.requireNonNull(tc7VarC, "onError is null");
        Objects.requireNonNull(qc7VarB, "onComplete is null");
        zf7 zf7Var = new zf7(tc7VarA, tc7VarC, qc7VarB);
        rb7Var.a(zf7Var);
        im7.b(zf7Var, "subscribe(onSuccess.asCo…ete.asOnCompleteAction())");
        return zf7Var;
    }

    public static final <T> ic7 f(ac7<T> ac7Var, pl7<? super Throwable, yj7> pl7Var, pl7<? super T, yj7> pl7Var2) {
        im7.f(ac7Var, "$this$subscribeBy");
        im7.f(pl7Var, "onError");
        im7.f(pl7Var2, "onSuccess");
        tc7 tc7VarA = a(pl7Var2);
        tc7<Throwable> tc7VarC = c(pl7Var);
        Objects.requireNonNull(tc7VarA, "onSuccess is null");
        Objects.requireNonNull(tc7VarC, "onError is null");
        sd7 sd7Var = new sd7(tc7VarA, tc7VarC);
        ac7Var.a(sd7Var);
        im7.b(sd7Var, "subscribe(onSuccess.asCo…rror.asOnErrorConsumer())");
        return sd7Var;
    }

    public static /* synthetic */ ic7 g(hb7 hb7Var, pl7 pl7Var, el7 el7Var, int i) {
        if ((i & 1) != 0) {
            pl7Var = b;
        }
        return d(hb7Var, pl7Var, (i & 2) != 0 ? c : null);
    }
}
