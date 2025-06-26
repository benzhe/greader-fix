.class public Lnet/frakbot/glowpadbackport/GlowPadView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;,
        Lnet/frakbot/glowpadbackport/GlowPadView$OnTriggerListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final HANDLE_SIZE_MINI:I = 0x1

.field public static final HANDLE_SIZE_NORMAL:I = 0x0

.field public static final HANDLE_STYLE_MATERIAL:I = 0x1

.field public static final HANDLE_STYLE_SIMPLE:I = 0x0

.field private static final HIDE_ANIMATION_DELAY:I = 0xc8

.field private static final HIDE_ANIMATION_DURATION:I = 0xc8

.field private static final INITIAL_SHOW_HANDLE_DURATION:I = 0xc8

.field private static final RETURN_TO_HOME_DELAY:I = 0x4b0

.field private static final RETURN_TO_HOME_DURATION:I = 0xc8

.field private static final REVEAL_GLOW_DELAY:I = 0x0

.field private static final REVEAL_GLOW_DURATION:I = 0x0

.field private static final RING_SCALE_COLLAPSED:F = 0.5f

.field private static final RING_SCALE_EXPANDED:F = 1.0f

.field private static final SHOW_ANIMATION_DELAY:I = 0x32

.field private static final SHOW_ANIMATION_DURATION:I = 0xc8

.field private static final SNAP_MARGIN_DEFAULT:F = 20.0f

.field private static final STATE_FINISH:I = 0x5

.field private static final STATE_FIRST_TOUCH:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_SNAP:I = 0x4

.field private static final STATE_START:I = 0x1

.field private static final STATE_TRACKING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "GlowPadView"

.field private static final TAP_RADIUS_SCALE_ACCESSIBILITY_ENABLED:F = 1.3f

.field private static final TARGET_SCALE_COLLAPSED:F = 0.8f

.field private static final TARGET_SCALE_EXPANDED:F = 1.0f

.field private static final WAVE_ANIMATION_DURATION:I = 0x1f4


# instance fields
.field private mActiveTarget:I

.field private mAllowScaling:Z

.field private mAlwaysTrackFinger:Z

.field private mAnimatingTargets:Z

.field private mBackgroundAnimator:Lnet/frakbot/glowpadbackport/Tweener;

.field private mDirectionDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectionDescriptionsResourceId:I

.field private mDragging:Z

.field private mFeedbackCount:I

.field private mFirstItemOffset:F

.field private mGlowAnimations:Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;

.field private mGlowRadius:F

.field private mGrabbedState:I

.field private mGravity:I

.field private mHandleBackground:I

.field private mHandleDrawable:Lnet/frakbot/glowpadbackport/HandleDrawable;

.field private mHandleForeground:I

.field private mHandleOpacity:I

.field private mHandleResource:I

.field private mHandleSize:I

.field private mHandleStyle:I

.field private mHorizontalInset:I

.field private mInitialLayout:Z

.field private mInnerRadius:F

.field private mMagneticTargets:Z

.field private mMaxTargetHeight:I

.field private mMaxTargetWidth:I

.field private mNewTargetResources:I

.field private mOnTriggerListener:Lnet/frakbot/glowpadbackport/GlowPadView$OnTriggerListener;

.field private mOuterRadius:F

.field private mOuterRing:Lnet/frakbot/glowpadbackport/TargetDrawable;

.field private mPointCloud:Lnet/frakbot/glowpadbackport/PointCloud;

.field private mPointerId:I

.field private mResetListener:Landroid/animation/Animator$AnimatorListener;

.field private mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

.field private mRingScaleFactor:F

.field private mSnapMargin:F

.field private mTargetAnimations:Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;

.field private mTargetBackground:I

.field private mTargetDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetDescriptionsResourceId:I

.field private mTargetDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lnet/frakbot/glowpadbackport/TargetDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetResourceId:I

.field private mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

.field private mTouchRadius:F

.field private mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mVerticalInset:I

.field private mVibrationDuration:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mWaveAnimations:Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;

.field private mWaveCenterX:F

