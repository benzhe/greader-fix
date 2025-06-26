package defpackage;

import android.view.View;
import com.google.android.material.R$string;

/* loaded from: classes.dex */
public class c75 extends v9 {
    public final /* synthetic */ a75 d;

    public c75(a75 a75Var) {
        this.d = a75Var;
    }

    @Override // defpackage.v9
    public void d(View view, sa saVar) {
        this.a.onInitializeAccessibilityNodeInfo(view, saVar.a);
        saVar.u(this.d.o.getVisibility() == 0 ? this.d.getString(R$string.mtrl_picker_toggle_to_year_selection) : this.d.getString(R$string.mtrl_picker_toggle_to_day_selection));
    }
}
