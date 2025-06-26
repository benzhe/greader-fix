package defpackage;

import android.view.View;

/* loaded from: classes.dex */
public final class x85 implements ea {
    public final /* synthetic */ z85 a;
    public final /* synthetic */ a95 b;

    public x85(z85 z85Var, a95 a95Var) {
        this.a = z85Var;
        this.b = a95Var;
    }

    @Override // defpackage.ea
    public qa a(View view, qa qaVar) {
        return this.a.a(view, qaVar, new a95(this.b));
    }
}
