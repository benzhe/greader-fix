package defpackage;

import android.content.Context;
import java.util.Objects;

/* loaded from: classes.dex */
public final class q01 {
    public mb3<Context> a;
    public mb3<li2<gp1, dp1>> b;
    public mb3<ej2> c;
    public mb3<gl2> d;
    public mb3<zj2> e;
    public mb3<nk2> f;
    public mb3<String> g;
    public mb3<ik2> h;
    public final /* synthetic */ pz0 i;

    public q01(pz0 pz0Var, Context context, String str, oz0 oz0Var) {
        this.i = pz0Var;
        Objects.requireNonNull(context, "instance cannot be null");
        fb3 fb3Var = new fb3(context);
        this.a = fb3Var;
        mb3<mm2> mb3Var = pz0Var.k0;
        this.b = new ti2(fb3Var, mb3Var, pz0Var.l0);
        mb3 yj2Var = new yj2(mb3Var);
        Object obj = db3.c;
        this.c = yj2Var instanceof db3 ? yj2Var : new db3(yj2Var);
        mb3 mb3Var2 = il2.a;
        mb3 db3Var = mb3Var2 instanceof db3 ? mb3Var2 : new db3(mb3Var2);
        this.d = db3Var;
        mb3 jk2Var = new jk2(this.a, pz0Var.o, pz0Var.H, this.b, this.c, ol2.a, db3Var);
        jk2Var = jk2Var instanceof db3 ? jk2Var : new db3(jk2Var);
        this.e = jk2Var;
        mb3 rk2Var = new rk2(jk2Var, this.c, this.d);
        this.f = rk2Var instanceof db3 ? rk2Var : new db3(rk2Var);
        cb3 cb3VarB = fb3.b(str);
        this.g = cb3VarB;
        mb3 mk2Var = new mk2(cb3VarB, this.e, this.a, this.c, this.d);
        this.h = mk2Var instanceof db3 ? mk2Var : new db3(mk2Var);
    }
}
