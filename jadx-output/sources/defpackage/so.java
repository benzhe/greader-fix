package defpackage;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;

/* loaded from: classes.dex */
public class so extends LinearLayout {
    public View e;

    public so(Context context) {
        super(context);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        View view = this.e;
        if (view != null) {
            i2 = View.MeasureSpec.makeMeasureSpec(view.getMeasuredHeight(), 1073741824);
        }
        super.onMeasure(i, i2);
    }
}
