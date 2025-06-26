package defpackage;

import android.view.View;

/* loaded from: classes.dex */
public class g75 implements View.OnClickListener {
    public final /* synthetic */ k75 e;
    public final /* synthetic */ a75 f;

    public g75(a75 a75Var, k75 k75Var) {
        this.f = a75Var;
        this.e = k75Var;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int iN1 = this.f.d().n1() - 1;
        if (iN1 >= 0) {
            this.f.h(this.e.a(iN1));
        }
    }
}
