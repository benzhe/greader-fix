.class public Lcom/noinnion/android/view/viewpager/FixedViewPager;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noinnion/android/view/viewpager/FixedViewPager$l;,
        Lcom/noinnion/android/view/viewpager/FixedViewPager$f;,
        Lcom/noinnion/android/view/viewpager/FixedViewPager$k;,
        Lcom/noinnion/android/view/viewpager/FixedViewPager$g;,
        Lcom/noinnion/android/view/viewpager/FixedViewPager$SavedState;,
        Lcom/noinnion/android/view/viewpager/FixedViewPager$h;,
        Lcom/noinnion/android/view/viewpager/FixedViewPager$j;,
        Lcom/noinnion/android/view/viewpager/FixedViewPager$i;,
        Lcom/noinnion/android/view/viewpager/FixedViewPager$e;
    }
.end annotation


# static fields
.field public static final i0:[I

.field public static final j0:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/noinnion/android/view/viewpager/FixedViewPager$e;",
            ">;"
        }
    .end annotation
.end field

.field public static final k0:Landroid/view/animation/Interpolator;

.field public static final l0:Lcom/noinnion/android/view/viewpager/FixedViewPager$l;


# instance fields
.field public A:I

.field public B:Z

.field public C:Z

.field public D:I

.field public E:I

.field public F:I

.field public G:F

.field public H:F

.field public I:F

.field public J:F

.field public K:I

.field public L:Landroid/view/VelocityTracker;

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:Lxa;

.field public R:Lxa;

.field public S:Z

.field public T:Z

.field public U:I

.field public V:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/noinnion/android/view/viewpager/FixedViewPager$i;",
            ">;"
        }
    .end annotation
.end field

.field public W:Lcom/noinnion/android/view/viewpager/FixedViewPager$i;

.field public a0:Lcom/noinnion/android/view/viewpager/FixedViewPager$h;

.field public b0:Lcom/noinnion/android/view/viewpager/FixedViewPager$j;

.field public c0:Ljava/lang/reflect/Method;

.field public d0:I

.field public e:I

.field public e0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/noinnion/android/view/viewpager/FixedViewPager$e;",
            ">;"
        }
    .end annotation
.end field

.field public final f0:Ljava/lang/Runnable;

.field public final g:Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

.field public g0:I

.field public final h:Landroid/graphics/Rect;

.field public h0:I

.field public i:Lry6;

.field public j:I

.field public k:I

.field public l:Landroid/os/Parcelable;

.field public m:Ljava/lang/ClassLoader;

.field public n:Landroid/widget/Scroller;

.field public o:Lcom/noinnion/android/view/viewpager/FixedViewPager$k;

.field public p:Z

.field public q:I

.field public r:Landroid/graphics/drawable/Drawable;

.field public s:I

.field public t:I

.field public u:F

.field public v:F

