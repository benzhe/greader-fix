package com.noinnion.android.reader.ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.noinnion.android.view.ExtendedWebView;
import com.noinnion.android.view.viewpager.FixedViewPager;

/* loaded from: classes2.dex */
public class WebViewPager extends FixedViewPager {
    public boolean m0;

    public WebViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.m0 = false;
    }

    @Override // com.noinnion.android.view.viewpager.FixedViewPager
    public boolean e(View view, boolean z, int i, int i2, int i3) {
        boolean z2 = view instanceof ExtendedWebView;
        return super.e(view, z, i, i2, i3);
    }

    @Override // com.noinnion.android.view.viewpager.FixedViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.m0) {
            return false;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    public void setPagingDisabled(boolean z) {
        this.m0 = z;
    }
}
