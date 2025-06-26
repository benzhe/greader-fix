package defpackage;

import defpackage.wd7;
import defpackage.yo5;

/* loaded from: classes2.dex */
public final class eo6 implements kb7 {
    public final /* synthetic */ go6 a;
    public final /* synthetic */ po6 b;

    public static final class a<TResult> implements z35<Void> {
        public final /* synthetic */ ib7 a;

        public a(ib7 ib7Var) {
            this.a = ib7Var;
        }

        @Override // defpackage.z35
        public final void a(e45<Void> e45Var) {
            ic7 andSet;
            im7.e(e45Var, "it");
            wd7.a aVar = (wd7.a) this.a;
            ic7 ic7Var = aVar.get();
            yc7 yc7Var = yc7.DISPOSED;
            if (ic7Var == yc7Var || (andSet = aVar.getAndSet(yc7Var)) == yc7Var) {
                return;
            }
            try {
                aVar.e.a();
            } finally {
                if (andSet != null) {
                    andSet.k();
                }
            }
        }
    }

    public static final class b implements a45 {
        public final /* synthetic */ ib7 a;

        public b(ib7 ib7Var) {
            this.a = ib7Var;
        }

        @Override // defpackage.a45
        public final void c(Exception exc) {
            im7.e(exc, "it");
            ((wd7.a) this.a).a(exc);
        }
    }

    public eo6(go6 go6Var, po6 po6Var) {
        this.a = go6Var;
        this.b = po6Var;
    }

    @Override // defpackage.kb7
    public final void a(ib7 ib7Var) {
        im7.e(ib7Var, "emitter");
        to5 to5VarA = this.a.a.a("promo_codes").a(this.b.a);
        im7.d(to5VarA, "firebaseStore.collection….document(promoCode.code)");
        e45<Void> e45VarA = this.b.d ? to5VarA.a("count", new yo5.d(1L), new Object[0]) : to5VarA.a("redeemed_time", yo5.a, new Object[0]);
        im7.d(e45VarA, "if (promoCode.reusable) …imestamp())\n            }");
        e45VarA.b(new a(ib7Var));
        ((e55) e45VarA).e(g45.a, new b(ib7Var));
    }
}
