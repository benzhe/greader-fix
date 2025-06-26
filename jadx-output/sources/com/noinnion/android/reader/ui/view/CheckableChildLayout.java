package com.noinnion.android.reader.ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import com.noinnion.android.reader.R$drawable;
import defpackage.fx6;
import defpackage.lw6;

/* loaded from: classes2.dex */
public class CheckableChildLayout extends RelativeLayout implements fx6 {
    public boolean e;
    public boolean f;

    public CheckableChildLayout(Context context) {
        super(context);
        this.e = false;
        this.f = false;
    }

    @Override // defpackage.fx6
    public void setChecked(boolean z) {
        if (this.e && this.f == z) {
            return;
        }
        this.e = true;
        this.f = z;
        int iE = lw6.e(getContext());
        setBackgroundResource(iE != 1 ? iE != 2 ? iE != 3 ? iE != 5 ? z ? R$drawable.list_bg_child_checked_default : R$drawable.list_bg_child_selector_default : z ? R$drawable.list_bg_child_checked_green : R$drawable.list_bg_child_selector_green : z ? R$drawable.list_bg_child_checked_sepia : R$drawable.list_bg_child_selector_sepia : z ? R$drawable.list_bg_child_checked_black : R$drawable.list_bg_child_selector_black : z ? R$drawable.list_bg_child_checked_dark : R$drawable.list_bg_child_selector_dark);
    }

    public CheckableChildLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = false;
        this.f = false;
    }

    public CheckableChildLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = false;
        this.f = false;
    }
}
