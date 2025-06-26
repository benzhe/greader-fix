package defpackage;

import android.view.View;

/* loaded from: classes.dex */
public class e0 implements ea {
    public final /* synthetic */ d0 a;

    public e0(d0 d0Var) {
        this.a = d0Var;
    }

    @Override // defpackage.ea
    public qa a(View view, qa qaVar) {
        int iE = qaVar.e();
        int iY = this.a.Y(qaVar, null);
        if (iE != iY) {
            qaVar = qaVar.i(qaVar.c(), iY, qaVar.d(), qaVar.b());
        }
        return ha.n(view, qaVar);
    }
}
