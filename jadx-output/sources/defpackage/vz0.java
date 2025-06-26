package defpackage;

import android.content.Context;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class vz0 {
    public final of2 a;
    public mb3<Integer> b;
    public mb3<ee2> c;
    public mb3<String> d;
    public mb3<oe2> e;
    public mb3<se2> f;
    public mb3<ye2> g;
    public mb3<df2> h;
    public mb3<nf2> i;
    public mb3<xf2> j;
    public mb3<String> k;
    public mb3<yr1> l;
    public mb3<yr1> m;
    public mb3<yr1> n;
    public mb3<yr1> o;
    public mb3<Map<ap2, yr1>> p;
    public mb3<Set<sf1<fp2>>> q;
    public mb3<Set<sf1<fp2>>> r;
    public mb3 s;
    public mb3<zo2> t;
    public final /* synthetic */ pz0 u;

    public vz0(pz0 pz0Var, of2 of2Var, oz0 oz0Var) {
        this.u = pz0Var;
        this.a = of2Var;
        qf2 qf2Var = new qf2(of2Var);
        this.b = qf2Var;
        q11 q11Var = p11.a;
        mb3<Context> mb3Var = pz0Var.g;
        mb3<ScheduledExecutorService> mb3Var2 = pz0Var.m;
        yn2 yn2Var = bo2.a;
        this.c = new fe2(q11Var, mb3Var, mb3Var2, yn2Var, qf2Var);
        rf2 rf2Var = new rf2(of2Var);
        this.d = rf2Var;
        this.e = new qe2(gz0.a, mb3Var, rf2Var, yn2Var);
        this.f = new we2(q11Var, qf2Var, mb3Var, pz0Var.R, mb3Var2, yn2Var);
        this.g = new af2(j11.a, yn2Var, mb3Var);
        this.h = new ff2(l11.a, yn2Var, rf2Var);
        this.i = new pf2(n11.a, mb3Var2, mb3Var);
        this.j = new zf2(yn2Var);
        this.k = new sf2(of2Var);
        mb3 mb3Var3 = qr1.a;
        Object obj = db3.c;
        this.l = mb3Var3 instanceof db3 ? mb3Var3 : new db3(mb3Var3);
        mb3 mb3Var4 = or1.a;
        this.m = mb3Var4 instanceof db3 ? mb3Var4 : new db3(mb3Var4);
        mb3 mb3Var5 = sr1.a;
        this.n = mb3Var5 instanceof db3 ? mb3Var5 : new db3(mb3Var5);
        mb3 mb3Var6 = ur1.a;
        this.o = mb3Var6 instanceof db3 ? mb3Var6 : new db3(mb3Var6);
        gb3 gb3VarA = eb3.a(4);
        ap2 ap2Var = ap2.GMS_SIGNALS;
        mb3<yr1> mb3Var7 = this.l;
        LinkedHashMap<K, mb3<V>> linkedHashMap = gb3VarA.a;
        Objects.requireNonNull(mb3Var7, "provider");
        linkedHashMap.put(ap2Var, mb3Var7);
        ap2 ap2Var2 = ap2.BUILD_URL;
        mb3<yr1> mb3Var8 = this.m;
        LinkedHashMap<K, mb3<V>> linkedHashMap2 = gb3VarA.a;
        Objects.requireNonNull(mb3Var8, "provider");
        linkedHashMap2.put(ap2Var2, mb3Var8);
        ap2 ap2Var3 = ap2.HTTP;
        mb3<yr1> mb3Var9 = this.n;
        LinkedHashMap<K, mb3<V>> linkedHashMap3 = gb3VarA.a;
        Objects.requireNonNull(mb3Var9, "provider");
        linkedHashMap3.put(ap2Var3, mb3Var9);
        ap2 ap2Var4 = ap2.PRE_PROCESS;
        mb3<yr1> mb3Var10 = this.o;
        LinkedHashMap<K, mb3<V>> linkedHashMap4 = gb3VarA.a;
        Objects.requireNonNull(mb3Var10, "provider");
        linkedHashMap4.put(ap2Var4, mb3Var10);
        eb3 eb3VarA = gb3VarA.a();
        this.p = eb3VarA;
        mb3 tr1Var = new tr1(this.k, pz0Var.g, yn2Var, eb3VarA);
        this.q = tr1Var instanceof db3 ? tr1Var : new db3(tr1Var);
        lb3 lb3VarA = jb3.a(0, 1);
        lb3VarA.b.add(this.q);
        jb3 jb3VarA = lb3VarA.a();
        this.r = jb3VarA;
        hp2 hp2Var = new hp2(jb3VarA);
        this.s = hp2Var;
        mb3 ip2Var = new ip2(yn2Var, pz0Var.m, hp2Var);
        this.t = ip2Var instanceof db3 ? ip2Var : new db3(ip2Var);
    }

    public final hf2 a() {
        m40 m40Var = new m40();
        zv2 zv2VarA = yn2.a();
        List<String> list = this.a.a.i;
        Objects.requireNonNull(list, "Cannot return null from a non-@Nullable @Provides method");
        return new hf2(m40Var, zv2VarA, list);
    }

    public final je2 b() {
        ir0 ir0Var = new ir0();
        zv2 zv2VarA = yn2.a();
        String string = this.a.a.e.getString("ms");
        Objects.requireNonNull(string, "Cannot return null from a non-@Nullable @Provides method");
        of2 of2Var = this.a;
        return new je2(ir0Var, zv2VarA, string, of2Var.a.j, of2Var.b);
    }

    public final zo2 c() {
        return this.t.get();
    }
}
