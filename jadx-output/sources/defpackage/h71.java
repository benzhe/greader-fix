package defpackage;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class h71<T> {
    public final gv1 a;
    public final ll2 b;
    public final zo2 c;
    public final t11 d;
    public final c32<T> e;
    public final md1 f;
    public final hl2 g;
    public final bw1 h;
    public final g91 i;
    public final Executor j;
    public final uv1 k;
    public final nz1 l;

    public h71(gv1 gv1Var, ll2 ll2Var, zo2 zo2Var, t11 t11Var, c32<T> c32Var, md1 md1Var, hl2 hl2Var, bw1 bw1Var, g91 g91Var, Executor executor, uv1 uv1Var, nz1 nz1Var) {
        this.a = gv1Var;
        this.b = ll2Var;
        this.c = zo2Var;
        this.d = t11Var;
        this.e = c32Var;
        this.f = md1Var;
        this.g = hl2Var;
        this.h = bw1Var;
        this.i = g91Var;
        this.j = executor;
        this.k = uv1Var;
        this.l = nz1Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00c9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.aw2<defpackage.hl2> a(defpackage.aw2<com.google.android.gms.internal.ads.zzauj> r9) {
        /*
            Method dump skipped, instructions count: 294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.h71.a(aw2):aw2");
    }

    public final aw2<T> b() {
        return c(a(this.i.b()));
    }

    public final aw2<T> c(aw2<hl2> aw2Var) {
        qo2<I> qo2VarB = this.c.b(ap2.RENDERER, aw2Var);
        qo2 qo2VarB2 = qo2VarB.c(new uo2(new jo2(this) { // from class: j71
            public final h71 a;

            {
                this.a = this;
            }

            @Override // defpackage.jo2
            public final Object apply(Object obj) {
                hl2 hl2Var = (hl2) obj;
                t11 t11Var = this.a.d;
                Objects.requireNonNull(t11Var);
                for (el2 el2Var : hl2Var.b.c) {
                    if (t11Var.a.containsKey(el2Var.a)) {
                        t11Var.a.get(el2Var.a).a(el2Var.b);
                    } else if (t11Var.b.containsKey(el2Var.a)) {
                        v11 v11Var = t11Var.b.get(el2Var.a);
                        JSONObject jSONObject = el2Var.b;
                        HashMap map = new HashMap();
                        Iterator<String> itKeys = jSONObject.keys();
                        while (itKeys.hasNext()) {
                            String next = itKeys.next();
                            String strOptString = jSONObject.optString(next);
                            if (strOptString != null) {
                                map.put(next, strOptString);
                            }
                        }
                        v11Var.a(map);
                    }
                }
                return hl2Var;
            }
        }), qo2VarB.f.a).b(this.e);
        if (!((Boolean) os3.j.f.a(y40.g3)).booleanValue()) {
            qo2VarB2 = qo2VarB2.a(((Integer) os3.j.f.a(y40.h3)).intValue(), TimeUnit.SECONDS);
        }
        return qo2VarB2.e();
    }
}
