package defpackage;

import android.view.View;

/* loaded from: classes.dex */
public class f75 implements View.OnClickListener {
    public final /* synthetic */ k75 e;
    public final /* synthetic */ a75 f;

    public f75(a75 a75Var, k75 k75Var) {
        this.f = a75Var;
        this.e = k75Var;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int iL1 = this.f.d().l1() + 1;
        if (iL1 < this.f.m.getAdapter().getItemCount()) {
            this.f.h(this.e.a(iL1));
        }
    }
}
