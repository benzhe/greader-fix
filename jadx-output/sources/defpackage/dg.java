package defpackage;

import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;

/* loaded from: classes.dex */
public abstract class dg extends RecyclerView.p {
    public RecyclerView a;
    public final RecyclerView.r b = new a();

    public class a extends RecyclerView.r {
        public boolean a = false;

        public a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void a(RecyclerView recyclerView, int i) {
            if (i == 0 && this.a) {
                this.a = false;
                dg.this.d();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void b(RecyclerView recyclerView, int i, int i2) {
            if (i == 0 && i2 == 0) {
                return;
            }
            this.a = true;
        }
    }

    public void a(RecyclerView recyclerView) throws IllegalStateException {
        RecyclerView recyclerView2 = this.a;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            RecyclerView.r rVar = this.b;
            List<RecyclerView.r> list = recyclerView2.n0;
            if (list != null) {
                list.remove(rVar);
            }
            this.a.setOnFlingListener(null);
        }
        this.a = recyclerView;
        if (recyclerView != null) {
            if (recyclerView.getOnFlingListener() != null) {
                throw new IllegalStateException("An instance of OnFlingListener already set.");
            }
            this.a.h(this.b);
            this.a.setOnFlingListener(this);
            new Scroller(this.a.getContext(), new DecelerateInterpolator());
            d();
        }
    }

    public abstract int[] b(RecyclerView.m mVar, View view);

    public abstract View c(RecyclerView.m mVar);

    public void d() {
        RecyclerView.m layoutManager;
        View viewC;
        RecyclerView recyclerView = this.a;
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null || (viewC = c(layoutManager)) == null) {
            return;
        }
        int[] iArrB = b(layoutManager, viewC);
        if (iArrB[0] == 0 && iArrB[1] == 0) {
            return;
        }
        this.a.k0(iArrB[0], iArrB[1]);
    }
}
