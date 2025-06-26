package defpackage;

import android.support.v7.widget.LayoutManagerHelper;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.noinnion.android.greader.ui.itemlist.ItemListFragment;

/* loaded from: classes2.dex */
public class gr6 extends RecyclerView.r {
    public final /* synthetic */ ItemListFragment a;

    public gr6(ItemListFragment itemListFragment) {
        this.a = itemListFragment;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.r
    public void a(RecyclerView recyclerView, int i) {
        View view;
        ItemListFragment itemListFragment = this.a;
        if (itemListFragment.i && itemListFragment.j) {
            int firstVisiblePosition = LayoutManagerHelper.getFirstVisiblePosition(itemListFragment.g);
            if (i == 0) {
                ItemListFragment itemListFragment2 = this.a;
                itemListFragment2.j = false;
                int i2 = itemListFragment2.k;
                if (i2 <= firstVisiblePosition) {
                    int lastVisiblePosition = firstVisiblePosition - i2;
                    View childAt = recyclerView.getChildAt(recyclerView.getChildCount() - 1);
                    if (childAt != null) {
                        if (childAt.getTag() == null) {
                            view = childAt;
                            childAt = recyclerView.getChildAt((recyclerView.getChildCount() - 1) - this.a.f.getFooterCount());
                        } else {
                            view = null;
                        }
                        Object tag = childAt != null ? childAt.getTag() : null;
                        if (tag instanceof nr6) {
                            if (((nr6) tag).e == this.a.e.getItemId(r1.getCount() - 1) && view != null && view.getBottom() <= recyclerView.getMeasuredHeight()) {
                                lastVisiblePosition += ((LayoutManagerHelper.getLastVisiblePosition(this.a.g) - this.a.f.getFooterCount()) - firstVisiblePosition) + 1;
                            }
                            if (lastVisiblePosition > 0) {
                                ItemListFragment itemListFragment3 = this.a;
                                itemListFragment3.l(itemListFragment3.k, lastVisiblePosition);
                            }
                        }
                    }
                    this.a.k = firstVisiblePosition;
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.r
    public void b(RecyclerView recyclerView, int i, int i2) {
        if (LayoutManagerHelper.getFirstVisiblePosition(this.a.g) + recyclerView.getChildCount() < this.a.e.getItemCount() - 1 || !this.a.e.m.get()) {
            return;
        }
        on6.a.h++;
        this.a.e.m.set(false);
        this.a.r(false, false);
    }
}