.field public w:I

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    .line 1
    sput-object v0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i0:[I

    .line 2
    new-instance v0, Lcom/noinnion/android/view/viewpager/FixedViewPager$a;

    invoke-direct {v0}, Lcom/noinnion/android/view/viewpager/FixedViewPager$a;-><init>()V

    sput-object v0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j0:Ljava/util/Comparator;

    .line 3
    new-instance v0, Lcom/noinnion/android/view/viewpager/FixedViewPager$b;

    invoke-direct {v0}, Lcom/noinnion/android/view/viewpager/FixedViewPager$b;-><init>()V

    sput-object v0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->k0:Landroid/view/animation/Interpolator;

    .line 4
    new-instance v0, Lcom/noinnion/android/view/viewpager/FixedViewPager$l;

    invoke-direct {v0}, Lcom/noinnion/android/view/viewpager/FixedViewPager$l;-><init>()V

    sput-object v0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->l0:Lcom/noinnion/android/view/viewpager/FixedViewPager$l;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    .line 3
    new-instance p1, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    invoke-direct {p1}, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;-><init>()V

    iput-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->g:Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    .line 4
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->h:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->k:I

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->l:Landroid/os/Parcelable;

    .line 7
    iput-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->m:Ljava/lang/ClassLoader;

    const v0, -0x800001

    .line 8
    iput v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->u:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 9
    iput v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->v:F

    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->A:I

    .line 11
    iput p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->K:I

    .line 12
    iput-boolean v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->S:Z

    .line 13
    new-instance p1, Lcom/noinnion/android/view/viewpager/FixedViewPager$c;

    invoke-direct {p1, p0}, Lcom/noinnion/android/view/viewpager/FixedViewPager$c;-><init>(Lcom/noinnion/android/view/viewpager/FixedViewPager;)V

    iput-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f0:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->g0:I

    .line 15
    iput p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->h0:I

    .line 16
    invoke-virtual {p0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->m()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    .line 19
    new-instance p1, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    invoke-direct {p1}, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;-><init>()V

    iput-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->g:Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    .line 20
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->h:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->k:I

    const/4 p2, 0x0

    .line 22
    iput-object p2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->l:Landroid/os/Parcelable;

    .line 23
    iput-object p2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->m:Ljava/lang/ClassLoader;

    const p2, -0x800001

    .line 24
    iput p2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->u:F

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    .line 25
    iput p2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->v:F

    const/4 p2, 0x1

    .line 26
    iput p2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->A:I

    .line 27
    iput p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->K:I

    .line 28
    iput-boolean p2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->S:Z

    .line 29
    new-instance p1, Lcom/noinnion/android/view/viewpager/FixedViewPager$c;

    invoke-direct {p1, p0}, Lcom/noinnion/android/view/viewpager/FixedViewPager$c;-><init>(Lcom/noinnion/android/view/viewpager/FixedViewPager;)V

    iput-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f0:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->g0:I

    .line 31
    iput p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->h0:I

    .line 32
    invoke-virtual {p0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->m()V

    return-void
.end method

.method public static synthetic a(Lcom/noinnion/android/view/viewpager/FixedViewPager;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->setScrollState(I)V

    return-void
.end method

.method private getClientWidth()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private setScrollState(I)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->g0:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->g0:I

    .line 3
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->b0:Lcom/noinnion/android/view/viewpager/FixedViewPager$j;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    if-eqz v0, :cond_2

    const/4 v4, 0x2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 5
    :goto_2
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    .line 6
    sget-object v7, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    invoke-virtual {v5, v4, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->W:Lcom/noinnion/android/view/viewpager/FixedViewPager$i;

    if-eqz v0, :cond_4

    .line 9
    invoke-interface {v0, p1}, Lcom/noinnion/android/view/viewpager/FixedViewPager$i;->b(I)V

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->V:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_3
    if-ge v1, v0, :cond_6

    .line 12
    iget-object v2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->V:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/noinnion/android/view/viewpager/FixedViewPager$i;

    if-eqz v2, :cond_5

    .line 13
    invoke-interface {v2, p1}, Lcom/noinnion/android/view/viewpager/FixedViewPager$i;->b(I)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->y:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->y:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 6
    invoke-virtual {p0, v3}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j(Landroid/view/View;)Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 7
    iget v4, v4, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->b:I

    iget v5, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    if-ne v4, v5, :cond_0

    .line 8
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x40000

    if-ne v1, p2, :cond_2

    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne v0, p2, :cond_5

    .line 10
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 p2, 0x1

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_4

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    .line 12
    :cond_4
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j(Landroid/view/View;)Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    iget v2, v2, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->b:I

    iget v3, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    if-ne v2, v3, :cond_0

    .line 6
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p3}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p3}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 3
    :cond_0
    move-object v0, p3

    check-cast v0, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;

    .line 4
    iget-boolean v1, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;->a:Z

    or-int/lit8 v1, v1, 0x0

    iput-boolean v1, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;->a:Z

    .line 5
    iget-boolean v2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->x:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;->d:Z

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_0

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add pager decor view during layout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public b(II)Lcom/noinnion/android/view/viewpager/FixedViewPager$e;
    .locals 2

    .line 1
    new-instance v0, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    invoke-direct {v0}, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;-><init>()V

    .line 2
    iput p1, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->b:I

    .line 3
    iget-object v1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    invoke-virtual {v1, p0, p1}, Lry6;->c(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->a:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->d:F

    if-ltz p2, :cond_1

    .line 5
    iget-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object v0
.end method

.method public c(I)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p0, :cond_0

    goto :goto_3

    :cond_0
    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    :goto_0
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    if-ne v3, p0, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    .line 3
    :cond_1
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_4

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    const-string v4, " => "

    .line 7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    :cond_3
    const-string v0, "arrowScroll tried to find focus based on non-child current focused view "

    .line 9
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 10
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ViewPager"

    .line 11
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const/4 v0, 0x0

    .line 12
    :cond_4
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x42

    const/16 v5, 0x11

    if-eqz v3, :cond_8

    if-eq v3, v0, :cond_8

    if-ne p1, v5, :cond_6

    .line 13
    iget-object v2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->h:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 14
    iget-object v4, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->h:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_5

    if-lt v2, v4, :cond_5

    .line 15
    iget v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    if-lez v0, :cond_c

    sub-int/2addr v0, v1

    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->setCurrentItem(IZ)V

    goto :goto_6

    .line 17
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v0

    :goto_4
    move v2, v0

    goto :goto_7

    :cond_6
    if-ne p1, v4, :cond_d

    .line 18
    iget-object v1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->h:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v3}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 19
    iget-object v2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->h:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_7

    if-gt v1, v2, :cond_7

    .line 20
    invoke-virtual {p0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->p()Z

    move-result v0

    goto :goto_4

    .line 21
    :cond_7
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_4

    :cond_8
    if-eq p1, v5, :cond_b

    if-ne p1, v1, :cond_9

    goto :goto_5

    :cond_9
    if-eq p1, v4, :cond_a

    const/4 v0, 0x2

    if-ne p1, v0, :cond_d

    .line 22
    :cond_a
    invoke-virtual {p0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->p()Z

    move-result v2

    goto :goto_7

    .line 23
    :cond_b
    :goto_5
    iget v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    if-lez v0, :cond_c

    sub-int/2addr v0, v1

    .line 24
    invoke-virtual {p0, v0, v1}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->setCurrentItem(IZ)V

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    move v2, v1

    :cond_d
    :goto_7
    if-eqz v2, :cond_e

    .line 25
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    :cond_e
    return v2
.end method

.method public canScrollHorizontally(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->getClientWidth()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    const/4 v3, 0x1

    if-gez p1, :cond_2

    int-to-float p1, v0

    .line 4
    iget v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->u:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    if-le v2, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    if-lez p1, :cond_3

    int-to-float p1, v0

    .line 5
    iget v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->v:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    if-ge v2, p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public computeScroll()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->p:Z

    .line 2
    iget-object v1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->n:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->n:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    .line 5
    iget-object v2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->n:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 6
    iget-object v3, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->n:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 7
    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 8
    invoke-virtual {p0, v2}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->q(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->n:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 11
    :cond_1
    sget-object v0, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void

    .line 13
    :cond_2
    invoke-virtual {p0, v0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f(Z)V

    return-void
.end method

.method public final d(Lcom/noinnion/android/view/viewpager/FixedViewPager$e;ILcom/noinnion/android/view/viewpager/FixedViewPager$e;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    invoke-virtual {v0}, Lry6;->b()I

    move-result v0

    .line 2
    invoke-direct {p0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->getClientWidth()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    iget v2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->q:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p3, :cond_6

    .line 4
    iget v3, p3, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->b:I

    .line 5
    iget v4, p1, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->b:I

    if-ge v3, v4, :cond_3

    const/4 v4, 0x0

    .line 6
    iget v5, p3, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->e:F

    iget p3, p3, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->d:F

    add-float/2addr v5, p3

    add-float/2addr v5, v2

    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 7
    iget p3, p1, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->b:I

    if-gt v3, p3, :cond_6

    iget-object p3, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge v4, p3, :cond_6

    .line 8
    iget-object p3, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    .line 9
    :goto_2
    iget v6, p3, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->b:I

    if-le v3, v6, :cond_1

    iget-object v6, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 10
    iget-object p3, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    goto :goto_2

    .line 11
    :cond_1
    :goto_3
    iget v6, p3, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->b:I

    if-ge v3, v6, :cond_2

    .line 12
    iget-object v6, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-float v6, v1, v2

    add-float/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 13
    :cond_2
    iput v5, p3, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->e:F

    .line 14
    iget p3, p3, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->d:F

    add-float/2addr p3, v2

    add-float/2addr v5, p3

    goto :goto_1

    :cond_3
    if-le v3, v4, :cond_6

    .line 15
    iget-object v4, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 16
    iget p3, p3, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->e:F

    add-int/lit8 v3, v3, -0x1

    .line 17
    :goto_4
    iget v5, p1, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->b:I

    if-lt v3, v5, :cond_6

    if-ltz v4, :cond_6

    .line 18
    iget-object v5, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    .line 19
    :goto_5
    iget v6, v5, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->b:I

    if-ge v3, v6, :cond_4

    if-lez v4, :cond_4

    add-int/lit8 v4, v4, -0x1

    .line 20
    iget-object v5, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    goto :goto_5

    .line 21
    :cond_4
    :goto_6
    iget v6, v5, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->b:I

    if-le v3, v6, :cond_5

    .line 22
    iget-object v6, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-float v6, v1, v2

    sub-float/2addr p3, v6

    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .line 23
    :cond_5
    iget v6, v5, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->d:F

    add-float/2addr v6, v2

    sub-float/2addr p3, v6

    .line 24
    iput p3, v5, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->e:F

    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 25
    :cond_6
    iget-object p3, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 26
    iget v3, p1, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->e:F

    .line 27
    iget v4, p1, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->b:I

    add-int/lit8 v5, v4, -0x1

    if-nez v4, :cond_7

    move v6, v3

    goto :goto_7

    :cond_7
    const v6, -0x800001

    .line 28
    :goto_7
    iput v6, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->u:F

    add-int/lit8 v0, v0, -0x1

    if-ne v4, v0, :cond_8

    .line 29
    iget v4, p1, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->d:F

    add-float/2addr v4, v3

    sub-float/2addr v4, v1

    goto :goto_8

    :cond_8
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    :goto_8
    iput v4, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->v:F

    add-int/lit8 v4, p2, -0x1

    :goto_9
    if-ltz v4, :cond_b

    .line 30
    iget-object v6, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    .line 31
    :goto_a
    iget v7, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->b:I

    if-le v5, v7, :cond_9

    .line 32
    iget-object v7, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    add-int/lit8 v5, v5, -0x1

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-float v7, v1, v2

    sub-float/2addr v3, v7

    goto :goto_a

    .line 33
    :cond_9
    iget v8, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->d:F

    add-float/2addr v8, v2

    sub-float/2addr v3, v8

    .line 34
    iput v3, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->e:F

    if-nez v7, :cond_a

    .line 35
    iput v3, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->u:F

    :cond_a
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_9

    .line 36
    :cond_b
    iget v3, p1, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->e:F

    iget v4, p1, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->d:F

    add-float/2addr v3, v4

    add-float/2addr v3, v2

    .line 37
    iget p1, p1, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->b:I

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    :goto_b
    if-ge p2, p3, :cond_e

    .line 38
    iget-object v4, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    .line 39
    :goto_c
    iget v5, v4, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->b:I

    if-ge p1, v5, :cond_c

    .line 40
    iget-object v5, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    add-int/lit8 p1, p1, 0x1

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-float v5, v1, v2

    add-float/2addr v3, v5

    goto :goto_c

    :cond_c
    if-ne v5, v0, :cond_d

    .line 41
    iget v5, v4, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->d:F

    add-float/2addr v5, v3

    sub-float/2addr v5, v1

    iput v5, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->v:F

    .line 42
    :cond_d
    iput v3, v4, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->e:F

    .line 43
    iget v4, v4, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->d:F

    add-float/2addr v4, v2

    add-float/2addr v3, v4

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_e
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_5

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x15

    if-eq v0, v3, :cond_3

    const/16 v3, 0x16

    if-eq v0, v3, :cond_2

    const/16 v3, 0x3d

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    .line 5
    invoke-virtual {p0, p1}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->c(I)Z

    move-result p1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    invoke-virtual {p0, v2}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->c(I)Z

    move-result p1

    goto :goto_1

    :cond_2
    const/16 p1, 0x42

    .line 8
    invoke-virtual {p0, p1}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->c(I)Z

    move-result p1

    goto :goto_1

    :cond_3
    const/16 p1, 0x11

    .line 9
    invoke-virtual {p0, p1}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->c(I)Z

    move-result p1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 4
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 6
    invoke-virtual {p0, v3}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j(Landroid/view/View;)Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 7
    iget v4, v4, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->b:I

    iget v5, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    if-ne v4, v5, :cond_1

    .line 8
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2
    sget-object v0, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lry6;->b()I

    move-result v0

    if-le v0, v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->Q:Lxa;

    .line 7
    iget-object p1, p1, Lxa;->a:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    .line 8
    iget-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->R:Lxa;

    .line 9
    iget-object p1, p1, Lxa;->a:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    goto/16 :goto_1

    .line 10
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->Q:Lxa;

    .line 11
    iget-object v0, v0, Lxa;->a:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    const/high16 v4, 0x43870000    # 270.0f

    .line 15
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v4, v2

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v4

    int-to-float v4, v5

    iget v5, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->u:F

    int-to-float v6, v3

    mul-float v5, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 17
    iget-object v4, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->Q:Lxa;

    .line 18
    iget-object v4, v4, Lxa;->a:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 19
    iget-object v2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->Q:Lxa;

    .line 20
    iget-object v2, v2, Lxa;->a:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 21
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->R:Lxa;

    .line 23
    iget-object v0, v0, Lxa;->a:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 24
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 25
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    .line 26
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x42b40000    # 90.0f

    .line 27
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 28
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->v:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float v5, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 29
    iget-object v4, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->R:Lxa;

    .line 30
    iget-object v4, v4, Lxa;->a:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v3, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 31
    iget-object v2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->R:Lxa;

    .line 32
    iget-object v2, v2, Lxa;->a:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 33
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_4
    return-void
.end method

.method public drawableStateChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public e(Landroid/view/View;ZIII)Z
    .locals 12

    move-object v0, p1

    .line 1
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 5
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    if-ltz v5, :cond_1

    .line 6
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p4, v3

    .line 7
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_0

    add-int v8, p5, v4

    .line 8
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_0

    const/4 v9, 0x1

    .line 9
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v6, v10

    .line 10
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v11, v8, v6

    move-object v6, p0

    move v8, v9

    move v9, p3

    .line 11
    invoke-virtual/range {v6 .. v11}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->e(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_0

    return v2

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move v1, p3

    neg-int v1, v1

    .line 12
    sget-object v3, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public final f(Z)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->g0:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    invoke-direct {p0, v2}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->setScrollingCacheEnabled(Z)V

    .line 3
    iget-object v3, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->n:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    xor-int/2addr v3, v1

    if-eqz v3, :cond_2

    .line 4
    iget-object v3, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->n:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v4

    .line 7
    iget-object v5, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->n:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 8
    iget-object v6, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->n:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    if-ne v3, v5, :cond_1

    if-eq v4, v6, :cond_2

    .line 9
    :cond_1
    invoke-virtual {p0, v5, v6}, Landroid/view/ViewGroup;->scrollTo(II)V

    if-eq v5, v3, :cond_2

    .line 10
    invoke-virtual {p0, v5}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->q(I)Z

    .line 11
    :cond_2
    iput-boolean v2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->z:Z

    const/4 v3, 0x0

    .line 12
    :goto_1
    iget-object v4, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 13
    iget-object v4, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    .line 14
    iget-boolean v5, v4, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->c:Z

    if-eqz v5, :cond_3

    .line 15
    iput-boolean v2, v4, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->c:Z

    const/4 v0, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    .line 16
    iget-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f0:Ljava/lang/Runnable;

    .line 17
    sget-object v0, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 19
    :cond_5
    iget-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f0:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_6
    :goto_2
    return-void
.end method

.method public g()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    invoke-virtual {v0}, Lry6;->b()I

    move-result v0

    .line 2
    iput v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->e:I

    .line 3
    iget-object v1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->A:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget v1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    const/4 v2, 0x0

    .line 6
    :goto_1
    iget-object v5, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 7
    iget-object v5, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    .line 8
    iget-object v6, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    iget-object v5, v5, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->a:Ljava/lang/Object;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9
    :cond_1
    iget-object v2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    sget-object v5, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j0:Ljava/util/Comparator;

    invoke-static {v2, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_3

    .line 11
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 12
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;

    .line 13
    iget-boolean v6, v5, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;->a:Z

    if-nez v6, :cond_2

    const/4 v6, 0x0

    .line 14
    iput v6, v5, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;->c:F

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 15
    :cond_3
    invoke-virtual {p0, v1, v4, v3, v4}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->x(IZZI)V

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_4
    return-void
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;

    invoke-direct {v0}, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getAdapter()Lry6;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    return-object v0
.end method

.method public getChildDrawingOrder(II)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->d0:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    sub-int p2, p1, p2

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->e0:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;

    iget p1, p1, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;->f:I

    return p1
.end method

.method public getCurrentItem()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->A:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->q:I

    return v0
.end method

.method public final h(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->W:Lcom/noinnion/android/view/viewpager/FixedViewPager$i;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/noinnion/android/view/viewpager/FixedViewPager$i;->c(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->V:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 5
    iget-object v2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->V:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/noinnion/android/view/viewpager/FixedViewPager$i;

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v2, p1}, Lcom/noinnion/android/view/viewpager/FixedViewPager$i;->c(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final i(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1

    .line 3
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 7
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 8
    :goto_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    if-eq p2, p0, :cond_2

    .line 9
    check-cast p2, Landroid/view/ViewGroup;

    .line 10
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 11
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 12
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 13
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 14
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public j(Landroid/view/View;)Lcom/noinnion/android/view/viewpager/FixedViewPager$e;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    .line 3
    iget-object v2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    iget-object v3, v1, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lry6;->d(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final k()Lcom/noinnion/android/view/viewpager/FixedViewPager$e;
    .locals 12

    .line 1
    invoke-direct {p0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->getClientWidth()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-lez v0, :cond_1

    .line 3
    iget v3, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->q:I

    int-to-float v3, v3

    int-to-float v0, v0

    div-float/2addr v3, v0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 4
    :goto_2
    iget-object v10, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_7

    .line 5
    iget-object v10, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    if-nez v9, :cond_2

    .line 6
    iget v11, v10, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->b:I

    add-int/2addr v7, v6

    if-eq v11, v7, :cond_2

    .line 7
    iget-object v10, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->g:Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    add-float/2addr v1, v5

    add-float/2addr v1, v3

    .line 8
    iput v1, v10, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->e:F

    .line 9
    iput v7, v10, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->b:I

    .line 10
    iget-object v1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v10, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->d:F

    add-int/lit8 v8, v8, -0x1

    .line 11
    :cond_2
    iget v1, v10, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->e:F

    .line 12
    iget v5, v10, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->d:F

    add-float/2addr v5, v1

    add-float/2addr v5, v3

    if-nez v9, :cond_4

    cmpl-float v7, v2, v1

    if-ltz v7, :cond_3

    goto :goto_3

    :cond_3
    return-object v0

    :cond_4
    :goto_3
    cmpg-float v0, v2, v5

    if-ltz v0, :cond_6

    .line 13
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v6

    if-ne v8, v0, :cond_5

    goto :goto_4

    .line 14
    :cond_5
    iget v7, v10, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->b:I

    .line 15
    iget v5, v10, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->d:F

    add-int/lit8 v8, v8, 0x1

    move-object v0, v10

    const/4 v9, 0x0

    goto :goto_2

    :cond_6
    :goto_4
    return-object v10

    :cond_7
    return-object v0
.end method

.method public l(I)Lcom/noinnion/android/view/viewpager/FixedViewPager$e;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    .line 3
    iget v2, v1, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->b:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public m()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    const/high16 v0, 0x40000

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 5
    new-instance v2, Landroid/widget/Scroller;

    sget-object v3, Lcom/noinnion/android/view/viewpager/FixedViewPager;->k0:Landroid/view/animation/Interpolator;

    invoke-direct {v2, v1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->n:Landroid/widget/Scroller;

    .line 6
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 8
    sget-object v4, Lla;->a:Ljava/lang/reflect/Method;

    .line 9
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v4

    .line 10
    iput v4, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->F:I

    const/high16 v4, 0x43c80000    # 400.0f

    mul-float v4, v4, v3

    float-to-int v4, v4

    .line 11
    iput v4, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->M:I

    .line 12
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->N:I

    .line 13
    new-instance v2, Lxa;

    invoke-direct {v2, v1}, Lxa;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->Q:Lxa;

    .line 14
    new-instance v2, Lxa;

    invoke-direct {v2, v1}, Lxa;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->R:Lxa;

    const/high16 v1, 0x41c80000    # 25.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    .line 15
    iput v1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->O:I

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    .line 16
    iput v1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->P:I

    const/high16 v1, 0x41800000    # 16.0f

    mul-float v3, v3, v1

    float-to-int v1, v3

    .line 17
    iput v1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->D:I

    .line 18
    new-instance v1, Lcom/noinnion/android/view/viewpager/FixedViewPager$g;

    invoke-direct {v1, p0}, Lcom/noinnion/android/view/viewpager/FixedViewPager$g;-><init>(Lcom/noinnion/android/view/viewpager/FixedViewPager;)V

    invoke-static {p0, v1}, Lha;->s(Landroid/view/View;Lv9;)V

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 21
    :cond_0
    new-instance v0, Lcom/noinnion/android/view/viewpager/FixedViewPager$d;

    invoke-direct {v0, p0}, Lcom/noinnion/android/view/viewpager/FixedViewPager$d;-><init>(Lcom/noinnion/android/view/viewpager/FixedViewPager;)V

    invoke-static {p0, v0}, Lha;->t(Landroid/view/View;Lea;)V

    return-void
.end method

.method public n(IFI)V
    .locals 12

    .line 1
    iget v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->U:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_5

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_5

    .line 7
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 8
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;

    .line 9
    iget-boolean v10, v9, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;->a:Z

    if-nez v10, :cond_0

    goto :goto_3

    .line 10
    :cond_0
    iget v9, v9, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;->b:I

    and-int/lit8 v9, v9, 0x7

    if-eq v9, v2, :cond_3

    const/4 v10, 0x3

    if-eq v9, v10, :cond_2

    const/4 v10, 0x5

    if-eq v9, v10, :cond_1

    move v9, v3

    goto :goto_2

    :cond_1
    sub-int v9, v5, v4

    .line 11
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v9, v10

    .line 12
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v4, v10

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v3

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int v9, v5, v9

    div-int/lit8 v9, v9, 0x2

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    :goto_1
    move v11, v9

    move v9, v3

    move v3, v11

    :goto_2
    add-int/2addr v3, v0

    .line 15
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int/2addr v3, v10

    if-eqz v3, :cond_4

    .line 16
    invoke-virtual {v8, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_4
    move v3, v9

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 17
    :cond_5
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->W:Lcom/noinnion/android/view/viewpager/FixedViewPager$i;

    if-eqz v0, :cond_6

    .line 18
    invoke-interface {v0, p1, p2, p3}, Lcom/noinnion/android/view/viewpager/FixedViewPager$i;->a(IFI)V

    .line 19
    :cond_6
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->V:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 20
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_8

    .line 21
    iget-object v4, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->V:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/noinnion/android/view/viewpager/FixedViewPager$i;

    if-eqz v4, :cond_7

    .line 22
    invoke-interface {v4, p1, p2, p3}, Lcom/noinnion/android/view/viewpager/FixedViewPager$i;->a(IFI)V

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 23
    :cond_8
    iget-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->b0:Lcom/noinnion/android/view/viewpager/FixedViewPager$j;

    if-eqz p1, :cond_a

    .line 24
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    .line 25
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    :goto_5
    if-ge v1, p2, :cond_a

    .line 26
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 27
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;

    .line 28
    iget-boolean v0, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;->a:Z

    if-eqz v0, :cond_9

    goto :goto_6

    .line 29
    :cond_9
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, p1

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->getClientWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 30
    iget-object v3, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->b0:Lcom/noinnion/android/view/viewpager/FixedViewPager$j;

    invoke-interface {v3, p3, v0}, Lcom/noinnion/android/view/viewpager/FixedViewPager$j;->a(Landroid/view/View;F)V

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 31
    :cond_a
    iput-boolean v2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->T:Z

    return-void
.end method

.method public final o(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 3
    iget v2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->K:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 5
    iput v1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->G:F

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 7
    iput p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->K:I

    .line 8
    iget-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->L:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->S:Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f0:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->n:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->n:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget v1, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->q:I

    if-lez v1, :cond_4

    iget-object v1, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    if-eqz v1, :cond_4

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    .line 5
    iget v3, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->q:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 6
    iget-object v5, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    .line 7
    iget v7, v5, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->e:F

    .line 8
    iget-object v8, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 9
    iget v9, v5, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->b:I

    .line 10
    iget-object v10, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    add-int/lit8 v11, v8, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    iget v10, v10, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->b:I

    :goto_0
    if-ge v9, v10, :cond_4

    .line 11
    :goto_1
    iget v11, v5, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->b:I

    if-le v9, v11, :cond_0

    if-ge v6, v8, :cond_0

    .line 12
    iget-object v5, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    goto :goto_1

    :cond_0
    if-ne v9, v11, :cond_1

    .line 13
    iget v7, v5, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->e:F

    iget v11, v5, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->d:F

    add-float v12, v7, v11

    mul-float v12, v12, v4

    add-float/2addr v7, v11

    add-float/2addr v7, v3

    goto :goto_2

    .line 14
    :cond_1
    iget-object v11, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v11, 0x3f800000    # 1.0f

    add-float v12, v7, v11

    mul-float v12, v12, v4

    add-float/2addr v11, v3

    add-float/2addr v11, v7

    move v7, v11

    .line 15
    :goto_2
    iget v11, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->q:I

    int-to-float v13, v11

    add-float/2addr v13, v12

    int-to-float v14, v1

    cmpl-float v13, v13, v14

    if-lez v13, :cond_2

    .line 16
    iget-object v13, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->r:Landroid/graphics/drawable/Drawable;

    float-to-int v14, v12

    iget v15, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->s:I

    int-to-float v11, v11

    add-float/2addr v11, v12

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v11, v11, v16

    float-to-int v11, v11

    move/from16 v16, v3

    iget v3, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->t:I

    invoke-virtual {v13, v14, v15, v11, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 17
    iget-object v3, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->r:Landroid/graphics/drawable/Drawable;

    move-object/from16 v11, p1

    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_2
    move-object/from16 v11, p1

    move/from16 v16, v3

    :goto_3
    add-int v3, v1, v2

    int-to-float v3, v3

    cmpl-float v3, v12, v3

    if-lez v3, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v16

    goto :goto_0

    :cond_4
    :goto_4
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v8, 0x0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    const/4 v9, 0x1

    if-ne v0, v9, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz v0, :cond_2

    .line 2
    iget-boolean v1, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager;->B:Z

    if-eqz v1, :cond_1

    return v9

    .line 3
    :cond_1
    iget-boolean v1, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager;->C:Z

    if-eqz v1, :cond_2

    return v8

    :cond_2
    const/4 v1, 0x2

    if-eqz v0, :cond_d

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    goto/16 :goto_3

    .line 4
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->o(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 5
    :cond_4
    iget v0, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager;->K:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    goto/16 :goto_3

    .line 6
    :cond_5
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 7
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    .line 8
    iget v1, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager;->G:F

    sub-float v1, v10, v1

    .line 9
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 10
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    .line 11
    iget v0, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager;->J:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/4 v0, 0x0

    cmpl-float v14, v1, v0

    if-eqz v14, :cond_9

    .line 12
    iget v2, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager;->G:F

    .line 13
    iget v3, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager;->E:I

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_6

    if-gtz v14, :cond_7

    :cond_6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    iget v4, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager;->E:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    cmpg-float v0, v1, v0

    if-gez v0, :cond_8

    :cond_7
    const/4 v0, 0x1

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_9

    const/4 v2, 0x0

    float-to-int v3, v1

    float-to-int v4, v10

    float-to-int v5, v12

    move-object v0, p0

    move-object v1, p0

    .line 14
    invoke-virtual/range {v0 .. v5}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->e(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 15
    iput v10, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager;->G:F

    .line 16
    iput v12, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager;->H:F

    .line 17
    iput-boolean v9, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager;->C:Z

    return v8

    .line 18
    :cond_9
    iget v0, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager;->F:I

    int-to-float v1, v0

    cmpl-float v1, v11, v1

    if-lez v1, :cond_b

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v11, v11, v1

    cmpl-float v1, v11, v13

    if-lez v1, :cond_b

    .line 19
    iput-boolean v9, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager;->B:Z

    .line 20
    invoke-virtual {p0, v9}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->u(Z)V

    .line 21
    invoke-direct {p0, v9}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->setScrollState(I)V

    .line 22
    iget v0, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager;->I:F

    iget v1, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager;->F:I

    int-to-float v1, v1

    if-lez v14, :cond_a

    add-float/2addr v0, v1

    goto :goto_1

    :cond_a
    sub-float/2addr v0, v1

    :goto_1
    iput v0, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager;->G:F

    .line 23
    iput v12, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager;->H:F

    .line 24
    invoke-direct {p0, v9}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_2

    :cond_b
    int-to-float v0, v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_c

    .line 25
    iput-boolean v9, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager;->C:Z

    .line 26
    :cond_c
    :goto_2
    iget-boolean v0, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager;->B:Z

    if-eqz v0, :cond_f

    .line 27
    invoke-virtual {p0, v10}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->r(F)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 28
    sget-object v0, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    goto :goto_3

    .line 30
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager;->I:F

    iput v0, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager;->G:F

    .line 31
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager;->J:F

    iput v0, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager;->H:F

    .line 32
    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 33
    iput v0, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager;->K:I

    .line 34
    iput-boolean v8, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager;->C:Z

    .line 35
    iput-boolean v9, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager;->p:Z

    .line 36
    iget-object v0, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager;->n:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 37
    iget v0, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager;->g0:I

    if-ne v0, v1, :cond_e

    iget-object v0, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager;->n:Landroid/widget/Scroller;

    .line 38
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager;->n:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager;->P:I

    if-le v0, v1, :cond_e

    .line 39
    iget-object v0, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager;->n:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 40
    iput-boolean v8, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager;->z:Z

    .line 41
    iget v0, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    invoke-virtual {p0, v0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->s(I)V

    .line 42
    iput-boolean v9, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager;->B:Z

    .line 43
    invoke-virtual {p0, v9}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->u(Z)V

    .line 44
    invoke-direct {p0, v9}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->setScrollState(I)V

    goto :goto_3

    .line 45
    :cond_e
    invoke-virtual {p0, v8}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f(Z)V

    .line 46
    iput-boolean v8, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager;->B:Z

    .line 47
    :cond_f
    :goto_3
    iget-object v0, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager;->L:Landroid/view/VelocityTracker;

    if-nez v0, :cond_10

    .line 48
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager;->L:Landroid/view/VelocityTracker;

    .line 49
    :cond_10
    iget-object v0, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager;->L:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 50
    iget-boolean v0, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager;->B:Z

    return v0

    .line 51
    :cond_11
    :goto_4
    invoke-virtual {p0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->v()Z

    return v8
.end method

.method public onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v7

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    const/16 v12, 0x8

    if-ge v10, v1, :cond_7

    .line 7
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 8
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v12, :cond_6

    .line 9
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;

    .line 10
    iget-boolean v14, v12, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;->a:Z

    if-eqz v14, :cond_6

    .line 11
    iget v12, v12, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;->b:I

    and-int/lit8 v14, v12, 0x7

    and-int/lit8 v12, v12, 0x70

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    const/4 v15, 0x3

    if-eq v14, v15, :cond_1

    const/4 v15, 0x5

    if-eq v14, v15, :cond_0

    move v14, v4

    goto :goto_2

    :cond_0
    sub-int v14, v2, v6

    .line 12
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int/2addr v14, v15

    .line 13
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v6, v15

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v4

    goto :goto_2

    .line 15
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v2, v14

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v14

    :goto_1
    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    :goto_2
    const/16 v15, 0x10

    if-eq v12, v15, :cond_5

    const/16 v15, 0x30

    if-eq v12, v15, :cond_4

    const/16 v15, 0x50

    if-eq v12, v15, :cond_3

    move v12, v5

    goto :goto_4

    :cond_3
    sub-int v12, v3, v7

    .line 16
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v12, v15

    .line 17
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v7, v15

    goto :goto_3

    .line 18
    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v5

    goto :goto_4

    .line 19
    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int v12, v3, v12

    div-int/lit8 v12, v12, 0x2

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    :goto_3
    move/from16 v17, v12

    move v12, v5

    move/from16 v5, v17

    :goto_4
    add-int/2addr v4, v8

    .line 20
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v4

    .line 21
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v9, v16, v5

    .line 22
    invoke-virtual {v13, v4, v5, v15, v9}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v11, v11, 0x1

    move v5, v12

    move v4, v14

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_7
    sub-int/2addr v2, v4

    sub-int/2addr v2, v6

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v1, :cond_a

    .line 23
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 24
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v12, :cond_9

    .line 25
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;

    .line 26
    iget-boolean v10, v9, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;->a:Z

    if-nez v10, :cond_9

    invoke-virtual {v0, v8}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j(Landroid/view/View;)Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    move-result-object v10

    if-eqz v10, :cond_9

    int-to-float v13, v2

    .line 27
    iget v10, v10, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->e:F

    mul-float v10, v10, v13

    float-to-int v10, v10

    add-int/2addr v10, v4

    .line 28
    iget-boolean v14, v9, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;->d:Z

    if-eqz v14, :cond_8

    const/4 v14, 0x0

    .line 29
    iput-boolean v14, v9, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;->d:Z

    .line 30
    iget v9, v9, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;->c:F

    mul-float v13, v13, v9

    float-to-int v9, v13

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v9, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    sub-int v14, v3, v5

    sub-int/2addr v14, v7

    .line 31
    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 32
    invoke-virtual {v8, v9, v13}, Landroid/view/View;->measure(II)V

    .line 33
    :cond_8
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v10

    .line 34
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v5

    .line 35
    invoke-virtual {v8, v10, v5, v9, v13}, Landroid/view/View;->layout(IIII)V

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 36
    :cond_a
    iput v5, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->s:I

    sub-int/2addr v3, v7

    .line 37
    iput v3, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->t:I

    .line 38
    iput v11, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->U:I

    .line 39
    iget-boolean v1, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->S:Z

    if-eqz v1, :cond_b

    .line 40
    iget v1, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->w(IZIZ)V

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    .line 41
    :goto_6
    iput-boolean v2, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->S:Z

    return-void
.end method

.method public onMeasure(II)V
    .locals 13

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p1}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result p1

    .line 2
    invoke-static {v0, p2}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result p2

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    .line 5
    div-int/lit8 p2, p1, 0xa

    .line 6
    iget v1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->D:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->E:I

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p2, v1

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    const/4 v4, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    if-ge v2, v1, :cond_c

    .line 10
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 11
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v3, :cond_b

    .line 12
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;

    if-eqz v3, :cond_b

    .line 13
    iget-boolean v7, v3, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;->a:Z

    if-eqz v7, :cond_b

    .line 14
    iget v7, v3, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;->b:I

    and-int/lit8 v8, v7, 0x7

    and-int/lit8 v7, v7, 0x70

    const/16 v9, 0x30

    if-eq v7, v9, :cond_1

    const/16 v9, 0x50

    if-ne v7, v9, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v7, 0x1

    :goto_2
    const/4 v9, 0x3

    if-eq v8, v9, :cond_3

    const/4 v9, 0x5

    if-ne v8, v9, :cond_2

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :cond_3
    :goto_3
    const/high16 v8, -0x80000000

    if-eqz v7, :cond_4

    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_4

    :cond_4
    if-eqz v4, :cond_5

    const/high16 v9, 0x40000000    # 2.0f

    goto :goto_5

    :cond_5
    :goto_4
    const/high16 v9, -0x80000000

    .line 15
    :goto_5
    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v11, -0x1

    const/4 v12, -0x2

    if-eq v10, v12, :cond_7

    if-eq v10, v11, :cond_6

    goto :goto_6

    :cond_6
    move v10, p1

    :goto_6
    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_7

    :cond_7
    move v10, p1

    .line 16
    :goto_7
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v12, :cond_9

    if-eq v3, v11, :cond_8

    goto :goto_8

    :cond_8
    move v3, p2

    goto :goto_8

    :cond_9
    move v3, p2

    move v5, v9

    .line 17
    :goto_8
    invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 18
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 19
    invoke-virtual {v6, v8, v3}, Landroid/view/View;->measure(II)V

    if-eqz v7, :cond_a

    .line 20
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr p2, v3

    goto :goto_9

    :cond_a
    if-eqz v4, :cond_b

    .line 21
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr p1, v3

    :cond_b
    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 22
    :cond_c
    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 23
    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iput p2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->w:I

    .line 24
    iput-boolean v4, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->x:Z

    .line 25
    iget p2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    invoke-virtual {p0, p2}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->s(I)V

    .line 26
    iput-boolean v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->x:Z

    .line 27
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    :goto_a
    if-ge v0, p2, :cond_f

    .line 28
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_e

    .line 30
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;

    if-eqz v2, :cond_d

    .line 31
    iget-boolean v4, v2, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;->a:Z

    if-nez v4, :cond_e

    :cond_d
    int-to-float v4, p1

    .line 32
    iget v2, v2, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;->c:F

    mul-float v4, v4, v2

    float-to-int v2, v4

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 33
    iget v4, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->w:I

    invoke-virtual {v1, v2, v4}, Landroid/view/View;->measure(II)V

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_f
    return-void
.end method

.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v3, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    :goto_0
    if-eq v0, v3, :cond_2

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 4
    invoke-virtual {p0, v5}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j(Landroid/view/View;)Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 5
    iget v6, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->b:I

    iget v7, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    if-ne v6, v7, :cond_1

    .line 6
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v4

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/noinnion/android/view/viewpager/FixedViewPager$SavedState;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/noinnion/android/view/viewpager/FixedViewPager$SavedState;

    .line 4
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    if-eqz v0, :cond_1

    .line 6
    iget p1, p1, Lcom/noinnion/android/view/viewpager/FixedViewPager$SavedState;->e:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, p1, v1, v0, v1}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->x(IZZI)V

    goto :goto_0

    .line 8
    :cond_1
    iget v0, p1, Lcom/noinnion/android/view/viewpager/FixedViewPager$SavedState;->e:I

    iput v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->k:I

    .line 9
    iget-object v0, p1, Lcom/noinnion/android/view/viewpager/FixedViewPager$SavedState;->f:Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->l:Landroid/os/Parcelable;

    .line 10
    iget-object p1, p1, Lcom/noinnion/android/view/viewpager/FixedViewPager$SavedState;->g:Ljava/lang/ClassLoader;

    iput-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->m:Ljava/lang/ClassLoader;

    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/noinnion/android/view/viewpager/FixedViewPager$SavedState;

    invoke-direct {v1, v0}, Lcom/noinnion/android/view/viewpager/FixedViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    iput v0, v1, Lcom/noinnion/android/view/viewpager/FixedViewPager$SavedState;->e:I

    .line 4
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    if-eqz v0, :cond_0

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/noinnion/android/view/viewpager/FixedViewPager$SavedState;->f:Landroid/os/Parcelable;

    :cond_0
    return-object v1
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    .line 2
    iget p2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->q:I

    invoke-virtual {p0, p1, p3, p2, p2}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->t(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lry6;->b()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->L:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    .line 4
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->L:Landroid/view/VelocityTracker;

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->L:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    const/4 v3, -0x1

    if-eq v0, v2, :cond_a

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    const/4 v3, 0x5

    if-eq v0, v3, :cond_4

    const/4 v3, 0x6

    if-eq v0, v3, :cond_3

    goto/16 :goto_3

    .line 7
    :cond_3
    invoke-virtual {p0, p1}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->o(Landroid/view/MotionEvent;)V

    .line 8
    iget v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->K:I

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 11
    iput p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->G:F

    goto/16 :goto_3

    .line 12
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 14
    iput v3, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->G:F

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 16
    iput p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->K:I

    goto/16 :goto_3

    .line 17
    :cond_5
    iget-boolean p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->B:Z

    if-eqz p1, :cond_11

    .line 18
    iget p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    invoke-virtual {p0, p1, v2, v1, v1}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->w(IZIZ)V

    .line 19
    invoke-virtual {p0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->v()Z

    move-result v1

    goto/16 :goto_3

    .line 20
    :cond_6
    iget-boolean v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->B:Z

    if-nez v0, :cond_9

    .line 21
    iget v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->K:I

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 23
    invoke-virtual {p0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->v()Z

    move-result v1

    goto/16 :goto_3

    .line 24
    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 25
    iget v4, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->G:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 27
    iget v5, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->H:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 28
    iget v6, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->F:I

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_9

    cmpl-float v4, v4, v5

    if-lez v4, :cond_9

    .line 29
    iput-boolean v2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->B:Z

    .line 30
    invoke-virtual {p0, v2}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->u(Z)V

    .line 31
    iget v4, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->I:F

    sub-float/2addr v3, v4

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_8

    iget v3, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->F:I

    int-to-float v3, v3

    add-float/2addr v4, v3

    goto :goto_0

    :cond_8
    iget v3, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->F:I

    int-to-float v3, v3

    sub-float/2addr v4, v3

    :goto_0
    iput v4, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->G:F

    .line 32
    iput v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->H:F

    .line 33
    invoke-direct {p0, v2}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->setScrollState(I)V

    .line 34
    invoke-direct {p0, v2}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->setScrollingCacheEnabled(Z)V

    .line 35
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 36
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 37
    :cond_9
    iget-boolean v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->B:Z

    if-eqz v0, :cond_11

    .line 38
    iget v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->K:I

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 41
    invoke-virtual {p0, p1}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->r(F)Z

    move-result p1

    or-int/2addr v1, p1

    goto/16 :goto_3

    .line 42
    :cond_a
    iget-boolean v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->B:Z

    if-eqz v0, :cond_11

    .line 43
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->L:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    .line 44
    iget v5, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->N:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 45
    iget v4, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->K:I

    .line 46
    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    .line 47
    iput-boolean v2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->z:Z

    .line 48
    invoke-direct {p0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->getClientWidth()I

    move-result v4

    .line 49
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v5

    .line 50
    invoke-virtual {p0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->k()Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    move-result-object v6

    if-nez v6, :cond_b

    goto/16 :goto_3

    .line 51
    :cond_b
    iget v7, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->b:I

    int-to-float v5, v5

    int-to-float v4, v4

    div-float/2addr v5, v4

    .line 52
    iget v4, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->e:F

    sub-float/2addr v5, v4

    iget v4, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->d:F

    div-float/2addr v5, v4

    .line 53
    iget v4, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->K:I

    .line 54
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 55
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 56
    iget v4, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->I:F

    sub-float/2addr p1, v4

    float-to-int p1, p1

    .line 57
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v4, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->O:I

    if-le p1, v4, :cond_d

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v4, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->M:I

    if-le p1, v4, :cond_d

    if-lez v0, :cond_c

    goto :goto_2

    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 58
    :cond_d
    iget p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    if-lt v7, p1, :cond_e

    const p1, 0x3ecccccd    # 0.4f

    goto :goto_1

    :cond_e
    const p1, 0x3f19999a    # 0.6f

    :goto_1
    int-to-float v4, v7

    add-float/2addr v4, v5

    add-float/2addr v4, p1

    float-to-int v7, v4

    .line 59
    :goto_2
    iget-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_f

    .line 60
    iget-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    .line 61
    iget-object v1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    .line 62
    iget p1, p1, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->b:I

    iget v1, v1, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->b:I

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 63
    :cond_f
    invoke-virtual {p0, v7, v2, v2, v0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->x(IZZI)V

    .line 64
    invoke-virtual {p0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->v()Z

    move-result v1

    goto :goto_3

    .line 65
    :cond_10
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->n:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 66
    iput-boolean v1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->z:Z

    .line 67
    iget v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    invoke-virtual {p0, v0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->s(I)V

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->I:F

    iput v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->G:F

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->J:F

    iput v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->H:F

    .line 70
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 71
    iput p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->K:I

    :cond_11
    :goto_3
    if-eqz v1, :cond_12

    .line 72
    sget-object p1, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_12
    return v2

    :cond_13
    :goto_4
    return v1
.end method

.method public p()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    invoke-virtual {v0}, Lry6;->b()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_0

    .line 2
    iget v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->setCurrentItem(IZ)V

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final q(I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "onPageScrolled did not call superclass implementation"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 2
    iput-boolean v2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->T:Z

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, v2, p1, v2}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->n(IFI)V

    .line 4
    iget-boolean p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->T:Z

    if-eqz p1, :cond_0

    return v2

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->k()Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    move-result-object v0

    .line 7
    invoke-direct {p0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->getClientWidth()I

    move-result v3

    .line 8
    iget v4, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->q:I

    add-int v5, v3, v4

    int-to-float v4, v4

    int-to-float v3, v3

    div-float/2addr v4, v3

    .line 9
    iget v6, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->b:I

    int-to-float p1, p1

    div-float/2addr p1, v3

    .line 10
    iget v3, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->e:F

    sub-float/2addr p1, v3

    iget v0, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->d:F

    add-float/2addr v0, v4

    div-float/2addr p1, v0

    int-to-float v0, v5

    mul-float v0, v0, p1

    float-to-int v0, v0

    .line 11
    iput-boolean v2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->T:Z

    .line 12
    invoke-virtual {p0, v6, p1, v0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->n(IFI)V

    .line 13
    iget-boolean p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->T:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final r(F)Z
    .locals 9

    .line 1
    iget v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->G:F

    sub-float/2addr v0, p1

    .line 2
    iput p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->G:F

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v0

    .line 4
    invoke-direct {p0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->getClientWidth()I

    move-result v0

    int-to-float v0, v0

    .line 5
    iget v1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->u:F

    mul-float v1, v1, v0

    .line 6
    iget v2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->v:F

    mul-float v2, v2, v0

    .line 7
    iget-object v3, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    .line 8
    iget-object v5, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    .line 9
    iget v6, v3, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->b:I

    if-eqz v6, :cond_0

    .line 10
    iget v1, v3, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->e:F

    mul-float v1, v1, v0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 11
    :goto_0
    iget v6, v5, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->b:I

    iget-object v8, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    invoke-virtual {v8}, Lry6;->b()I

    move-result v8

    sub-int/2addr v8, v7

    if-eq v6, v8, :cond_1

    .line 12
    iget v2, v5, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->e:F

    mul-float v2, v2, v0

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    :goto_1
    cmpg-float v6, p1, v1

    if-gez v6, :cond_3

    if-eqz v3, :cond_2

    sub-float p1, v1, p1

    .line 13
    iget-object v2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->Q:Lxa;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    .line 14
    iget-object v0, v2, Lxa;->a:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    const/4 v4, 0x1

    :cond_2
    move p1, v1

    goto :goto_2

    :cond_3
    cmpl-float v1, p1, v2

    if-lez v1, :cond_5

    if-eqz v5, :cond_4

    sub-float/2addr p1, v2

    .line 15
    iget-object v1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->R:Lxa;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    .line 16
    iget-object v0, v1, Lxa;->a:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    const/4 v4, 0x1

    :cond_4
    move p1, v2

    .line 17
    :cond_5
    :goto_2
    iget v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->G:F

    float-to-int v1, p1

    int-to-float v2, v1

    sub-float/2addr p1, v2

    add-float/2addr p1, v0

    iput p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->G:F

    .line 18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 19
    invoke-virtual {p0, v1}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->q(I)Z

    return v4
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->x:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public s(I)V
    .locals 14

    .line 1
    iget v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, p1, :cond_3

    if-ge v0, p1, :cond_0

    .line 2
    iput v2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->h0:I

    goto :goto_0

    :cond_0
    if-le v0, p1, :cond_1

    .line 3
    iput v1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->h0:I

    :cond_1
    :goto_0
    if-ge v0, p1, :cond_2

    const/16 v2, 0x42

    goto :goto_1

    :cond_2
    const/16 v2, 0x11

    .line 4
    :goto_1
    invoke-virtual {p0, v0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->l(I)Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    move-result-object v0

    .line 5
    iput p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    goto :goto_2

    :cond_3
    const/4 v2, 0x2

    const/4 v0, 0x0

    .line 6
    :goto_2
    iget-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    if-nez p1, :cond_4

    .line 7
    invoke-virtual {p0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->y()V

    return-void

    .line 8
    :cond_4
    iget-boolean p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->z:Z

    if-eqz p1, :cond_5

    .line 9
    invoke-virtual {p0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->y()V

    return-void

    .line 10
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_6

    return-void

    .line 11
    :cond_6
    iget-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->A:I

    .line 14
    iget v3, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    sub-int/2addr v3, p1

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 15
    iget-object v4, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    invoke-virtual {v4}, Lry6;->b()I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    .line 16
    iget v6, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    add-int/2addr v6, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 17
    iget v5, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->e:I

    if-ne v4, v5, :cond_34

    const/4 v5, 0x0

    .line 18
    :goto_3
    iget-object v6, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 19
    iget-object v6, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    .line 20
    iget v7, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->b:I

    iget v8, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    if-lt v7, v8, :cond_7

    if-ne v7, v8, :cond_8

    goto :goto_4

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    const/4 v6, 0x0

    :goto_4
    if-nez v6, :cond_9

    if-lez v4, :cond_9

    .line 21
    iget v6, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    invoke-virtual {p0, v6, v5}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->b(II)Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    move-result-object v6

    :cond_9
    if-eqz v6, :cond_2b

    .line 22
    iget v7, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->h0:I

    const/high16 v8, 0x40000000    # 2.0f

    if-ltz v7, :cond_1a

    .line 23
    invoke-direct {p0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->getClientWidth()I

    move-result v7

    if-gtz v7, :cond_a

    const/4 v9, 0x0

    goto :goto_5

    .line 24
    :cond_a
    iget v9, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->d:F

    sub-float v9, v8, v9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v7

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    :goto_5
    add-int/lit8 v10, v5, -0x1

    if-ltz v10, :cond_b

    .line 25
    iget-object v11, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    goto :goto_6

    :cond_b
    const/4 v11, 0x0

    .line 26
    :goto_6
    iget v12, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    add-int/2addr v12, v1

    const/4 v1, 0x0

    :goto_7
    if-ltz v12, :cond_11

    cmpl-float v13, v1, v9

    if-ltz v13, :cond_d

    if-ge v12, v3, :cond_d

    if-nez v11, :cond_c

    goto :goto_9

    .line 27
    :cond_c
    iget v13, v11, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->b:I

    if-ne v12, v13, :cond_10

    iget-boolean v13, v11, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->c:Z

    if-nez v13, :cond_10

    .line 28
    iget-object v13, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 29
    iget-object v13, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    iget-object v11, v11, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->a:Ljava/lang/Object;

    invoke-virtual {v13, p0, v12, v11}, Lry6;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v5, v5, -0x1

    if-ltz v10, :cond_f

    .line 30
    iget-object v11, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    goto :goto_8

    :cond_d
    if-eqz v11, :cond_e

    .line 31
    iget v13, v11, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->b:I

    if-ne v12, v13, :cond_e

    .line 32
    iget v11, v11, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->d:F

    add-float/2addr v1, v11

    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_f

    .line 33
    iget-object v11, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    goto :goto_8

    :cond_e
    add-int/lit8 v11, v10, 0x1

    .line 34
    invoke-virtual {p0, v12, v11}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->b(II)Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    move-result-object v11

    .line 35
    iget v11, v11, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->d:F

    add-float/2addr v1, v11

    add-int/lit8 v5, v5, 0x1

    if-ltz v10, :cond_f

    .line 36
    iget-object v11, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    goto :goto_8

    :cond_f
    const/4 v11, 0x0

    :cond_10
    :goto_8
    add-int/lit8 v12, v12, -0x1

    goto :goto_7

    .line 37
    :cond_11
    :goto_9
    iget v1, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->d:F

    add-int/lit8 v3, v5, 0x1

    cmpg-float v9, v1, v8

    if-gez v9, :cond_19

    .line 38
    iget-object v9, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_12

    iget-object v9, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    goto :goto_a

    :cond_12
    const/4 v9, 0x0

    :goto_a
    if-gtz v7, :cond_13

    const/4 v7, 0x0

    goto :goto_b

    .line 39
    :cond_13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v10

    int-to-float v10, v10

    int-to-float v7, v7

    div-float/2addr v10, v7

    add-float v7, v10, v8

    .line 40
    :goto_b
    iget v8, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    :cond_14
    :goto_c
    add-int/lit8 v8, v8, 0x1

    if-ge v8, v4, :cond_19

    cmpl-float v10, v1, v7

    if-ltz v10, :cond_16

    if-le v8, p1, :cond_16

    if-nez v9, :cond_15

    goto :goto_d

    .line 41
    :cond_15
    iget v10, v9, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->b:I

    if-ne v8, v10, :cond_14

    iget-boolean v10, v9, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->c:Z

    if-nez v10, :cond_14

    .line 42
    iget-object v10, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 43
    iget-object v10, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    iget-object v9, v9, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->a:Ljava/lang/Object;

    invoke-virtual {v10, p0, v8, v9}, Lry6;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 44
    iget-object v9, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_18

    iget-object v9, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    goto :goto_c

    :cond_16
    if-eqz v9, :cond_17

    .line 45
    iget v10, v9, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->b:I

    if-ne v8, v10, :cond_17

    .line 46
    iget v9, v9, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->d:F

    add-float/2addr v1, v9

    add-int/lit8 v3, v3, 0x1

    .line 47
    iget-object v9, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_18

    iget-object v9, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    goto :goto_c

    .line 48
    :cond_17
    invoke-virtual {p0, v8, v3}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->b(II)Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    move-result-object v9

    add-int/lit8 v3, v3, 0x1

    .line 49
    iget v9, v9, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->d:F

    add-float/2addr v1, v9

    .line 50
    iget-object v9, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_18

    iget-object v9, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    goto :goto_c

    :cond_18
    const/4 v9, 0x0

    goto :goto_c

    .line 51
    :cond_19
    :goto_d
    invoke-virtual {p0, v6, v5, v0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->d(Lcom/noinnion/android/view/viewpager/FixedViewPager$e;ILcom/noinnion/android/view/viewpager/FixedViewPager$e;)V

    goto/16 :goto_17

    .line 52
    :cond_1a
    invoke-direct {p0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->getClientWidth()I

    move-result v7

    if-gtz v7, :cond_1b

    const/4 v9, 0x0

    goto :goto_e

    .line 53
    :cond_1b
    iget v9, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->d:F

    sub-float v9, v8, v9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v7

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    .line 54
    :goto_e
    iget v10, v6, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->d:F

    add-int/lit8 v11, v5, 0x1

    cmpg-float v12, v10, v8

    if-gez v12, :cond_23

    .line 55
    iget-object v12, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_1c

    iget-object v12, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    goto :goto_f

    :cond_1c
    const/4 v12, 0x0

    :goto_f
    if-gtz v7, :cond_1d

    const/4 v7, 0x0

    goto :goto_10

    .line 56
    :cond_1d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v13

    int-to-float v13, v13

    int-to-float v7, v7

    div-float/2addr v13, v7

    add-float v7, v13, v8

    .line 57
    :goto_10
    iget v8, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    :cond_1e
    :goto_11
    add-int/lit8 v8, v8, 0x1

    if-ge v8, v4, :cond_23

    cmpl-float v13, v10, v7

    if-ltz v13, :cond_20

    if-le v8, p1, :cond_20

    if-nez v12, :cond_1f

    goto :goto_12

    .line 58
    :cond_1f
    iget v13, v12, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->b:I

    if-ne v8, v13, :cond_1e

    iget-boolean v13, v12, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->c:Z

    if-nez v13, :cond_1e

    .line 59
    iget-object v13, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 60
    iget-object v13, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    iget-object v12, v12, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->a:Ljava/lang/Object;

    invoke-virtual {v13, p0, v8, v12}, Lry6;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 61
    iget-object v12, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_22

    iget-object v12, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    goto :goto_11

    :cond_20
    if-eqz v12, :cond_21

    .line 62
    iget v13, v12, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->b:I

    if-ne v8, v13, :cond_21

    .line 63
    iget v12, v12, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->d:F

    add-float/2addr v10, v12

    add-int/lit8 v11, v11, 0x1

    .line 64
    iget-object v12, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_22

    iget-object v12, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    goto :goto_11

    .line 65
    :cond_21
    invoke-virtual {p0, v8, v11}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->b(II)Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    move-result-object v12

    add-int/lit8 v11, v11, 0x1

    .line 66
    iget v12, v12, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->d:F

    add-float/2addr v10, v12

    .line 67
    iget-object v12, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_22

    iget-object v12, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    goto :goto_11

    :cond_22
    const/4 v12, 0x0

    goto :goto_11

    :cond_23
    :goto_12
    add-int/lit8 p1, v5, -0x1

    if-ltz p1, :cond_24

    .line 68
    iget-object v4, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    goto :goto_13

    :cond_24
    const/4 v4, 0x0

    .line 69
    :goto_13
    iget v7, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    add-int/2addr v7, v1

    const/4 v1, 0x0

    :goto_14
    if-ltz v7, :cond_2a

    cmpl-float v8, v1, v9

    if-ltz v8, :cond_26

    if-ge v7, v3, :cond_26

    if-nez v4, :cond_25

    goto :goto_16

    .line 70
    :cond_25
    iget v8, v4, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->b:I

    if-ne v7, v8, :cond_29

    iget-boolean v8, v4, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->c:Z

    if-nez v8, :cond_29

    .line 71
    iget-object v8, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 72
    iget-object v8, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    iget-object v4, v4, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->a:Ljava/lang/Object;

    invoke-virtual {v8, p0, v7, v4}, Lry6;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v5, v5, -0x1

    if-ltz p1, :cond_28

    .line 73
    iget-object v4, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    goto :goto_15

    :cond_26
    if-eqz v4, :cond_27

    .line 74
    iget v8, v4, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->b:I

    if-ne v7, v8, :cond_27

    .line 75
    iget v4, v4, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->d:F

    add-float/2addr v1, v4

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_28

    .line 76
    iget-object v4, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    goto :goto_15

    :cond_27
    add-int/lit8 v4, p1, 0x1

    .line 77
    invoke-virtual {p0, v7, v4}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->b(II)Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    move-result-object v4

    .line 78
    iget v4, v4, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->d:F

    add-float/2addr v1, v4

    add-int/lit8 v5, v5, 0x1

    if-ltz p1, :cond_28

    .line 79
    iget-object v4, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    goto :goto_15

    :cond_28
    const/4 v4, 0x0

    :cond_29
    :goto_15
    add-int/lit8 v7, v7, -0x1

    goto :goto_14

    .line 80
    :cond_2a
    :goto_16
    invoke-virtual {p0, v6, v5, v0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->d(Lcom/noinnion/android/view/viewpager/FixedViewPager$e;ILcom/noinnion/android/view/viewpager/FixedViewPager$e;)V

    .line 81
    :goto_17
    iget p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->h0:I

    if-eqz p1, :cond_2b

    const/4 p1, 0x0

    iput p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->h0:I

    .line 82
    :cond_2b
    iget-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    .line 83
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    .line 85
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_18
    if-ge v0, p1, :cond_2d

    .line 87
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;

    .line 89
    iput v0, v3, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;->f:I

    .line 90
    iget-boolean v4, v3, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;->a:Z

    if-nez v4, :cond_2c

    iget v4, v3, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;->c:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2c

    .line 91
    invoke-virtual {p0, v1}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j(Landroid/view/View;)Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 92
    iget v4, v1, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->d:F

    iput v4, v3, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;->c:F

    .line 93
    iget v1, v1, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->b:I

    iput v1, v3, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;->e:I

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 94
    :cond_2d
    invoke-virtual {p0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->y()V

    .line 95
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_33

    .line 96
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 97
    :goto_19
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2f

    if-eqz v0, :cond_30

    .line 98
    instance-of p1, v0, Landroid/view/View;

    if-nez p1, :cond_2e

    goto :goto_1a

    .line 99
    :cond_2e
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_19

    .line 100
    :cond_2f
    invoke-virtual {p0, p1}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j(Landroid/view/View;)Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    move-result-object p1

    goto :goto_1b

    :cond_30
    :goto_1a
    const/4 p1, 0x0

    :goto_1b
    if-eqz p1, :cond_31

    .line 101
    iget p1, p1, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->b:I

    iget v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    if-eq p1, v0, :cond_33

    :cond_31
    const/4 p1, 0x0

    .line 102
    :goto_1c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_33

    .line 103
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 104
    invoke-virtual {p0, v0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j(Landroid/view/View;)Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 105
    iget v1, v1, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->b:I

    iget v3, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    if-ne v1, v3, :cond_32

    .line 106
    invoke-virtual {v0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_1d

    :cond_32
    add-int/lit8 p1, p1, 0x1

    goto :goto_1c

    :cond_33
    :goto_1d
    return-void

    .line 107
    :cond_34
    :try_start_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1e

    .line 108
    :catch_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    .line 109
    :goto_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-static {v1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Pager id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Pager class: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " Problematic adapter: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAdapter(Lry6;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iput-object v3, v0, Lry6;->b:Landroid/database/DataSetObserver;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v4, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 8
    iget-object v4, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    .line 9
    iget-object v5, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    iget v6, v4, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->b:I

    iget-object v4, v4, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->a:Ljava/lang/Object;

    invoke-virtual {v5, p0, v6, v4}, Lry6;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 13
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 15
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;

    .line 16
    iget-boolean v4, v4, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;->a:Z

    if-nez v4, :cond_1

    .line 17
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_1
    add-int/2addr v0, v1

    goto :goto_1

    .line 18
    :cond_2
    iput v2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    .line 19
    invoke-virtual {p0, v2, v2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 20
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 21
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    .line 22
    iput-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    .line 23
    iput v2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->e:I

    if-eqz p1, :cond_7

    .line 24
    iget-object v4, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->o:Lcom/noinnion/android/view/viewpager/FixedViewPager$k;

    if-nez v4, :cond_4

    .line 25
    new-instance v4, Lcom/noinnion/android/view/viewpager/FixedViewPager$k;

    invoke-direct {v4, p0, v3}, Lcom/noinnion/android/view/viewpager/FixedViewPager$k;-><init>(Lcom/noinnion/android/view/viewpager/FixedViewPager;Lcom/noinnion/android/view/viewpager/FixedViewPager$a;)V

    iput-object v4, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->o:Lcom/noinnion/android/view/viewpager/FixedViewPager$k;

    .line 26
    :cond_4
    iget-object v4, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    iget-object v5, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->o:Lcom/noinnion/android/view/viewpager/FixedViewPager$k;

    .line 27
    monitor-enter v4

    .line 28
    :try_start_2
    iput-object v5, v4, Lry6;->b:Landroid/database/DataSetObserver;

    .line 29
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 30
    iput-boolean v2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->z:Z

    .line 31
    iget-boolean v4, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->S:Z

    .line 32
    iput-boolean v1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->S:Z

    .line 33
    iget-object v5, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    invoke-virtual {v5}, Lry6;->b()I

    move-result v5

    iput v5, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->e:I

    .line 34
    iget v5, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->k:I

    if-ltz v5, :cond_5

    .line 35
    iget-object v4, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    .line 36
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget v4, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->k:I

    .line 38
    invoke-virtual {p0, v4, v2, v1, v2}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->x(IZZI)V

    const/4 v1, -0x1

    .line 39
    iput v1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->k:I

    .line 40
    iput-object v3, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->l:Landroid/os/Parcelable;

    .line 41
    iput-object v3, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->m:Ljava/lang/ClassLoader;

    goto :goto_3

    :cond_5
    if-nez v4, :cond_6

    .line 42
    iget v1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    invoke-virtual {p0, v1}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->s(I)V

    goto :goto_3

    .line 43
    :cond_6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 44
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 45
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->a0:Lcom/noinnion/android/view/viewpager/FixedViewPager$h;

    if-eqz v1, :cond_8

    if-eq v0, p1, :cond_8

    .line 46
    invoke-interface {v1, v0, p1}, Lcom/noinnion/android/view/viewpager/FixedViewPager$h;->a(Lry6;Lry6;)V

    :cond_8
    return-void
.end method

.method public setChildrenDrawingOrderEnabledCompat(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->c0:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const-string v2, "ViewPager"

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    const-class v0, Landroid/view/ViewGroup;

    const-string v4, "setChildrenDrawingOrderEnabled"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->c0:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "Can\'t find setChildrenDrawingOrderEnabled"

    .line 3
    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->c0:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v0, "Error changing children drawing order"

    .line 5
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->z:Z

    .line 2
    iget-boolean v1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->S:Z

    xor-int/lit8 v1, v1, 0x1

    .line 3
    invoke-virtual {p0, p1, v1, v0, v0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->x(IZZI)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->z:Z

    .line 5
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->x(IZZI)V

    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " too small; defaulting to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ViewPager"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 2
    :cond_0
    iget v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->A:I

    if-eq p1, v0, :cond_1

    .line 3
    iput p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->A:I

    .line 4
    iget p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    invoke-virtual {p0, p1}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->s(I)V

    :cond_1
    return-void
.end method

.method public setOnAdapterChangeListener(Lcom/noinnion/android/view/viewpager/FixedViewPager$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->a0:Lcom/noinnion/android/view/viewpager/FixedViewPager$h;

    return-void
.end method

.method public setOnPageChangeListener(Lcom/noinnion/android/view/viewpager/FixedViewPager$i;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->W:Lcom/noinnion/android/view/viewpager/FixedViewPager$i;

    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->q:I

    .line 2
    iput p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->q:I

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    .line 4
    invoke-virtual {p0, v1, v1, p1, v0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->t(IIII)V

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->r:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setPageTransformer(ZLcom/noinnion/android/view/viewpager/FixedViewPager$j;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    iget-object v3, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->b0:Lcom/noinnion/android/view/viewpager/FixedViewPager$j;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eq v2, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 2
    :goto_2
    iput-object p2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->b0:Lcom/noinnion/android/view/viewpager/FixedViewPager$j;

    .line 3
    invoke-virtual {p0, v2}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->setChildrenDrawingOrderEnabledCompat(Z)V

    if-eqz v2, :cond_4

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    .line 4
    :cond_3
    iput v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->d0:I

    goto :goto_3

    .line 5
    :cond_4
    iput v1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->d0:I

    :goto_3
    if-eqz v3, :cond_5

    .line 6
    iget p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    invoke-virtual {p0, p1}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->s(I)V

    :cond_5
    return-void
.end method

.method public setRestoredCurItem(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->k:I

    return-void
.end method

.method public final t(IIII)V
    .locals 1

    if-lez p2, :cond_1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->n:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->n:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->getCurrentItem()I

    move-result p2

    invoke-direct {p0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->getClientWidth()I

    move-result p3

    mul-int p2, p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/Scroller;->setFinalX(I)V

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/2addr p1, p3

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    add-int/2addr p2, p4

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p3

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    int-to-float p1, p1

    mul-float p3, p3, p1

    float-to-int p1, p3

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_1

    .line 8
    :cond_1
    iget p2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    invoke-virtual {p0, p2}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->l(I)Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 9
    iget p2, p2, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->e:F

    iget p3, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->v:F

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    mul-float p2, p2, p1

    float-to-int p1, p2

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x0

    .line 12
    invoke-virtual {p0, p2}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f(Z)V

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final u(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method public final v()Z
    .locals 3

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->K:I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->B:Z

    .line 3
    iput-boolean v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->C:Z

    .line 4
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->L:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->L:Landroid/view/VelocityTracker;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->Q:Lxa;

    .line 8
    iget-object v1, v0, Lxa;->a:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 9
    iget-object v0, v0, Lxa;->a:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    .line 10
    iget-object v1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->R:Lxa;

    .line 11
    iget-object v2, v1, Lxa;->a:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 12
    iget-object v1, v1, Lxa;->a:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->r:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final w(IZIZ)V
    .locals 14

    move-object v0, p0

    .line 1
    invoke-virtual {p0, p1}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->l(I)Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->getClientWidth()I

    move-result v3

    int-to-float v3, v3

    .line 3
    iget v4, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->u:F

    iget v1, v1, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->e:F

    iget v5, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->v:F

    .line 4
    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 5
    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float v1, v1, v3

    float-to-int v1, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p2, :cond_7

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 7
    invoke-direct {p0, v2}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->setScrollingCacheEnabled(Z)V

    goto/16 :goto_5

    .line 8
    :cond_1
    iget-object v3, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->n:Landroid/widget/Scroller;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_4

    .line 9
    iget-boolean v3, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->p:Z

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->n:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    goto :goto_2

    :cond_3
    iget-object v3, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->n:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getStartX()I

    move-result v3

    .line 10
    :goto_2
    iget-object v5, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->n:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    .line 11
    invoke-direct {p0, v2}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_3

    .line 12
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    :goto_3
    move v6, v3

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v7

    sub-int v8, v1, v6

    rsub-int/lit8 v9, v7, 0x0

    if-nez v8, :cond_5

    if-nez v9, :cond_5

    .line 14
    invoke-virtual {p0, v2}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f(Z)V

    .line 15
    iget v1, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    invoke-virtual {p0, v1}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->s(I)V

    .line 16
    invoke-direct {p0, v2}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->setScrollState(I)V

    goto :goto_5

    .line 17
    :cond_5
    invoke-direct {p0, v4}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->setScrollingCacheEnabled(Z)V

    const/4 v1, 0x2

    .line 18
    invoke-direct {p0, v1}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->setScrollState(I)V

    .line 19
    invoke-direct {p0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->getClientWidth()I

    move-result v1

    .line 20
    div-int/lit8 v3, v1, 0x2

    .line 21
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float v4, v4, v5

    int-to-float v1, v1

    div-float/2addr v4, v1

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    int-to-float v3, v3

    const/high16 v10, 0x3f000000    # 0.5f

    sub-float/2addr v4, v10

    float-to-double v10, v4

    const-wide v12, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double v10, v10, v12

    double-to-float v4, v10

    float-to-double v10, v4

    .line 22
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v4, v10

    mul-float v4, v4, v3

    add-float/2addr v4, v3

    .line 23
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-lez v3, :cond_6

    const/high16 v1, 0x447a0000    # 1000.0f

    int-to-float v3, v3

    div-float/2addr v4, v3

    .line 24
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float v3, v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    goto :goto_4

    .line 25
    :cond_6
    iget-object v3, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    mul-float v1, v1, v5

    .line 26
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->q:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    div-float/2addr v3, v1

    add-float/2addr v3, v5

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v3, v3, v1

    float-to-int v1, v3

    :goto_4
    const/16 v3, 0x258

    .line 27
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 28
    iput-boolean v2, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->p:Z

    .line 29
    iget-object v5, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->n:Landroid/widget/Scroller;

    invoke-virtual/range {v5 .. v10}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 30
    sget-object v1, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :goto_5
    if-eqz p4, :cond_9

    .line 32
    invoke-virtual {p0, p1}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->h(I)V

    goto :goto_6

    :cond_7
    if-eqz p4, :cond_8

    .line 33
    invoke-virtual {p0, p1}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->h(I)V

    .line 34
    :cond_8
    invoke-virtual {p0, v2}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f(Z)V

    .line 35
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 36
    invoke-virtual {p0, v1}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->q(I)Z

    :cond_9
    :goto_6
    return-void
.end method

.method public x(IZZI)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lry6;->b()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_3

    :cond_0
    if-nez p3, :cond_1

    .line 2
    iget p3, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    if-ne p3, p1, :cond_1

    iget-object p3, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eqz p3, :cond_1

    .line 3
    invoke-direct {p0, v1}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_1
    const/4 p3, 0x1

    if-gez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    invoke-virtual {v0}, Lry6;->b()I

    move-result v0

    if-lt p1, v0, :cond_3

    .line 5
    iget-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->i:Lry6;

    invoke-virtual {p1}, Lry6;->b()I

    move-result p1

    sub-int/2addr p1, p3

    .line 6
    :cond_3
    :goto_0
    iget v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->A:I

    .line 7
    iget v2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    add-int v3, v2, v0

    if-gt p1, v3, :cond_4

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_5

    :cond_4
    const/4 v0, 0x0

    .line 8
    :goto_1
    iget-object v2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 9
    iget-object v2, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;

    iput-boolean p3, v2, Lcom/noinnion/android/view/viewpager/FixedViewPager$e;->c:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 10
    :cond_5
    iget v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    if-eq v0, p1, :cond_6

    const/4 v1, 0x1

    .line 11
    :cond_6
    iget-boolean p3, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->S:Z

    if-eqz p3, :cond_8

    .line 12
    iput p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    if-eqz v1, :cond_7

    .line 13
    invoke-virtual {p0, p1}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->h(I)V

    .line 14
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_2

    .line 15
    :cond_8
    invoke-virtual {p0, p1}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->s(I)V

    .line 16
    invoke-virtual {p0, p1, p2, p4, v1}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->w(IZIZ)V

    :goto_2
    return-void

    .line 17
    :cond_9
    :goto_3
    invoke-direct {p0, v1}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->setScrollingCacheEnabled(Z)V

    return-void
.end method

.method public final y()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->d0:I

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->e0:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->e0:Ljava/util/ArrayList;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 6
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->e0:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->e0:Ljava/util/ArrayList;

    sget-object v1, Lcom/noinnion/android/view/viewpager/FixedViewPager;->l0:Lcom/noinnion/android/view/viewpager/FixedViewPager$l;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method
