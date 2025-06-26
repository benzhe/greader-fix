.class public Landroid/support/v4/widget/MultiSwipeRefreshLayout;
.super Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/MultiSwipeRefreshLayout$CanChildScrollUpCallback;
    }
.end annotation


# instance fields
.field private mCanChildScrollUpCallback:Landroid/support/v4/widget/MultiSwipeRefreshLayout$CanChildScrollUpCallback;

.field private mForegroundDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/MultiSwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    sget-object v0, Lcom/noinnion/android/R$styleable;->MultiSwipeRefreshLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    sget p2, Lcom/noinnion/android/R$styleable;->MultiSwipeRefreshLayout_foreground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v4/widget/MultiSwipeRefreshLayout;->mForegroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 6
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public canChildScrollUp()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/widget/MultiSwipeRefreshLayout;->mCanChildScrollUpCallback:Landroid/support/v4/widget/MultiSwipeRefreshLayout$CanChildScrollUpCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Landroid/support/v4/widget/MultiSwipeRefreshLayout$CanChildScrollUpCallback;->canSwipeRefreshChildScrollUp()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Landroid/support/v4/widget/MultiSwipeRefreshLayout;->mForegroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 2
    iget-object p3, p0, Landroid/support/v4/widget/MultiSwipeRefreshLayout;->mForegroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_0

    const/4 p4, 0x0

    .line 3
    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public setCanChildScrollUpCallback(Landroid/support/v4/widget/MultiSwipeRefreshLayout$CanChildScrollUpCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/widget/MultiSwipeRefreshLayout;->mCanChildScrollUpCallback:Landroid/support/v4/widget/MultiSwipeRefreshLayout$CanChildScrollUpCallback;

    return-void
.end method
