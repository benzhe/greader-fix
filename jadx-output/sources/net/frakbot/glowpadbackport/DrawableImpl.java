package net.frakbot.glowpadbackport;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.Log;
import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public class DrawableImpl {
    private static final boolean DEBUG = false;
    private static final String TAG = "DrawableImpl";
    public static Method mGetStateCount;
    public static Method mGetStateDrawable;
    public static Method mGetStateDrawableIndex;
    public Drawable mDrawable;
    public static final int[] STATE_ACTIVE = {android.R.attr.state_enabled, android.R.attr.state_active};
    public static final int[] STATE_INACTIVE = {android.R.attr.state_enabled, -16842914};
    public static final int[] STATE_FOCUSED = {android.R.attr.state_enabled, -16842914, android.R.attr.state_focused};
    private float mTranslationX = 0.0f;
    private float mTranslationY = 0.0f;
    private float mPositionX = 0.0f;
    private float mPositionY = 0.0f;
    private float mScaleX = 1.0f;
    private float mScaleY = 1.0f;
    private float mAlpha = 1.0f;
    public boolean mEnabled = true;

    static {
        try {
            Method declaredMethod = StateListDrawable.class.getDeclaredMethod("getStateCount", new Class[0]);
            mGetStateCount = declaredMethod;
            declaredMethod.setAccessible(true);
        } catch (NoSuchMethodException e) {
            Log.e(TAG, "Couldn't access the StateListDrawable#getStateCount() method. Some stuff might break!", e);
        }
        try {
            Method declaredMethod2 = StateListDrawable.class.getDeclaredMethod("getStateDrawable", Integer.TYPE);
            mGetStateDrawable = declaredMethod2;
            declaredMethod2.setAccessible(true);
        } catch (NoSuchMethodException e2) {
            Log.e(TAG, "Couldn't access the StateListDrawable#getStateDrawable(int) method. Some stuff might break!", e2);
        }
        try {
            try {
                Method declaredMethod3 = StateListDrawable.class.getDeclaredMethod("getStateDrawableIndex", int[].class);
                mGetStateDrawableIndex = declaredMethod3;
                declaredMethod3.setAccessible(true);
            } catch (NoSuchMethodException unused) {
                Method declaredMethod4 = StateListDrawable.class.getDeclaredMethod("findStateDrawableIndex", int[].class);
                mGetStateDrawableIndex = declaredMethod4;
                declaredMethod4.setAccessible(true);
            }
        } catch (NoSuchMethodException e3) {
            Log.e(TAG, "Couldn't access the StateListDrawable#mGetStateDrawableIndex(int[]) method. Some stuff might break!", e3);
        }
    }

    public void draw(Canvas canvas) {
        if (this.mDrawable == null || !this.mEnabled) {
            return;
        }
        canvas.save();
        canvas.scale(this.mScaleX, this.mScaleY, this.mPositionX, this.mPositionY);
        canvas.translate(this.mTranslationX + this.mPositionX, this.mTranslationY + this.mPositionY);
        canvas.translate(getWidth() * (-0.5f), getHeight() * (-0.5f));
        this.mDrawable.setAlpha(Math.round(this.mAlpha * 255.0f));
        this.mDrawable.draw(canvas);
        canvas.restore();
    }

    public float getAlpha() {
        return this.mAlpha;
    }

    public int getHeight() {
        Drawable drawable = this.mDrawable;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return 0;
    }

    public float getPositionX() {
        return this.mPositionX;
    }

    public float getPositionY() {
        return this.mPositionY;
    }

    public float getScaleX() {
        return this.mScaleX;
    }

    public float getScaleY() {
        return this.mScaleY;
    }

    public int getWidth() {
        Drawable drawable = this.mDrawable;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return 0;
    }

    public float getX() {
        return this.mTranslationX;
    }

    public float getY() {
        return this.mTranslationY;
    }

    public boolean hasState(int[] iArr) {
        Drawable drawable = this.mDrawable;
        if (drawable instanceof StateListDrawable) {
            try {
                return ((Integer) mGetStateDrawableIndex.invoke((StateListDrawable) drawable, iArr)).intValue() != -1;
            } catch (Exception e) {
                Log.w(TAG, "StateListDrawable#getStateDrawableIndex(int[]) call failed!", e);
            }
        }
        return false;
    }

    public boolean isActive() {
        Drawable drawable = this.mDrawable;
        if (drawable instanceof StateListDrawable) {
            for (int i : ((StateListDrawable) drawable).getState()) {
                if (i == 16842908) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean isEnabled() {
        return this.mDrawable != null && this.mEnabled;
    }

    public void resizeDrawables() {
        Drawable drawable = this.mDrawable;
        if (!(drawable instanceof StateListDrawable)) {
            if (drawable != null) {
                drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), this.mDrawable.getIntrinsicHeight());
                return;
            }
            return;
        }
        StateListDrawable stateListDrawable = (StateListDrawable) drawable;
        Integer num = 0;
        try {
            num = (Integer) mGetStateCount.invoke(stateListDrawable, new Object[0]);
        } catch (Exception e) {
            Log.w(TAG, "StateListDrawable#getStateCount() call failed!", e);
        }
        int iMax = 0;
        int iMax2 = 0;
        for (int i = 0; i < num.intValue(); i++) {
            try {
                Drawable drawable2 = (Drawable) mGetStateDrawable.invoke(stateListDrawable, Integer.valueOf(i));
                iMax = Math.max(iMax, drawable2.getIntrinsicWidth());
                iMax2 = Math.max(iMax2, drawable2.getIntrinsicHeight());
            } catch (Exception e2) {
                Log.w(TAG, "StateListDrawable#getStateDrawable(int) call failed!", e2);
            }
        }
        stateListDrawable.setBounds(0, 0, iMax, iMax2);
        for (int i2 = 0; i2 < num.intValue(); i2++) {
            try {
                ((Drawable) mGetStateDrawable.invoke(stateListDrawable, Integer.valueOf(i2))).setBounds(0, 0, iMax, iMax2);
            } catch (Exception e3) {
                Log.w(TAG, "StateListDrawable#getStateDrawable(int) call failed!", e3);
            }
        }
    }

    public void setAlpha(float f) {
        this.mAlpha = f;
    }

    public void setEnabled(boolean z) {
        this.mEnabled = z;
    }

    public void setPositionX(float f) {
        this.mPositionX = f;
    }

    public void setPositionY(float f) {
        this.mPositionY = f;
    }

    public void setScaleX(float f) {
        this.mScaleX = f;
    }

    public void setScaleY(float f) {
        this.mScaleY = f;
    }

    public void setState(int[] iArr) {
        Drawable drawable = this.mDrawable;
        if (drawable instanceof StateListDrawable) {
            ((StateListDrawable) drawable).setState(iArr);
        }
    }

    public void setX(float f) {
        this.mTranslationX = f;
    }

    public void setY(float f) {
        this.mTranslationY = f;
    }

    public void resizeDrawables(int i, int i2) {
        Drawable drawable = this.mDrawable;
        if (!(drawable instanceof StateListDrawable)) {
            if (drawable != null) {
                drawable.setBounds(0, 0, i, i2);
                return;
            }
            return;
        }
        StateListDrawable stateListDrawable = (StateListDrawable) drawable;
        Integer num = 0;
        try {
            num = (Integer) mGetStateCount.invoke(stateListDrawable, new Object[0]);
        } catch (Exception e) {
            Log.w(TAG, "StateListDrawable#getStateCount() call failed!", e);
        }
        stateListDrawable.setBounds(0, 0, i, i2);
        for (int i3 = 0; i3 < num.intValue(); i3++) {
            try {
                ((Drawable) mGetStateDrawable.invoke(stateListDrawable, Integer.valueOf(i3))).setBounds(0, 0, i, i2);
            } catch (Exception e2) {
                Log.w(TAG, "StateListDrawable#getStateDrawable(int) call failed!", e2);
            }
        }
    }
}
