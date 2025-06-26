.class public Lcom/noinnion/android/reader/widget/SlidingTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noinnion/android/reader/widget/SlidingTabLayout$c;,
        Lcom/noinnion/android/reader/widget/SlidingTabLayout$b;,
        Lcom/noinnion/android/reader/widget/SlidingTabLayout$d;
    }
.end annotation


# instance fields
.field public e:I

.field public f:I

.field public g:I

.field public h:Z

.field public i:Landroidx/viewpager/widget/ViewPager;

.field public j:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public k:Landroidx/viewpager/widget/ViewPager$j;

.field public final l:Ley6;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/noinnion/android/reader/widget/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/noinnion/android/reader/widget/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->j:Landroid/util/SparseArray;

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p0, p2}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    const/4 p2, 0x1

    .line 6
    invoke-virtual {p0, p2}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x41c00000    # 24.0f

    mul-float p2, p2, p3

    float-to-int p2, p2

    iput p2, p0, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->e:I

    .line 8
    new-instance p2, Ley6;

    invoke-direct {p2, p1}, Ley6;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->l:Ley6;

    const/4 p1, -0x1

    const/4 p3, -0x2

    .line 9
    invoke-virtual {p0, p2, p1, p3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->l:Ley6;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_3

    if-ltz p1, :cond_3

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->l:Ley6;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    if-gtz p1, :cond_1

    if-lez p2, :cond_2

    .line 4
    :cond_1
    iget p1, p0, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->e:I

    sub-int/2addr v0, p1

    :cond_2
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, v0, p1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->i:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->a(II)V

    :cond_0
    return-void
.end method

.method public setContentDescription(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->j:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setCustomTabColorizer(Lcom/noinnion/android/reader/widget/SlidingTabLayout$d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->l:Ley6;

    .line 2
    iput-object p1, v0, Ley6;->l:Lcom/noinnion/android/reader/widget/SlidingTabLayout$d;

    .line 3
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setCustomTabView(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->f:I

    .line 2
    iput p2, p0, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->g:I

    return-void
.end method

.method public setDistributeEvenly(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->h:Z

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->k:Landroidx/viewpager/widget/ViewPager$j;

    return-void
.end method

.method public varargs setSelectedIndicatorColors([I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->l:Ley6;

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Ley6;->l:Lcom/noinnion/android/reader/widget/SlidingTabLayout$d;

    .line 3
    iget-object v1, v0, Ley6;->m:Ley6$b;

    .line 4
    iput-object p1, v1, Ley6$b;->a:[I

    .line 5
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->l:Ley6;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    iput-object p1, p0, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->i:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_6

    .line 3
    new-instance v0, Lcom/noinnion/android/reader/widget/SlidingTabLayout$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/noinnion/android/reader/widget/SlidingTabLayout$b;-><init>(Lcom/noinnion/android/reader/widget/SlidingTabLayout;Lcom/noinnion/android/reader/widget/SlidingTabLayout$a;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$j;)V

    .line 4
    iget-object p1, p0, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->i:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lxi;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/noinnion/android/reader/widget/SlidingTabLayout$c;

    invoke-direct {v0, p0, v1}, Lcom/noinnion/android/reader/widget/SlidingTabLayout$c;-><init>(Lcom/noinnion/android/reader/widget/SlidingTabLayout;Lcom/noinnion/android/reader/widget/SlidingTabLayout$a;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 6
    :goto_0
    invoke-virtual {p1}, Lxi;->c()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 7
    iget v4, p0, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->f:I

    if-eqz v4, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget v5, p0, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->f:I

    iget-object v6, p0, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->l:Ley6;

    invoke-virtual {v4, v5, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 9
    iget v5, p0, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->g:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    goto :goto_1

    :cond_0
    move-object v4, v1

    move-object v5, v4

    :goto_1
    const/4 v6, 0x1

    if-nez v4, :cond_1

    .line 10
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 11
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x11

    .line 12
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v4, 0x2

    const/high16 v8, 0x41400000    # 12.0f

    .line 13
    invoke-virtual {v7, v4, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 14
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 15
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v4, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 17
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v9, 0x101030e

    invoke-virtual {v8, v9, v4, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 18
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 19
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 20
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v8, 0x41800000    # 16.0f

    mul-float v4, v4, v8

    float-to-int v4, v4

    .line 21
    invoke-virtual {v7, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object v4, v7

    :cond_1
    if-nez v5, :cond_2

    .line 22
    const-class v7, Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 23
    move-object v5, v4

    check-cast v5, Landroid/widget/TextView;

    .line 24
    :cond_2
    iget-boolean v7, p0, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->h:Z

    if-eqz v7, :cond_3

    .line 25
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 26
    iput v2, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v8, 0x3f800000    # 1.0f

    .line 27
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 28
    :cond_3
    invoke-virtual {p1, v3}, Lxi;->d(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v5, p0, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->j:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 31
    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 32
    :cond_4
    iget-object v5, p0, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->l:Ley6;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 33
    iget-object v5, p0, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->i:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v5}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v5

    if-ne v3, v5, :cond_5

    .line 34
    invoke-virtual {v4, v6}, Landroid/view/View;->setSelected(Z)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method
