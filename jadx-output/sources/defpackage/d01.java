package defpackage;

import android.content.Context;
import java.util.Objects;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class d01 {
    public mb3<Context> a;
    public mb3<String> b;
    public mb3<li2<o31, v31>> c;
    public mb3<mg2> d;
    public mb3<yf2> e;
    public mb3<ag2> f;
    public mb3<li2<y31, e41>> g;
    public mb3<xg2> h;
    public mb3<zg2> i;
    public final /* synthetic */ pz0 j;

    public d01(pz0 pz0Var, Context context, String str, oz0 oz0Var) {
        this.j = pz0Var;
        Objects.requireNonNull(context, "instance cannot be null");
        this.a = new fb3(context);
        Objects.requireNonNull(str, "instance cannot be null");
        this.b = new fb3(str);
        mb3<Context> mb3Var = this.a;
        mb3<mm2> mb3Var2 = pz0Var.k0;
        this.c = new qi2(mb3Var, mb3Var2, pz0Var.l0);
        mb3 yg2Var = new yg2(mb3Var2);
        Object obj = db3.c;
        mb3 db3Var = yg2Var instanceof db3 ? yg2Var : new db3(yg2Var);
        this.d = db3Var;
        mb3<Context> mb3Var3 = this.a;
        mb3<Executor> mb3Var4 = pz0Var.o;
        mb3<sy0> mb3Var5 = pz0Var.H;
        mb3<li2<o31, v31>> mb3Var6 = this.c;
        ml2 ml2Var = ol2.a;
        mb3 bg2Var = new bg2(mb3Var3, mb3Var4, mb3Var5, mb3Var6, db3Var, ml2Var);
        mb3 db3Var2 = bg2Var instanceof db3 ? bg2Var : new db3(bg2Var);
        this.e = db3Var2;
        mb3 fg2Var = new fg2(pz0Var.H, this.a, this.b, db3Var2, this.d, pz0Var.h);
        this.f = fg2Var instanceof db3 ? fg2Var : new db3(fg2Var);
        mb3<Context> mb3Var7 = this.a;
        ri2 ri2Var = new ri2(mb3Var7, pz0Var.k0, pz0Var.l0);
        this.g = ri2Var;
        mb3 ah2Var = new ah2(mb3Var7, pz0Var.o, pz0Var.H, ri2Var, this.d, ml2Var);
        mb3 db3Var3 = ah2Var instanceof db3 ? ah2Var : new db3(ah2Var);
        this.h = db3Var3;
        mb3 eh2Var = new eh2(pz0Var.H, this.a, this.b, db3Var3, this.d);
        this.i = eh2Var instanceof db3 ? eh2Var : new db3(eh2Var);
    }
}
