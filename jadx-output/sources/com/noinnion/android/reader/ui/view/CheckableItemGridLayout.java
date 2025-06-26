package com.noinnion.android.reader.ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.Checkable;
import android.widget.RelativeLayout;
import com.noinnion.android.reader.R$color;
import com.noinnion.android.reader.R$drawable;
import defpackage.lw6;

/* loaded from: classes2.dex */
public class CheckableItemGridLayout extends RelativeLayout implements Checkable {
    public boolean e;
    public boolean f;

    public CheckableItemGridLayout(Context context) {
        super(context);
        this.e = false;
        this.f = false;
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f;
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (this.e && this.f == z) {
            return;
        }
        this.e = true;
        this.f = z;
        int iE = lw6.e(getContext());
        setBackgroundResource(iE != 1 ? iE != 2 ? iE != 3 ? iE != 5 ? z ? R$color.item_selected_default : R$drawable.list_bg_item_selector_default : z ? R$color.item_selected_green : R$drawable.list_bg_item_selector_green : z ? R$color.item_selected_sepia : R$drawable.list_bg_item_selector_sepia : z ? R$color.item_selected_black : R$drawable.list_bg_item_selector_black : z ? R$color.item_selected_dark : R$drawable.list_bg_item_selector_dark);
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.f);
    }

    public CheckableItemGridLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = false;
        this.f = false;
    }

    public CheckableItemGridLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = false;
        this.f = false;
    }
}
