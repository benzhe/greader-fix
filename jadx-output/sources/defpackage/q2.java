package defpackage;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.widget.ListPopupWindow;

/* loaded from: classes.dex */
public class q2 implements AdapterView.OnItemSelectedListener {
    public final /* synthetic */ ListPopupWindow e;

    public q2(ListPopupWindow listPopupWindow) {
        this.e = listPopupWindow;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        n2 n2Var;
        if (i == -1 || (n2Var = this.e.g) == null) {
            return;
        }
        n2Var.setListSelectionHidden(false);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }
}
