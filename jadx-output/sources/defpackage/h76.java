package defpackage;

import android.app.Application;
import defpackage.n96;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class h76 implements i76 {
    public final u86 a;
    public final p86 b;
    public jj7<Application> c;
    public jj7<w56> d;
    public jj7<String> e;
    public jj7<y27> f;
    public jj7<zb7> g;
    public jj7<zb7> h;
    public jj7<zb7> i;
    public jj7<m66> j;
    public jj7<pc7<String>> k;
    public jj7<pc7<String>> l;
    public jj7<s56> m;
    public jj7<bf5> n;
    public jj7<g26> o;
    public jj7<pc7<String>> p;
    public jj7<no5> q;
    public jj7<v56> r;
    public jj7<z86> s;
    public jj7<o26> t;
    public jj7<v56> u;
    public jj7<y36> v;
    public jj7<m96> w;
    public jj7<v56> x;
    public jj7<k66> y;
    public jj7<v26> z;

    public h76(b86 b86Var, q86 q86Var, w76 w76Var, z76 z76Var, i86 i86Var, j76 j76Var, l86 l86Var, u86 u86Var, p86 p86Var, t76 t76Var, a aVar) {
        this.a = u86Var;
        this.b = p86Var;
        jj7 y76Var = new y76(w76Var);
        Object obj = iz5.c;
        y76Var = y76Var instanceof iz5 ? y76Var : new iz5(y76Var);
        this.c = y76Var;
        jj7 x56Var = new x56(y76Var);
        this.d = x56Var instanceof iz5 ? x56Var : new iz5(x56Var);
        jj7 d86Var = new d86(b86Var);
        d86Var = d86Var instanceof iz5 ? d86Var : new iz5(d86Var);
        this.e = d86Var;
        jj7 c86Var = new c86(b86Var, d86Var);
        this.f = c86Var instanceof iz5 ? c86Var : new iz5(c86Var);
        jj7 s86Var = new s86(q86Var);
        this.g = s86Var instanceof iz5 ? s86Var : new iz5(s86Var);
        jj7 r86Var = new r86(q86Var);
        this.h = r86Var instanceof iz5 ? r86Var : new iz5(r86Var);
        jj7 t86Var = new t86(q86Var);
        t86Var = t86Var instanceof iz5 ? t86Var : new iz5(t86Var);
        this.i = t86Var;
        jj7 n66Var = new n66(this.g, this.h, t86Var);
        this.j = n66Var instanceof iz5 ? n66Var : new iz5(n66Var);
        jj7 a86Var = new a86(z76Var, this.c);
        this.k = a86Var instanceof iz5 ? a86Var : new iz5(a86Var);
        jj7 j86Var = new j86(i86Var);
        this.l = j86Var instanceof iz5 ? j86Var : new iz5(j86Var);
        jj7 k86Var = new k86(i86Var);
        this.m = k86Var instanceof iz5 ? k86Var : new iz5(k86Var);
        jj7 u76Var = new u76(t76Var);
        u76Var = u76Var instanceof iz5 ? u76Var : new iz5(u76Var);
        this.n = u76Var;
        jj7 l76Var = new l76(j76Var, u76Var);
        l76Var = l76Var instanceof iz5 ? l76Var : new iz5(l76Var);
        this.o = l76Var;
        jj7 k76Var = new k76(j76Var, l76Var);
        this.p = k76Var instanceof iz5 ? k76Var : new iz5(k76Var);
        jj7 v76Var = new v76(t76Var);
        this.q = v76Var instanceof iz5 ? v76Var : new iz5(v76Var);
        jj7 m86Var = new m86(l86Var, this.c);
        m86Var = m86Var instanceof iz5 ? m86Var : new iz5(m86Var);
        this.r = m86Var;
        v86 v86Var = new v86(u86Var);
        this.s = v86Var;
        jj7 p26Var = new p26(m86Var, this.c, v86Var);
        this.t = p26Var instanceof iz5 ? p26Var : new iz5(p26Var);
        jj7 n86Var = new n86(l86Var, this.c);
        n86Var = n86Var instanceof iz5 ? n86Var : new iz5(n86Var);
        this.u = n86Var;
        jj7 z36Var = new z36(n86Var);
        this.v = z36Var instanceof iz5 ? z36Var : new iz5(z36Var);
        jj7 jj7Var = n96.a.a;
        this.w = jj7Var instanceof iz5 ? jj7Var : new iz5(jj7Var);
        jj7 o86Var = new o86(l86Var, this.c);
        o86Var = o86Var instanceof iz5 ? o86Var : new iz5(o86Var);
        this.x = o86Var;
        jj7 l66Var = new l66(o86Var, this.s);
        this.y = l66Var instanceof iz5 ? l66Var : new iz5(l66Var);
        jj7 x76Var = new x76(w76Var);
        this.z = x76Var instanceof iz5 ? x76Var : new iz5(x76Var);
    }

    @Override // defpackage.i76
    public Application a() {
        return this.c.get();
    }

    @Override // defpackage.i76
    public s56 b() {
        return this.m.get();
    }

    @Override // defpackage.i76
    public o96 c() {
        Objects.requireNonNull(this.b);
        Long l = 1L;
        Long lValueOf = Long.valueOf(TimeUnit.DAYS.toMillis(1L));
        String strN = l == null ? " limit" : "";
        if (lValueOf == null) {
            strN = jo.n(strN, " timeToLiveMillis");
        }
        if (strN.isEmpty()) {
            return new c96("APP_FOREGROUND_ONE_PER_DAY_LIMITER_KEY", l.longValue(), lValueOf.longValue(), null);
        }
        throw new IllegalStateException(jo.n("Missing required properties:", strN));
    }

    @Override // defpackage.i76
    public w56 d() {
        return this.d.get();
    }

    @Override // defpackage.i76
    public g26 e() {
        return this.o.get();
    }

    @Override // defpackage.i76
    public no5 f() {
        return this.q.get();
    }

    @Override // defpackage.i76
    public v26 g() {
        return this.z.get();
    }

    @Override // defpackage.i76
    public y36 h() {
        return this.v.get();
    }

    @Override // defpackage.i76
    public m66 i() {
        return this.j.get();
    }

    @Override // defpackage.i76
    public o26 j() {
        return this.t.get();
    }

    @Override // defpackage.i76
    public k66 k() {
        return this.y.get();
    }

    @Override // defpackage.i76
    public pc7<String> l() {
        return this.k.get();
    }

    @Override // defpackage.i76
    public z86 m() {
        Objects.requireNonNull(this.a);
        return new a96();
    }

    @Override // defpackage.i76
    public pc7<String> n() {
        return this.l.get();
    }

    @Override // defpackage.i76
    public y27 o() {
        return this.f.get();
    }

    @Override // defpackage.i76
    public bf5 p() {
        return this.n.get();
    }
}
