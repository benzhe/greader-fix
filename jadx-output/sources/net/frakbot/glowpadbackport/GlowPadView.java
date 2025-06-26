package net.frakbot.glowpadbackport;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Vibrator;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import defpackage.jo;
import java.util.ArrayList;
import net.frakbot.glowpadbackport.Ease;
import net.frakbot.glowpadbackport.util.Const;
import net.frakbot.glowpadbackport.util.TimeInterpolator;
import org.apache.commons.codec.binary.Base64;

/* loaded from: classes2.dex */
public class GlowPadView extends View {
    private static final boolean DEBUG = false;
    public static final int HANDLE_SIZE_MINI = 1;
    public static final int HANDLE_SIZE_NORMAL = 0;
    public static final int HANDLE_STYLE_MATERIAL = 1;
    public static final int HANDLE_STYLE_SIMPLE = 0;
    private static final int HIDE_ANIMATION_DELAY = 200;
    private static final int HIDE_ANIMATION_DURATION = 200;
    private static final int INITIAL_SHOW_HANDLE_DURATION = 200;
    private static final int RETURN_TO_HOME_DELAY = 1200;
    private static final int RETURN_TO_HOME_DURATION = 200;
    private static final int REVEAL_GLOW_DELAY = 0;
    private static final int REVEAL_GLOW_DURATION = 0;
    private static final float RING_SCALE_COLLAPSED = 0.5f;
    private static final float RING_SCALE_EXPANDED = 1.0f;
    private static final int SHOW_ANIMATION_DELAY = 50;
    private static final int SHOW_ANIMATION_DURATION = 200;
    private static final float SNAP_MARGIN_DEFAULT = 20.0f;
    private static final int STATE_FINISH = 5;
    private static final int STATE_FIRST_TOUCH = 2;
    private static final int STATE_IDLE = 0;
    private static final int STATE_SNAP = 4;
    private static final int STATE_START = 1;
    private static final int STATE_TRACKING = 3;
    private static final String TAG = "GlowPadView";
    private static final float TAP_RADIUS_SCALE_ACCESSIBILITY_ENABLED = 1.3f;
    private static final float TARGET_SCALE_COLLAPSED = 0.8f;
    private static final float TARGET_SCALE_EXPANDED = 1.0f;
    private static final int WAVE_ANIMATION_DURATION = 500;
    private int mActiveTarget;
    private boolean mAllowScaling;
    private boolean mAlwaysTrackFinger;
    private boolean mAnimatingTargets;
    private Tweener mBackgroundAnimator;
    private ArrayList<String> mDirectionDescriptions;
    private int mDirectionDescriptionsResourceId;
    private boolean mDragging;
    private int mFeedbackCount;
    private float mFirstItemOffset;
    private AnimationBundle mGlowAnimations;
    private float mGlowRadius;
    private int mGrabbedState;
    private int mGravity;
    private int mHandleBackground;
    private HandleDrawable mHandleDrawable;
    private int mHandleForeground;
    private int mHandleOpacity;
    private int mHandleResource;
    private int mHandleSize;
    private int mHandleStyle;
    private int mHorizontalInset;
    private boolean mInitialLayout;
    private float mInnerRadius;
    private boolean mMagneticTargets;
    private int mMaxTargetHeight;
    private int mMaxTargetWidth;
    private int mNewTargetResources;
    private OnTriggerListener mOnTriggerListener;
    private float mOuterRadius;
    private TargetDrawable mOuterRing;
    private PointCloud mPointCloud;
    private int mPointerId;
    private Animator.AnimatorListener mResetListener;
    private Animator.AnimatorListener mResetListenerWithPing;
    private float mRingScaleFactor;
    private float mSnapMargin;
    private AnimationBundle mTargetAnimations;
    private int mTargetBackground;
    private ArrayList<String> mTargetDescriptions;
    private int mTargetDescriptionsResourceId;
    private ArrayList<TargetDrawable> mTargetDrawables;
    private int mTargetResourceId;
    private Animator.AnimatorListener mTargetUpdateListener;
    private float mTouchRadius;
    private ValueAnimator.AnimatorUpdateListener mUpdateListener;
    private int mVerticalInset;
    private int mVibrationDuration;
    private Vibrator mVibrator;
    private AnimationBundle mWaveAnimations;
    private float mWaveCenterX;
    private float mWaveCenterY;

    public class AnimationBundle extends ArrayList<Tweener> {
        private static final long serialVersionUID = -6319262269245852568L;
        private boolean mSuspended;

        private AnimationBundle() {
        }

        public void cancel() {
            int size = size();
            for (int i = 0; i < size; i++) {
                get(i).animator.cancel();
            }
            clear();
        }

        public void setSuspended(boolean z) {
            this.mSuspended = z;
        }

        public void start() {
            if (this.mSuspended) {
                return;
            }
            int size = size();
            for (int i = 0; i < size; i++) {
                get(i).animator.start();
            }
        }

        public void stop() {
            int size = size();
            for (int i = 0; i < size; i++) {
                get(i).animator.end();
            }
            clear();
        }
    }

    public interface OnTriggerListener {
        public static final int CENTER_HANDLE = 1;
        public static final int NO_HANDLE = 0;

        void onFinishFinalAnimation();

        void onGrabbed(View view, int i);

        void onGrabbedStateChange(View view, int i);

        void onReleased(View view, int i);

        void onTrigger(View view, int i);
    }

    public GlowPadView(Context context) {
        this(context, null);
    }