.field private mWaveCenterY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lnet/frakbot/glowpadbackport/GlowPadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;-><init>(Lnet/frakbot/glowpadbackport/GlowPadView;Lnet/frakbot/glowpadbackport/GlowPadView$1;)V

    iput-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mWaveAnimations:Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;

    .line 5
    new-instance v0, Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;

    invoke-direct {v0, p0, v1}, Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;-><init>(Lnet/frakbot/glowpadbackport/GlowPadView;Lnet/frakbot/glowpadbackport/GlowPadView$1;)V

    iput-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetAnimations:Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;

    .line 6
    new-instance v0, Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;

    invoke-direct {v0, p0, v1}, Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;-><init>(Lnet/frakbot/glowpadbackport/GlowPadView;Lnet/frakbot/glowpadbackport/GlowPadView$1;)V

    iput-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mGlowAnimations:Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHandleStyle:I

    .line 8
    iput v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHandleSize:I

    .line 9
    iput v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHandleForeground:I

    .line 10
    iput v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHandleBackground:I

    const/16 v2, 0x64

    .line 11
    iput v2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHandleOpacity:I

    .line 12
    iput v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetBackground:I

    const/4 v3, 0x3

    .line 13
    iput v3, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mFeedbackCount:I

    .line 14
    iput v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mVibrationDuration:I

    const/4 v3, -0x1

    .line 15
    iput v3, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mActiveTarget:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 16
    iput v3, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mRingScaleFactor:F

    const/4 v3, 0x0

    .line 17
    iput v3, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mOuterRadius:F

    .line 18
    iput v3, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mSnapMargin:F

    .line 19
    iput v3, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mFirstItemOffset:F

    .line 20
    iput-boolean v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mMagneticTargets:Z

    .line 21
    new-instance v4, Lnet/frakbot/glowpadbackport/GlowPadView$1;

    invoke-direct {v4, p0}, Lnet/frakbot/glowpadbackport/GlowPadView$1;-><init>(Lnet/frakbot/glowpadbackport/GlowPadView;)V

    iput-object v4, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    .line 22
    new-instance v4, Lnet/frakbot/glowpadbackport/GlowPadView$2;

    invoke-direct {v4, p0}, Lnet/frakbot/glowpadbackport/GlowPadView$2;-><init>(Lnet/frakbot/glowpadbackport/GlowPadView;)V

    iput-object v4, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    .line 23
    new-instance v4, Lnet/frakbot/glowpadbackport/GlowPadView$3;

    invoke-direct {v4, p0}, Lnet/frakbot/glowpadbackport/GlowPadView$3;-><init>(Lnet/frakbot/glowpadbackport/GlowPadView;)V

    iput-object v4, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 24
    new-instance v4, Lnet/frakbot/glowpadbackport/GlowPadView$4;

    invoke-direct {v4, p0}, Lnet/frakbot/glowpadbackport/GlowPadView$4;-><init>(Lnet/frakbot/glowpadbackport/GlowPadView;)V

    iput-object v4, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    const/16 v4, 0x30

    .line 25
    iput v4, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mGravity:I

    const/4 v5, 0x1

    .line 26
    iput-boolean v5, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mInitialLayout:Z

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 28
    sget-object v6, Lnet/frakbot/glowpadbackport/R$styleable;->GlowPadView:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 29
    sget p2, Lnet/frakbot/glowpadbackport/R$styleable;->GlowPadView_innerRadius:I

    iget v6, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mInnerRadius:F

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mInnerRadius:F

    .line 30
    sget p2, Lnet/frakbot/glowpadbackport/R$styleable;->GlowPadView_outerRadius:I

    iget v6, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mOuterRadius:F

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mOuterRadius:F

    .line 31
    sget p2, Lnet/frakbot/glowpadbackport/R$styleable;->GlowPadView_snapMargin:I

    iget v6, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mSnapMargin:F

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mSnapMargin:F

    .line 32
    sget p2, Lnet/frakbot/glowpadbackport/R$styleable;->GlowPadView_firstItemOffset:I

    iget v6, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mFirstItemOffset:F

    float-to-double v6, v6

    .line 33
    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 34
    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    float-to-double v6, p2

    .line 35
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    double-to-float p2, v6

    iput p2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mFirstItemOffset:F

    .line 36
    sget p2, Lnet/frakbot/glowpadbackport/R$styleable;->GlowPadView_vibrationDuration:I

    iget v6, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mVibrationDuration:I

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mVibrationDuration:I

    .line 37
    sget p2, Lnet/frakbot/glowpadbackport/R$styleable;->GlowPadView_feedbackCount:I

    iget v6, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mFeedbackCount:I

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mFeedbackCount:I

    .line 38
    sget p2, Lnet/frakbot/glowpadbackport/R$styleable;->GlowPadView_allowScaling:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mAllowScaling:Z

    .line 39
    sget p2, Lnet/frakbot/glowpadbackport/R$styleable;->GlowPadView_handleStyle:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHandleStyle:I

    .line 40
    sget p2, Lnet/frakbot/glowpadbackport/R$styleable;->GlowPadView_handleSize:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHandleSize:I

    .line 41
    sget p2, Lnet/frakbot/glowpadbackport/R$styleable;->GlowPadView_handleOpacity:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHandleOpacity:I

    .line 42
    sget p2, Lnet/frakbot/glowpadbackport/R$styleable;->GlowPadView_handleBackground:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHandleBackground:I

    .line 43
    sget p2, Lnet/frakbot/glowpadbackport/R$styleable;->GlowPadView_handleForeground:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHandleForeground:I

    .line 44
    sget p2, Lnet/frakbot/glowpadbackport/R$styleable;->GlowPadView_targetBackground:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetBackground:I

    .line 45
    sget p2, Lnet/frakbot/glowpadbackport/R$styleable;->GlowPadView_handleDrawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    .line 46
    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    iput p2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHandleResource:I

    .line 47
    new-instance p2, Lnet/frakbot/glowpadbackport/HandleDrawable;

    iget v8, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHandleResource:I

    iget v2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHandleStyle:I

    if-nez v2, :cond_0

    iget v6, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHandleBackground:I

    goto :goto_0

    :cond_0
    iget v6, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetBackground:I

    :goto_0
    move v9, v6

    if-nez v2, :cond_1

    iget v2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHandleForeground:I

    move v10, v2

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    iget v11, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHandleSize:I

    move-object v6, p2

    move-object v7, v12

    invoke-direct/range {v6 .. v11}, Lnet/frakbot/glowpadbackport/HandleDrawable;-><init>(Landroid/content/res/Resources;IIII)V

    iput-object p2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHandleDrawable:Lnet/frakbot/glowpadbackport/HandleDrawable;

    .line 48
    sget-object v2, Lnet/frakbot/glowpadbackport/DrawableImpl;->STATE_INACTIVE:[I

    invoke-virtual {p2, v2}, Lnet/frakbot/glowpadbackport/DrawableImpl;->setState([I)V

    .line 49
    iget-object p2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHandleDrawable:Lnet/frakbot/glowpadbackport/HandleDrawable;

    invoke-virtual {p2}, Lnet/frakbot/glowpadbackport/DrawableImpl;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    iput p2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTouchRadius:F

    .line 50
    new-instance p2, Lnet/frakbot/glowpadbackport/TargetDrawable;

    sget v2, Lnet/frakbot/glowpadbackport/R$styleable;->GlowPadView_outerRingDrawable:I

    invoke-direct {p0, p1, v2}, Lnet/frakbot/glowpadbackport/GlowPadView;->getResourceId(Landroid/content/res/TypedArray;I)I

    move-result v2

    iget v6, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHandleSize:I

    invoke-direct {p2, v12, v2, v0, v6}, Lnet/frakbot/glowpadbackport/TargetDrawable;-><init>(Landroid/content/res/Resources;III)V

    iput-object p2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mOuterRing:Lnet/frakbot/glowpadbackport/TargetDrawable;

    .line 51
    sget p2, Lnet/frakbot/glowpadbackport/R$styleable;->GlowPadView_alwaysTrackFinger:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mAlwaysTrackFinger:Z

    .line 52
    sget p2, Lnet/frakbot/glowpadbackport/R$styleable;->GlowPadView_magneticTargets:I

    iget-boolean v2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mMagneticTargets:Z

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mMagneticTargets:Z

    .line 53
    sget p2, Lnet/frakbot/glowpadbackport/R$styleable;->GlowPadView_pointDrawable:I

    invoke-direct {p0, p1, p2}, Lnet/frakbot/glowpadbackport/GlowPadView;->getResourceId(Landroid/content/res/TypedArray;I)I

    move-result p2

    if-eqz p2, :cond_2

    .line 54
    invoke-virtual {v12, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 55
    :cond_2
    sget p2, Lnet/frakbot/glowpadbackport/R$styleable;->GlowPadView_glowRadius:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mGlowRadius:F

    .line 56
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 57
    sget v2, Lnet/frakbot/glowpadbackport/R$styleable;->GlowPadView_targetDrawables:I

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 58
    iget v2, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {p0, v2}, Lnet/frakbot/glowpadbackport/GlowPadView;->internalSetTargetResources(I)V

    .line 59
    :cond_3
    iget-object v2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_9

    .line 60
    sget v2, Lnet/frakbot/glowpadbackport/R$styleable;->GlowPadView_targetDescriptions:I

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 61
    iget v2, p2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_4

    .line 62
    invoke-virtual {p0, v2}, Lnet/frakbot/glowpadbackport/GlowPadView;->setTargetDescriptionsResourceId(I)V

    goto :goto_2

    .line 63
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Must specify target descriptions"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_5
    :goto_2
    sget v2, Lnet/frakbot/glowpadbackport/R$styleable;->GlowPadView_directionDescriptions:I

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 65
    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    if-eqz p2, :cond_6

    .line 66
    invoke-virtual {p0, p2}, Lnet/frakbot/glowpadbackport/GlowPadView;->setDirectionDescriptionsResourceId(I)V

    goto :goto_3

    .line 67
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Must specify direction descriptions"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_7
    :goto_3
    sget p2, Lnet/frakbot/glowpadbackport/R$styleable;->GlowPadView_gravity:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mGravity:I

    .line 69
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    iget p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mVibrationDuration:I

    if-lez p1, :cond_8

    const/4 v0, 0x1

    :cond_8
    invoke-virtual {p0, v0}, Lnet/frakbot/glowpadbackport/GlowPadView;->setVibrateEnabled(Z)V

    .line 71
    invoke-direct {p0}, Lnet/frakbot/glowpadbackport/GlowPadView;->assignDefaultsIfNeeded()V

    .line 72
    new-instance p1, Lnet/frakbot/glowpadbackport/PointCloud;

    invoke-direct {p1, v1}, Lnet/frakbot/glowpadbackport/PointCloud;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mPointCloud:Lnet/frakbot/glowpadbackport/PointCloud;

    .line 73
    iget p2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mInnerRadius:F

    iget v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mOuterRadius:F

    invoke-virtual {p1, p2, v0}, Lnet/frakbot/glowpadbackport/PointCloud;->makePointCloud(FF)V

    .line 74
    iget-object p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mPointCloud:Lnet/frakbot/glowpadbackport/PointCloud;

    iget-object p1, p1, Lnet/frakbot/glowpadbackport/PointCloud;->glowManager:Lnet/frakbot/glowpadbackport/PointCloud$GlowManager;

    iget p2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mGlowRadius:F

    invoke-virtual {p1, p2}, Lnet/frakbot/glowpadbackport/PointCloud$GlowManager;->setRadius(F)V

    return-void

    .line 75
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Must specify at least one target drawable"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$100(Lnet/frakbot/glowpadbackport/GlowPadView;)F
    .locals 0

    .line 1
    iget p0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mWaveCenterX:F

    return p0
.end method

.method public static synthetic access$200(Lnet/frakbot/glowpadbackport/GlowPadView;)F
    .locals 0

    .line 1
    iget p0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mWaveCenterY:F

    return p0
.end method

.method public static synthetic access$300(Lnet/frakbot/glowpadbackport/GlowPadView;IFF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lnet/frakbot/glowpadbackport/GlowPadView;->switchToState(IFF)V

    return-void
.end method

.method public static synthetic access$400(Lnet/frakbot/glowpadbackport/GlowPadView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/frakbot/glowpadbackport/GlowPadView;->dispatchOnFinishFinalAnimation()V

    return-void
.end method

.method public static synthetic access$500(Lnet/frakbot/glowpadbackport/GlowPadView;)I
    .locals 0

    .line 1
    iget p0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mNewTargetResources:I

    return p0
.end method

.method public static synthetic access$502(Lnet/frakbot/glowpadbackport/GlowPadView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mNewTargetResources:I

    return p1
.end method

.method public static synthetic access$600(Lnet/frakbot/glowpadbackport/GlowPadView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lnet/frakbot/glowpadbackport/GlowPadView;->internalSetTargetResources(I)V

    return-void
.end method

.method public static synthetic access$700(Lnet/frakbot/glowpadbackport/GlowPadView;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lnet/frakbot/glowpadbackport/GlowPadView;->hideTargets(ZZ)V

    return-void
.end method

.method public static synthetic access$802(Lnet/frakbot/glowpadbackport/GlowPadView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mAnimatingTargets:Z

    return p1
.end method

.method public static synthetic access$900(Lnet/frakbot/glowpadbackport/GlowPadView;)Lnet/frakbot/glowpadbackport/PointCloud;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mPointCloud:Lnet/frakbot/glowpadbackport/PointCloud;

    return-object p0
.end method

.method private announceTargets()V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 3
    invoke-direct {p0, v3}, Lnet/frakbot/glowpadbackport/GlowPadView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-direct {p0, v3}, Lnet/frakbot/glowpadbackport/GlowPadView;->getDirectionDescription(I)Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v2

    .line 7
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_1
    sget-boolean v1, Lnet/frakbot/glowpadbackport/util/Const;->IS_JB:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private assignDefaultsIfNeeded()V
    .locals 4

    .line 1
    iget v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mOuterRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mOuterRing:Lnet/frakbot/glowpadbackport/TargetDrawable;

    invoke-virtual {v0}, Lnet/frakbot/glowpadbackport/DrawableImpl;->getWidth()I

    move-result v0

    iget-object v2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mOuterRing:Lnet/frakbot/glowpadbackport/TargetDrawable;

    invoke-virtual {v2}, Lnet/frakbot/glowpadbackport/DrawableImpl;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iput v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mOuterRadius:F

    .line 3
    :cond_0
    iget v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mSnapMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    const/high16 v2, 0x41a00000    # 20.0f

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 5
    invoke-static {v0, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mSnapMargin:F

    .line 6
    :cond_1
    iget v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mInnerRadius:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHandleDrawable:Lnet/frakbot/glowpadbackport/HandleDrawable;

    invoke-virtual {v0}, Lnet/frakbot/glowpadbackport/DrawableImpl;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    iput v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mInnerRadius:F

    :cond_2
    return-void
.end method

.method private computeInsets(II)V
    .locals 4

    .line 1
    iget v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mGravity:I

    .line 2
    sget-boolean v1, Lnet/frakbot/glowpadbackport/util/Const;->IS_JB_MR1:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    .line 4
    iget v1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mGravity:I

    invoke-static {v1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    :cond_0
    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 5
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHorizontalInset:I

    goto :goto_0

    .line 6
    :cond_1
    iput p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHorizontalInset:I

    goto :goto_0

    .line 7
    :cond_2
    iput v3, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHorizontalInset:I

    :goto_0
    and-int/lit8 p1, v0, 0x70

    const/16 v0, 0x30

    if-eq p1, v0, :cond_4

    const/16 v0, 0x50

    if-eq p1, v0, :cond_3

    .line 8
    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mVerticalInset:I

    goto :goto_1

    .line 9
    :cond_3
    iput p2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mVerticalInset:I

    goto :goto_1

    .line 10
    :cond_4
    iput v3, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mVerticalInset:I

    :goto_1
    return-void
.end method

.method private computeScaleFactor(IIII)F
    .locals 4

    .line 1
    iget-boolean v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mAllowScaling:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mGravity:I

    .line 3
    sget-boolean v2, Lnet/frakbot/glowpadbackport/util/Const;->IS_JB_MR1:Z

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    .line 5
    iget v2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mGravity:I

    invoke-static {v2, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    :cond_1
    and-int/lit8 v2, v0, 0x7

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    if-le p1, p3, :cond_2

    int-to-float p3, p3

    mul-float p3, p3, v1

    .line 6
    iget v2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mMaxTargetWidth:I

    int-to-float v3, v2

    sub-float/2addr p3, v3

    sub-int/2addr p1, v2

    int-to-float p1, p1

    div-float/2addr p3, p1

    goto :goto_0

    :cond_2
    const/high16 p3, 0x3f800000    # 1.0f

    :goto_0
    and-int/lit8 p1, v0, 0x70

    const/16 v0, 0x30

    if-eq p1, v0, :cond_3

    const/16 v0, 0x50

    if-eq p1, v0, :cond_3

    if-le p2, p4, :cond_3

    int-to-float p1, p4

    mul-float p1, p1, v1

    .line 7
    iget p4, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mMaxTargetHeight:I

    int-to-float v0, p4

    sub-float/2addr p1, v0

    sub-int/2addr p2, p4

    int-to-float p2, p2

    div-float v1, p1, p2

    .line 8
    :cond_3
    invoke-static {p3, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method private deactivateTargets()V
    .locals 4

    .line 1
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/frakbot/glowpadbackport/TargetDrawable;

    .line 3
    sget-object v3, Lnet/frakbot/glowpadbackport/DrawableImpl;->STATE_INACTIVE:[I

    invoke-virtual {v2, v3}, Lnet/frakbot/glowpadbackport/DrawableImpl;->setState([I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mActiveTarget:I

    return-void
.end method

.method private dispatchOnFinishFinalAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mOnTriggerListener:Lnet/frakbot/glowpadbackport/GlowPadView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lnet/frakbot/glowpadbackport/GlowPadView$OnTriggerListener;->onFinishFinalAnimation()V

    :cond_0
    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnet/frakbot/glowpadbackport/GlowPadView;->vibrate()V

    .line 2
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mOnTriggerListener:Lnet/frakbot/glowpadbackport/GlowPadView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p0, p1}, Lnet/frakbot/glowpadbackport/GlowPadView$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private dist2(FF)F
    .locals 0

    mul-float p1, p1, p1

    mul-float p2, p2, p2

    add-float/2addr p2, p1

    return p2
.end method

.method private doFinish()V
    .locals 6

    .line 1
    iget v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mActiveTarget:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    const/16 v5, 0xc8

    if-eqz v3, :cond_1

    .line 2
    invoke-direct {p0, v0}, Lnet/frakbot/glowpadbackport/GlowPadView;->highlightSelected(I)V

    const/16 v1, 0x4b0

    .line 3
    iget-object v3, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, v5, v1, v4, v3}, Lnet/frakbot/glowpadbackport/GlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 4
    invoke-direct {p0, v0}, Lnet/frakbot/glowpadbackport/GlowPadView;->dispatchTriggerEvent(I)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, v5, v2, v4, v0}, Lnet/frakbot/glowpadbackport/GlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 6
    invoke-direct {p0, v1, v2}, Lnet/frakbot/glowpadbackport/GlowPadView;->hideTargets(ZZ)V

    .line 7
    :goto_1
    invoke-direct {p0, v2}, Lnet/frakbot/glowpadbackport/GlowPadView;->setGrabbedState(I)V

    return-void
.end method

.method private dump()V
    .locals 3

    const-string v0, "Outer Radius = "

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mOuterRadius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlowPadView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SnapMargin = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mSnapMargin:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FeedbackCount = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mFeedbackCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VibrationDuration = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mVibrationDuration:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GlowRadius = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mGlowRadius:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaveCenterX = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mWaveCenterX:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaveCenterY = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mWaveCenterY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getAngle(FI)F
    .locals 1

    .line 1
    iget v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mFirstItemOffset:F

    int-to-float p2, p2

    mul-float p1, p1, p2

    add-float/2addr p1, v0

    return p1
.end method

.method private getDirectionDescription(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iget v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mDirectionDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lnet/frakbot/glowpadbackport/GlowPadView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    .line 3
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    const-string p1, "GlowPadView"

    const-string v0, "The number of target drawables must be equal to the number of direction descriptions."

    .line 4
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private getResourceId(Landroid/content/res/TypedArray;I)I
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    :goto_0
    return p1
.end method

.method private getRingHeight()F
    .locals 4

    .line 1
    iget v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mRingScaleFactor:F

    iget-object v1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mOuterRing:Lnet/frakbot/glowpadbackport/TargetDrawable;

    invoke-virtual {v1}, Lnet/frakbot/glowpadbackport/DrawableImpl;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mOuterRadius:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float v1, v1, v0

    return v1
.end method

.method private getRingWidth()F
    .locals 4

    .line 1
    iget v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mRingScaleFactor:F

    iget-object v1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mOuterRing:Lnet/frakbot/glowpadbackport/TargetDrawable;

    invoke-virtual {v1}, Lnet/frakbot/glowpadbackport/DrawableImpl;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mOuterRadius:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float v1, v1, v0

    return v1
.end method

.method private getScaledGlowRadiusSquared()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 2
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3fa66666    # 1.3f

    .line 3
    iget v1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTouchRadius:F

    mul-float v1, v1, v0

    goto :goto_0

    .line 4
    :cond_0
    iget v1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTouchRadius:F

    .line 5
    :goto_0
    invoke-direct {p0, v1}, Lnet/frakbot/glowpadbackport/GlowPadView;->square(F)F

    move-result v0

    return v0
.end method

.method private getSliceAngle()F
    .locals 4

    .line 1
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, -0x3fe6de04abbbd2e8L    # -6.283185307179586

    div-double/2addr v2, v0

    double-to-float v0, v2

    return v0
.end method

.method private getTargetDescription(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iget v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lnet/frakbot/glowpadbackport/GlowPadView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    .line 3
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    const-string p1, "GlowPadView"

    const-string v0, "The number of target drawables must be equal to the number of target descriptions."

    .line 4
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private handleCancel(Landroid/view/MotionEvent;)V
    .locals 3

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mActiveTarget:I

    .line 2
    sget-boolean v1, Lnet/frakbot/glowpadbackport/util/Const;->IS_FROYO:Z

    const/4 v2, 0x5

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    .line 4
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-direct {p0, v2, v0, p1}, Lnet/frakbot/glowpadbackport/GlowPadView;->switchToState(IFF)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v2, v0, p1}, Lnet/frakbot/glowpadbackport/GlowPadView;->switchToState(IFF)V

    :goto_0
    return-void
.end method

.method private handleDown(Landroid/view/MotionEvent;)V
    .locals 5

    .line 1
    sget-boolean v0, Lnet/frakbot/glowpadbackport/util/Const;->IS_FROYO:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 4
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    :goto_1
    const/4 v4, 0x1

    .line 7
    invoke-direct {p0, v4, v0, v3}, Lnet/frakbot/glowpadbackport/GlowPadView;->switchToState(IFF)V

    .line 8
    invoke-direct {p0, v0, v3}, Lnet/frakbot/glowpadbackport/GlowPadView;->trySwitchToFirstTouchState(FF)Z

    move-result v4

    if-nez v4, :cond_2

    .line 9
    iput-boolean v1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mDragging:Z

    goto :goto_2

    .line 10
    :cond_2
    sget-boolean v1, Lnet/frakbot/glowpadbackport/util/Const;->IS_ECLAIR:Z

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mPointerId:I

    .line 12
    :cond_3
    invoke-direct {p0, v0, v3}, Lnet/frakbot/glowpadbackport/GlowPadView;->updateGlowPosition(FF)V

    :goto_2
    return-void
.end method

.method private handleMove(Landroid/view/MotionEvent;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    .line 2
    iget-object v3, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 4
    sget-boolean v5, Lnet/frakbot/glowpadbackport/util/Const;->IS_ECLAIR:Z

    const/4 v7, -0x1

    if-eqz v5, :cond_0

    .line 5
    iget v5, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mPointerId:I

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    if-ne v5, v7, :cond_1

    return-void

    :cond_0
    const/4 v5, 0x0

    :cond_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    :goto_0
    add-int/lit8 v13, v2, 0x1

    if-ge v11, v13, :cond_11

    .line 6
    sget-boolean v8, Lnet/frakbot/glowpadbackport/util/Const;->IS_FROYO:Z

    if-eqz v8, :cond_4

    if-ge v11, v2, :cond_2

    .line 7
    invoke-virtual {v1, v5, v11}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v8

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    :goto_1
    if-ge v11, v2, :cond_3

    .line 9
    invoke-virtual {v1, v5, v11}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v9

    goto :goto_3

    .line 10
    :cond_3
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    goto :goto_3

    :cond_4
    if-ge v11, v2, :cond_5

    .line 11
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v8

    goto :goto_2

    .line 12
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    :goto_2
    if-ge v11, v2, :cond_6

    .line 13
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v9

    goto :goto_3

    .line 14
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 15
    :goto_3
    iget v13, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mWaveCenterX:F

    sub-float v13, v8, v13

    .line 16
    iget v14, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mWaveCenterY:F

    sub-float v14, v9, v14

    .line 17
    invoke-direct {v0, v13, v14}, Lnet/frakbot/glowpadbackport/GlowPadView;->dist2(FF)F

    move-result v15

    float-to-double v6, v15

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 18
    iget v7, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mOuterRadius:F

    cmpl-float v15, v6, v7

    if-lez v15, :cond_7

    div-float/2addr v7, v6

    goto :goto_4

    :cond_7
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_4
    mul-float v6, v13, v7

    mul-float v7, v7, v14

    neg-float v15, v14

    move/from16 v16, v2

    float-to-double v1, v15

    move v15, v5

    move/from16 v17, v6

    float-to-double v5, v13

    .line 19
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    .line 20
    iget-boolean v5, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mDragging:Z

    if-nez v5, :cond_8

    .line 21
    invoke-direct {v0, v8, v9}, Lnet/frakbot/glowpadbackport/GlowPadView;->trySwitchToFirstTouchState(FF)Z

    .line 22
    :cond_8
    iget-boolean v5, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mDragging:Z

    if-eqz v5, :cond_10

    .line 23
    iget v5, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mRingScaleFactor:F

    iget v6, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mOuterRadius:F

    mul-float v8, v5, v6

    iget v9, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mSnapMargin:F

    sub-float/2addr v8, v9

    mul-float v8, v8, v8

    mul-float v5, v5, v6

    add-float/2addr v5, v9

    mul-float v5, v5, v5

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v4, :cond_f

    .line 24
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/frakbot/glowpadbackport/TargetDrawable;

    move/from16 v18, v7

    .line 25
    iget v7, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mFirstItemOffset:F

    move/from16 v20, v10

    move/from16 v19, v11

    float-to-double v10, v7

    move/from16 v22, v12

    move/from16 v21, v13

    int-to-double v12, v6

    const-wide/high16 v23, 0x3fe0000000000000L    # 0.5

    sub-double v25, v12, v23

    const-wide/high16 v27, 0x4000000000000000L    # 2.0

    mul-double v25, v25, v27

    const-wide v29, 0x400921fb54442d18L    # Math.PI

    mul-double v25, v25, v29

    move/from16 v31, v5

    move/from16 v32, v6

    int-to-double v5, v4

    div-double v25, v25, v5

    add-double v25, v25, v10

    float-to-double v10, v7

    add-double v12, v12, v23

    mul-double v12, v12, v27

    mul-double v12, v12, v29

    div-double/2addr v12, v5

    add-double/2addr v12, v10

    .line 26
    invoke-virtual {v9}, Lnet/frakbot/glowpadbackport/DrawableImpl;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_d

    cmpl-double v5, v1, v25

    if-lez v5, :cond_9

    cmpg-double v5, v1, v12

    if-lez v5, :cond_b

    :cond_9
    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    add-double v9, v1, v5

    cmpl-double v7, v9, v25

    if-lez v7, :cond_a

    cmpg-double v7, v9, v12

    if-lez v7, :cond_b

    :cond_a
    sub-double v5, v1, v5

    cmpl-double v7, v5, v25

    if-lez v7, :cond_c

    cmpg-double v7, v5, v12

    if-gtz v7, :cond_c

    :cond_b
    const/4 v5, 0x1

    move/from16 v6, v21

    goto :goto_6

    :cond_c
    move/from16 v6, v21

    const/4 v5, 0x0

    .line 27
    :goto_6
    invoke-direct {v0, v6, v14}, Lnet/frakbot/glowpadbackport/GlowPadView;->dist2(FF)F

    move-result v7

    if-eqz v5, :cond_e

    cmpl-float v5, v7, v8

    if-lez v5, :cond_e

    cmpg-float v5, v7, v31

    if-gez v5, :cond_e

    neg-double v9, v1

    double-to-float v5, v9

    move v10, v5

    move/from16 v12, v32

    goto :goto_7

    :cond_d
    move/from16 v6, v21

    :cond_e
    move/from16 v10, v20

    move/from16 v12, v22

    :goto_7
    add-int/lit8 v5, v32, 0x1

    move v13, v6

    move/from16 v7, v18

    move/from16 v11, v19

    move v6, v5

    move/from16 v5, v31

    goto/16 :goto_5

    :cond_f
    move/from16 v18, v7

    move/from16 v20, v10

    move/from16 v19, v11

    move/from16 v22, v12

    goto :goto_8

    :cond_10
    move/from16 v18, v7

    move/from16 v19, v11

    :goto_8
    add-int/lit8 v11, v19, 0x1

    move-object/from16 v1, p1

    move v5, v15

    move/from16 v2, v16

    move/from16 v8, v17

    move/from16 v9, v18

    const/4 v7, -0x1

    goto/16 :goto_0

    .line 28
    :cond_11
    iget-boolean v1, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mDragging:Z

    if-nez v1, :cond_12

    return-void

    :cond_12
    const/4 v1, -0x1

    if-eq v12, v1, :cond_13

    const/4 v2, 0x4

    .line 29
    invoke-direct {v0, v2, v8, v9}, Lnet/frakbot/glowpadbackport/GlowPadView;->switchToState(IFF)V

    .line 30
    invoke-direct {v0, v8, v9}, Lnet/frakbot/glowpadbackport/GlowPadView;->updateGlowPosition(FF)V

    goto :goto_9

    :cond_13
    const/4 v2, 0x3

    .line 31
    invoke-direct {v0, v2, v8, v9}, Lnet/frakbot/glowpadbackport/GlowPadView;->switchToState(IFF)V

    .line 32
    invoke-direct {v0, v8, v9}, Lnet/frakbot/glowpadbackport/GlowPadView;->updateGlowPosition(FF)V

    .line 33
    :goto_9
    iget v2, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mActiveTarget:I

    if-eq v2, v12, :cond_19

    if-eq v2, v1, :cond_16

    .line 34
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/frakbot/glowpadbackport/TargetDrawable;

    .line 35
    sget-object v2, Lnet/frakbot/glowpadbackport/DrawableImpl;->STATE_FOCUSED:[I

    invoke-virtual {v1, v2}, Lnet/frakbot/glowpadbackport/DrawableImpl;->hasState([I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 36
    sget-object v2, Lnet/frakbot/glowpadbackport/DrawableImpl;->STATE_INACTIVE:[I

    invoke-virtual {v1, v2}, Lnet/frakbot/glowpadbackport/DrawableImpl;->setState([I)V

    .line 37
    :cond_14
    iget-boolean v1, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mMagneticTargets:Z

    if-eqz v1, :cond_15

    .line 38
    iget v1, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mActiveTarget:I

    iget v2, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mWaveCenterX:F

    iget v4, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mWaveCenterY:F

    invoke-direct {v0, v1, v2, v4}, Lnet/frakbot/glowpadbackport/GlowPadView;->updateTargetPosition(IFF)V

    :cond_15
    const/4 v1, -0x1

    :cond_16
    if-eq v12, v1, :cond_19

    .line 39
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/frakbot/glowpadbackport/TargetDrawable;

    .line 40
    sget-object v2, Lnet/frakbot/glowpadbackport/DrawableImpl;->STATE_FOCUSED:[I

    invoke-virtual {v1, v2}, Lnet/frakbot/glowpadbackport/DrawableImpl;->hasState([I)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 41
    invoke-virtual {v1, v2}, Lnet/frakbot/glowpadbackport/DrawableImpl;->setState([I)V

    .line 42
    :cond_17
    iget-boolean v1, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mMagneticTargets:Z

    if-eqz v1, :cond_18

    .line 43
    iget v1, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mWaveCenterX:F

    iget v2, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mWaveCenterY:F

    invoke-direct {v0, v12, v1, v2, v10}, Lnet/frakbot/glowpadbackport/GlowPadView;->updateTargetPosition(IFFF)V

    .line 44
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 45
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 46
    invoke-direct {v0, v12}, Lnet/frakbot/glowpadbackport/GlowPadView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v1

    .line 47
    sget-boolean v2, Lnet/frakbot/glowpadbackport/util/Const;->IS_JB:Z

    if-eqz v2, :cond_19

    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 49
    :cond_19
    iput v12, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mActiveTarget:I

    return-void
.end method

.method private handleUp(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1
    sget-boolean v0, Lnet/frakbot/glowpadbackport/util/Const;->IS_FROYO:Z

    const/4 v1, 0x5

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget v3, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mPointerId:I

    if-ne v2, v3, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-direct {p0, v1, v2, p1}, Lnet/frakbot/glowpadbackport/GlowPadView;->switchToState(IFF)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v1, v0, p1}, Lnet/frakbot/glowpadbackport/GlowPadView;->switchToState(IFF)V

    :cond_1
    :goto_0
    return-void
.end method

.method private hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mGlowAnimations:Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;->cancel()V

    .line 2
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mGlowAnimations:Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;

    iget-object v1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mPointCloud:Lnet/frakbot/glowpadbackport/PointCloud;

    iget-object v1, v1, Lnet/frakbot/glowpadbackport/PointCloud;->glowManager:Lnet/frakbot/glowpadbackport/PointCloud$GlowManager;

    int-to-long v2, p1

    const/16 p1, 0xe

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ease"

    aput-object v5, p1, v4

    sget-object v4, Lnet/frakbot/glowpadbackport/Ease$Quart;->easeOut:Lnet/frakbot/glowpadbackport/util/TimeInterpolator;

    const/4 v5, 0x1

    aput-object v4, p1, v5

    const/4 v4, 0x2

    const-string v5, "delay"

    aput-object v5, p1, v4

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v4, 0x3

    aput-object p2, p1, v4

    const/4 p2, 0x4

    const-string v4, "alpha"

    aput-object v4, p1, p2

    .line 4
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 p3, 0x5

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string p3, "x"

    aput-object p3, p1, p2

    const/4 p2, 0x0

    .line 5
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 p3, 0x7

    aput-object p2, p1, p3

    const/16 p3, 0x8

    const-string v4, "y"

    aput-object v4, p1, p3

    const/16 p3, 0x9

    aput-object p2, p1, p3

    const/16 p2, 0xa

    const-string p3, "onUpdate"

    aput-object p3, p1, p2

    .line 6
    iget-object p2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/16 p3, 0xb

    aput-object p2, p1, p3

    const/16 p2, 0xc

    const-string p3, "onComplete"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    aput-object p4, p1, p2

    .line 7
    invoke-static {v1, v2, v3, p1}, Lnet/frakbot/glowpadbackport/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lnet/frakbot/glowpadbackport/Tweener;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mGlowAnimations:Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;

    invoke-virtual {p1}, Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;->start()V

    return-void
.end method

.method private hideTargets(ZZ)V
    .locals 28

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iget-object v2, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetAnimations:Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;

    invoke-virtual {v2}, Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;->cancel()V

    .line 2
    iput-boolean v1, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mAnimatingTargets:Z

    const/16 v2, 0xc8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/16 v4, 0xc8

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz p2, :cond_2

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_2
    const v5, 0x3f4ccccd    # 0.8f

    .line 3
    :goto_2
    iget-object v6, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 4
    sget-object v7, Lnet/frakbot/glowpadbackport/Ease$Cubic;->easeOut:Lnet/frakbot/glowpadbackport/util/TimeInterpolator;

    const/4 v8, 0x0

    :goto_3
    const-string v10, "onUpdate"

    const-string v13, "delay"

    const/16 v14, 0x8

    const/4 v15, 0x7

    const-string v16, "scaleY"

    const/16 v17, 0x6

    const/16 v18, 0x5

    const-string v19, "scaleX"

    const/16 v20, 0x4

    const/16 v21, 0x0

    const/16 v22, 0x3

    const-string v23, "alpha"

    const/16 v24, 0x2

    const-string v25, "ease"

    const/16 v1, 0xc

    const/16 v26, 0x1

    if-ge v8, v6, :cond_3

    .line 5
    iget-object v9, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/frakbot/glowpadbackport/TargetDrawable;

    .line 6
    sget-object v11, Lnet/frakbot/glowpadbackport/DrawableImpl;->STATE_INACTIVE:[I

    invoke-virtual {v9, v11}, Lnet/frakbot/glowpadbackport/DrawableImpl;->setState([I)V

    .line 7
    iget-object v11, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetAnimations:Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;

    move-object/from16 v27, v13

    int-to-long v12, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v25, v1, v3

    aput-object v7, v1, v26

    aput-object v23, v1, v24

    .line 8
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    aput-object v21, v1, v22

    aput-object v19, v1, v20

    .line 9
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    aput-object v19, v1, v18

    aput-object v16, v1, v17

    .line 10
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v1, v15

    aput-object v27, v1, v14

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v15, 0x9

    aput-object v14, v1, v15

    const/16 v14, 0xa

    aput-object v10, v1, v14

    iget-object v10, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/16 v14, 0xb

    aput-object v10, v1, v14

    .line 12
    invoke-static {v9, v12, v13, v1}, Lnet/frakbot/glowpadbackport/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lnet/frakbot/glowpadbackport/Tweener;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    move-object/from16 v27, v13

    if-eqz p2, :cond_4

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_4
    const/high16 v5, 0x3f000000    # 0.5f

    .line 13
    :goto_4
    iget v6, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mRingScaleFactor:F

    mul-float v5, v5, v6

    .line 14
    iget-object v6, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetAnimations:Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;

    iget-object v8, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mOuterRing:Lnet/frakbot/glowpadbackport/TargetDrawable;

    int-to-long v11, v4

    const/16 v4, 0xe

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v25, v4, v3

    aput-object v7, v4, v26

    aput-object v23, v4, v24

    .line 15
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v4, v22

    aput-object v19, v4, v20

    .line 16
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v4, v18

    aput-object v16, v4, v17

    .line 17
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v4, v15

    aput-object v27, v4, v14

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v4, v3

    const/16 v2, 0xa

    aput-object v10, v4, v2

    iget-object v2, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/16 v3, 0xb

    aput-object v2, v4, v3

    const-string v2, "onComplete"

    aput-object v2, v4, v1

    const/16 v1, 0xd

    iget-object v2, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v2, v4, v1

    .line 19
    invoke-static {v8, v11, v12, v4}, Lnet/frakbot/glowpadbackport/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lnet/frakbot/glowpadbackport/Tweener;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v1, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetAnimations:Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;

    invoke-virtual {v1}, Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;->start()V

    return-void
.end method

.method private hideUnselected(I)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    if-eq v0, p1, :cond_0

    .line 2
    iget-object v1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/frakbot/glowpadbackport/TargetDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/frakbot/glowpadbackport/DrawableImpl;->setAlpha(F)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private highlightSelected(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/frakbot/glowpadbackport/TargetDrawable;

    sget-object v1, Lnet/frakbot/glowpadbackport/DrawableImpl;->STATE_ACTIVE:[I

    invoke-virtual {v0, v1}, Lnet/frakbot/glowpadbackport/DrawableImpl;->setState([I)V

    .line 2
    invoke-direct {p0, p1}, Lnet/frakbot/glowpadbackport/GlowPadView;->hideUnselected(I)V

    return-void
.end method

.method private internalSetTargetResources(I)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lnet/frakbot/glowpadbackport/GlowPadView;->loadDrawableArray(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 3
    iput p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetResourceId:I

    .line 4
    iget-object p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHandleDrawable:Lnet/frakbot/glowpadbackport/HandleDrawable;

    invoke-virtual {p1}, Lnet/frakbot/glowpadbackport/DrawableImpl;->getWidth()I

    move-result p1

    .line 5
    iget-object v1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHandleDrawable:Lnet/frakbot/glowpadbackport/HandleDrawable;

    invoke-virtual {v1}, Lnet/frakbot/glowpadbackport/DrawableImpl;->getHeight()I

    move-result v1

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 7
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/frakbot/glowpadbackport/TargetDrawable;

    .line 8
    invoke-virtual {v4}, Lnet/frakbot/glowpadbackport/DrawableImpl;->getWidth()I

    move-result v5

    invoke-static {p1, v5}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 9
    invoke-virtual {v4}, Lnet/frakbot/glowpadbackport/DrawableImpl;->getHeight()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_0
    iget v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mMaxTargetWidth:I

    if-ne v0, p1, :cond_2

    iget v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mMaxTargetHeight:I

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    iget p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mWaveCenterX:F

    iget v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mWaveCenterY:F

    invoke-direct {p0, p1, v0}, Lnet/frakbot/glowpadbackport/GlowPadView;->updateTargetPositions(FF)V

    .line 12
    iget p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mWaveCenterX:F

    iget v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mWaveCenterY:F

    invoke-direct {p0, p1, v0}, Lnet/frakbot/glowpadbackport/GlowPadView;->updatePointCloudPosition(FF)V

    goto :goto_2

    .line 13
    :cond_2
    :goto_1
    iput p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mMaxTargetWidth:I

    .line 14
    iput v1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mMaxTargetHeight:I

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :goto_2
    return-void
.end method

.method private loadDescriptions(I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_3

    .line 4
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result p1

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-ge v0, p1, :cond_2

    .line 6
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    .line 9
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1
.end method

.method private loadDrawableArray(I)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lnet/frakbot/glowpadbackport/TargetDrawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 5
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    .line 6
    new-instance v6, Lnet/frakbot/glowpadbackport/TargetDrawable;

    if-eqz v5, :cond_0

    iget v5, v5, Landroid/util/TypedValue;->resourceId:I

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    iget v7, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetBackground:I

    iget v8, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHandleSize:I

    invoke-direct {v6, v0, v5, v7, v8}, Lnet/frakbot/glowpadbackport/TargetDrawable;-><init>(Landroid/content/res/Resources;III)V

    .line 7
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2
.end method

.method private replaceTargetDrawables(Landroid/content/res/Resources;II)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    if-nez p3, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    iget-object v1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    .line 3
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/frakbot/glowpadbackport/TargetDrawable;

    if-eqz v4, :cond_1

    .line 4
    invoke-virtual {v4}, Lnet/frakbot/glowpadbackport/TargetDrawable;->getResourceId()I

    move-result v5

    if-ne v5, p2, :cond_1

    .line 5
    iget v3, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetBackground:I

    invoke-virtual {v4, p1, p3, v3}, Lnet/frakbot/glowpadbackport/TargetDrawable;->setDrawable(Landroid/content/res/Resources;II)V

    const/4 v3, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_3
    return v3

    :cond_4
    :goto_1
    return v0
.end method

.method private resolveMeasured(II)I
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_1

    move p2, v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method

.method private setGrabbedState(I)V
    .locals 2

    .line 1
    iget v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mGrabbedState:I

    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lnet/frakbot/glowpadbackport/GlowPadView;->vibrate()V

    .line 3
    :cond_0
    iput p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mGrabbedState:I

    .line 4
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mOnTriggerListener:Lnet/frakbot/glowpadbackport/GlowPadView$OnTriggerListener;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 5
    invoke-interface {v0, p0, v1}, Lnet/frakbot/glowpadbackport/GlowPadView$OnTriggerListener;->onReleased(Landroid/view/View;I)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v0, p0, v1}, Lnet/frakbot/glowpadbackport/GlowPadView$OnTriggerListener;->onGrabbed(Landroid/view/View;I)V

    .line 7
    :goto_0
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mOnTriggerListener:Lnet/frakbot/glowpadbackport/GlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lnet/frakbot/glowpadbackport/GlowPadView$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method private showGlow(IIFLandroid/animation/Animator$AnimatorListener;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mGlowAnimations:Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;->cancel()V

    .line 2
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mGlowAnimations:Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;

    iget-object v1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mPointCloud:Lnet/frakbot/glowpadbackport/PointCloud;

    iget-object v1, v1, Lnet/frakbot/glowpadbackport/PointCloud;->glowManager:Lnet/frakbot/glowpadbackport/PointCloud$GlowManager;

    int-to-long v2, p1

    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ease"

    aput-object v5, p1, v4

    sget-object v4, Lnet/frakbot/glowpadbackport/Ease$Cubic;->easeIn:Lnet/frakbot/glowpadbackport/util/TimeInterpolator;

    const/4 v5, 0x1

    aput-object v4, p1, v5

    const/4 v4, 0x2

    const-string v5, "delay"

    aput-object v5, p1, v4

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v4, 0x3

    aput-object p2, p1, v4

    const/4 p2, 0x4

    const-string v4, "alpha"

    aput-object v4, p1, p2

    .line 4
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 p3, 0x5

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string p3, "onUpdate"

    aput-object p3, p1, p2

    iget-object p2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/4 p3, 0x7

    aput-object p2, p1, p3

    const/16 p2, 0x8

    const-string p3, "onComplete"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    aput-object p4, p1, p2

    .line 5
    invoke-static {v1, v2, v3, p1}, Lnet/frakbot/glowpadbackport/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lnet/frakbot/glowpadbackport/Tweener;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mGlowAnimations:Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;

    invoke-virtual {p1}, Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;->start()V

    return-void
.end method

.method private showTargets(Z)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iget-object v2, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetAnimations:Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;

    invoke-virtual {v2}, Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;->stop()V

    .line 2
    iput-boolean v1, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mAnimatingTargets:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v3, 0x32

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/16 v1, 0xc8

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 3
    :goto_1
    iget-object v4, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_2
    const/16 v6, 0xc

    const-string v8, "onUpdate"

    const-string v11, "delay"

    const/16 v12, 0x8

    const/4 v13, 0x7

    const-string v14, "scaleY"

    const/4 v15, 0x6

    const/16 v16, 0x5

    const-string v17, "scaleX"

    const/16 v18, 0x4

    const/16 v19, 0x3

    const-string v20, "alpha"

    const/16 v21, 0x2

    const-string v22, "ease"

    const/16 v23, 0x1

    const/high16 v24, 0x3f800000    # 1.0f

    if-ge v5, v4, :cond_2

    .line 4
    iget-object v7, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/frakbot/glowpadbackport/TargetDrawable;

    .line 5
    sget-object v9, Lnet/frakbot/glowpadbackport/DrawableImpl;->STATE_INACTIVE:[I

    invoke-virtual {v7, v9}, Lnet/frakbot/glowpadbackport/DrawableImpl;->setState([I)V

    .line 6
    iget-object v9, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetAnimations:Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;

    move-object/from16 v25, v11

    int-to-long v10, v1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v22, v6, v2

    sget-object v22, Lnet/frakbot/glowpadbackport/Ease$Cubic;->easeOut:Lnet/frakbot/glowpadbackport/util/TimeInterpolator;

    aput-object v22, v6, v23

    aput-object v20, v6, v21

    .line 7
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    aput-object v20, v6, v19

    aput-object v17, v6, v18

    .line 8
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    aput-object v17, v6, v16

    aput-object v14, v6, v15

    .line 9
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v6, v13

    aput-object v25, v6, v12

    .line 10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v13, 0x9

    aput-object v12, v6, v13

    const/16 v12, 0xa

    aput-object v8, v6, v12

    iget-object v8, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/16 v12, 0xb

    aput-object v8, v6, v12

    .line 11
    invoke-static {v7, v10, v11, v6}, Lnet/frakbot/glowpadbackport/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lnet/frakbot/glowpadbackport/Tweener;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v25, v11

    .line 12
    iget v4, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mRingScaleFactor:F

    mul-float v4, v4, v24

    .line 13
    iget-object v5, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetAnimations:Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;

    iget-object v7, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mOuterRing:Lnet/frakbot/glowpadbackport/TargetDrawable;

    int-to-long v9, v1

    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v22, v1, v2

    sget-object v2, Lnet/frakbot/glowpadbackport/Ease$Cubic;->easeOut:Lnet/frakbot/glowpadbackport/util/TimeInterpolator;

    aput-object v2, v1, v23

    aput-object v20, v1, v21

    .line 14
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v19

    aput-object v17, v1, v18

    .line 15
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v16

    aput-object v14, v1, v15

    .line 16
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v13

    aput-object v25, v1, v12

    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const/16 v2, 0xa

    aput-object v8, v1, v2

    iget-object v2, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-string v2, "onComplete"

    aput-object v2, v1, v6

    const/16 v2, 0xd

    iget-object v3, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v3, v1, v2

    .line 18
    invoke-static {v7, v9, v10, v1}, Lnet/frakbot/glowpadbackport/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lnet/frakbot/glowpadbackport/Tweener;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v1, v0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetAnimations:Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;

    invoke-virtual {v1}, Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;->start()V

    return-void
.end method

.method private square(F)F
    .locals 0

    mul-float p1, p1, p1

    return p1
.end method

.method private startBackgroundAnimation(IF)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mAlwaysTrackFinger:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mBackgroundAnimator:Lnet/frakbot/glowpadbackport/Tweener;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, v1, Lnet/frakbot/glowpadbackport/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    int-to-long v1, p1

    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "ease"

    aput-object v4, p1, v3

    const/4 v3, 0x1

    .line 5
    sget-object v4, Lnet/frakbot/glowpadbackport/Ease$Cubic;->easeIn:Lnet/frakbot/glowpadbackport/util/TimeInterpolator;

    aput-object v4, p1, v3

    const/4 v3, 0x2

    const-string v4, "alpha"

    aput-object v4, p1, v3

    const/4 v3, 0x3

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float p2, p2, v4

    float-to-int p2, p2

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    const/4 p2, 0x4

    const-string v3, "delay"

    aput-object v3, p1, p2

    const/4 p2, 0x5

    const/16 v3, 0x32

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, p2

    .line 8
    invoke-static {v0, v1, v2, p1}, Lnet/frakbot/glowpadbackport/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lnet/frakbot/glowpadbackport/Tweener;

    move-result-object p1

    iput-object p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mBackgroundAnimator:Lnet/frakbot/glowpadbackport/Tweener;

    .line 9
    iget-object p1, p1, Lnet/frakbot/glowpadbackport/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    return-void
.end method

.method private startWaveAnimation()V
    .locals 7

    .line 1
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mWaveAnimations:Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;->cancel()V

    .line 2
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mPointCloud:Lnet/frakbot/glowpadbackport/PointCloud;

    iget-object v0, v0, Lnet/frakbot/glowpadbackport/PointCloud;->waveManager:Lnet/frakbot/glowpadbackport/PointCloud$WaveManager;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lnet/frakbot/glowpadbackport/PointCloud$WaveManager;->setAlpha(F)V

    .line 3
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mPointCloud:Lnet/frakbot/glowpadbackport/PointCloud;

    iget-object v0, v0, Lnet/frakbot/glowpadbackport/PointCloud;->waveManager:Lnet/frakbot/glowpadbackport/PointCloud$WaveManager;

    iget-object v1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHandleDrawable:Lnet/frakbot/glowpadbackport/HandleDrawable;

    invoke-virtual {v1}, Lnet/frakbot/glowpadbackport/DrawableImpl;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lnet/frakbot/glowpadbackport/PointCloud$WaveManager;->setRadius(F)V

    .line 4
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mWaveAnimations:Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;

    iget-object v1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mPointCloud:Lnet/frakbot/glowpadbackport/PointCloud;

    iget-object v1, v1, Lnet/frakbot/glowpadbackport/PointCloud;->waveManager:Lnet/frakbot/glowpadbackport/PointCloud$WaveManager;

    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ease"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lnet/frakbot/glowpadbackport/Ease$Quad;->easeOut:Lnet/frakbot/glowpadbackport/util/TimeInterpolator;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string v6, "delay"

    aput-object v6, v3, v4

    .line 5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const/4 v4, 0x4

    const-string v5, "radius"

    aput-object v5, v3, v4

    iget v4, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mOuterRadius:F

    mul-float v4, v4, v2

    .line 6
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v3, v4

    const/4 v2, 0x6

    const-string v4, "onUpdate"

    aput-object v4, v3, v2

    iget-object v2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/4 v4, 0x7

    aput-object v2, v3, v4

    const/16 v2, 0x8

    const-string v4, "onComplete"

    aput-object v4, v3, v2

    new-instance v2, Lnet/frakbot/glowpadbackport/GlowPadView$5;

    invoke-direct {v2, p0}, Lnet/frakbot/glowpadbackport/GlowPadView$5;-><init>(Lnet/frakbot/glowpadbackport/GlowPadView;)V

    const/16 v4, 0x9

    aput-object v2, v3, v4

    const-wide/16 v4, 0x1f4

    .line 7
    invoke-static {v1, v4, v5, v3}, Lnet/frakbot/glowpadbackport/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lnet/frakbot/glowpadbackport/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mWaveAnimations:Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;->start()V

    return-void
.end method

.method private stopAndHideWaveAnimation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mWaveAnimations:Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;->cancel()V

    .line 2
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mPointCloud:Lnet/frakbot/glowpadbackport/PointCloud;

    iget-object v0, v0, Lnet/frakbot/glowpadbackport/PointCloud;->waveManager:Lnet/frakbot/glowpadbackport/PointCloud$WaveManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/frakbot/glowpadbackport/PointCloud$WaveManager;->setAlpha(F)V

    return-void
.end method

.method private switchToState(IFF)V
    .locals 4

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 p3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-direct {p0}, Lnet/frakbot/glowpadbackport/GlowPadView;->doFinish()V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHandleDrawable:Lnet/frakbot/glowpadbackport/HandleDrawable;

    invoke-virtual {p1, v0}, Lnet/frakbot/glowpadbackport/DrawableImpl;->setAlpha(F)V

    .line 3
    invoke-direct {p0, v1, v1, v0, p3}, Lnet/frakbot/glowpadbackport/GlowPadView;->showGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHandleDrawable:Lnet/frakbot/glowpadbackport/HandleDrawable;

    invoke-virtual {p1, v0}, Lnet/frakbot/glowpadbackport/DrawableImpl;->setAlpha(F)V

    .line 5
    invoke-direct {p0, v1, v1, p2, p3}, Lnet/frakbot/glowpadbackport/GlowPadView;->showGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHandleDrawable:Lnet/frakbot/glowpadbackport/HandleDrawable;

    invoke-virtual {p1, v0}, Lnet/frakbot/glowpadbackport/DrawableImpl;->setAlpha(F)V

    .line 7
    invoke-direct {p0}, Lnet/frakbot/glowpadbackport/GlowPadView;->deactivateTargets()V

    .line 8
    invoke-direct {p0, v2}, Lnet/frakbot/glowpadbackport/GlowPadView;->showTargets(Z)V

    const/16 p1, 0xc8

    .line 9
    invoke-direct {p0, p1, p2}, Lnet/frakbot/glowpadbackport/GlowPadView;->startBackgroundAnimation(IF)V

    .line 10
    invoke-direct {p0, v2}, Lnet/frakbot/glowpadbackport/GlowPadView;->setGrabbedState(I)V

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 12
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 13
    invoke-direct {p0}, Lnet/frakbot/glowpadbackport/GlowPadView;->announceTargets()V

    goto :goto_0

    .line 14
    :cond_4
    invoke-direct {p0, v1, v0}, Lnet/frakbot/glowpadbackport/GlowPadView;->startBackgroundAnimation(IF)V

    goto :goto_0

    .line 15
    :cond_5
    invoke-direct {p0}, Lnet/frakbot/glowpadbackport/GlowPadView;->deactivateTargets()V

    .line 16
    invoke-direct {p0, v1, v1, v0, p3}, Lnet/frakbot/glowpadbackport/GlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 17
    invoke-direct {p0, v1, v0}, Lnet/frakbot/glowpadbackport/GlowPadView;->startBackgroundAnimation(IF)V

    .line 18
    iget-object p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHandleDrawable:Lnet/frakbot/glowpadbackport/HandleDrawable;

    sget-object p3, Lnet/frakbot/glowpadbackport/DrawableImpl;->STATE_INACTIVE:[I

    invoke-virtual {p1, p3}, Lnet/frakbot/glowpadbackport/DrawableImpl;->setState([I)V

    .line 19
    iget-object p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHandleDrawable:Lnet/frakbot/glowpadbackport/HandleDrawable;

    invoke-virtual {p1, p2}, Lnet/frakbot/glowpadbackport/DrawableImpl;->setAlpha(F)V

    :cond_6
    :goto_0
    return-void
.end method

.method private trySwitchToFirstTouchState(FF)Z
    .locals 4

    .line 1
    iget v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mWaveCenterX:F

    sub-float v0, p1, v0

    .line 2
    iget v1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mWaveCenterY:F

    sub-float v1, p2, v1

    .line 3
    iget-boolean v2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mAlwaysTrackFinger:Z

    if-nez v2, :cond_1

    invoke-direct {p0, v0, v1}, Lnet/frakbot/glowpadbackport/GlowPadView;->dist2(FF)F

    move-result v2

    invoke-direct {p0}, Lnet/frakbot/glowpadbackport/GlowPadView;->getScaledGlowRadiusSquared()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 v2, 0x2

    .line 4
    invoke-direct {p0, v2, p1, p2}, Lnet/frakbot/glowpadbackport/GlowPadView;->switchToState(IFF)V

    .line 5
    invoke-direct {p0, v0, v1}, Lnet/frakbot/glowpadbackport/GlowPadView;->updateGlowPosition(FF)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mDragging:Z

    return p1
.end method

.method private updateGlowPosition(FF)V
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mOuterRing:Lnet/frakbot/glowpadbackport/TargetDrawable;

    invoke-virtual {v0}, Lnet/frakbot/glowpadbackport/DrawableImpl;->getX()F

    move-result v0

    sub-float/2addr p1, v0

    .line 2
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mOuterRing:Lnet/frakbot/glowpadbackport/TargetDrawable;

    invoke-virtual {v0}, Lnet/frakbot/glowpadbackport/DrawableImpl;->getY()F

    move-result v0

    sub-float/2addr p2, v0

    .line 3
    iget v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mRingScaleFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v2, v1, v0

    mul-float v2, v2, p1

    div-float/2addr v1, v0

    mul-float v1, v1, p2

    .line 4
    iget-object p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mPointCloud:Lnet/frakbot/glowpadbackport/PointCloud;

    iget-object p1, p1, Lnet/frakbot/glowpadbackport/PointCloud;->glowManager:Lnet/frakbot/glowpadbackport/PointCloud$GlowManager;

    iget-object p2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mOuterRing:Lnet/frakbot/glowpadbackport/TargetDrawable;

    invoke-virtual {p2}, Lnet/frakbot/glowpadbackport/DrawableImpl;->getX()F

    move-result p2

    add-float/2addr p2, v2

    invoke-virtual {p1, p2}, Lnet/frakbot/glowpadbackport/PointCloud$GlowManager;->setX(F)V

    .line 5
    iget-object p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mPointCloud:Lnet/frakbot/glowpadbackport/PointCloud;

    iget-object p1, p1, Lnet/frakbot/glowpadbackport/PointCloud;->glowManager:Lnet/frakbot/glowpadbackport/PointCloud$GlowManager;

    iget-object p2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mOuterRing:Lnet/frakbot/glowpadbackport/TargetDrawable;

    invoke-virtual {p2}, Lnet/frakbot/glowpadbackport/DrawableImpl;->getY()F

    move-result p2

    add-float/2addr p2, v1

    invoke-virtual {p1, p2}, Lnet/frakbot/glowpadbackport/PointCloud$GlowManager;->setY(F)V

    return-void
.end method

.method private updatePointCloudPosition(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mPointCloud:Lnet/frakbot/glowpadbackport/PointCloud;

    invoke-virtual {v0, p1, p2}, Lnet/frakbot/glowpadbackport/PointCloud;->setCenter(FF)V

    return-void
.end method

.method private updateTargetPosition(IFF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnet/frakbot/glowpadbackport/GlowPadView;->getSliceAngle()F

    move-result v0

    invoke-direct {p0, v0, p1}, Lnet/frakbot/glowpadbackport/GlowPadView;->getAngle(FI)F

    move-result v0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lnet/frakbot/glowpadbackport/GlowPadView;->updateTargetPosition(IFFF)V

    return-void
.end method

.method private updateTargetPosition(IFFF)V
    .locals 5

    .line 3
    invoke-direct {p0}, Lnet/frakbot/glowpadbackport/GlowPadView;->getRingWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 4
    invoke-direct {p0}, Lnet/frakbot/glowpadbackport/GlowPadView;->getRingHeight()F

    move-result v2

    div-float/2addr v2, v1

    if-ltz p1, :cond_0

    .line 5
    iget-object v1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/frakbot/glowpadbackport/TargetDrawable;

    .line 7
    invoke-virtual {p1, p2}, Lnet/frakbot/glowpadbackport/DrawableImpl;->setPositionX(F)V

    .line 8
    invoke-virtual {p1, p3}, Lnet/frakbot/glowpadbackport/DrawableImpl;->setPositionY(F)V

    float-to-double p2, p4

    .line 9
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float p4, v3

    mul-float v0, v0, p4

    invoke-virtual {p1, v0}, Lnet/frakbot/glowpadbackport/DrawableImpl;->setX(F)V

    .line 10
    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    double-to-float p2, p2

    mul-float v2, v2, p2

    invoke-virtual {p1, v2}, Lnet/frakbot/glowpadbackport/DrawableImpl;->setY(F)V

    :cond_0
    return-void
.end method

.method private updateTargetPositions(FF)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lnet/frakbot/glowpadbackport/GlowPadView;->updateTargetPositions(FFZ)V

    return-void
.end method

.method private updateTargetPositions(FFZ)V
    .locals 4

    .line 2
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3
    invoke-direct {p0}, Lnet/frakbot/glowpadbackport/GlowPadView;->getSliceAngle()F

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    if-eqz p3, :cond_0

    .line 4
    iget v3, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mActiveTarget:I

    if-eq v2, v3, :cond_1

    .line 5
    :cond_0
    invoke-direct {p0, v1, v2}, Lnet/frakbot/glowpadbackport/GlowPadView;->getAngle(FI)F

    move-result v3

    invoke-direct {p0, v2, p1, p2, v3}, Lnet/frakbot/glowpadbackport/GlowPadView;->updateTargetPosition(IFFF)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private vibrate()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 3
    iget v1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mVibrationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addOpacity(II)I
    .locals 1

    const v0, 0xffffff

    and-int/2addr p1, v0

    mul-int/lit16 p2, p2, 0xff

    .line 1
    div-int/lit8 p2, p2, 0x64

    shl-int/lit8 p2, p2, 0x18

    or-int/2addr p1, p2

    return p1
.end method

.method public getDirectionDescriptionsResourceId()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mDirectionDescriptionsResourceId:I

    return v0
.end method

.method public getPointsMultiplier()I
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mPointCloud:Lnet/frakbot/glowpadbackport/PointCloud;

    invoke-virtual {v0}, Lnet/frakbot/glowpadbackport/PointCloud;->getPointsMultiplier()I

    move-result v0

    return v0
.end method

.method public getResourceIdForTarget(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/frakbot/glowpadbackport/TargetDrawable;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lnet/frakbot/glowpadbackport/TargetDrawable;->getResourceId()I

    move-result p1

    :goto_0
    return p1
.end method

.method public getScaledSuggestedMinimumHeight()I
    .locals 4

    .line 1
    iget v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mRingScaleFactor:F

    iget-object v1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mOuterRing:Lnet/frakbot/glowpadbackport/TargetDrawable;

    invoke-virtual {v1}, Lnet/frakbot/glowpadbackport/DrawableImpl;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mOuterRadius:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float v1, v1, v0

    iget v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mMaxTargetHeight:I

    int-to-float v0, v0

    add-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method public getScaledSuggestedMinimumWidth()I
    .locals 4

    .line 1
    iget v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mRingScaleFactor:F

    iget-object v1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mOuterRing:Lnet/frakbot/glowpadbackport/TargetDrawable;

    invoke-virtual {v1}, Lnet/frakbot/glowpadbackport/DrawableImpl;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mOuterRadius:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float v1, v1, v0

    iget v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mMaxTargetWidth:I

    int-to-float v0, v0

    add-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method public getSuggestedMinimumHeight()I
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mOuterRing:Lnet/frakbot/glowpadbackport/TargetDrawable;

    invoke-virtual {v0}, Lnet/frakbot/glowpadbackport/DrawableImpl;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mOuterRadius:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mMaxTargetHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getSuggestedMinimumWidth()I
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mOuterRing:Lnet/frakbot/glowpadbackport/TargetDrawable;

    invoke-virtual {v0}, Lnet/frakbot/glowpadbackport/DrawableImpl;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mOuterRadius:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mMaxTargetWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getTargetDescriptionsResourceId()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetDescriptionsResourceId:I

    return v0
.end method

.method public getTargetPosition(I)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/frakbot/glowpadbackport/TargetDrawable;

    .line 3
    invoke-virtual {v1}, Lnet/frakbot/glowpadbackport/TargetDrawable;->getResourceId()I

    move-result v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getTargetResourceId()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetResourceId:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mPointCloud:Lnet/frakbot/glowpadbackport/PointCloud;

    invoke-virtual {v0, p1}, Lnet/frakbot/glowpadbackport/PointCloud;->draw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mOuterRing:Lnet/frakbot/glowpadbackport/TargetDrawable;

    invoke-virtual {v0, p1}, Lnet/frakbot/glowpadbackport/DrawableImpl;->draw(Landroid/graphics/Canvas;)V

    .line 3
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    iget-object v2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/frakbot/glowpadbackport/TargetDrawable;

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v2, p1}, Lnet/frakbot/glowpadbackport/DrawableImpl;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHandleDrawable:Lnet/frakbot/glowpadbackport/HandleDrawable;

    invoke-virtual {v0, p1}, Lnet/frakbot/glowpadbackport/DrawableImpl;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 2
    sget-boolean v1, Lnet/frakbot/glowpadbackport/util/Const;->IS_ICS:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 7
    :goto_0
    invoke-virtual {p0, p1}, Lnet/frakbot/glowpadbackport/GlowPadView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 9
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    :cond_3
    return v2
.end method

.method public onLayout(ZIIII)V
    .locals 1

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 2
    invoke-direct {p0}, Lnet/frakbot/glowpadbackport/GlowPadView;->getRingWidth()F

    move-result p1

    .line 3
    invoke-direct {p0}, Lnet/frakbot/glowpadbackport/GlowPadView;->getRingHeight()F

    move-result p2

    .line 4
    iget p3, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHorizontalInset:I

    int-to-float p3, p3

    int-to-float p4, p4

    iget v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mMaxTargetWidth:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    .line 5
    invoke-static {p4, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p1, p4

    add-float/2addr p1, p3

    .line 6
    iget p3, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mVerticalInset:I

    int-to-float p3, p3

    int-to-float p5, p5

    iget v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mMaxTargetHeight:I

    int-to-float v0, v0

    add-float/2addr v0, p2

    .line 7
    invoke-static {p5, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    div-float/2addr p2, p4

    add-float/2addr p2, p3

    .line 8
    iget-boolean p3, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mInitialLayout:Z

    if-eqz p3, :cond_0

    .line 9
    invoke-direct {p0}, Lnet/frakbot/glowpadbackport/GlowPadView;->stopAndHideWaveAnimation()V

    const/4 p3, 0x0

    .line 10
    invoke-direct {p0, p3, p3}, Lnet/frakbot/glowpadbackport/GlowPadView;->hideTargets(ZZ)V

    .line 11
    iput-boolean p3, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mInitialLayout:Z

    .line 12
    :cond_0
    iget-object p3, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mOuterRing:Lnet/frakbot/glowpadbackport/TargetDrawable;

    invoke-virtual {p3, p1}, Lnet/frakbot/glowpadbackport/DrawableImpl;->setPositionX(F)V

    .line 13
    iget-object p3, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mOuterRing:Lnet/frakbot/glowpadbackport/TargetDrawable;

    invoke-virtual {p3, p2}, Lnet/frakbot/glowpadbackport/DrawableImpl;->setPositionY(F)V

    .line 14
    iget-object p3, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mPointCloud:Lnet/frakbot/glowpadbackport/PointCloud;

    iget p4, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mRingScaleFactor:F

    invoke-virtual {p3, p4}, Lnet/frakbot/glowpadbackport/PointCloud;->setScale(F)V

    .line 15
    iget-object p3, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHandleDrawable:Lnet/frakbot/glowpadbackport/HandleDrawable;

    invoke-virtual {p3, p1}, Lnet/frakbot/glowpadbackport/DrawableImpl;->setPositionX(F)V

    .line 16
    iget-object p3, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHandleDrawable:Lnet/frakbot/glowpadbackport/HandleDrawable;

    invoke-virtual {p3, p2}, Lnet/frakbot/glowpadbackport/DrawableImpl;->setPositionY(F)V

    .line 17
    invoke-direct {p0, p1, p2}, Lnet/frakbot/glowpadbackport/GlowPadView;->updateTargetPositions(FF)V

    .line 18
    invoke-direct {p0, p1, p2}, Lnet/frakbot/glowpadbackport/GlowPadView;->updatePointCloudPosition(FF)V

    .line 19
    invoke-direct {p0, p1, p2}, Lnet/frakbot/glowpadbackport/GlowPadView;->updateGlowPosition(FF)V

    .line 20
    iput p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mWaveCenterX:F

    .line 21
    iput p2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mWaveCenterY:F

    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lnet/frakbot/glowpadbackport/GlowPadView;->getSuggestedMinimumWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lnet/frakbot/glowpadbackport/GlowPadView;->getSuggestedMinimumHeight()I

    move-result v1

    .line 3
    invoke-direct {p0, p1, v0}, Lnet/frakbot/glowpadbackport/GlowPadView;->resolveMeasured(II)I

    move-result p1

    .line 4
    invoke-direct {p0, p2, v1}, Lnet/frakbot/glowpadbackport/GlowPadView;->resolveMeasured(II)I

    move-result p2

    .line 5
    invoke-direct {p0, v0, v1, p1, p2}, Lnet/frakbot/glowpadbackport/GlowPadView;->computeScaleFactor(IIII)F

    move-result v0

    iput v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mRingScaleFactor:F

    .line 6
    invoke-virtual {p0}, Lnet/frakbot/glowpadbackport/GlowPadView;->getScaledSuggestedMinimumWidth()I

    move-result v0

    .line 7
    invoke-virtual {p0}, Lnet/frakbot/glowpadbackport/GlowPadView;->getScaledSuggestedMinimumHeight()I

    move-result v1

    sub-int v0, p1, v0

    sub-int v1, p2, v1

    .line 8
    invoke-direct {p0, v0, v1}, Lnet/frakbot/glowpadbackport/GlowPadView;->computeInsets(II)V

    .line 9
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    sget-boolean v0, Lnet/frakbot/glowpadbackport/util/Const;->IS_FROYO:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-eq v0, v3, :cond_4

    const/4 v3, 0x6

    if-eq v0, v3, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Lnet/frakbot/glowpadbackport/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 5
    invoke-direct {p0, p1}, Lnet/frakbot/glowpadbackport/GlowPadView;->handleCancel(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 6
    :cond_2
    invoke-direct {p0, p1}, Lnet/frakbot/glowpadbackport/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 7
    :cond_3
    invoke-direct {p0, p1}, Lnet/frakbot/glowpadbackport/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 8
    invoke-direct {p0, p1}, Lnet/frakbot/glowpadbackport/GlowPadView;->handleUp(Landroid/view/MotionEvent;)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    .line 9
    :cond_4
    invoke-direct {p0, p1}, Lnet/frakbot/glowpadbackport/GlowPadView;->handleDown(Landroid/view/MotionEvent;)V

    .line 10
    invoke-direct {p0, p1}, Lnet/frakbot/glowpadbackport/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 11
    iget-boolean v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mDragging:Z

    .line 12
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    if-nez v0, :cond_5

    .line 13
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method public ping()V
    .locals 7

    .line 1
    iget v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mFeedbackCount:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mWaveAnimations:Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/frakbot/glowpadbackport/Tweener;

    iget-object v2, v2, Lnet/frakbot/glowpadbackport/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/frakbot/glowpadbackport/Tweener;

    iget-object v1, v1, Lnet/frakbot/glowpadbackport/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v1

    const-wide/16 v4, 0xfa

    cmp-long v6, v1, v4

    if-gez v6, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0}, Lnet/frakbot/glowpadbackport/GlowPadView;->startWaveAnimation()V

    :cond_1
    return-void
.end method

.method public replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 5

    const-string v0, "GlowPadView"

    const/4 v1, 0x0

    if-nez p3, :cond_0

    return v1

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p1, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    .line 3
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_1

    .line 4
    invoke-virtual {v4, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v3

    .line 6
    invoke-direct {p0, v3, p3, p2}, Lnet/frakbot/glowpadbackport/GlowPadView;->replaceTargetDrawables(Landroid/content/res/Resources;II)Z

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v3, "Failed to swap drawable from "

    .line 7
    invoke-static {v3}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p2

    const-string v3, "Failed to swap drawable; "

    .line 10
    invoke-static {v3}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 11
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 13
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p0, p1, p3, p3}, Lnet/frakbot/glowpadbackport/GlowPadView;->replaceTargetDrawables(Landroid/content/res/Resources;II)Z

    :cond_2
    return v1
.end method

.method public reset(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mGlowAnimations:Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;->stop()V

    .line 2
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetAnimations:Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;->stop()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, v1}, Lnet/frakbot/glowpadbackport/GlowPadView;->startBackgroundAnimation(IF)V

    .line 4
    invoke-direct {p0}, Lnet/frakbot/glowpadbackport/GlowPadView;->stopAndHideWaveAnimation()V

    .line 5
    invoke-direct {p0, p1, v0}, Lnet/frakbot/glowpadbackport/GlowPadView;->hideTargets(ZZ)V

    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, v0, v0, v1, p1}, Lnet/frakbot/glowpadbackport/GlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 7
    invoke-static {}, Lnet/frakbot/glowpadbackport/Tweener;->reset()V

    return-void
.end method

.method public resumeAnimations()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mWaveAnimations:Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 2
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetAnimations:Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 3
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mGlowAnimations:Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 4
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mWaveAnimations:Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;->start()V

    .line 5
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetAnimations:Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;->start()V

    .line 6
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mGlowAnimations:Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;->start()V

    return-void
.end method

.method public setDirectionDescriptionsResourceId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mDirectionDescriptionsResourceId:I

    .line 2
    iget-object p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public setEnableTarget(IZ)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/frakbot/glowpadbackport/TargetDrawable;

    .line 3
    invoke-virtual {v1}, Lnet/frakbot/glowpadbackport/TargetDrawable;->getResourceId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 4
    invoke-virtual {v1, p2}, Lnet/frakbot/glowpadbackport/DrawableImpl;->setEnabled(Z)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mGravity:I

    return-void
.end method

.method public setHandleStyle(II)V
    .locals 6

    .line 1
    iget v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHandleStyle:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHandleOpacity:I

    if-eq v0, p2, :cond_3

    .line 2
    :cond_0
    iput p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHandleStyle:I

    .line 3
    iput p2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHandleOpacity:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 5
    iget p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHandleStyle:I

    if-nez p1, :cond_1

    iget p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHandleBackground:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetBackground:I

    :goto_0
    invoke-virtual {p0, p1, p2}, Lnet/frakbot/glowpadbackport/GlowPadView;->addOpacity(II)I

    move-result v3

    .line 6
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHandleDrawable:Lnet/frakbot/glowpadbackport/HandleDrawable;

    iget v2, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHandleResource:I

    iget p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHandleStyle:I

    if-nez p1, :cond_2

    iget p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHandleForeground:I

    move v4, p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    const/4 v4, 0x0

    :goto_1
    iget v5, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mHandleSize:I

    invoke-virtual/range {v0 .. v5}, Lnet/frakbot/glowpadbackport/HandleDrawable;->setDrawable(Landroid/content/res/Resources;IIII)V

    :cond_3
    return-void
.end method

.method public setOnTriggerListener(Lnet/frakbot/glowpadbackport/GlowPadView$OnTriggerListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mOnTriggerListener:Lnet/frakbot/glowpadbackport/GlowPadView$OnTriggerListener;

    return-void
.end method

.method public setPointsMultiplier(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mPointCloud:Lnet/frakbot/glowpadbackport/PointCloud;

    invoke-virtual {v0, p1}, Lnet/frakbot/glowpadbackport/PointCloud;->setPointsMultiplier(I)V

    return-void
.end method

.method public setTargetDescriptionsResourceId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetDescriptionsResourceId:I

    .line 2
    iget-object p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public setTargetResources(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mAnimatingTargets:Z

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mNewTargetResources:I

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lnet/frakbot/glowpadbackport/GlowPadView;->internalSetTargetResources(I)V

    :goto_0
    return-void
.end method

.method public setVibrateEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    :goto_0
    return-void
.end method

.method public suspendAnimations()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mWaveAnimations:Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 2
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mTargetAnimations:Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 3
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView;->mGlowAnimations:Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;->setSuspended(Z)V

    return-void
.end method
