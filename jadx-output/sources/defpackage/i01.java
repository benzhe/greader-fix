package defpackage;

import android.content.Context;
import com.google.android.gms.internal.ads.zzvt;
import java.util.Objects;

/* loaded from: classes.dex */
public final class i01 {
    public final Context a;
    public final zzvt b;
    public final String c;
    public mb3<Context> d;
    public mb3<zzvt> e;
    public mb3<w52> f;
    public mb3<q62> g;
    public mb3<ih2> h;
    public final /* synthetic */ pz0 i;

    public i01(pz0 pz0Var, Context context, String str, zzvt zzvtVar, oz0 oz0Var) {
        this.i = pz0Var;
        this.a = context;
        this.b = zzvtVar;
        this.c = str;
        Objects.requireNonNull(context, "instance cannot be null");
        this.d = new fb3(context);
        Objects.requireNonNull(zzvtVar, "instance cannot be null");
        this.e = new fb3(zzvtVar);
        mb3 l62Var = new l62(pz0Var.n);
        Object obj = db3.c;
        this.f = l62Var instanceof db3 ? l62Var : new db3(l62Var);
        mb3 mb3Var = s62.a;
        mb3 db3Var = mb3Var instanceof db3 ? mb3Var : new db3(mb3Var);
        this.g = db3Var;
        mb3 lh2Var = new lh2(this.d, pz0Var.o, this.e, pz0Var.H, this.f, db3Var, ol2.a);
        this.h = lh2Var instanceof db3 ? lh2Var : new db3(lh2Var);
    }
}
