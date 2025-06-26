.class public Lcom/noinnion/android/view/viewpager/FixedViewPager$g;
.super Lv9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/view/viewpager/FixedViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public final synthetic d:Lcom/noinnion/android/view/viewpager/FixedViewPager;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/view/viewpager/FixedViewPager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager$g;->d:Lcom/noinnion/android/view/viewpager/FixedViewPager;

    invoke-direct {p0}, Lv9;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv9;->a:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class p1, Lcom/noinnion/android/view/viewpager/FixedViewPager;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager$g;->d:Lcom/noinnion/android/view/viewpager/FixedViewPager;

    .line 4
    iget-object p1, p1, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lry6;->b()I

    move-result p1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 7
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager$g;->d:Lcom/noinnion/android/view/viewpager/FixedViewPager;

    .line 8
    iget-object p1, p1, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Lry6;->b()I

    move-result p1

    .line 10
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 11
    iget-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager$g;->d:Lcom/noinnion/android/view/viewpager/FixedViewPager;

    .line 12
    iget p1, p1, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    .line 13
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 14
    iget-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager$g;->d:Lcom/noinnion/android/view/viewpager/FixedViewPager;

    .line 15
    iget p1, p1, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    .line 16
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    :cond_1
    return-void
.end method

.method public d(Landroid/view/View;Lsa;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv9;->a:Landroid/view/View$AccessibilityDelegate;

    .line 2
    iget-object v1, p2, Lsa;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3
    invoke-virtual {v0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4
    const-class p1, Lcom/noinnion/android/view/viewpager/FixedViewPager;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v0, p2, Lsa;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager$g;->d:Lcom/noinnion/android/view/viewpager/FixedViewPager;

    .line 7
    iget-object p1, p1, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Lry6;->b()I

    move-result p1

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    iget-object v1, p2, Lsa;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 10
    iget-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager$g;->d:Lcom/noinnion/android/view/viewpager/FixedViewPager;

    invoke-virtual {p1, v0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x1000

    .line 11
    iget-object v0, p2, Lsa;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager$g;->d:Lcom/noinnion/android/view/viewpager/FixedViewPager;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x2000

    .line 13
    iget-object p2, p2, Lsa;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_2
    return-void
.end method

.method public g(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lv9;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    return p3

    :cond_0
    const/16 p1, 0x1000

    const/4 v0, 0x0

    if-eq p2, p1, :cond_3

    const/16 p1, 0x2000

    if-eq p2, p1, :cond_1

    return v0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager$g;->d:Lcom/noinnion/android/view/viewpager/FixedViewPager;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager$g;->d:Lcom/noinnion/android/view/viewpager/FixedViewPager;

    .line 4
    iget p2, p1, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    sub-int/2addr p2, p3

    .line 5
    invoke-virtual {p1, p2}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->setCurrentItem(I)V

    return p3

    :cond_2
    return v0

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager$g;->d:Lcom/noinnion/android/view/viewpager/FixedViewPager;

    invoke-virtual {p1, p3}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    iget-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager$g;->d:Lcom/noinnion/android/view/viewpager/FixedViewPager;

    .line 8
    iget p2, p1, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    add-int/2addr p2, p3

    .line 9
    invoke-virtual {p1, p2}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->setCurrentItem(I)V

    return p3

    :cond_4
    return v0
.end method
