package defpackage;

import android.view.MotionEvent;
import android.view.View;
import android.widget.AutoCompleteTextView;

/* loaded from: classes.dex */
public class yb5 implements View.OnTouchListener {
    public final /* synthetic */ AutoCompleteTextView e;
    public final /* synthetic */ wb5 f;

    public yb5(wb5 wb5Var, AutoCompleteTextView autoCompleteTextView) {
        this.f = wb5Var;
        this.e = autoCompleteTextView;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            if (this.f.j()) {
                this.f.i = false;
            }
            wb5.h(this.f, this.e);
        }
        return false;
    }
}
