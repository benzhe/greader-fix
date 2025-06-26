package android.support.v7.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class HeaderViewRecyclerAdapter extends RecyclerView.e<RecyclerView.a0> {
    private static final int ADAPTER_MAX_TYPES = 100;
    private static final int FOOTERS_START = -2147483638;
    private static final int HEADERS_START = Integer.MIN_VALUE;
    private static final int ITEMS_START = -2147483628;
    private RecyclerView.e mWrappedAdapter;
    private RecyclerView.g mDataObserver = new RecyclerView.g() { // from class: android.support.v7.widget.HeaderViewRecyclerAdapter.1
        @Override // androidx.recyclerview.widget.RecyclerView.g
        public void onChanged() {
            super.onChanged();
            HeaderViewRecyclerAdapter.this.notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public void onItemRangeChanged(int i, int i2) {
            super.onItemRangeChanged(i, i2);
            HeaderViewRecyclerAdapter headerViewRecyclerAdapter = HeaderViewRecyclerAdapter.this;
            headerViewRecyclerAdapter.notifyItemRangeChanged(headerViewRecyclerAdapter.getHeaderCount() + i, i2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public void onItemRangeInserted(int i, int i2) {
            super.onItemRangeInserted(i, i2);
            HeaderViewRecyclerAdapter headerViewRecyclerAdapter = HeaderViewRecyclerAdapter.this;
            headerViewRecyclerAdapter.notifyItemRangeInserted(headerViewRecyclerAdapter.getHeaderCount() + i, i2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public void onItemRangeMoved(int i, int i2, int i3) {
            super.onItemRangeMoved(i, i2, i3);
            int headerCount = HeaderViewRecyclerAdapter.this.getHeaderCount();
            HeaderViewRecyclerAdapter.this.notifyItemRangeChanged(i + headerCount, i2 + headerCount + i3);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public void onItemRangeRemoved(int i, int i2) {
            super.onItemRangeRemoved(i, i2);
            HeaderViewRecyclerAdapter headerViewRecyclerAdapter = HeaderViewRecyclerAdapter.this;
            headerViewRecyclerAdapter.notifyItemRangeRemoved(headerViewRecyclerAdapter.getHeaderCount() + i, i2);
        }
    };
    private List<View> mHeaderViews = new ArrayList();
    private List<View> mFooterViews = new ArrayList();
    private Map<Class, Integer> mItemTypesOffset = new HashMap();

    public static class StaticViewHolder extends RecyclerView.a0 {
        public StaticViewHolder(View view) {
            super(view);
        }
    }

    public HeaderViewRecyclerAdapter(RecyclerView.e eVar) {
        setWrappedAdapter(eVar);
    }

    private int getAdapterTypeOffset() {
        return this.mItemTypesOffset.get(this.mWrappedAdapter.getClass()).intValue();
    }

    private void putAdapterTypeOffset(Class cls) {
        Map<Class, Integer> map = this.mItemTypesOffset;
        map.put(cls, Integer.valueOf((map.size() * 100) + ITEMS_START));
    }

    private void setWrappedAdapter(RecyclerView.e eVar) {
        RecyclerView.e eVar2 = this.mWrappedAdapter;
        if (eVar2 != null) {
            eVar2.unregisterAdapterDataObserver(this.mDataObserver);
        }
        this.mWrappedAdapter = eVar;
        Class<?> cls = eVar.getClass();
        if (!this.mItemTypesOffset.containsKey(cls)) {
            putAdapterTypeOffset(cls);
        }
        this.mWrappedAdapter.registerAdapterDataObserver(this.mDataObserver);
    }

    public void addFooterView(View view) {
        this.mFooterViews.add(view);
    }

    public void addHeaderView(View view) {
        this.mHeaderViews.add(view);
    }

    public int getFooterCount() {
        return this.mFooterViews.size();
    }

    public int getHeaderCount() {
        return this.mHeaderViews.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public int getItemCount() {
        return getWrappedItemCount() + getFooterCount() + getHeaderCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public int getItemViewType(int i) {
        int headerCount = getHeaderCount();
        if (i < headerCount) {
            return i + HEADERS_START;
        }
        int itemCount = this.mWrappedAdapter.getItemCount();
        if (i >= headerCount + itemCount) {
            return ((i + FOOTERS_START) - headerCount) - itemCount;
        }
        return this.mWrappedAdapter.getItemViewType(i - headerCount) + getAdapterTypeOffset();
    }

    public int getWrappedItemCount() {
        return this.mWrappedAdapter.getItemCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public void onBindViewHolder(RecyclerView.a0 a0Var, int i) {
        int headerCount = getHeaderCount();
        if (i < headerCount || i >= this.mWrappedAdapter.getItemCount() + headerCount) {
            return;
        }
        this.mWrappedAdapter.onBindViewHolder(a0Var, i - headerCount);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public RecyclerView.a0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        return i < getHeaderCount() + HEADERS_START ? new StaticViewHolder(this.mHeaderViews.get(i - HEADERS_START)) : i < getFooterCount() + FOOTERS_START ? new StaticViewHolder(this.mFooterViews.get(i - FOOTERS_START)) : this.mWrappedAdapter.onCreateViewHolder(viewGroup, i - getAdapterTypeOffset());
    }

    public void setAdapter(RecyclerView.e eVar) {
        RecyclerView.e eVar2 = this.mWrappedAdapter;
        if (eVar2 != null && eVar2.getItemCount() > 0) {
            notifyItemRangeRemoved(getHeaderCount(), this.mWrappedAdapter.getItemCount());
        }
        setWrappedAdapter(eVar);
        notifyItemRangeInserted(getHeaderCount(), this.mWrappedAdapter.getItemCount());
    }
}
