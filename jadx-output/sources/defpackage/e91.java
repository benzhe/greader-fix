package defpackage;

import android.content.Context;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class e91 implements ua1, ob1 {
    public final Context e;
    public final sk2 f;
    public final el0 g;

    public e91(Context context, sk2 sk2Var, el0 el0Var) {
        this.e = context;
        this.f = sk2Var;
        this.g = el0Var;
    }

    @Override // defpackage.ob1
    public final void onAdLoaded() {
        cl0 cl0Var = this.f.X;
        if (cl0Var == null || !cl0Var.a) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (!this.f.X.b.isEmpty()) {
            arrayList.add(this.f.X.b);
        }
        this.g.b(this.e, arrayList);
    }

    @Override // defpackage.ua1
    public final void r(Context context) {
    }

    @Override // defpackage.ua1
    public final void s(Context context) {
        this.g.a();
    }

    @Override // defpackage.ua1
    public final void x(Context context) {
    }
}
