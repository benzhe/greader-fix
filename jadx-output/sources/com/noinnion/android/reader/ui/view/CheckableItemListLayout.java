package com.noinnion.android.reader.ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.Checkable;
import android.widget.LinearLayout;
import com.noinnion.android.reader.R$drawable;
import defpackage.lw6;

/* loaded from: classes2.dex */
public class CheckableItemListLayout extends LinearLayout implements Checkable {
    public boolean e;
    public boolean f;

    public CheckableItemListLayout(Context context) {
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
        setBackgroundResource(iE != 1 ? iE != 2 ? iE != 3 ? iE != 5 ? z ? R$drawable.list_bg_item_checked_default : R$drawable.list_bg_item_selector_default : z ? R$drawable.list_bg_item_checked_green : R$drawable.list_bg_item_selector_green : z ? R$drawable.list_bg_item_checked_sepia : R$drawable.list_bg_item_selector_sepia : z ? R$drawable.list_bg_item_checked_black : R$drawable.list_bg_item_selector_black : z ? R$drawable.list_bg_item_checked_dark : R$drawable.list_bg_item_selector_dark);
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.f);
    }

    public CheckableItemListLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = false;
        this.f = false;
    }

    public CheckableItemListLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = false;
        this.f = false;
    }
}