    private void announceTargets() {
        StringBuilder sb = new StringBuilder();
        int size = this.mTargetDrawables.size();
        for (int i = 0; i < size; i++) {
            String targetDescription = getTargetDescription(i);
            String directionDescription = getDirectionDescription(i);
            if (!TextUtils.isEmpty(targetDescription) && !TextUtils.isEmpty(directionDescription)) {
                sb.append(String.format(directionDescription, targetDescription));
            }
        }
        if (!Const.IS_JB || sb.length() <= 0) {
            return;
        }
        announceForAccessibility(sb.toString());
    }

    private void assignDefaultsIfNeeded() {
        if (this.mOuterRadius == 0.0f) {
            this.mOuterRadius = Math.max(this.mOuterRing.getWidth(), this.mOuterRing.getHeight()) / 2.0f;
        }
        if (this.mSnapMargin == 0.0f) {
            this.mSnapMargin = TypedValue.applyDimension(1, SNAP_MARGIN_DEFAULT, getContext().getResources().getDisplayMetrics());
        }
        if (this.mInnerRadius == 0.0f) {
            this.mInnerRadius = this.mHandleDrawable.getWidth() / 10.0f;
        }
    }

    private void computeInsets(int i, int i2) {
        int absoluteGravity = this.mGravity;
        if (Const.IS_JB_MR1) {
            absoluteGravity = Gravity.getAbsoluteGravity(this.mGravity, getLayoutDirection());
        }
        int i3 = absoluteGravity & 7;
        if (i3 == 3) {
            this.mHorizontalInset = 0;
        } else if (i3 != 5) {
            this.mHorizontalInset = i / 2;
        } else {
            this.mHorizontalInset = i;
        }
        int i4 = absoluteGravity & 112;
        if (i4 == 48) {
            this.mVerticalInset = 0;
        } else if (i4 != 80) {
            this.mVerticalInset = i2 / 2;
        } else {
            this.mVerticalInset = i2;
        }
    }

    private float computeScaleFactor(int i, int i2, int i3, int i4) {
        float f;
        float f2 = 1.0f;
        if (!this.mAllowScaling) {
            return 1.0f;
        }
        int absoluteGravity = this.mGravity;
        if (Const.IS_JB_MR1) {
            absoluteGravity = Gravity.getAbsoluteGravity(this.mGravity, getLayoutDirection());
        }
        int i5 = absoluteGravity & 7;
        if (i5 == 3 || i5 == 5 || i <= i3) {
            f = 1.0f;
        } else {
            f = ((i3 * 1.0f) - this.mMaxTargetWidth) / (i - r2);
        }
        int i6 = absoluteGravity & 112;
        if (i6 != 48 && i6 != 80 && i2 > i4) {
            f2 = ((i4 * 1.0f) - this.mMaxTargetHeight) / (i2 - r8);
        }
        return Math.min(f, f2);
    }

