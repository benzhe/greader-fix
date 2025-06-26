package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import com.noinnion.android.greader.ui.itemlist.ItemListFragment;

/* loaded from: classes2.dex */
public class fr6 extends RecyclerView.g {
    public final /* synthetic */ ItemListFragment a;

    public fr6(ItemListFragment itemListFragment) {
        this.a = itemListFragment;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public void onChanged() {
        super.onChanged();
        int itemCount = this.a.e.getItemCount();
        this.a.vEmptySwipeLayout.setVisibility(itemCount == 0 ? 0 : 8);
        this.a.vRecyclerView.setVisibility(itemCount == 0 ? 8 : 0);
    }
}
