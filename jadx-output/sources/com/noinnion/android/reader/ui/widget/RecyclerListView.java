package com.noinnion.android.reader.ui.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ContextMenu;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes2.dex */
public class RecyclerListView extends RecyclerView {
    public ContextMenu.ContextMenuInfo I0;

    public static class a implements ContextMenu.ContextMenuInfo {
        public a(int i, long j) {
        }
    }

    public RecyclerListView(Context context) {
        super(context);
        this.I0 = null;
    }

    @Override // android.view.View
    public ContextMenu.ContextMenuInfo getContextMenuInfo() {
        return this.I0;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean showContextMenuForChild(View view) {
        RecyclerView.a0 a0VarK = RecyclerView.K(view);
        int adapterPosition = a0VarK != null ? a0VarK.getAdapterPosition() : -1;
        if (adapterPosition < 0) {
            return false;
        }
        this.I0 = new a(adapterPosition, getAdapter().getItemId(adapterPosition));
        return super.showContextMenuForChild(view);
    }

    public RecyclerListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.I0 = null;
    }

    public RecyclerListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.I0 = null;
    }
}
