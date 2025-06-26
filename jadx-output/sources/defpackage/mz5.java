package defpackage;

import android.app.Activity;
import android.view.View;
import defpackage.uy5;

/* loaded from: classes.dex */
public class mz5 implements View.OnClickListener {
    public final /* synthetic */ Activity e;
    public final /* synthetic */ lz5 f;

    public mz5(lz5 lz5Var, Activity activity) {
        this.f = lz5Var;
        this.e = activity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        uy5 uy5Var = this.f.o;
        if (uy5Var != null) {
            ((j36) uy5Var).e(uy5.a.CLICK);
        }
        lz5.a(this.f, this.e);
    }
}
