package com.google.firebase.inappmessaging.display.internal.layout;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import androidx.cardview.widget.CardView;
import defpackage.a26;

/* loaded from: classes.dex */
public class FiamCardView extends CardView {
    public a26 n;

    public FiamCardView(Context context) {
        super(context);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        Boolean boolA = this.n.a(keyEvent);
        return boolA != null ? boolA.booleanValue() : super.dispatchKeyEvent(keyEvent);
    }

    public void setDismissListener(View.OnClickListener onClickListener) {
        this.n = new a26(this, onClickListener);
    }

    public FiamCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public FiamCardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