    private void deactivateTargets() {
        int size = this.mTargetDrawables.size();
        for (int i = 0; i < size; i++) {
            this.mTargetDrawables.get(i).setState(DrawableImpl.STATE_INACTIVE);
        }
        this.mActiveTarget = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchOnFinishFinalAnimation() {
        OnTriggerListener onTriggerListener = this.mOnTriggerListener;
        if (onTriggerListener != null) {
            onTriggerListener.onFinishFinalAnimation();
        }
    }

    private void dispatchTriggerEvent(int i) {
        vibrate();
        OnTriggerListener onTriggerListener = this.mOnTriggerListener;
        if (onTriggerListener != null) {
            onTriggerListener.onTrigger(this, i);
        }
    }

    private float dist2(float f, float f2) {
        return (f2 * f2) + (f * f);
    }

    private void doFinish() {
        int i = this.mActiveTarget;
        if (i != -1) {
            highlightSelected(i);
            hideGlow(200, RETURN_TO_HOME_DELAY, 0.0f, this.mResetListener);
            dispatchTriggerEvent(i);
        } else {
            hideGlow(200, 0, 0.0f, this.mResetListenerWithPing);
            hideTargets(true, false);
        }
        setGrabbedState(0);
    }

    private void dump() {
        StringBuilder sbZ = jo.z("Outer Radius = ");
        sbZ.append(this.mOuterRadius);
        Log.v(TAG, sbZ.toString());
        Log.v(TAG, "SnapMargin = " + this.mSnapMargin);
        Log.v(TAG, "FeedbackCount = " + this.mFeedbackCount);
        Log.v(TAG, "VibrationDuration = " + this.mVibrationDuration);
        Log.v(TAG, "GlowRadius = " + this.mGlowRadius);
        Log.v(TAG, "WaveCenterX = " + this.mWaveCenterX);
        Log.v(TAG, "WaveCenterY = " + this.mWaveCenterY);
    }

    private float getAngle(float f, int i) {
        return (f * i) + this.mFirstItemOffset;
    }

    private String getDirectionDescription(int i) {
        ArrayList<String> arrayList = this.mDirectionDescriptions;
        if (arrayList == null || arrayList.isEmpty()) {
            this.mDirectionDescriptions = loadDescriptions(this.mDirectionDescriptionsResourceId);
            if (this.mTargetDrawables.size() != this.mDirectionDescriptions.size()) {
                Log.w(TAG, "The number of target drawables must be equal to the number of direction descriptions.");
                return null;
            }
        }
        return this.mDirectionDescriptions.get(i);
    }

    private int getResourceId(TypedArray typedArray, int i) {
        TypedValue typedValuePeekValue = typedArray.peekValue(i);
        if (typedValuePeekValue == null) {
            return 0;
        }
        return typedValuePeekValue.resourceId;
    }

    private float getRingHeight() {
        return Math.max(this.mOuterRing.getHeight(), this.mOuterRadius * 2.0f) * this.mRingScaleFactor;
    }

    private float getRingWidth() {
        return Math.max(this.mOuterRing.getWidth(), this.mOuterRadius * 2.0f) * this.mRingScaleFactor;
    }

    private float getScaledGlowRadiusSquared() {
        return square(((AccessibilityManager) getContext().getSystemService("accessibility")).isEnabled() ? this.mTouchRadius * TAP_RADIUS_SCALE_ACCESSIBILITY_ENABLED : this.mTouchRadius);
    }

    private float getSliceAngle() {
        return (float) ((-6.283185307179586d) / this.mTargetDrawables.size());
    }

    private String getTargetDescription(int i) {
        ArrayList<String> arrayList = this.mTargetDescriptions;
        if (arrayList == null || arrayList.isEmpty()) {
            this.mTargetDescriptions = loadDescriptions(this.mTargetDescriptionsResourceId);
            if (this.mTargetDrawables.size() != this.mTargetDescriptions.size()) {
                Log.w(TAG, "The number of target drawables must be equal to the number of target descriptions.");
                return null;
            }
        }
        return this.mTargetDescriptions.get(i);
    }

    private void handleCancel(MotionEvent motionEvent) {
        this.mActiveTarget = -1;
        if (!Const.IS_FROYO) {
            switchToState(5, motionEvent.getX(), motionEvent.getY());
            return;
        }
        int actionIndex = motionEvent.getActionIndex();
        if (actionIndex == -1) {
            actionIndex = 0;
        }
        switchToState(5, motionEvent.getX(actionIndex), motionEvent.getY(actionIndex));
    }

    private void handleDown(MotionEvent motionEvent) {
        float x;
        float y;
        boolean z = Const.IS_FROYO;
        int actionIndex = z ? motionEvent.getActionIndex() : 0;
        if (z) {
            x = motionEvent.getX(actionIndex);
            y = motionEvent.getY(actionIndex);
        } else {
            x = motionEvent.getX();
            y = motionEvent.getY();
        }
        switchToState(1, x, y);
        if (!trySwitchToFirstTouchState(x, y)) {
            this.mDragging = false;
            return;
        }
        if (Const.IS_ECLAIR) {
            this.mPointerId = motionEvent.getPointerId(actionIndex);
        }
        updateGlowPosition(x, y);
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x00fd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void handleMove(android.view.MotionEvent r34) {
        /*
            Method dump skipped, instructions count: 449
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.frakbot.glowpadbackport.GlowPadView.handleMove(android.view.MotionEvent):void");
    }

    private void handleUp(MotionEvent motionEvent) {
        if (!Const.IS_FROYO) {
            switchToState(5, motionEvent.getX(), motionEvent.getY());
            return;
        }
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.mPointerId) {
            switchToState(5, motionEvent.getX(actionIndex), motionEvent.getY(actionIndex));
        }
    }

    private void hideGlow(int i, int i2, float f, Animator.AnimatorListener animatorListener) {
        this.mGlowAnimations.cancel();
        Float fValueOf = Float.valueOf(0.0f);
        this.mGlowAnimations.add(Tweener.to(this.mPointCloud.glowManager, i, "ease", Ease.Quart.easeOut, "delay", Integer.valueOf(i2), "alpha", Float.valueOf(f), "x", fValueOf, "y", fValueOf, "onUpdate", this.mUpdateListener, "onComplete", animatorListener));
        this.mGlowAnimations.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideTargets(boolean z, boolean z2) {
        this.mTargetAnimations.cancel();
        this.mAnimatingTargets = z;
        int i = z ? 200 : 0;
        int i2 = z ? 200 : 0;
        float f = z2 ? 1.0f : TARGET_SCALE_COLLAPSED;
        int size = this.mTargetDrawables.size();
        TimeInterpolator timeInterpolator = Ease.Cubic.easeOut;
        for (int i3 = 0; i3 < size; i3++) {
            TargetDrawable targetDrawable = this.mTargetDrawables.get(i3);
            targetDrawable.setState(DrawableImpl.STATE_INACTIVE);
            this.mTargetAnimations.add(Tweener.to(targetDrawable, i, "ease", timeInterpolator, "alpha", Float.valueOf(0.0f), "scaleX", Float.valueOf(f), "scaleY", Float.valueOf(f), "delay", Integer.valueOf(i2), "onUpdate", this.mUpdateListener));
        }
        float f2 = (z2 ? 1.0f : RING_SCALE_COLLAPSED) * this.mRingScaleFactor;
        this.mTargetAnimations.add(Tweener.to(this.mOuterRing, i, "ease", timeInterpolator, "alpha", Float.valueOf(0.0f), "scaleX", Float.valueOf(f2), "scaleY", Float.valueOf(f2), "delay", Integer.valueOf(i2), "onUpdate", this.mUpdateListener, "onComplete", this.mTargetUpdateListener));
        this.mTargetAnimations.start();
    }

    private void hideUnselected(int i) {
        for (int i2 = 0; i2 < this.mTargetDrawables.size(); i2++) {
            if (i2 != i) {
                this.mTargetDrawables.get(i2).setAlpha(0.0f);
            }
        }
    }

    private void highlightSelected(int i) {
        this.mTargetDrawables.get(i).setState(DrawableImpl.STATE_ACTIVE);
        hideUnselected(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void internalSetTargetResources(int i) throws Resources.NotFoundException {
        ArrayList<TargetDrawable> arrayListLoadDrawableArray = loadDrawableArray(i);
        this.mTargetDrawables = arrayListLoadDrawableArray;
        this.mTargetResourceId = i;
        int width = this.mHandleDrawable.getWidth();
        int height = this.mHandleDrawable.getHeight();
        int size = arrayListLoadDrawableArray.size();
        for (int i2 = 0; i2 < size; i2++) {
            TargetDrawable targetDrawable = arrayListLoadDrawableArray.get(i2);
            width = Math.max(width, targetDrawable.getWidth());
            height = Math.max(height, targetDrawable.getHeight());
        }
        if (this.mMaxTargetWidth == width && this.mMaxTargetHeight == height) {
            updateTargetPositions(this.mWaveCenterX, this.mWaveCenterY);
            updatePointCloudPosition(this.mWaveCenterX, this.mWaveCenterY);
        } else {
            this.mMaxTargetWidth = width;
            this.mMaxTargetHeight = height;
            requestLayout();
        }
    }

    private ArrayList<String> loadDescriptions(int i) {
        if (i == 0) {
            return new ArrayList<>(0);
        }
        Context context = getContext();
        TypedArray typedArrayObtainTypedArray = context != null ? context.getResources().obtainTypedArray(i) : null;
        if (typedArrayObtainTypedArray == null) {
            return new ArrayList<>(0);
        }
        int length = typedArrayObtainTypedArray.length();
        ArrayList<String> arrayList = new ArrayList<>(length);
        for (int i2 = 0; i2 < length; i2++) {
            arrayList.add(typedArrayObtainTypedArray.getString(i2));
        }
        typedArrayObtainTypedArray.recycle();
        return arrayList;
    }

    private ArrayList<TargetDrawable> loadDrawableArray(int i) throws Resources.NotFoundException {
        Resources resources = getContext().getResources();
        TypedArray typedArrayObtainTypedArray = resources.obtainTypedArray(i);
        int length = typedArrayObtainTypedArray.length();
        ArrayList<TargetDrawable> arrayList = new ArrayList<>(length);
        for (int i2 = 0; i2 < length; i2++) {
            TypedValue typedValuePeekValue = typedArrayObtainTypedArray.peekValue(i2);
            arrayList.add(new TargetDrawable(resources, typedValuePeekValue != null ? typedValuePeekValue.resourceId : 0, this.mTargetBackground, this.mHandleSize));
        }
        typedArrayObtainTypedArray.recycle();
        return arrayList;
    }

    private boolean replaceTargetDrawables(Resources resources, int i, int i2) throws Resources.NotFoundException {
        if (i == 0 || i2 == 0) {
            return false;
        }
        ArrayList<TargetDrawable> arrayList = this.mTargetDrawables;
        int size = arrayList.size();
        boolean z = false;
        for (int i3 = 0; i3 < size; i3++) {
            TargetDrawable targetDrawable = arrayList.get(i3);
            if (targetDrawable != null && targetDrawable.getResourceId() == i) {
                targetDrawable.setDrawable(resources, i2, this.mTargetBackground);
                z = true;
            }
        }
        if (z) {
            requestLayout();
        }
        return z;
    }

    private int resolveMeasured(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        return mode != Integer.MIN_VALUE ? mode != 0 ? size : i2 : Math.min(size, i2);
    }

    private void setGrabbedState(int i) {
        if (i != this.mGrabbedState) {
            if (i != 0) {
                vibrate();
            }
            this.mGrabbedState = i;
            OnTriggerListener onTriggerListener = this.mOnTriggerListener;
            if (onTriggerListener != null) {
                if (i == 0) {
                    onTriggerListener.onReleased(this, 1);
                } else {
                    onTriggerListener.onGrabbed(this, 1);
                }
                this.mOnTriggerListener.onGrabbedStateChange(this, i);
            }
        }
    }

    private void showGlow(int i, int i2, float f, Animator.AnimatorListener animatorListener) {
        this.mGlowAnimations.cancel();
        this.mGlowAnimations.add(Tweener.to(this.mPointCloud.glowManager, i, "ease", Ease.Cubic.easeIn, "delay", Integer.valueOf(i2), "alpha", Float.valueOf(f), "onUpdate", this.mUpdateListener, "onComplete", animatorListener));
        this.mGlowAnimations.start();
    }

    private void showTargets(boolean z) {
        this.mTargetAnimations.stop();
        this.mAnimatingTargets = z;
        int i = z ? 50 : 0;
        int i2 = z ? 200 : 0;
        int size = this.mTargetDrawables.size();
        for (int i3 = 0; i3 < size; i3++) {
            TargetDrawable targetDrawable = this.mTargetDrawables.get(i3);
            targetDrawable.setState(DrawableImpl.STATE_INACTIVE);
            this.mTargetAnimations.add(Tweener.to(targetDrawable, i2, "ease", Ease.Cubic.easeOut, "alpha", Float.valueOf(1.0f), "scaleX", Float.valueOf(1.0f), "scaleY", Float.valueOf(1.0f), "delay", Integer.valueOf(i), "onUpdate", this.mUpdateListener));
        }
        float f = this.mRingScaleFactor * 1.0f;
        this.mTargetAnimations.add(Tweener.to(this.mOuterRing, i2, "ease", Ease.Cubic.easeOut, "alpha", Float.valueOf(1.0f), "scaleX", Float.valueOf(f), "scaleY", Float.valueOf(f), "delay", Integer.valueOf(i), "onUpdate", this.mUpdateListener, "onComplete", this.mTargetUpdateListener));
        this.mTargetAnimations.start();
    }

    private float square(float f) {
        return f * f;
    }

    private void startBackgroundAnimation(int i, float f) {
        Drawable background = getBackground();
        if (!this.mAlwaysTrackFinger || background == null) {
            return;
        }
        Tweener tweener = this.mBackgroundAnimator;
        if (tweener != null) {
            tweener.animator.cancel();
        }
        Tweener tweener2 = Tweener.to(background, i, "ease", Ease.Cubic.easeIn, "alpha", Integer.valueOf((int) (f * 255.0f)), "delay", 50);
        this.mBackgroundAnimator = tweener2;
        tweener2.animator.start();
    }

    private void startWaveAnimation() {
        this.mWaveAnimations.cancel();
        this.mPointCloud.waveManager.setAlpha(1.0f);
        this.mPointCloud.waveManager.setRadius(this.mHandleDrawable.getWidth() / 2.0f);
        this.mWaveAnimations.add(Tweener.to(this.mPointCloud.waveManager, 500L, "ease", Ease.Quad.easeOut, "delay", 0, "radius", Float.valueOf(this.mOuterRadius * 2.0f), "onUpdate", this.mUpdateListener, "onComplete", new AnimatorListenerAdapter() { // from class: net.frakbot.glowpadbackport.GlowPadView.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                GlowPadView.this.mPointCloud.waveManager.setRadius(0.0f);
                GlowPadView.this.mPointCloud.waveManager.setAlpha(0.0f);
            }
        }));
        this.mWaveAnimations.start();
    }

    private void stopAndHideWaveAnimation() {
        this.mWaveAnimations.cancel();
        this.mPointCloud.waveManager.setAlpha(0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void switchToState(int i, float f, float f2) {
        if (i == 0) {
            deactivateTargets();
            hideGlow(0, 0, 0.0f, null);
            startBackgroundAnimation(0, 0.0f);
            this.mHandleDrawable.setState(DrawableImpl.STATE_INACTIVE);
            this.mHandleDrawable.setAlpha(1.0f);
            return;
        }
        if (i == 1) {
            startBackgroundAnimation(0, 0.0f);
            return;
        }
        if (i == 2) {
            this.mHandleDrawable.setAlpha(0.0f);
            deactivateTargets();
            showTargets(true);
            startBackgroundAnimation(200, 1.0f);
            setGrabbedState(1);
            if (((AccessibilityManager) getContext().getSystemService("accessibility")).isEnabled()) {
                announceTargets();
                return;
            }
            return;
        }
        if (i == 3) {
            this.mHandleDrawable.setAlpha(0.0f);
            showGlow(0, 0, 1.0f, null);
        } else if (i == 4) {
            this.mHandleDrawable.setAlpha(0.0f);
            showGlow(0, 0, 0.0f, null);
        } else {
            if (i != 5) {
                return;
            }
            doFinish();
        }
    }

    private boolean trySwitchToFirstTouchState(float f, float f2) {
        float f3 = f - this.mWaveCenterX;
        float f4 = f2 - this.mWaveCenterY;
        if (!this.mAlwaysTrackFinger && dist2(f3, f4) > getScaledGlowRadiusSquared()) {
            return false;
        }
        switchToState(2, f, f2);
        updateGlowPosition(f3, f4);
        this.mDragging = true;
        return true;
    }

    private void updateGlowPosition(float f, float f2) {
        float x = f - this.mOuterRing.getX();
        float y = f2 - this.mOuterRing.getY();
        float f3 = this.mRingScaleFactor;
        this.mPointCloud.glowManager.setX(this.mOuterRing.getX() + ((1.0f / f3) * x));
        this.mPointCloud.glowManager.setY(this.mOuterRing.getY() + ((1.0f / f3) * y));
    }

    private void updatePointCloudPosition(float f, float f2) {
        this.mPointCloud.setCenter(f, f2);
    }

    private void updateTargetPosition(int i, float f, float f2) {
        updateTargetPosition(i, f, f2, getAngle(getSliceAngle(), i));
    }

    private void updateTargetPositions(float f, float f2) {
        updateTargetPositions(f, f2, false);
    }

    private void vibrate() {
        boolean z = Settings.System.getInt(getContext().getContentResolver(), "haptic_feedback_enabled", 1) != 0;
        Vibrator vibrator = this.mVibrator;
        if (vibrator == null || !z) {
            return;
        }
        vibrator.vibrate(this.mVibrationDuration);
    }

    public int addOpacity(int i, int i2) {
        return (i & 16777215) | (((i2 * Base64.BASELENGTH) / 100) << 24);
    }

    public int getDirectionDescriptionsResourceId() {
        return this.mDirectionDescriptionsResourceId;
    }

    public int getPointsMultiplier() {
        return this.mPointCloud.getPointsMultiplier();
    }

    public int getResourceIdForTarget(int i) {
        TargetDrawable targetDrawable = this.mTargetDrawables.get(i);
        if (targetDrawable == null) {
            return 0;
        }
        return targetDrawable.getResourceId();
    }

    public int getScaledSuggestedMinimumHeight() {
        return (int) ((Math.max(this.mOuterRing.getHeight(), this.mOuterRadius * 2.0f) * this.mRingScaleFactor) + this.mMaxTargetHeight);
    }

    public int getScaledSuggestedMinimumWidth() {
        return (int) ((Math.max(this.mOuterRing.getWidth(), this.mOuterRadius * 2.0f) * this.mRingScaleFactor) + this.mMaxTargetWidth);
    }

    @Override // android.view.View
    public int getSuggestedMinimumHeight() {
        return (int) (Math.max(this.mOuterRing.getHeight(), this.mOuterRadius * 2.0f) + this.mMaxTargetHeight);
    }

    @Override // android.view.View
    public int getSuggestedMinimumWidth() {
        return (int) (Math.max(this.mOuterRing.getWidth(), this.mOuterRadius * 2.0f) + this.mMaxTargetWidth);
    }

    public int getTargetDescriptionsResourceId() {
        return this.mTargetDescriptionsResourceId;
    }

    public int getTargetPosition(int i) {
        for (int i2 = 0; i2 < this.mTargetDrawables.size(); i2++) {
            if (this.mTargetDrawables.get(i2).getResourceId() == i) {
                return i2;
            }
        }
        return -1;
    }

    public int getTargetResourceId() {
        return this.mTargetResourceId;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        this.mPointCloud.draw(canvas);
        this.mOuterRing.draw(canvas);
        int size = this.mTargetDrawables.size();
        for (int i = 0; i < size; i++) {
            TargetDrawable targetDrawable = this.mTargetDrawables.get(i);
            if (targetDrawable != null) {
                targetDrawable.draw(canvas);
            }
        }
        this.mHandleDrawable.draw(canvas);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        if (Const.IS_ICS && accessibilityManager.isTouchExplorationEnabled()) {
            int action = motionEvent.getAction();
            if (action == 7) {
                motionEvent.setAction(2);
            } else if (action == 9) {
                motionEvent.setAction(0);
            } else if (action == 10) {
                motionEvent.setAction(1);
            }
            onTouchEvent(motionEvent);
            motionEvent.setAction(action);
            super.onHoverEvent(motionEvent);
        }
        return true;
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int i5 = i3 - i;
        float ringWidth = getRingWidth();
        float ringHeight = getRingHeight();
        float fMax = (Math.max(i5, this.mMaxTargetWidth + ringWidth) / 2.0f) + this.mHorizontalInset;
        float fMax2 = (Math.max(i4 - i2, this.mMaxTargetHeight + ringHeight) / 2.0f) + this.mVerticalInset;
        if (this.mInitialLayout) {
            stopAndHideWaveAnimation();
            hideTargets(false, false);
            this.mInitialLayout = false;
        }
        this.mOuterRing.setPositionX(fMax);
        this.mOuterRing.setPositionY(fMax2);
        this.mPointCloud.setScale(this.mRingScaleFactor);
        this.mHandleDrawable.setPositionX(fMax);
        this.mHandleDrawable.setPositionY(fMax2);
        updateTargetPositions(fMax, fMax2);
        updatePointCloudPosition(fMax, fMax2);
        updateGlowPosition(fMax, fMax2);
        this.mWaveCenterX = fMax;
        this.mWaveCenterY = fMax2;
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        int suggestedMinimumHeight = getSuggestedMinimumHeight();
        int iResolveMeasured = resolveMeasured(i, suggestedMinimumWidth);
        int iResolveMeasured2 = resolveMeasured(i2, suggestedMinimumHeight);
        this.mRingScaleFactor = computeScaleFactor(suggestedMinimumWidth, suggestedMinimumHeight, iResolveMeasured, iResolveMeasured2);
        computeInsets(iResolveMeasured - getScaledSuggestedMinimumWidth(), iResolveMeasured2 - getScaledSuggestedMinimumHeight());
        setMeasuredDimension(iResolveMeasured, iResolveMeasured2);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0034  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r5) {
        /*
            r4 = this;
            boolean r0 = net.frakbot.glowpadbackport.util.Const.IS_FROYO
            if (r0 == 0) goto L9
            int r0 = r5.getActionMasked()
            goto Ld
        L9:
            int r0 = r5.getAction()
        Ld:
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L34
            if (r0 == r2) goto L2c
            r3 = 2
            if (r0 == r3) goto L28
            r3 = 3
            if (r0 == r3) goto L21
            r3 = 5
            if (r0 == r3) goto L34
            r3 = 6
            if (r0 == r3) goto L2c
            r0 = 0
            goto L3c
        L21:
            r4.handleMove(r5)
            r4.handleCancel(r5)
            goto L32
        L28:
            r4.handleMove(r5)
            goto L32
        L2c:
            r4.handleMove(r5)
            r4.handleUp(r5)
        L32:
            r0 = 1
            goto L3c
        L34:
            r4.handleDown(r5)
            r4.handleMove(r5)
            boolean r0 = r4.mDragging
        L3c:
            r4.invalidate()
            if (r0 != 0) goto L47
            boolean r5 = super.onTouchEvent(r5)
            if (r5 == 0) goto L48
        L47:
            r1 = 1
        L48:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: net.frakbot.glowpadbackport.GlowPadView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void ping() {
        if (this.mFeedbackCount > 0) {
            boolean z = true;
            AnimationBundle animationBundle = this.mWaveAnimations;
            if (animationBundle.size() > 0 && animationBundle.get(0).animator.isRunning() && animationBundle.get(0).animator.getCurrentPlayTime() < 250) {
                z = false;
            }
            if (z) {
                startWaveAnimation();
            }
        }
    }

    public boolean replaceTargetDrawablesIfPresent(ComponentName componentName, String str, int i) throws Resources.NotFoundException {
        int i2;
        boolean zReplaceTargetDrawables = false;
        if (i == 0) {
            return false;
        }
        Context context = getContext();
        if (componentName != null) {
            try {
                PackageManager packageManager = context.getPackageManager();
                Bundle bundle = packageManager.getActivityInfo(componentName, 128).metaData;
                if (bundle != null && (i2 = bundle.getInt(str)) != 0) {
                    zReplaceTargetDrawables = replaceTargetDrawables(packageManager.getResourcesForActivity(componentName), i, i2);
                }
            } catch (PackageManager.NameNotFoundException e) {
                StringBuilder sbZ = jo.z("Failed to swap drawable; ");
                sbZ.append(componentName.flattenToShortString());
                sbZ.append(" not found");
                Log.w(TAG, sbZ.toString(), e);
            } catch (Resources.NotFoundException e2) {
                StringBuilder sbZ2 = jo.z("Failed to swap drawable from ");
                sbZ2.append(componentName.flattenToShortString());
                Log.w(TAG, sbZ2.toString(), e2);
            }
        }
        if (!zReplaceTargetDrawables) {
            replaceTargetDrawables(context.getResources(), i, i);
        }
        return zReplaceTargetDrawables;
    }

    public void reset(boolean z) {
        this.mGlowAnimations.stop();
        this.mTargetAnimations.stop();
        startBackgroundAnimation(0, 0.0f);
        stopAndHideWaveAnimation();
        hideTargets(z, false);
        hideGlow(0, 0, 0.0f, null);
        Tweener.reset();
    }

    public void resumeAnimations() {
        this.mWaveAnimations.setSuspended(false);
        this.mTargetAnimations.setSuspended(false);
        this.mGlowAnimations.setSuspended(false);
        this.mWaveAnimations.start();
        this.mTargetAnimations.start();
        this.mGlowAnimations.start();
    }

    public void setDirectionDescriptionsResourceId(int i) {
        this.mDirectionDescriptionsResourceId = i;
        ArrayList<String> arrayList = this.mDirectionDescriptions;
        if (arrayList != null) {
            arrayList.clear();
        }
    }

    public void setEnableTarget(int i, boolean z) {
        for (int i2 = 0; i2 < this.mTargetDrawables.size(); i2++) {
            TargetDrawable targetDrawable = this.mTargetDrawables.get(i2);
            if (targetDrawable.getResourceId() == i) {
                targetDrawable.setEnabled(z);
                return;
            }
        }
    }

    public void setGravity(int i) {
        this.mGravity = i;
    }

    public void setHandleStyle(int i, int i2) throws Resources.NotFoundException {
        if (this.mHandleStyle == i && this.mHandleOpacity == i2) {
            return;
        }
        this.mHandleStyle = i;
        this.mHandleOpacity = i2;
        this.mHandleDrawable.setDrawable(getContext().getResources(), this.mHandleResource, addOpacity(this.mHandleStyle == 0 ? this.mHandleBackground : this.mTargetBackground, i2), this.mHandleStyle == 0 ? this.mHandleForeground : 0, this.mHandleSize);
    }

    public void setOnTriggerListener(OnTriggerListener onTriggerListener) {
        this.mOnTriggerListener = onTriggerListener;
    }

    public void setPointsMultiplier(int i) {
        this.mPointCloud.setPointsMultiplier(i);
    }

    public void setTargetDescriptionsResourceId(int i) {
        this.mTargetDescriptionsResourceId = i;
        ArrayList<String> arrayList = this.mTargetDescriptions;
        if (arrayList != null) {
            arrayList.clear();
        }
    }

    public void setTargetResources(int i) throws Resources.NotFoundException {
        if (this.mAnimatingTargets) {
            this.mNewTargetResources = i;
        } else {
            internalSetTargetResources(i);
        }
    }

    public void setVibrateEnabled(boolean z) {
        if (z && this.mVibrator == null) {
            this.mVibrator = (Vibrator) getContext().getSystemService("vibrator");
        } else {
            this.mVibrator = null;
        }
    }

    public void suspendAnimations() {
        this.mWaveAnimations.setSuspended(true);
        this.mTargetAnimations.setSuspended(true);
        this.mGlowAnimations.setSuspended(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public GlowPadView(Context context, AttributeSet attributeSet) throws Resources.NotFoundException {
        super(context, attributeSet);
        this.mTargetDrawables = new ArrayList<>();
        this.mWaveAnimations = new AnimationBundle();
        this.mTargetAnimations = new AnimationBundle();
        this.mGlowAnimations = new AnimationBundle();
        this.mHandleStyle = 0;
        this.mHandleSize = 0;
        this.mHandleForeground = 0;
        this.mHandleBackground = 0;
        this.mHandleOpacity = 100;
        this.mTargetBackground = 0;
        this.mFeedbackCount = 3;
        this.mVibrationDuration = 0;
        this.mActiveTarget = -1;
        this.mRingScaleFactor = 1.0f;
        this.mOuterRadius = 0.0f;
        this.mSnapMargin = 0.0f;
        this.mFirstItemOffset = 0.0f;
        this.mMagneticTargets = false;
        this.mResetListener = new AnimatorListenerAdapter() { // from class: net.frakbot.glowpadbackport.GlowPadView.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                GlowPadView glowPadView = GlowPadView.this;
                glowPadView.switchToState(0, glowPadView.mWaveCenterX, GlowPadView.this.mWaveCenterY);
                GlowPadView.this.dispatchOnFinishFinalAnimation();
            }
        };
        this.mResetListenerWithPing = new AnimatorListenerAdapter() { // from class: net.frakbot.glowpadbackport.GlowPadView.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                GlowPadView glowPadView = GlowPadView.this;
                glowPadView.switchToState(0, glowPadView.mWaveCenterX, GlowPadView.this.mWaveCenterY);
                GlowPadView.this.dispatchOnFinishFinalAnimation();
            }
        };
        this.mUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: net.frakbot.glowpadbackport.GlowPadView.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                GlowPadView.this.invalidate();
            }
        };
        this.mTargetUpdateListener = new AnimatorListenerAdapter() { // from class: net.frakbot.glowpadbackport.GlowPadView.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) throws Resources.NotFoundException {
                if (GlowPadView.this.mNewTargetResources != 0) {
                    GlowPadView glowPadView = GlowPadView.this;
                    glowPadView.internalSetTargetResources(glowPadView.mNewTargetResources);
                    GlowPadView.this.mNewTargetResources = 0;
                    GlowPadView.this.hideTargets(false, false);
                }
                GlowPadView.this.mAnimatingTargets = false;
            }
        };
        this.mGravity = 48;
        this.mInitialLayout = true;
        Resources resources = context.getResources();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.GlowPadView);
        this.mInnerRadius = typedArrayObtainStyledAttributes.getDimension(R.styleable.GlowPadView_innerRadius, this.mInnerRadius);
        this.mOuterRadius = typedArrayObtainStyledAttributes.getDimension(R.styleable.GlowPadView_outerRadius, this.mOuterRadius);
        this.mSnapMargin = typedArrayObtainStyledAttributes.getDimension(R.styleable.GlowPadView_snapMargin, this.mSnapMargin);
        this.mFirstItemOffset = (float) Math.toRadians(typedArrayObtainStyledAttributes.getFloat(R.styleable.GlowPadView_firstItemOffset, (float) Math.toDegrees(this.mFirstItemOffset)));
        this.mVibrationDuration = typedArrayObtainStyledAttributes.getInt(R.styleable.GlowPadView_vibrationDuration, this.mVibrationDuration);
        this.mFeedbackCount = typedArrayObtainStyledAttributes.getInt(R.styleable.GlowPadView_feedbackCount, this.mFeedbackCount);
        this.mAllowScaling = typedArrayObtainStyledAttributes.getBoolean(R.styleable.GlowPadView_allowScaling, false);
        this.mHandleStyle = typedArrayObtainStyledAttributes.getInt(R.styleable.GlowPadView_handleStyle, 0);
        this.mHandleSize = typedArrayObtainStyledAttributes.getInt(R.styleable.GlowPadView_handleSize, 0);
        this.mHandleOpacity = typedArrayObtainStyledAttributes.getInt(R.styleable.GlowPadView_handleOpacity, 100);
        this.mHandleBackground = typedArrayObtainStyledAttributes.getColor(R.styleable.GlowPadView_handleBackground, 0);
        this.mHandleForeground = typedArrayObtainStyledAttributes.getColor(R.styleable.GlowPadView_handleForeground, 0);
        this.mTargetBackground = typedArrayObtainStyledAttributes.getColor(R.styleable.GlowPadView_targetBackground, 0);
        this.mHandleResource = typedArrayObtainStyledAttributes.peekValue(R.styleable.GlowPadView_handleDrawable).resourceId;
        int i = this.mHandleResource;
        int i2 = this.mHandleStyle;
        HandleDrawable handleDrawable = new HandleDrawable(resources, i, i2 == 0 ? this.mHandleBackground : this.mTargetBackground, i2 == 0 ? this.mHandleForeground : 0, this.mHandleSize);
        this.mHandleDrawable = handleDrawable;
        handleDrawable.setState(DrawableImpl.STATE_INACTIVE);
        this.mTouchRadius = this.mHandleDrawable.getWidth() / 2;
        this.mOuterRing = new TargetDrawable(resources, getResourceId(typedArrayObtainStyledAttributes, R.styleable.GlowPadView_outerRingDrawable), 0, this.mHandleSize);
        this.mAlwaysTrackFinger = typedArrayObtainStyledAttributes.getBoolean(R.styleable.GlowPadView_alwaysTrackFinger, false);
        this.mMagneticTargets = typedArrayObtainStyledAttributes.getBoolean(R.styleable.GlowPadView_magneticTargets, this.mMagneticTargets);
        int resourceId = getResourceId(typedArrayObtainStyledAttributes, R.styleable.GlowPadView_pointDrawable);
        Drawable drawable = resourceId != 0 ? resources.getDrawable(resourceId) : null;
        this.mGlowRadius = typedArrayObtainStyledAttributes.getDimension(R.styleable.GlowPadView_glowRadius, 0.0f);
        TypedValue typedValue = new TypedValue();
        if (typedArrayObtainStyledAttributes.getValue(R.styleable.GlowPadView_targetDrawables, typedValue)) {
            internalSetTargetResources(typedValue.resourceId);
        }
        ArrayList<TargetDrawable> arrayList = this.mTargetDrawables;
        if (arrayList == null || arrayList.size() == 0) {
            throw new IllegalStateException("Must specify at least one target drawable");
        }
        if (typedArrayObtainStyledAttributes.getValue(R.styleable.GlowPadView_targetDescriptions, typedValue)) {
            int i3 = typedValue.resourceId;
            if (i3 == 0) {
                throw new IllegalStateException("Must specify target descriptions");
            }
            setTargetDescriptionsResourceId(i3);
        }
        if (typedArrayObtainStyledAttributes.getValue(R.styleable.GlowPadView_directionDescriptions, typedValue)) {
            int i4 = typedValue.resourceId;
            if (i4 == 0) {
                throw new IllegalStateException("Must specify direction descriptions");
            }
            setDirectionDescriptionsResourceId(i4);
        }
        this.mGravity = typedArrayObtainStyledAttributes.getInt(R.styleable.GlowPadView_gravity, 48);
        typedArrayObtainStyledAttributes.recycle();
        setVibrateEnabled(this.mVibrationDuration > 0);
        assignDefaultsIfNeeded();
        PointCloud pointCloud = new PointCloud(drawable);
        this.mPointCloud = pointCloud;
        pointCloud.makePointCloud(this.mInnerRadius, this.mOuterRadius);
        this.mPointCloud.glowManager.setRadius(this.mGlowRadius);
    }

    private void updateTargetPositions(float f, float f2, boolean z) {
        int size = this.mTargetDrawables.size();
        float sliceAngle = getSliceAngle();
        for (int i = 0; i < size; i++) {
            if (!z || i != this.mActiveTarget) {
                updateTargetPosition(i, f, f2, getAngle(sliceAngle, i));
            }
        }
    }

    private void updateTargetPosition(int i, float f, float f2, float f3) {
        float ringWidth = getRingWidth() / 2.0f;
        float ringHeight = getRingHeight() / 2.0f;
        if (i >= 0) {
            TargetDrawable targetDrawable = this.mTargetDrawables.get(i);
            targetDrawable.setPositionX(f);
            targetDrawable.setPositionY(f2);
            double d = f3;
            targetDrawable.setX(ringWidth * ((float) Math.cos(d)));
            targetDrawable.setY(ringHeight * ((float) Math.sin(d)));
        }
    }
}
