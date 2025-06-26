package defpackage;

import android.app.Activity;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.SkuDetails;
import defpackage.dq;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public final class gq implements eq {
    public final gj7<dq> a;
    public final jn b;
    public final mb7<en> c;

    public static final class a<T, R> implements uc7<en, ec7<? extends Integer>> {
        public final /* synthetic */ cn f;

        public a(cn cnVar) {
            this.f = cnVar;
        }

        @Override // defpackage.uc7
        public ec7<? extends Integer> apply(en enVar) {
            en enVar2 = enVar;
            im7.e(enVar2, "client");
            return new eh7(new fq(this, enVar2));
        }
    }

    public static final class b<T, R> implements uc7<en, ec7<? extends List<? extends SkuDetails>>> {
        public final /* synthetic */ kn f;

        public b(kn knVar) {
            this.f = knVar;
        }

        @Override // defpackage.uc7
        public ec7<? extends List<? extends SkuDetails>> apply(en enVar) {
            en enVar2 = enVar;
            im7.e(enVar2, "client");
            return new eh7(new iq(this, enVar2));
        }
    }

    public static final class c<T, R> implements uc7<en, w38<? extends in>> {
        public final /* synthetic */ Activity e;
        public final /* synthetic */ hn f;

        public c(Activity activity, hn hnVar) {
            this.e = activity;
            this.f = hnVar;
        }

        @Override // defpackage.uc7
        public w38<? extends in> apply(en enVar) {
            en enVar2 = enVar;
            im7.e(enVar2, "it");
            in inVarD = enVar2.d(this.e, this.f);
            im7.d(inVarD, "it.launchBillingFlow(activity, params)");
            int i = mb7.e;
            return new ze7(inVarD);
        }
    }

    public static final class d<T, R> implements uc7<in, lb7> {
        public d() {
        }

        @Override // defpackage.uc7
        public lb7 apply(in inVar) {
            in inVar2 = inVar;
            im7.e(inVar2, "it");
            return gq.f(gq.this, inVar2.a) ? xd7.a : new yd7(mq.a(inVar2));
        }
    }

    public static final class e<T, R> implements uc7<en, w38<? extends dq>> {
        public e() {
        }

        @Override // defpackage.uc7
        public w38<? extends dq> apply(en enVar) {
            im7.e(enVar, "it");
            return gq.this.a.g(gb7.LATEST);
        }
    }

    public static final class f implements jn {
        public f() {
        }

        @Override // defpackage.jn
        public final void a(in inVar, List<Purchase> list) {
            dq cVar;
            im7.e(inVar, "result");
            int i = inVar.a;
            if (i == 0) {
                if (list == null) {
                    list = hk7.e;
                }
                cVar = new dq.c(i, list);
            } else if (i != 1) {
                if (list == null) {
                    list = hk7.e;
                }
                cVar = new dq.b(i, list);
            } else {
                if (list == null) {
                    list = hk7.e;
                }
                cVar = new dq.a(i, list);
            }
            gq.this.a.d(cVar);
        }
    }

    public gq(kq kqVar) {
        mb7 xe7Var;
        im7.e(kqVar, "billingFactory");
        gj7<dq> gj7Var = new gj7<>();
        im7.d(gj7Var, "PublishSubject.create<PurchasesUpdate>()");
        this.a = gj7Var;
        f fVar = new f();
        this.b = fVar;
        hb7 hb7VarG = xd7.a.g(fc7.a());
        im7.e(fVar, "listener");
        jq jqVar = new jq(kqVar, fVar);
        gb7 gb7Var = gb7.LATEST;
        int i = mb7.e;
        je7 je7Var = new je7(jqVar, gb7Var);
        im7.d(je7Var, "Flowable.create<BillingC…kpressureStrategy.LATEST)");
        qb7<en, en> qb7Var = kqVar.b;
        Objects.requireNonNull(qb7Var, "composer is null");
        w38<en> w38VarA = qb7Var.a(je7Var);
        if (w38VarA instanceof mb7) {
            xe7Var = (mb7) w38VarA;
        } else {
            Objects.requireNonNull(w38VarA, "source is null");
            xe7Var = new xe7(w38VarA);
        }
        im7.d(xe7Var, "flowable.compose(transformer)");
        tg7 tg7Var = new tg7(hb7VarG, xe7Var);
        im7.d(tg7Var, "Completable.complete()\n …lowable(updatedListener))");
        this.c = tg7Var;
    }

    public static final boolean f(gq gqVar, int i) {
        Objects.requireNonNull(gqVar);
        return i == 0;
    }

    @Override // defpackage.eq
    public ac7<List<SkuDetails>> a(kn knVar) {
        im7.e(knVar, "params");
        ac7<List<SkuDetails>> ac7VarJ = this.c.m(new b(knVar)).j();
        im7.d(ac7VarJ, "connectionFlowable\n     …         }.firstOrError()");
        return ac7VarJ;
    }

    @Override // defpackage.eq
    public mb7<dq> b() {
        mb7<en> mb7Var = this.c;
        e eVar = new e();
        int i = mb7.e;
        mb7 mb7VarK = mb7Var.k(eVar, false, i, i);
        im7.d(mb7VarK, "connectionFlowable.flatM…trategy.LATEST)\n        }");
        return mb7VarK;
    }

    @Override // defpackage.eq
    public ac7<List<Purchase>> c(String str) {
        im7.e(str, "skuType");
        ac7<List<Purchase>> ac7VarJ = this.c.m(new hq(this, str)).j();
        im7.d(ac7VarJ, "connectionFlowable\n     …         }.firstOrError()");
        return ac7VarJ;
    }

    @Override // defpackage.eq
    public hb7 d(Activity activity, hn hnVar) {
        im7.e(activity, "activity");
        im7.e(hnVar, "params");
        mb7<en> mb7Var = this.c;
        c cVar = new c(activity, hnVar);
        int i = mb7.e;
        jh7 jh7Var = new jh7(mb7Var.k(cVar, false, i, i).j(), new d());
        im7.d(jh7Var, "connectionFlowable\n     …      }\n                }");
        return jh7Var;
    }

    @Override // defpackage.eq
    public hb7 e(cn cnVar) {
        im7.e(cnVar, "params");
        be7 be7Var = new be7(this.c.m(new a(cnVar)).j());
        im7.d(be7Var, "connectionFlowable\n     …         .ignoreElement()");
        return be7Var;
    }
}
