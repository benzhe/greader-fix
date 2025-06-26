package defpackage;

import android.content.Context;
import com.google.android.gms.internal.ads.zzvt;
import java.util.Objects;

/* loaded from: classes.dex */
public final class o01 {
    public mb3<Context> a;
    public mb3<zzvt> b;
    public mb3<String> c;
    public mb3<w52> d;
    public mb3<ej2> e;
    public mb3<ui2> f;
    public mb3<r62> g;
    public final /* synthetic */ pz0 h;

    public o01(pz0 pz0Var, Context context, String str, zzvt zzvtVar, oz0 oz0Var) {
        this.h = pz0Var;
        Objects.requireNonNull(context, "instance cannot be null");
        this.a = new fb3(context);
        Objects.requireNonNull(zzvtVar, "instance cannot be null");
        this.b = new fb3(zzvtVar);
        Objects.requireNonNull(str, "instance cannot be null");
        this.c = new fb3(str);
        mb3 l62Var = new l62(pz0Var.n);
        Object obj = db3.c;
        this.d = l62Var instanceof db3 ? l62Var : new db3(l62Var);
        mb3 yj2Var = new yj2(pz0Var.k0);
        mb3 db3Var = yj2Var instanceof db3 ? yj2Var : new db3(yj2Var);
        this.e = db3Var;
        mb3 dj2Var = new dj2(this.a, pz0Var.o, pz0Var.H, this.d, db3Var, ol2.a);
        mb3 db3Var2 = dj2Var instanceof db3 ? dj2Var : new db3(dj2Var);
        this.f = db3Var2;
        mb3 t62Var = new t62(this.a, this.b, this.c, db3Var2, this.d, this.e);
        this.g = t62Var instanceof db3 ? t62Var : new db3(t62Var);
    }
}
