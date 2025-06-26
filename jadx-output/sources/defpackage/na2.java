package defpackage;

import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class na2 implements qd2<ka2> {
    public final zv2 a;
    public final pq1 b;
    public final String c;
    public final ll2 d;

    public na2(zv2 zv2Var, pq1 pq1Var, ll2 ll2Var, String str) {
        this.a = zv2Var;
        this.b = pq1Var;
        this.d = ll2Var;
        this.c = str;
    }

    @Override // defpackage.qd2
    public final aw2<ka2> a() {
        return this.a.y(new Callable(this) { // from class: ma2
            public final na2 e;

            {
                this.e = this;
            }

            /* JADX WARN: Removed duplicated region for block: B:21:0x0052  */
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object call() {
                /*
                    r7 = this;
                    na2 r0 = r7.e
                    pq1 r1 = r0.b
                    ll2 r2 = r0.d
                    java.lang.String r2 = r2.f
                    java.lang.String r3 = r0.c
                    java.util.Objects.requireNonNull(r1)
                    o40<java.lang.Boolean> r4 = defpackage.y40.e2
                    os3 r5 = defpackage.os3.j
                    u40 r5 = r5.f
                    java.lang.Object r4 = r5.a(r4)
                    java.lang.Boolean r4 = (java.lang.Boolean) r4
                    boolean r4 = r4.booleanValue()
                    r5 = 0
                    if (r4 != 0) goto L21
                    goto L52
                L21:
                    if (r2 == 0) goto L52
                    if (r3 != 0) goto L26
                    goto L52
                L26:
                    boolean r4 = r1.d
                    if (r4 != 0) goto L2d
                    r1.a()
                L2d:
                    java.util.Map<java.lang.String, java.util.Map<java.lang.String, org.json.JSONObject>> r4 = r1.a
                    java.lang.Object r4 = r4.get(r3)
                    java.util.Map r4 = (java.util.Map) r4
                    if (r4 != 0) goto L38
                    goto L52
                L38:
                    java.lang.Object r6 = r4.get(r2)
                    org.json.JSONObject r6 = (org.json.JSONObject) r6
                    if (r6 == 0) goto L41
                    goto L53
                L41:
                    org.json.JSONObject r1 = r1.e
                    java.lang.String r1 = defpackage.c50.O1(r1, r2, r3)
                    if (r1 != 0) goto L4a
                    goto L52
                L4a:
                    java.lang.Object r1 = r4.get(r1)
                    r6 = r1
                    org.json.JSONObject r6 = (org.json.JSONObject) r6
                    goto L53
                L52:
                    r6 = r5
                L53:
                    pq1 r0 = r0.b
                    java.util.Objects.requireNonNull(r0)
                    o40<java.lang.Boolean> r1 = defpackage.y40.f2
                    os3 r2 = defpackage.os3.j
                    u40 r2 = r2.f
                    java.lang.Object r1 = r2.a(r1)
                    java.lang.Boolean r1 = (java.lang.Boolean) r1
                    boolean r1 = r1.booleanValue()
                    if (r1 != 0) goto L6b
                    goto L6d
                L6b:
                    org.json.JSONObject r5 = r0.b
                L6d:
                    ka2 r0 = new ka2
                    r0.<init>(r6, r5)
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: defpackage.ma2.call():java.lang.Object");
            }
        });
    }
}
