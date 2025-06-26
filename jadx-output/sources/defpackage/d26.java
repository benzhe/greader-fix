package defpackage;

import android.view.View;
import android.widget.ScrollView;

/* loaded from: classes.dex */
public class d26 {
    public View a;
    public boolean b;
    public int c;

    public d26(View view, boolean z) {
        this.a = view;
        this.b = z;
    }

    public int a() {
        if (this.a.getVisibility() == 8) {
            return 0;
        }
        View view = this.a;
        if (!(view instanceof ScrollView)) {
            return view.getMeasuredHeight();
        }
        ScrollView scrollView = (ScrollView) view;
        return scrollView.getChildAt(0).getMeasuredHeight() + scrollView.getPaddingTop() + scrollView.getPaddingBottom();
    }
}
