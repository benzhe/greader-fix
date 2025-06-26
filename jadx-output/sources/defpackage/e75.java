package defpackage;

import android.view.View;
import defpackage.a75;

/* loaded from: classes.dex */
public class e75 implements View.OnClickListener {
    public final /* synthetic */ a75 e;

    public e75(a75 a75Var) {
        this.e = a75Var;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        a75 a75Var = this.e;
        a75.e eVar = a75.e.DAY;
        a75.e eVar2 = a75Var.j;
        a75.e eVar3 = a75.e.YEAR;
        if (eVar2 == eVar3) {
            a75Var.i(eVar);
        } else if (eVar2 == eVar) {
            a75Var.i(eVar3);
        }
    }
}
