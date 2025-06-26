package defpackage;

import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public class sj5 implements Runnable {
    public final /* synthetic */ Callable e;
    public final /* synthetic */ f45 f;

    /* JADX INFO: Add missing generic type declarations: [T] */
    public class a<T> implements w35<T, Void> {
        public a() {
        }

        @Override // defpackage.w35
        public Void a(e45 e45Var) throws Exception {
            if (e45Var.o()) {
                f45 f45Var = sj5.this.f;
                f45Var.a.s(e45Var.l());
                return null;
            }
            f45 f45Var2 = sj5.this.f;
            f45Var2.a.r(e45Var.k());
            return null;
        }
    }

    public sj5(Callable callable, f45 f45Var) {
        this.e = callable;
        this.f = f45Var;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            ((e45) this.e.call()).h(new a());
        } catch (Exception e) {
            this.f.a.r(e);
        }
    }
}
