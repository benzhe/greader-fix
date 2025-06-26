package android.support.v4.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;

/* loaded from: classes.dex */
public class FixedSwipeRefreshLayout extends SwipeRefreshLayout {
    private static final String LOG_TAG = FixedSwipeRefreshLayout.class.getSimpleName();
    public boolean mDisallowInterceptTouchEvent;

    public FixedSwipeRefreshLayout(Context context) {
        this(context, null);
    }

    public void disallowInterceptTouchEvent(boolean z) {
        this.mDisallowInterceptTouchEvent = z;
    }

    @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.mDisallowInterceptTouchEvent) {
            return false;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout, android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        this.mDisallowInterceptTouchEvent = z;
        super.requestDisallowInterceptTouchEvent(z);
    }

    public FixedSwipeRefreshLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mDisallowInterceptTouchEvent = false;
    }
}
