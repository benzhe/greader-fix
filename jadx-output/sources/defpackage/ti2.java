package defpackage;

import android.content.Context;

/* loaded from: classes.dex */
public final class ti2 implements cb3<li2<gp1, dp1>> {
    public final mb3<Context> a;
    public final mb3<mm2> b;
    public final mb3<gn2> c;

    public ti2(mb3<Context> mb3Var, mb3<mm2> mb3Var2, mb3<gn2> mb3Var3) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
    }

    @Override // defpackage.mb3
    public final Object get() {
        Context context = this.a.get();
        mm2 mm2Var = this.b.get();
        gn2 gn2Var = this.c.get();
        if (((Integer) os3.j.f.a(y40.S3)).intValue() <= 0) {
            return new ci2();
        }
        fn2 fn2VarA = gn2Var.a(ym2.Rewarded, context, mm2Var, new th2(new oh2()));
        gi2 gi2Var = new gi2(new ci2());
        sm2 sm2Var = fn2VarA.a;
        zv2 zv2Var = ms0.a;
        return new ph2(gi2Var, new yh2(sm2Var, zv2Var), fn2VarA.b, zv2Var);
    }
}
