package defpackage;

import android.text.TextUtils;
import android.util.Log;
import com.google.firebase.inappmessaging.FirebaseInAppMessagingDisplay;
import com.google.firebase.inappmessaging.model.MessageType;
import defpackage.ag7;
import defpackage.dd7;
import defpackage.kg6;
import defpackage.ng6;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public class ty5 {
    public final w26 a;
    public final v26 b;
    public final z96 c;
    public FirebaseInAppMessagingDisplay d;

    /* JADX WARN: Multi-variable type inference failed */
    public ty5(final k56 k56Var, s56 s56Var, r26 r26Var, z96 z96Var, w26 w26Var, v26 v26Var) {
        mb7<Object> ie7Var;
        this.c = z96Var;
        this.a = w26Var;
        this.b = v26Var;
        z96Var.n().f(new b45() { // from class: ry5
            @Override // defpackage.b45
            public void onSuccess(Object obj) {
                n56.u1("Starting InAppMessaging runtime with Installation ID " + ((String) obj));
            }
        });
        pc7<String> pc7Var = k56Var.a;
        pc7<String> pc7Var2 = k56Var.j.b;
        pc7<String> pc7Var3 = k56Var.b;
        int i = mb7.e;
        Objects.requireNonNull(pc7Var, "source1 is null");
        Objects.requireNonNull(pc7Var2, "source2 is null");
        Objects.requireNonNull(pc7Var3, "source3 is null");
        mb7<R> mb7VarK = new ue7(new w38[]{pc7Var, pc7Var2, pc7Var3}).k(dd7.a, false, 3, mb7.e);
        k46 k46Var = new tc7() { // from class: k46
            @Override // defpackage.tc7
            public void accept(Object obj) {
                n56.t1("Event Triggered: " + ((String) obj));
            }
        };
        tc7<Object> tc7Var = dd7.d;
        qc7 qc7Var = dd7.c;
        mb7<T> mb7VarO = new ke7(mb7VarK, k46Var, tc7Var, qc7Var, qc7Var).o(k56Var.f.a);
        uc7 uc7Var = new uc7(k56Var) { // from class: v46
            public final k56 e;

            {
                this.e = k56Var;
            }

            @Override // defpackage.uc7
            public Object apply(Object obj) {
                k56 k56Var2 = this.e;
                String str = (String) obj;
                o26 o26Var = k56Var2.c;
                rb7 rb7VarL = new gg7(new Callable(o26Var) { // from class: k26
                    public final o26 e;

                    {
                        this.e = o26Var;
                    }

                    @Override // java.util.concurrent.Callable
                    public Object call() {
                        return this.e.d;
                    }
                }).o(o26Var.a.a(qg6.H()).e(new tc7(o26Var) { // from class: l26
                    public final o26 e;

                    {
                        this.e = o26Var;
                    }

                    @Override // defpackage.tc7
                    public void accept(Object obj2) {
                        this.e.d = (qg6) obj2;
                    }
                })).f(new vc7(o26Var) { // from class: m26
                    public final o26 e;

                    {
                        this.e = o26Var;
                    }

                    /* JADX WARN: Removed duplicated region for block: B:11:0x0046  */
                    @Override // defpackage.vc7
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public boolean test(java.lang.Object r10) {
                        /*
                            r9 = this;
                            o26 r0 = r9.e
                            qg6 r10 = (defpackage.qg6) r10
                            java.util.Objects.requireNonNull(r0)
                            long r1 = r10.E()
                            z86 r10 = r0.c
                            long r3 = r10.a()
                            java.io.File r10 = new java.io.File
                            android.app.Application r0 = r0.b
                            android.content.Context r0 = r0.getApplicationContext()
                            java.io.File r0 = r0.getFilesDir()
                            java.lang.String r5 = "fiam_eligible_campaigns_cache_file"
                            r10.<init>(r0, r5)
                            r0 = 0
                            r5 = 0
                            r7 = 1
                            int r8 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
                            if (r8 == 0) goto L2f
                            int r10 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
                            if (r10 >= 0) goto L47
                            goto L46
                        L2f:
                            boolean r1 = r10.exists()
                            if (r1 == 0) goto L48
                            long r1 = r10.lastModified()
                            java.util.concurrent.TimeUnit r10 = java.util.concurrent.TimeUnit.DAYS
                            r5 = 1
                            long r5 = r10.toMillis(r5)
                            long r5 = r5 + r1
                            int r10 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
                            if (r10 >= 0) goto L47
                        L46:
                            r0 = 1
                        L47:
                            r7 = r0
                        L48:
                            return r7
                        */
                        throw new UnsupportedOperationException("Method not decompiled: defpackage.m26.test(java.lang.Object):boolean");
                    }
                }).d(new tc7(o26Var) { // from class: n26
                    public final o26 e;

                    {
                        this.e = o26Var;
                    }

                    @Override // defpackage.tc7
                    public void accept(Object obj2) {
                        this.e.d = null;
                    }
                }).e(new tc7() { // from class: d46
                    @Override // defpackage.tc7
                    public void accept(Object obj2) {
                        n56.t1("Fetched from cache");
                    }
                }).d(new tc7() { // from class: e46
                    @Override // defpackage.tc7
                    public void accept(Object obj2) {
                        StringBuilder sbZ = jo.z("Cache read error: ");
                        sbZ.append(((Throwable) obj2).getMessage());
                        Log.w("FIAM.Headless", sbZ.toString());
                    }
                }).l(bg7.e);
                tc7 tc7Var2 = new tc7(k56Var2) { // from class: f46
                    public final k56 e;

                    {
                        this.e = k56Var2;
                    }

                    @Override // defpackage.tc7
                    public void accept(Object obj2) {
                        final qg6 qg6Var = (qg6) obj2;
                        final o26 o26Var2 = this.e.c;
                        hb7 hb7VarE = o26Var2.a.b(qg6Var).d(new qc7(o26Var2, qg6Var) { // from class: j26
                            public final o26 a;
                            public final qg6 b;

                            {
                                this.a = o26Var2;
                                this.b = qg6Var;
                            }

                            @Override // defpackage.qc7
                            public void run() {
                                this.a.d = this.b;
                            }
                        }).d(new qc7() { // from class: a56
                            @Override // defpackage.qc7
                            public void run() {
                                n56.t1("Wrote to cache");
                            }
                        }).e(new tc7() { // from class: b56
                            @Override // defpackage.tc7
                            public void accept(Object obj3) {
                                StringBuilder sbZ = jo.z("Cache write error: ");
                                sbZ.append(((Throwable) obj3).getMessage());
                                Log.w("FIAM.Headless", sbZ.toString());
                            }
                        });
                        c56 c56Var = new uc7() { // from class: c56
                            @Override // defpackage.uc7
                            public Object apply(Object obj3) {
                                return hb7.c();
                            }
                        };
                        Objects.requireNonNull(hb7VarE);
                        new fe7(hb7VarE, c56Var).h();
                    }
                };
                uc7 uc7Var2 = new uc7(k56Var2, str, new uc7(k56Var2) { // from class: g46
                    public final k56 e;

                    {
                        this.e = k56Var2;
                    }

                    @Override // defpackage.uc7
                    public Object apply(Object obj2) {
                        k56 k56Var3 = this.e;
                        final kg6 kg6Var = (kg6) obj2;
                        if (kg6Var.F()) {
                            return new kg7(kg6Var);
                        }
                        y36 y36Var = k56Var3.g;
                        Objects.requireNonNull(y36Var);
                        String strD = kg6Var.G().equals(kg6.c.VANILLA_PAYLOAD) ? kg6Var.J().D() : kg6Var.E().D();
                        bh7 bh7Var = new bh7(new ug7(y36Var.a().j(new uc7() { // from class: s36
                            @Override // defpackage.uc7
                            public Object apply(Object obj3) {
                                return ((ng6) obj3).D();
                            }
                        }), new uc7() { // from class: t36
                            @Override // defpackage.uc7
                            public Object apply(Object obj3) {
                                List list = (List) obj3;
                                Objects.requireNonNull(list, "source is null");
                                return new zg7(list);
                            }
                        }), new uc7() { // from class: u36
                            @Override // defpackage.uc7
                            public Object apply(Object obj3) {
                                return ((mg6) obj3).E();
                            }
                        });
                        Objects.requireNonNull(strD, "element is null");
                        return new dg7(new gh7(new qh7(new fh7(new wg7(bh7Var, new dd7.e(strD)), new tc7() { // from class: w46
                            @Override // defpackage.tc7
                            public void accept(Object obj3) {
                                StringBuilder sbZ = jo.z("Impression store read fail: ");
                                sbZ.append(((Throwable) obj3).getMessage());
                                Log.w("FIAM.Headless", sbZ.toString());
                            }
                        }), new dd7.g(ac7.d(Boolean.FALSE))), new tc7(kg6Var) { // from class: x46
                            public final kg6 e;

                            {
                                this.e = kg6Var;
                            }

                            @Override // defpackage.tc7
                            public void accept(Object obj3) {
                                kg6 kg6Var2 = this.e;
                                Boolean bool = (Boolean) obj3;
                                if (kg6Var2.G().equals(kg6.c.VANILLA_PAYLOAD)) {
                                    n56.u1(String.format("Already impressed campaign %s ? : %s", kg6Var2.J().E(), bool));
                                } else if (kg6Var2.G().equals(kg6.c.EXPERIMENTAL_PAYLOAD)) {
                                    n56.u1(String.format("Already impressed experiment %s ? : %s", kg6Var2.E().E(), bool));
                                }
                            }
                        }), new vc7() { // from class: y46
                            @Override // defpackage.vc7
                            public boolean test(Object obj3) {
                                return !((Boolean) obj3).booleanValue();
                            }
                        }).j(new uc7(kg6Var) { // from class: z46
                            public final kg6 e;

                            {
                                this.e = kg6Var;
                            }

                            @Override // defpackage.uc7
                            public Object apply(Object obj3) {
                                return this.e;
                            }
                        });
                    }
                }, new uc7(k56Var2, str) { // from class: h46
                    public final k56 e;
                    public final String f;

                    {
                        this.e = k56Var2;
                        this.f = str;
                    }

                    @Override // defpackage.uc7
                    public Object apply(Object obj2) {
                        k56 k56Var3 = this.e;
                        String str2 = this.f;
                        kg6 kg6Var = (kg6) obj2;
                        Objects.requireNonNull(k56Var3);
                        if (kg6Var.F() || !str2.equals("ON_FOREGROUND")) {
                            return new kg7(kg6Var);
                        }
                        k66 k66Var = k56Var3.h;
                        o96 o96Var = k56Var3.i;
                        return new dg7(new qh7(new gh7(new jg7(k66Var.a().o(rb7.i(a66.D())).j(new uc7(k66Var, o96Var) { // from class: c66
                            public final k66 e;
                            public final o96 f;

                            {
                                this.e = k66Var;
                                this.f = o96Var;
                            }

                            @Override // defpackage.uc7
                            public Object apply(Object obj3) {
                                k66 k66Var2 = this.e;
                                o96 o96Var2 = this.f;
                                a66 a66Var = k66.d;
                                return ((a66) obj3).E(o96Var2.b(), k66Var2.c());
                            }
                        }).f(new vc7(k66Var, o96Var) { // from class: d66
                            public final k66 e;
                            public final o96 f;

                            {
                                this.e = k66Var;
                                this.f = o96Var;
                            }

                            @Override // defpackage.vc7
                            public boolean test(Object obj3) {
                                k66 k66Var2 = this.e;
                                o96 o96Var2 = this.f;
                                z56 z56Var = (z56) obj3;
                                a66 a66Var = k66.d;
                                return k66Var2.b(z56Var, o96Var2) || z56Var.H() < o96Var2.a();
                            }
                        })), new tc7() { // from class: d56
                            @Override // defpackage.tc7
                            public void accept(Object obj3) {
                                n56.u1("App foreground rate limited ? : " + ((Boolean) obj3));
                            }
                        }), new dd7.g(ac7.d(Boolean.FALSE))), new vc7() { // from class: e56
                            @Override // defpackage.vc7
                            public boolean test(Object obj3) {
                                return !((Boolean) obj3).booleanValue();
                            }
                        }).j(new uc7(kg6Var) { // from class: f56
                            public final kg6 e;

                            {
                                this.e = kg6Var;
                            }

                            @Override // defpackage.uc7
                            public Object apply(Object obj3) {
                                return this.e;
                            }
                        });
                    }
                }, new uc7() { // from class: i46
                    @Override // defpackage.uc7
                    public Object apply(Object obj2) {
                        kg6 kg6Var = (kg6) obj2;
                        int iOrdinal = kg6Var.C().G().ordinal();
                        if (iOrdinal == 0 || iOrdinal == 1 || iOrdinal == 2 || iOrdinal == 3) {
                            return new kg7(kg6Var);
                        }
                        n56.t1("Filtering non-displayable message");
                        return bg7.e;
                    }
                }) { // from class: j46
                    public final k56 e;
                    public final String f;
                    public final uc7 g;
                    public final uc7 h;
                    public final uc7 i;

                    {
                        this.e = k56Var2;
                        this.f = str;
                        this.g = uc7Var;
                        this.h = uc7Var;
                        this.i = uc7Var;
                    }

                    @Override // defpackage.uc7
                    public Object apply(Object obj2) {
                        final k56 k56Var3 = this.e;
                        final String str2 = this.f;
                        uc7 uc7Var3 = this.g;
                        uc7 uc7Var4 = this.h;
                        uc7 uc7Var5 = this.i;
                        Objects.requireNonNull(k56Var3);
                        List<kg6> listF = ((qg6) obj2).F();
                        int i2 = mb7.e;
                        Objects.requireNonNull(listF, "source is null");
                        af7 af7Var = new af7(new wf7(new pe7(new pe7(new ve7(listF), new vc7(k56Var3) { // from class: g56
                            public final k56 e;

                            {
                                this.e = k56Var3;
                            }

                            /* JADX WARN: Removed duplicated region for block: B:18:0x0059 A[ORIG_RETURN, RETURN] */
                            /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
                            @Override // defpackage.vc7
                            /*
                                Code decompiled incorrectly, please refer to instructions dump.
                                To view partially-correct add '--show-bad-code' argument
                            */
                            public boolean test(java.lang.Object r9) {
                                /*
                                    r8 = this;
                                    k56 r0 = r8.e
                                    kg6 r9 = (defpackage.kg6) r9
                                    q66 r1 = r0.k
                                    boolean r1 = r1.b
                                    r2 = 1
                                    r3 = 0
                                    if (r1 != 0) goto L5a
                                    z86 r0 = r0.d
                                    kg6$c r1 = r9.G()
                                    kg6$c r4 = kg6.c.VANILLA_PAYLOAD
                                    boolean r1 = r1.equals(r4)
                                    if (r1 == 0) goto L2b
                                    lg6 r1 = r9.J()
                                    long r4 = r1.F()
                                    lg6 r9 = r9.J()
                                    long r6 = r9.C()
                                    goto L47
                                L2b:
                                    kg6$c r1 = r9.G()
                                    kg6$c r4 = kg6.c.EXPERIMENTAL_PAYLOAD
                                    boolean r1 = r1.equals(r4)
                                    if (r1 == 0) goto L55
                                    jg6 r1 = r9.E()
                                    long r4 = r1.F()
                                    jg6 r9 = r9.E()
                                    long r6 = r9.C()
                                L47:
                                    long r0 = r0.a()
                                    int r9 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
                                    if (r9 <= 0) goto L55
                                    int r9 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
                                    if (r9 >= 0) goto L55
                                    r9 = 1
                                    goto L56
                                L55:
                                    r9 = 0
                                L56:
                                    if (r9 == 0) goto L59
                                    goto L5a
                                L59:
                                    r2 = 0
                                L5a:
                                    return r2
                                */
                                throw new UnsupportedOperationException("Method not decompiled: defpackage.g56.test(java.lang.Object):boolean");
                            }
                        }), new vc7(str2) { // from class: h56
                            public final String e;

                            {
                                this.e = str2;
                            }

                            @Override // defpackage.vc7
                            public boolean test(Object obj3) {
                                String str3 = this.e;
                                kg6 kg6Var = (kg6) obj3;
                                if (str3.equals("ON_FOREGROUND") && kg6Var.F()) {
                                    return true;
                                }
                                for (ky5 ky5Var : kg6Var.I()) {
                                    if (ky5Var.D().toString().equals(str3) || ky5Var.C().D().equals(str3)) {
                                        n56.t1(String.format("The event %s is contained in the list of triggers", str3));
                                        return true;
                                    }
                                }
                                return false;
                            }
                        }).l(uc7Var3).l(uc7Var4).l(uc7Var5), ri7.INSTANCE), new dd7.h(new Comparator() { // from class: i56
                            @Override // java.util.Comparator
                            public int compare(Object obj3, Object obj4) {
                                kg6 kg6Var = (kg6) obj3;
                                kg6 kg6Var2 = (kg6) obj4;
                                if (kg6Var.F() && !kg6Var2.F()) {
                                    return -1;
                                }
                                if (!kg6Var2.F() || kg6Var.F()) {
                                    return Integer.compare(kg6Var.H().D(), kg6Var2.H().D());
                                }
                                return 1;
                            }
                        }));
                        uc7<Object, Object> uc7Var6 = dd7.a;
                        int i3 = mb7.e;
                        ed7.a(i3, "bufferSize");
                        return new me7(new te7(af7Var, uc7Var6, i3), 0L).g(new uc7(k56Var3, str2) { // from class: j56
                            public final k56 e;
                            public final String f;

                            {
                                this.e = k56Var3;
                                this.f = str2;
                            }

                            @Override // defpackage.uc7
                            public Object apply(Object obj3) {
                                String strD;
                                String strE;
                                h96 h96Var;
                                j96 d96Var;
                                h96 h96Var2;
                                h96 h96Var3;
                                h96 h96Var4;
                                h96 h96Var5;
                                k56 k56Var4 = this.e;
                                String str3 = this.f;
                                kg6 kg6Var = (kg6) obj3;
                                Objects.requireNonNull(k56Var4);
                                if (kg6Var.G().equals(kg6.c.VANILLA_PAYLOAD)) {
                                    strD = kg6Var.J().D();
                                    strE = kg6Var.J().E();
                                } else {
                                    if (!kg6Var.G().equals(kg6.c.EXPERIMENTAL_PAYLOAD)) {
                                        return bg7.e;
                                    }
                                    String strD2 = kg6Var.E().D();
                                    String strE2 = kg6Var.E().E();
                                    if (!kg6Var.F()) {
                                        f26 f26Var = k56Var4.l;
                                        f26Var.b.execute(new Runnable(f26Var, kg6Var.E().H()) { // from class: e26
                                            public final f26 e;
                                            public final py5 f;

                                            {
                                                this.e = f26Var;
                                                this.f = py5Var;
                                            }

                                            @Override // java.lang.Runnable
                                            public void run() {
                                                f26 f26Var2 = this.e;
                                                py5 py5Var = this.f;
                                                try {
                                                    n56.t1("Updating active experiment: " + py5Var.toString());
                                                    ye5 ye5Var = f26Var2.a;
                                                    xe5 xe5Var = new xe5(py5Var.D(), py5Var.I(), py5Var.G(), new Date(py5Var.E()), py5Var.H(), py5Var.F());
                                                    ye5Var.e();
                                                    String[] strArr = xe5.g;
                                                    xe5.c(xe5Var.b());
                                                    ArrayList arrayList = new ArrayList();
                                                    Map<String, String> mapB = xe5Var.b();
                                                    ((HashMap) mapB).remove("triggerEvent");
                                                    arrayList.add(xe5.a(mapB));
                                                    ye5Var.a(arrayList);
                                                } catch (we5 e) {
                                                    StringBuilder sbZ = jo.z("Unable to set experiment as active with ABT, missing analytics?\n");
                                                    sbZ.append(e.getMessage());
                                                    Log.e("FIAM.Headless", sbZ.toString());
                                                }
                                            }
                                        });
                                    }
                                    strD = strD2;
                                    strE = strE2;
                                }
                                cz5 cz5VarC = kg6Var.C();
                                boolean zF = kg6Var.F();
                                Map<String, String> mapD = kg6Var.D();
                                c50.A(cz5VarC, "FirebaseInAppMessaging content cannot be null.");
                                c50.A(strD, "FirebaseInAppMessaging campaign id cannot be null.");
                                c50.A(strE, "FirebaseInAppMessaging campaign name cannot be null.");
                                StringBuilder sbZ = jo.z("Decoding message: ");
                                sbZ.append(cz5VarC.toString());
                                n56.t1(sbZ.toString());
                                f96 f96Var = new f96(strD, strE, zF);
                                int iOrdinal = cz5VarC.G().ordinal();
                                if (iOrdinal == 0) {
                                    zy5 zy5VarC = cz5VarC.C();
                                    String strD3 = !TextUtils.isEmpty(zy5VarC.D()) ? zy5VarC.D() : null;
                                    if (TextUtils.isEmpty(zy5VarC.G())) {
                                        h96Var = null;
                                    } else {
                                        String strG = zy5VarC.G();
                                        if (TextUtils.isEmpty(strG)) {
                                            strG = null;
                                        }
                                        if (TextUtils.isEmpty(strG)) {
                                            throw new IllegalArgumentException("ImageData model must have an imageUrl");
                                        }
                                        h96Var = new h96(strG, null);
                                    }
                                    b96 b96VarA = zy5VarC.I() ? m96.a(zy5VarC.C()).a() : null;
                                    p96 p96VarC = zy5VarC.J() ? m96.c(zy5VarC.E()) : null;
                                    p96 p96VarC2 = zy5VarC.K() ? m96.c(zy5VarC.H()) : null;
                                    if (p96VarC2 == null) {
                                        throw new IllegalArgumentException("Banner model must have a title");
                                    }
                                    if (TextUtils.isEmpty(strD3)) {
                                        throw new IllegalArgumentException("Banner model must have a background color");
                                    }
                                    d96Var = new d96(f96Var, p96VarC2, p96VarC, h96Var, b96VarA, strD3, mapD, null);
                                } else if (iOrdinal == 1) {
                                    ez5 ez5VarH = cz5VarC.H();
                                    String strE3 = !TextUtils.isEmpty(ez5VarH.E()) ? ez5VarH.E() : null;
                                    if (TextUtils.isEmpty(ez5VarH.H())) {
                                        h96Var2 = null;
                                    } else {
                                        String strH = ez5VarH.H();
                                        if (TextUtils.isEmpty(strH)) {
                                            strH = null;
                                        }
                                        if (TextUtils.isEmpty(strH)) {
                                            throw new IllegalArgumentException("ImageData model must have an imageUrl");
                                        }
                                        h96Var2 = new h96(strH, null);
                                    }
                                    b96 b96VarB = ez5VarH.J() ? m96.b(ez5VarH.C(), ez5VarH.D()) : null;
                                    p96 p96VarC3 = ez5VarH.K() ? m96.c(ez5VarH.F()) : null;
                                    p96 p96VarC4 = ez5VarH.L() ? m96.c(ez5VarH.I()) : null;
                                    if (p96VarC4 == null) {
                                        throw new IllegalArgumentException("Modal model must have a title");
                                    }
                                    if (b96VarB != null && b96VarB.b == null) {
                                        throw new IllegalArgumentException("Modal model action must be null or have a button");
                                    }
                                    if (TextUtils.isEmpty(strE3)) {
                                        throw new IllegalArgumentException("Modal model must have a background color");
                                    }
                                    d96Var = new k96(f96Var, p96VarC4, p96VarC3, h96Var2, b96VarB, strE3, mapD, null);
                                } else if (iOrdinal == 2) {
                                    dz5 dz5VarF = cz5VarC.F();
                                    if (TextUtils.isEmpty(dz5VarF.E())) {
                                        h96Var3 = null;
                                    } else {
                                        String strE4 = dz5VarF.E();
                                        if (TextUtils.isEmpty(strE4)) {
                                            strE4 = null;
                                        }
                                        if (TextUtils.isEmpty(strE4)) {
                                            throw new IllegalArgumentException("ImageData model must have an imageUrl");
                                        }
                                        h96Var3 = new h96(strE4, null);
                                    }
                                    b96 b96VarA2 = dz5VarF.F() ? m96.a(dz5VarF.C()).a() : null;
                                    if (h96Var3 == null) {
                                        throw new IllegalArgumentException("ImageOnly model must have image data");
                                    }
                                    d96Var = new i96(f96Var, h96Var3, b96VarA2, mapD, null);
                                } else if (iOrdinal != 3) {
                                    d96Var = new l96(new f96(strD, strE, zF), MessageType.UNSUPPORTED, mapD);
                                } else {
                                    bz5 bz5VarD = cz5VarC.D();
                                    p96 p96VarC5 = bz5VarD.R() ? m96.c(bz5VarD.L()) : null;
                                    p96 p96VarC6 = bz5VarD.M() ? m96.c(bz5VarD.D()) : null;
                                    String strC = !TextUtils.isEmpty(bz5VarD.C()) ? bz5VarD.C() : null;
                                    b96 b96VarB2 = (bz5VarD.N() || bz5VarD.O()) ? m96.b(bz5VarD.H(), bz5VarD.I()) : null;
                                    b96 b96VarB3 = (bz5VarD.P() || bz5VarD.Q()) ? m96.b(bz5VarD.J(), bz5VarD.K()) : null;
                                    if (TextUtils.isEmpty(bz5VarD.G())) {
                                        h96Var4 = null;
                                    } else {
                                        String strG2 = bz5VarD.G();
                                        if (TextUtils.isEmpty(strG2)) {
                                            strG2 = null;
                                        }
                                        if (TextUtils.isEmpty(strG2)) {
                                            throw new IllegalArgumentException("ImageData model must have an imageUrl");
                                        }
                                        h96Var4 = new h96(strG2, null);
                                    }
                                    if (TextUtils.isEmpty(bz5VarD.F())) {
                                        h96Var5 = null;
                                    } else {
                                        String strF = bz5VarD.F();
                                        if (TextUtils.isEmpty(strF)) {
                                            strF = null;
                                        }
                                        if (TextUtils.isEmpty(strF)) {
                                            throw new IllegalArgumentException("ImageData model must have an imageUrl");
                                        }
                                        h96Var5 = new h96(strF, null);
                                    }
                                    if (b96VarB2 == null) {
                                        throw new IllegalArgumentException("Card model must have a primary action");
                                    }
                                    if (b96VarB2.b == null) {
                                        throw new IllegalArgumentException("Card model must have a primary action button");
                                    }
                                    if (b96VarB3 != null && b96VarB3.b == null) {
                                        throw new IllegalArgumentException("Card model secondary action must be null or have a button");
                                    }
                                    if (p96VarC5 == null) {
                                        throw new IllegalArgumentException("Card model must have a title");
                                    }
                                    if (h96Var4 == null && h96Var5 == null) {
                                        throw new IllegalArgumentException("Card model must have at least one image");
                                    }
                                    if (TextUtils.isEmpty(strC)) {
                                        throw new IllegalArgumentException("Card model must have a background color");
                                    }
                                    d96Var = new g96(f96Var, p96VarC5, p96VarC6, h96Var4, h96Var5, strC, b96VarB2, b96VarB3, mapD, null);
                                }
                                return d96Var.a.equals(MessageType.UNSUPPORTED) ? bg7.e : new kg7(new q96(d96Var, str3));
                            }
                        });
                    }
                };
                rb7<ng6> rb7VarL2 = k56Var2.g.a().d(new tc7() { // from class: l46
                    @Override // defpackage.tc7
                    public void accept(Object obj2) {
                        StringBuilder sbZ = jo.z("Impressions store read fail: ");
                        sbZ.append(((Throwable) obj2).getMessage());
                        Log.w("FIAM.Headless", sbZ.toString());
                    }
                }).b(ng6.E()).l(rb7.i(ng6.E()));
                uc7<? super ng6, ? extends vb7<? extends R>> uc7Var3 = new uc7(k56Var2, new sg7(new vb7[]{new ag7(new ub7(k56Var2.m.n()) { // from class: a46
                    public final e45 a;

                    {
                        this.a = e45Var;
                    }

                    @Override // defpackage.ub7
                    public void a(final sb7 sb7Var) {
                        e45 e45Var = this.a;
                        e45Var.f(new b45(sb7Var) { // from class: b46
                            public final sb7 a;

                            {
                                this.a = sb7Var;
                            }

                            @Override // defpackage.b45
                            public void onSuccess(Object obj2) {
                                ag7.a aVar = (ag7.a) this.a;
                                aVar.c(obj2);
                                aVar.a();
                            }
                        });
                        e45Var.d(new a45(sb7Var) { // from class: c46
                            public final sb7 a;

                            {
                                this.a = sb7Var;
                            }

                            @Override // defpackage.a45
                            public void c(Exception exc) {
                                ag7.a aVar = (ag7.a) this.a;
                                aVar.b(exc);
                                aVar.a();
                            }
                        });
                    }
                }), new ag7(new ub7(k56Var2.m.a(false)) { // from class: a46
                    public final e45 a;

                    {
                        this.a = e45Var;
                    }

                    @Override // defpackage.ub7
                    public void a(final sb7 sb7Var) {
                        e45 e45Var = this.a;
                        e45Var.f(new b45(sb7Var) { // from class: b46
                            public final sb7 a;

                            {
                                this.a = sb7Var;
                            }

                            @Override // defpackage.b45
                            public void onSuccess(Object obj2) {
                                ag7.a aVar = (ag7.a) this.a;
                                aVar.c(obj2);
                                aVar.a();
                            }
                        });
                        e45Var.d(new a45(sb7Var) { // from class: c46
                            public final sb7 a;

                            {
                                this.a = sb7Var;
                            }

                            @Override // defpackage.a45
                            public void c(Exception exc) {
                                ag7.a aVar = (ag7.a) this.a;
                                aVar.b(exc);
                                aVar.a();
                            }
                        });
                    }
                })}, new dd7.a(new rc7() { // from class: m46
                    @Override // defpackage.rc7
                    public Object apply(Object obj2, Object obj3) {
                        return new i26((String) obj2, (ea6) obj3);
                    }
                })).k(k56Var2.f.a)) { // from class: n46
                    public final k56 e;
                    public final rb7 f;

                    {
                        this.e = k56Var2;
                        this.f = rb7Var;
                    }

                    @Override // defpackage.uc7
                    public Object apply(Object obj2) {
                        final k56 k56Var3 = this.e;
                        rb7 rb7Var = this.f;
                        final ng6 ng6Var = (ng6) obj2;
                        if (!k56Var3.n.a()) {
                            n56.u1("Automatic data collection is disabled, not attempting campaign fetch from service.");
                            return new kg7(k56.a());
                        }
                        rb7 rb7VarE = rb7Var.f(new vc7() { // from class: o46
                            @Override // defpackage.vc7
                            public boolean test(Object obj3) {
                                m56 m56Var = (m56) obj3;
                                return (TextUtils.isEmpty(m56Var.a()) || TextUtils.isEmpty(m56Var.b().a())) ? false : true;
                            }
                        }).j(new uc7(k56Var3, ng6Var) { // from class: p46
                            public final k56 e;
                            public final ng6 f;

                            {
                                this.e = k56Var3;
                                this.f = ng6Var;
                            }

                            /* JADX WARN: Removed duplicated region for block: B:64:0x0236  */
                            @Override // defpackage.uc7
                            /*
                                Code decompiled incorrectly, please refer to instructions dump.
                                To view partially-correct add '--show-bad-code' argument
                            */
                            public java.lang.Object apply(java.lang.Object r12) throws java.lang.Throwable {
                                /*
                                    Method dump skipped, instructions count: 574
                                    To view this dump add '--comments-level debug' option
                                */
                                throw new UnsupportedOperationException("Method not decompiled: defpackage.p46.apply(java.lang.Object):java.lang.Object");
                            }
                        }).o(new kg7(k56.a())).e(new tc7() { // from class: q46
                            @Override // defpackage.tc7
                            public void accept(Object obj3) {
                                n56.u1(String.format(Locale.US, "Successfully fetched %d messages from backend", Integer.valueOf(((qg6) obj3).F().size())));
                            }
                        }).e(new tc7(k56Var3) { // from class: r46
                            public final k56 e;

                            {
                                this.e = k56Var3;
                            }

                            @Override // defpackage.tc7
                            public void accept(Object obj3) {
                                final y36 y36Var = this.e.g;
                                Objects.requireNonNull(y36Var);
                                final HashSet hashSet = new HashSet();
                                for (kg6 kg6Var : ((qg6) obj3).F()) {
                                    hashSet.add(kg6Var.G().equals(kg6.c.VANILLA_PAYLOAD) ? kg6Var.J().D() : kg6Var.E().D());
                                }
                                StringBuilder sbZ = jo.z("Potential impressions to clear: ");
                                sbZ.append(hashSet.toString());
                                n56.t1(sbZ.toString());
                                y36Var.a().b(y36.c).h(new uc7(y36Var, hashSet) { // from class: v36
                                    public final y36 e;
                                    public final HashSet f;

                                    {
                                        this.e = y36Var;
                                        this.f = hashSet;
                                    }

                                    @Override // defpackage.uc7
                                    public Object apply(Object obj4) {
                                        final y36 y36Var2 = this.e;
                                        HashSet hashSet2 = this.f;
                                        ng6 ng6Var2 = (ng6) obj4;
                                        ng6 ng6Var3 = y36.c;
                                        StringBuilder sbZ2 = jo.z("Existing impressions: ");
                                        sbZ2.append(ng6Var2.toString());
                                        n56.t1(sbZ2.toString());
                                        ng6.b bVarF = ng6.F();
                                        for (mg6 mg6Var : ng6Var2.D()) {
                                            if (!hashSet2.contains(mg6Var.E())) {
                                                bVarF.o();
                                                ng6.C((ng6) bVarF.f, mg6Var);
                                            }
                                        }
                                        final ng6 ng6VarL = bVarF.l();
                                        StringBuilder sbZ3 = jo.z("New cleared impression list: ");
                                        sbZ3.append(ng6VarL.toString());
                                        n56.t1(sbZ3.toString());
                                        return y36Var2.a.b(ng6VarL).d(new qc7(y36Var2, ng6VarL) { // from class: w36
                                            public final y36 a;
                                            public final ng6 b;

                                            {
                                                this.a = y36Var2;
                                                this.b = ng6VarL;
                                            }

                                            @Override // defpackage.qc7
                                            public void run() {
                                                y36 y36Var3 = this.a;
                                                ng6 ng6Var4 = this.b;
                                                ng6 ng6Var5 = y36.c;
                                                y36Var3.b(ng6Var4);
                                            }
                                        });
                                    }
                                }).h();
                            }
                        });
                        final g26 g26Var = k56Var3.j;
                        g26Var.getClass();
                        rb7 rb7VarE2 = rb7VarE.e(new tc7(g26Var) { // from class: s46
                            public final g26 e;

                            {
                                this.e = g26Var;
                            }

                            @Override // defpackage.tc7
                            public void accept(Object obj3) {
                                g26 g26Var2 = this.e;
                                Objects.requireNonNull(g26Var2);
                                HashSet hashSet = new HashSet();
                                Iterator<kg6> it = ((qg6) obj3).F().iterator();
                                while (it.hasNext()) {
                                    for (ky5 ky5Var : it.next().I()) {
                                        if (!TextUtils.isEmpty(ky5Var.C().D())) {
                                            hashSet.add(ky5Var.C().D());
                                        }
                                    }
                                }
                                if (hashSet.size() > 50) {
                                    n56.u1("Too many contextual triggers defined - limiting to 50");
                                }
                                n56.t1("Updating contextual triggers for the following analytics events: " + hashSet);
                                g26Var2.c.a(hashSet);
                            }
                        });
                        final q66 q66Var = k56Var3.k;
                        q66Var.getClass();
                        return rb7VarE2.e(new tc7(q66Var) { // from class: t46
                            public final q66 e;

                            {
                                this.e = q66Var;
                            }

                            @Override // defpackage.tc7
                            public void accept(Object obj3) {
                                q66 q66Var2 = this.e;
                                qg6 qg6Var = (qg6) obj3;
                                if (q66Var2.b) {
                                    return;
                                }
                                if (q66Var2.c) {
                                    int i2 = q66Var2.d + 1;
                                    q66Var2.d = i2;
                                    if (i2 >= 5) {
                                        q66Var2.c = false;
                                        q66Var2.a.b("fresh_install", false);
                                    }
                                }
                                Iterator<kg6> it = qg6Var.F().iterator();
                                while (it.hasNext()) {
                                    if (it.next().F()) {
                                        q66Var2.b = true;
                                        q66Var2.a.b("test_device", true);
                                        n56.u1("Setting this device as a test device");
                                        return;
                                    }
                                }
                            }
                        }).d(new tc7() { // from class: u46
                            @Override // defpackage.tc7
                            public void accept(Object obj3) {
                                StringBuilder sbZ = jo.z("Service fetch error: ");
                                sbZ.append(((Throwable) obj3).getMessage());
                                Log.w("FIAM.Headless", sbZ.toString());
                            }
                        }).l(bg7.e);
                    }
                };
                q66 q66Var = k56Var2.k;
                if (q66Var.c ? str.equals("ON_FOREGROUND") : q66Var.b) {
                    n56.u1(String.format("Forcing fetch from service rather than cache. Test Device: %s | App Fresh Install: %s", Boolean.valueOf(k56Var2.k.b), Boolean.valueOf(k56Var2.k.c)));
                    return rb7VarL2.g(uc7Var3).g(uc7Var2).p();
                }
                n56.t1("Attempting to fetch campaigns using cache");
                return rb7VarL.o(rb7VarL2.g(uc7Var3).e(tc7Var2)).g(uc7Var2).p();
            }
        };
        ed7.a(2, "prefetch");
        if (mb7VarO instanceof ld7) {
            Object objCall = ((ld7) mb7VarO).call();
            ie7Var = objCall == null ? oe7.f : new qf7(objCall, uc7Var);
        } else {
            ie7Var = new ie7(mb7VarO, uc7Var, 2, ui7.IMMEDIATE);
        }
        ie7Var.o(k56Var.f.b).r(new tc7(this) { // from class: sy5
            public final ty5 e;

            {
                this.e = this;
            }

            @Override // defpackage.tc7
            public void accept(Object obj) {
                ty5 ty5Var = this.e;
                q96 q96Var = (q96) obj;
                FirebaseInAppMessagingDisplay firebaseInAppMessagingDisplay = ty5Var.d;
                if (firebaseInAppMessagingDisplay != null) {
                    j96 j96Var = q96Var.a;
                    w26 w26Var2 = ty5Var.a;
                    firebaseInAppMessagingDisplay.displayMessage(j96Var, new j36(w26Var2.a, w26Var2.b, w26Var2.c, w26Var2.d, w26Var2.e, w26Var2.f, w26Var2.g, w26Var2.h, j96Var, q96Var.b));
                }
            }
        }, dd7.e, qc7Var, ye7.INSTANCE);
    }
}
