package com.noinnion.android.greader.ui.itemlist;

import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.noinnion.android.greader.reader.R;

/* loaded from: classes2.dex */
public class ItemListFragment_ViewBinding implements Unbinder {
    public ItemListFragment a;

    public ItemListFragment_ViewBinding(ItemListFragment itemListFragment, View view) {
        this.a = itemListFragment;
        itemListFragment.vListSwipeLayout = (SwipeRefreshLayout) Utils.findRequiredViewAsType(view, R.id.v_list_swipe_layout, "field 'vListSwipeLayout'", SwipeRefreshLayout.class);
        itemListFragment.vEmptySwipeLayout = (SwipeRefreshLayout) Utils.findRequiredViewAsType(view, R.id.v_empty_swipe_layout, "field 'vEmptySwipeLayout'", SwipeRefreshLayout.class);
        itemListFragment.vProgressBar = (ProgressBar) Utils.findRequiredViewAsType(view, R.id.v_progress_bar, "field 'vProgressBar'", ProgressBar.class);
        itemListFragment.vEmptyMessage = (TextView) Utils.findRequiredViewAsType(view, R.id.v_empty_message, "field 'vEmptyMessage'", TextView.class);
        itemListFragment.vRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.v_recycler_view, "field 'vRecyclerView'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        ItemListFragment itemListFragment = this.a;
        if (itemListFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.a = null;
        itemListFragment.vListSwipeLayout = null;
        itemListFragment.vEmptySwipeLayout = null;
        itemListFragment.vProgressBar = null;
        itemListFragment.vEmptyMessage = null;
        itemListFragment.vRecyclerView = null;
    }
}
