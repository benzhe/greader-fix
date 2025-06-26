package defpackage;

import com.google.android.gms.internal.ads.zzbar;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class o92 implements qd2<l92> {
    public final zv2 a;
    public final ll2 b;
    public final zzbar c;

    public o92(zv2 zv2Var, ll2 ll2Var, zzbar zzbarVar) {
        this.a = zv2Var;
        this.b = ll2Var;
        this.c = zzbarVar;
    }

    @Override // defpackage.qd2
    public final aw2<l92> a() {
        return this.a.y(new Callable(this) { // from class: n92
            public final o92 e;

            {
                this.e = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                o92 o92Var = this.e;
                return new l92(o92Var.b.j, o92Var.c);
            }
        });
    }
}
