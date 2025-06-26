package defpackage;

import android.content.Context;
import defpackage.bs;
import defpackage.eu;
import defpackage.ev;
import defpackage.fu;
import defpackage.fv;
import defpackage.gu;
import java.util.Objects;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class xr extends js {
    public jj7<Executor> e;
    public jj7<Context> f;
    public jj7 g;
    public jj7 h;
    public jj7 i;
    public jj7<tu> j;
    public jj7<nt> k;
    public jj7<zt> l;
    public jj7<dt> m;
    public jj7<tt> n;
    public jj7<xt> o;
    public jj7<is> p;

    public xr(Context context, a aVar) {
        jj7 jj7Var = bs.a.a;
        Object obj = ys.c;
        this.e = jj7Var instanceof ys ? jj7Var : new ys(jj7Var);
        Objects.requireNonNull(context, "instance cannot be null");
        zs zsVar = new zs(context);
        this.f = zsVar;
        ev evVar = ev.a.a;
        fv fvVar = fv.a.a;
        us usVar = new us(zsVar, evVar, fvVar);
        this.g = usVar;
        jj7 wsVar = new ws(zsVar, usVar);
        this.h = wsVar instanceof ys ? wsVar : new ys(wsVar);
        av avVar = new av(this.f, eu.a.a, fu.a.a);
        this.i = avVar;
        uu uuVar = new uu(evVar, fvVar, gu.a.a, avVar);
        jj7<tu> ysVar = uuVar instanceof ys ? uuVar : new ys<>(uuVar);
        this.j = ysVar;
        gt gtVar = new gt(evVar);
        this.k = gtVar;
        jj7<Context> jj7Var2 = this.f;
        ht htVar = new ht(jj7Var2, ysVar, gtVar, fvVar);
        this.l = htVar;
        jj7<Executor> jj7Var3 = this.e;
        jj7 jj7Var4 = this.h;
        et etVar = new et(jj7Var3, jj7Var4, htVar, ysVar, ysVar);
        this.m = etVar;
        ut utVar = new ut(jj7Var2, jj7Var4, ysVar, htVar, jj7Var3, ysVar, evVar);
        this.n = utVar;
        yt ytVar = new yt(jj7Var3, ysVar, htVar, ysVar);
        this.o = ytVar;
        jj7 ksVar = new ks(evVar, fvVar, etVar, utVar, ytVar);
        this.p = ksVar instanceof ys ? ksVar : new ys(ksVar);
    }
}
