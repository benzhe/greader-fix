.class public Lcom/noinnion/android/reader/widget/SlidingTabLayout$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/reader/widget/SlidingTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/noinnion/android/reader/widget/SlidingTabLayout;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/reader/widget/SlidingTabLayout;Lcom/noinnion/android/reader/widget/SlidingTabLayout$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/reader/widget/SlidingTabLayout$b;->b:Lcom/noinnion/android/reader/widget/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IFI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/reader/widget/SlidingTabLayout$b;->b:Lcom/noinnion/android/reader/widget/SlidingTabLayout;

    .line 2
    iget-object v0, v0, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->l:Ley6;

    .line 3
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/reader/widget/SlidingTabLayout$b;->b:Lcom/noinnion/android/reader/widget/SlidingTabLayout;

    .line 5
    iget-object v0, v0, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->l:Ley6;

    .line 6
    iput p1, v0, Ley6;->j:I

    .line 7
    iput p2, v0, Ley6;->k:F

    .line 8
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 9
    iget-object v0, p0, Lcom/noinnion/android/reader/widget/SlidingTabLayout$b;->b:Lcom/noinnion/android/reader/widget/SlidingTabLayout;

    .line 10
    iget-object v0, v0, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->l:Ley6;

    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    float-to-int v0, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/noinnion/android/reader/widget/SlidingTabLayout$b;->b:Lcom/noinnion/android/reader/widget/SlidingTabLayout;

    .line 14
    invoke-virtual {v1, p1, v0}, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->a(II)V

    .line 15
    iget-object v0, p0, Lcom/noinnion/android/reader/widget/SlidingTabLayout$b;->b:Lcom/noinnion/android/reader/widget/SlidingTabLayout;

    .line 16
    iget-object v0, v0, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->k:Landroidx/viewpager/widget/ViewPager$j;

    if-eqz v0, :cond_2

    .line 17
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$j;->a(IFI)V

    :cond_2
    :goto_1
    return-void
.end method

.method public b(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/noinnion/android/reader/widget/SlidingTabLayout$b;->a:I

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/reader/widget/SlidingTabLayout$b;->b:Lcom/noinnion/android/reader/widget/SlidingTabLayout;

    .line 3
    iget-object v0, v0, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->k:Landroidx/viewpager/widget/ViewPager$j;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$j;->b(I)V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/noinnion/android/reader/widget/SlidingTabLayout$b;->a:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/reader/widget/SlidingTabLayout$b;->b:Lcom/noinnion/android/reader/widget/SlidingTabLayout;

    .line 3
    iget-object v0, v0, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->l:Ley6;

    const/4 v2, 0x0

    .line 4
    iput p1, v0, Ley6;->j:I

    .line 5
    iput v2, v0, Ley6;->k:F

    .line 6
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 7
    iget-object v0, p0, Lcom/noinnion/android/reader/widget/SlidingTabLayout$b;->b:Lcom/noinnion/android/reader/widget/SlidingTabLayout;

    .line 8
    invoke-virtual {v0, p1, v1}, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->a(II)V

    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-object v2, p0, Lcom/noinnion/android/reader/widget/SlidingTabLayout$b;->b:Lcom/noinnion/android/reader/widget/SlidingTabLayout;

    .line 10
    iget-object v2, v2, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->l:Ley6;

    .line 11
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 12
    iget-object v2, p0, Lcom/noinnion/android/reader/widget/SlidingTabLayout$b;->b:Lcom/noinnion/android/reader/widget/SlidingTabLayout;

    .line 13
    iget-object v2, v2, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->l:Ley6;

    .line 14
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne p1, v0, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/noinnion/android/reader/widget/SlidingTabLayout$b;->b:Lcom/noinnion/android/reader/widget/SlidingTabLayout;

    .line 16
    iget-object v0, v0, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->k:Landroidx/viewpager/widget/ViewPager$j;

    if-eqz v0, :cond_3

    .line 17
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$j;->c(I)V

    :cond_3
    return-void
.end method
