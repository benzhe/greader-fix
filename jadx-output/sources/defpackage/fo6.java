package defpackage;

import com.google.firebase.Timestamp;
import defpackage.ag7;
import defpackage.dq5;
import defpackage.fs5;
import defpackage.mr5;
import defpackage.zo5;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class fo6<T> implements ub7<po6> {
    public final /* synthetic */ go6 a;
    public final /* synthetic */ String b;

    public static final class a<TResult> implements b45<uo5> {
        public final /* synthetic */ sb7 a;

        public a(sb7 sb7Var) {
            this.a = sb7Var;
        }

        @Override // defpackage.b45
        public void onSuccess(uo5 uo5Var) {
            u48 u48VarN;
            u48 u48VarN2;
            uo5 uo5Var2 = uo5Var;
            im7.d(uo5Var2, "document");
            String strX = uo5Var2.b.e.x();
            im7.d(strX, "document.id");
            String str = (String) uo5Var2.e("product_id", String.class);
            if (str == null) {
                ((ag7.a) this.a).a();
                return;
            }
            im7.d(str, "document.getString(\"prod…ener emitter.onComplete()");
            Boolean bool = (Boolean) uo5Var2.e("reusable", Boolean.class);
            if (bool == null) {
                bool = Boolean.FALSE;
            }
            im7.d(bool, "document.getBoolean(\"reusable\") ?: false");
            boolean zBooleanValue = bool.booleanValue();
            boolean z = uo5Var2.d("redeemed_time") != null;
            Timestamp timestampD = uo5Var2.d("start_time");
            if (timestampD != null) {
                im7.d(timestampD, "it");
                u48VarN = u48.N(o48.N(timestampD.e), a58.j);
            } else {
                u48VarN = null;
            }
            Timestamp timestampD2 = uo5Var2.d("end_time");
            if (timestampD2 != null) {
                im7.d(timestampD2, "it");
                u48VarN2 = u48.N(o48.N(timestampD2.e), a58.j);
            } else {
                u48VarN2 = null;
            }
            Long lC = uo5Var2.c("count");
            if (lC == null) {
                lC = 0L;
            }
            im7.d(lC, "document.getLong(\"count\") ?: 0");
            long jLongValue = lC.longValue();
            Long lC2 = uo5Var2.c("limit");
            if (lC2 == null) {
                lC2 = 0L;
            }
            im7.d(lC2, "document.getLong(\"limit\") ?: 0");
            ((ag7.a) this.a).c(new po6(strX, str, z, zBooleanValue, u48VarN, u48VarN2, jLongValue, lC2.longValue()));
        }
    }

    public static final class b implements a45 {
        public final /* synthetic */ sb7 a;

        public b(sb7 sb7Var) {
            this.a = sb7Var;
        }

        @Override // defpackage.a45
        public final void c(Exception exc) {
            im7.e(exc, "it");
            ((ag7.a) this.a).b(exc);
        }
    }

    public fo6(go6 go6Var, String str) {
        this.a = go6Var;
        this.b = str;
    }

    @Override // defpackage.ub7
    public final void a(sb7<po6> sb7Var) {
        im7.e(sb7Var, "emitter");
        final to5 to5VarA = this.a.a.a("promo_codes").a(this.b);
        final kp5 kp5Var = kp5.DEFAULT;
        final f45 f45Var = new f45();
        final f45 f45Var2 = new f45();
        dq5.a aVar = new dq5.a();
        aVar.a = true;
        aVar.b = true;
        aVar.c = true;
        Executor executor = nx5.b;
        final vo5 vo5Var = new vo5(f45Var, f45Var2, kp5Var) { // from class: ro5
            public final f45 a;
            public final f45 b;
            public final kp5 c;

            {
                this.a = f45Var;
                this.b = f45Var2;
                this.c = kp5Var;
            }

            @Override // defpackage.vo5
            public void a(Object obj, zo5 zo5Var) {
                f45 f45Var3 = this.a;
                f45 f45Var4 = this.b;
                kp5 kp5Var2 = this.c;
                uo5 uo5Var = (uo5) obj;
                if (zo5Var != null) {
                    f45Var3.a.r(zo5Var);
                    return;
                }
                try {
                    ((fp5) c50.d(f45Var4.a)).remove();
                    yt5 yt5Var = uo5Var.c;
                    boolean z = true;
                    if ((yt5Var != null) || !uo5Var.d.b) {
                        if (yt5Var == null) {
                            z = false;
                        }
                        if (z && uo5Var.d.b && kp5Var2 == kp5.SERVER) {
                            f45Var3.a.r(new zo5("Failed to get document from server. (However, this document does exist in the local cache. Run again without setting source to SERVER to retrieve the cached document.)", zo5.a.UNAVAILABLE));
                        } else {
                            f45Var3.a.s(uo5Var);
                        }
                    } else {
                        f45Var3.a.r(new zo5("Failed to get document because the client is offline.", zo5.a.UNAVAILABLE));
                    }
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    bx5.b(e, "Failed to register a listener for a single document", new Object[0]);
                    throw null;
                } catch (ExecutionException e2) {
                    bx5.b(e2, "Failed to register a listener for a single document", new Object[0]);
                    throw null;
                }
            }
        };
        xp5 xp5Var = new xp5(executor, new vo5(to5VarA, vo5Var) { // from class: so5
            public final to5 a;
            public final vo5 b;

            {
                this.a = to5VarA;
                this.b = vo5Var;
            }

            @Override // defpackage.vo5
            public void a(Object obj, zo5 zo5Var) {
                uo5 uo5Var;
                to5 to5Var = this.a;
                vo5 vo5Var2 = this.b;
                mr5 mr5Var = (mr5) obj;
                if (zo5Var != null) {
                    vo5Var2.a(null, zo5Var);
                    return;
                }
                bx5.c(mr5Var != null, "Got event without value or error set", new Object[0]);
                bx5.c(mr5Var.b.size() <= 1, "Too many documents returned on a document query", new Object[0]);
                yt5 yt5VarD = mr5Var.b.d(to5Var.a);
                if (yt5VarD != null) {
                    uo5Var = new uo5(to5Var.b, yt5VarD.a, yt5VarD, mr5Var.e, mr5Var.f.contains(yt5VarD.a));
                } else {
                    uo5Var = new uo5(to5Var.b, to5Var.a, null, mr5Var.e, false);
                }
                vo5Var2.a(uo5Var, null);
            }
        });
        yq5 yq5VarA = yq5.a(to5VarA.a.e);
        final mq5 mq5Var = to5VarA.b.h;
        mq5Var.b();
        final zq5 zq5Var = new zq5(yq5VarA, aVar, xp5Var);
        mq5Var.c.a(new cx5(new Runnable(mq5Var, zq5Var) { // from class: kq5
            public final mq5 e;
            public final zq5 f;

            {
                this.e = mq5Var;
                this.f = zq5Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                int i;
                vw5 vw5Var;
                mq5 mq5Var2 = this.e;
                zq5 zq5Var2 = this.f;
                dq5 dq5Var = mq5Var2.f;
                Objects.requireNonNull(dq5Var);
                yq5 yq5Var = zq5Var2.a;
                dq5.b bVar = dq5Var.b.get(yq5Var);
                boolean z = bVar == null;
                if (z) {
                    bVar = new dq5.b();
                    dq5Var.b.put(yq5Var, bVar);
                }
                bVar.a.add(zq5Var2);
                bx5.c(!zq5Var2.a(dq5Var.d), "onOnlineStateChanged() shouldn't raise an event for brand-new listeners.", new Object[0]);
                mr5 mr5Var = bVar.b;
                if (mr5Var != null && zq5Var2.b(mr5Var)) {
                    dq5Var.b();
                }
                if (z) {
                    cr5 cr5Var = dq5Var.a;
                    cr5Var.g("listen");
                    bx5.c(!cr5Var.c.containsKey(yq5Var), "We already listen to query: %s", yq5Var);
                    fs5 fs5Var = cr5Var.a;
                    dr5 dr5VarI = yq5Var.i();
                    ut5 ut5VarB = fs5Var.g.b(dr5VarI);
                    if (ut5VarB != null) {
                        i = ut5VarB.b;
                    } else {
                        fs5.b bVar2 = new fs5.b(null);
                        fs5Var.a.h("Allocate target", new Runnable(fs5Var, bVar2, dr5VarI) { // from class: ds5
                            public final fs5 e;
                            public final fs5.b f;
                            public final dr5 g;

                            {
                                this.e = fs5Var;
                                this.f = bVar2;
                                this.g = dr5VarI;
                            }

                            @Override // java.lang.Runnable
                            public void run() {
                                fs5 fs5Var2 = this.e;
                                fs5.b bVar3 = this.f;
                                dr5 dr5Var = this.g;
                                int iA = fs5Var2.j.a();
                                bVar3.b = iA;
                                ut5 ut5Var = new ut5(dr5Var, iA, fs5Var2.a.c().e(), vs5.LISTEN);
                                bVar3.a = ut5Var;
                                fs5Var2.g.a(ut5Var);
                            }
                        });
                        i = bVar2.b;
                        ut5VarB = bVar2.a;
                    }
                    if (fs5Var.h.get(i) == null) {
                        fs5Var.h.put(i, ut5VarB);
                        fs5Var.i.put(dr5VarI, Integer.valueOf(i));
                    }
                    int i2 = ut5VarB.b;
                    ws5 ws5VarA = cr5Var.a.a(yq5Var, true);
                    if (cr5Var.d.get(Integer.valueOf(i2)) != null) {
                        boolean z2 = cr5Var.c.get(cr5Var.d.get(Integer.valueOf(i2)).get(0)).c.b == mr5.a.SYNCED;
                        qi6 qi6Var = qi6.f;
                        ln5<bu5> ln5Var = bu5.f;
                        vw5Var = new vw5(qi6Var, z2, ln5Var, ln5Var, ln5Var);
                    } else {
                        vw5Var = null;
                    }
                    kr5 kr5Var = new kr5(yq5Var, ws5VarA.b);
                    lr5 lr5VarA = kr5Var.a(kr5Var.c(ws5VarA.a, null), vw5Var);
                    cr5Var.o(lr5VarA.b, i2);
                    cr5Var.c.put(yq5Var, new ar5(yq5Var, i2, kr5Var));
                    if (!cr5Var.d.containsKey(Integer.valueOf(i2))) {
                        cr5Var.d.put(Integer.valueOf(i2), new ArrayList(1));
                    }
                    cr5Var.d.get(Integer.valueOf(i2)).add(yq5Var);
                    ((dq5) cr5Var.n).a(Collections.singletonList(lr5VarA.a));
                    cr5Var.b.d(ut5VarB);
                    bVar.c = ut5VarB.b;
                }
            }
        }));
        f45Var2.a.s(new tq5(to5VarA.b.h, zq5Var, xp5Var));
        e45 e45Var = f45Var.a;
        a aVar2 = new a(sb7Var);
        Objects.requireNonNull(e45Var);
        Executor executor2 = g45.a;
        e45Var.g(executor2, aVar2);
        e45Var.e(executor2, new b(sb7Var));
    }
}
