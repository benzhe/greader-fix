package defpackage;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.ff;

/* loaded from: classes.dex */
public class zf implements ff.b {
    public final /* synthetic */ RecyclerView a;

    public zf(RecyclerView recyclerView) {
        this.a = recyclerView;
    }

    public View a(int i) {
        return this.a.getChildAt(i);
    }

    public int b() {
        return this.a.getChildCount();
    }

    public void c(int i) {
        View childAt = this.a.getChildAt(i);
        if (childAt != null) {
            this.a.p(childAt);
            childAt.clearAnimation();
        }
        this.a.removeViewAt(i);
    }
}
