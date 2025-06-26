package defpackage;

import android.graphics.Canvas;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Calendar;

/* loaded from: classes.dex */
public class b75 extends RecyclerView.l {
    public final Calendar a = p75.d();
    public final Calendar b = p75.d();
    public final /* synthetic */ a75 c;

    public b75(a75 a75Var) {
        this.c = a75Var;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public void d(Canvas canvas, RecyclerView recyclerView, RecyclerView.x xVar) {
        if ((recyclerView.getAdapter() instanceof r75) && (recyclerView.getLayoutManager() instanceof GridLayoutManager)) {
            r75 r75Var = (r75) recyclerView.getAdapter();
            GridLayoutManager gridLayoutManager = (GridLayoutManager) recyclerView.getLayoutManager();
            for (s9<Long, Long> s9Var : this.c.g.y()) {
                Long l = s9Var.a;
                if (l != null && s9Var.b != null) {
                    this.a.setTimeInMillis(l.longValue());
                    this.b.setTimeInMillis(s9Var.b.longValue());
                    int iA = r75Var.a(this.a.get(1));
                    int iA2 = r75Var.a(this.b.get(1));
                    View viewT = gridLayoutManager.t(iA);
                    View viewT2 = gridLayoutManager.t(iA2);
                    int i = gridLayoutManager.H;
                    int i2 = iA / i;
                    int i3 = iA2 / i;
                    for (int i4 = i2; i4 <= i3; i4++) {
                        View viewT3 = gridLayoutManager.t(gridLayoutManager.H * i4);
                        if (viewT3 != null) {
                            int top = viewT3.getTop() + this.c.k.d.a.top;
                            int bottom = viewT3.getBottom() - this.c.k.d.a.bottom;
                            canvas.drawRect(i4 == i2 ? (viewT.getWidth() / 2) + viewT.getLeft() : 0, top, i4 == i3 ? (viewT2.getWidth() / 2) + viewT2.getLeft() : recyclerView.getWidth(), bottom, this.c.k.h);
                        }
                    }
                }
            }
        }
    }
}
