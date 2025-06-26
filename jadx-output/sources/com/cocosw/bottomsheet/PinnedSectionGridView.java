package com.cocosw.bottomsheet;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.GridView;

/* loaded from: classes.dex */
public class PinnedSectionGridView extends GridView {
    public int e;
    public int f;
    public int g;

    public PinnedSectionGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.GridView
    public int getColumnWidth() {
        return this.g;
    }

    @Override // android.widget.GridView
    public int getHorizontalSpacing() {
        return this.f;
    }

    @Override // android.widget.GridView
    public int getNumColumns() {
        return this.e;
    }

    @Override // android.widget.GridView
    public void setColumnWidth(int i) {
        this.g = i;
        super.setColumnWidth(i);
    }

    @Override // android.widget.GridView
    public void setHorizontalSpacing(int i) {
        this.f = i;
        super.setHorizontalSpacing(i);
    }

    @Override // android.widget.GridView
    public void setNumColumns(int i) {
        this.e = i;
        super.setNumColumns(i);
    }

    public PinnedSectionGridView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
