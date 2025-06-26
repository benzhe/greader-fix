package android.support.v4.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.noinnion.android.R$styleable;

/* loaded from: classes.dex */
public class MultiSwipeRefreshLayout extends SwipeRefreshLayout {
    private CanChildScrollUpCallback mCanChildScrollUpCallback;
    private Drawable mForegroundDrawable;

    public interface CanChildScrollUpCallback {
        boolean canSwipeRefreshChildScrollUp();
    }

    public MultiSwipeRefreshLayout(Context context) {
        this(context, null);
    }

    @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout
    public boolean canChildScrollUp() {
        CanChildScrollUpCallback canChildScrollUpCallback = this.mCanChildScrollUpCallback;
        return canChildScrollUpCallback != null ? canChildScrollUpCallback.canSwipeRefreshChildScrollUp() : super.canChildScrollUp();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        Drawable drawable = this.mForegroundDrawable;
        if (drawable != null) {
            drawable.draw(canvas);
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        Drawable drawable = this.mForegroundDrawable;
        if (drawable != null) {
            drawable.setBounds(0, 0, i, i2);
        }
    }

    public void setCanChildScrollUpCallback(CanChildScrollUpCallback canChildScrollUpCallback) {
        this.mCanChildScrollUpCallback = canChildScrollUpCallback;
    }

    public MultiSwipeRefreshLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.MultiSwipeRefreshLayout, 0, 0);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(R$styleable.MultiSwipeRefreshLayout_foreground);
        this.mForegroundDrawable = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            setWillNotDraw(false);
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
