.class public Lcom/noinnion/android/reader/ui/view/WebViewPager;
.super Lcom/noinnion/android/view/viewpager/FixedViewPager;
.source "SourceFile"


# instance fields
.field public m0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/noinnion/android/view/viewpager/FixedViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/noinnion/android/reader/ui/view/WebViewPager;->m0:Z

    return-void
.end method


# virtual methods
.method public e(Landroid/view/View;ZIII)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/noinnion/android/view/ExtendedWebView;

    .line 2
    invoke-super/range {p0 .. p5}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->e(Landroid/view/View;ZIII)Z

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/noinnion/android/reader/ui/view/WebViewPager;->m0:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setPagingDisabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/noinnion/android/reader/ui/view/WebViewPager;->m0:Z

    return-void
.end method
