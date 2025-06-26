package defpackage;

import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.SkuDetails;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class yn6 {
    public final oj7 a;
    public final eq b;

    public static final class a<T, R> implements uc7<List<? extends SkuDetails>, vb7<? extends SkuDetails>> {
        public static final a e = new a();

        @Override // defpackage.uc7
        public vb7<? extends SkuDetails> apply(List<? extends SkuDetails> list) {
            List<? extends SkuDetails> list2 = list;
            im7.e(list2, "skuList");
            SkuDetails skuDetails = (SkuDetails) ek7.g(list2);
            return skuDetails != null ? new kg7(skuDetails) : bg7.e;
        }
    }

    public static final class b<T, R> implements uc7<mb7<Throwable>, w38<?>> {
        public static final b e = new b();

        @Override // defpackage.uc7
        public w38<?> apply(mb7<Throwable> mb7Var) {
            mb7<Throwable> mb7Var2 = mb7Var;
            im7.e(mb7Var2, "error");
            mb7<R> mb7VarV = mb7Var2.v(mb7.q(1, 3), zn6.a);
            ao6 ao6Var = ao6.e;
            int i = mb7.e;
            return mb7VarV.k(ao6Var, false, i, i);
        }
    }

    public static final class c<T, R> implements uc7<List<? extends Purchase>, List<? extends Purchase>> {
        public static final c e = new c();

        @Override // defpackage.uc7
        public List<? extends Purchase> apply(List<? extends Purchase> list) {
            List<? extends Purchase> list2 = list;
            im7.e(list2, "purchases");
            ArrayList arrayList = new ArrayList();
            for (T t : list2) {
                Purchase purchase = (Purchase) t;
                String strA = purchase.a();
                im7.d(strA, "it.sku");
                boolean z = false;
                if (co7.A(strA, "premium_", false, 2)) {
                    if ((purchase.c.optInt("purchaseState", 1) != 4 ? (char) 1 : (char) 2) == 1) {
                        z = true;
                    }
                }
                if (z) {
                    arrayList.add(t);
                }
            }
            return arrayList;
        }
    }

    public static final class d extends jm7 implements el7<mb7<dq>> {
        public d() {
            super(0);
        }

        @Override // defpackage.el7
        public mb7<dq> invoke() {
            return yn6.this.b.b();
        }
    }

    public yn6(eq eqVar) {
        im7.e(eqVar, "rxBilling");
        this.b = eqVar;
        d dVar = new d();
        im7.e(dVar, "initializer");
        this.a = new uj7(dVar, null, 2);
    }

    public final rb7<SkuDetails> a(String str) {
        im7.e(str, "sku");
        ArrayList arrayList = new ArrayList(n56.r1(str));
        eq eqVar = this.b;
        kn knVar = new kn();
        knVar.a = "subs";
        knVar.b = arrayList;
        im7.d(knVar, "params.build()");
        ac7<List<SkuDetails>> ac7VarA = eqVar.a(knVar);
        a aVar = a.e;
        Objects.requireNonNull(ac7VarA);
        lh7 lh7Var = new lh7(ac7VarA, aVar);
        b bVar = b.e;
        mb7<R> mb7VarP = lh7Var.p();
        Objects.requireNonNull(mb7VarP);
        sf7 sf7Var = new sf7(new pf7(mb7VarP, bVar));
        im7.d(sf7Var, "rxBilling.getSkuDetails(…ONDS) }\n                }");
        return sf7Var;
    }

    public final ac7<List<Purchase>> b() {
        ec7 ec7VarC = this.b.c("subs");
        do6 do6Var = do6.e;
        Objects.requireNonNull(ec7VarC);
        mb7 mb7VarC = ec7VarC instanceof gd7 ? ((gd7) ec7VarC).c() : new sh7(ec7VarC);
        Objects.requireNonNull(mb7VarC);
        tf7 tf7Var = new tf7(new pf7(mb7VarC, do6Var), null);
        im7.d(tf7Var, "rxBilling.getPurchases(B…ONDS) }\n                }");
        ac7 ac7VarE = tf7Var.e(c.e);
        im7.d(ac7VarE, "queryPurchases()\n       …          }\n            }");
        return ac7VarE;
    }
}
