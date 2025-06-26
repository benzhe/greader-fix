package defpackage;

import android.content.Context;
import android.view.View;

/* loaded from: classes.dex */
public final class b52 implements v42<qg1> {
    public final oh1 a;

    public b52(Context context, oh1 oh1Var) {
        this.a = oh1Var;
    }

    @Override // defpackage.v42
    public final qg1 a(hl2 hl2Var, sk2 sk2Var, View view, c52 c52Var) {
        sg1 sg1VarA = this.a.a(new v61(hl2Var, sk2Var, null), new d52(e52.a));
        g52 g52Var = new g52(sg1VarA);
        synchronized (c52Var) {
            c52Var.a = g52Var;
        }
        return sg1VarA.j();
    }
}
