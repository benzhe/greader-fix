package defpackage;

import android.R;
import android.view.View;
import android.view.Window;

/* loaded from: classes.dex */
public class d3 implements View.OnClickListener {
    public final d1 e;
    public final /* synthetic */ e3 f;

    public d3(e3 e3Var) {
        this.f = e3Var;
        this.e = new d1(e3Var.a.getContext(), 0, R.id.home, 0, e3Var.i);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        e3 e3Var = this.f;
        Window.Callback callback = e3Var.l;
        if (callback == null || !e3Var.m) {
            return;
        }
        callback.onMenuItemSelected(0, this.e);
    }
}
