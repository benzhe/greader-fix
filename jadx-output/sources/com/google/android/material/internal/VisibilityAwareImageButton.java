package com.google.android.material.internal;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageButton;

/* loaded from: classes.dex */
public class VisibilityAwareImageButton extends ImageButton {
    public int e;

    public VisibilityAwareImageButton(Context context) {
        this(context, null);
    }

    public final void b(int i, boolean z) {
        super.setVisibility(i);
        if (z) {
            this.e = i;
        }
    }

    public final int getUserSetVisibility() {
        return this.e;
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        this.e = i;
    }

    public VisibilityAwareImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VisibilityAwareImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = getVisibility();
    }
}
