.class public Lcom/r0adkll/slidr/widget/SliderPanel;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/r0adkll/slidr/widget/SliderPanel$h;
    }
.end annotation


# instance fields
.field public e:I

.field public f:I

.field public g:Landroid/view/View;

.field public h:Ld17;

.field public i:Lcom/r0adkll/slidr/widget/SliderPanel$h;

.field public j:Landroid/graphics/Paint;

.field public k:Le17;

.field public l:Z

.field public m:I

.field public n:La17;

.field public final o:Lb17;

.field public final p:Ld17$c;

.field public final q:Ld17$c;

.field public final r:Ld17$c;

.field public final s:Ld17$c;

.field public final t:Ld17$c;

.field public final u:Ld17$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->l:Z

    .line 3
    new-instance p1, Lcom/r0adkll/slidr/widget/SliderPanel$a;

    invoke-direct {p1, p0}, Lcom/r0adkll/slidr/widget/SliderPanel$a;-><init>(Lcom/r0adkll/slidr/widget/SliderPanel;)V

    iput-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->o:Lb17;

    .line 4
    new-instance p1, Lcom/r0adkll/slidr/widget/SliderPanel$b;

    invoke-direct {p1, p0}, Lcom/r0adkll/slidr/widget/SliderPanel$b;-><init>(Lcom/r0adkll/slidr/widget/SliderPanel;)V

    iput-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->p:Ld17$c;

    .line 5
    new-instance p1, Lcom/r0adkll/slidr/widget/SliderPanel$c;

    invoke-direct {p1, p0}, Lcom/r0adkll/slidr/widget/SliderPanel$c;-><init>(Lcom/r0adkll/slidr/widget/SliderPanel;)V

    iput-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->q:Ld17$c;

    .line 6
    new-instance p1, Lcom/r0adkll/slidr/widget/SliderPanel$d;

    invoke-direct {p1, p0}, Lcom/r0adkll/slidr/widget/SliderPanel$d;-><init>(Lcom/r0adkll/slidr/widget/SliderPanel;)V

    iput-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->r:Ld17$c;

    .line 7
    new-instance p1, Lcom/r0adkll/slidr/widget/SliderPanel$e;

    invoke-direct {p1, p0}, Lcom/r0adkll/slidr/widget/SliderPanel$e;-><init>(Lcom/r0adkll/slidr/widget/SliderPanel;)V

    iput-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->s:Ld17$c;

    .line 8
    new-instance p1, Lcom/r0adkll/slidr/widget/SliderPanel$f;

    invoke-direct {p1, p0}, Lcom/r0adkll/slidr/widget/SliderPanel$f;-><init>(Lcom/r0adkll/slidr/widget/SliderPanel;)V

    iput-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->t:Ld17$c;

    .line 9
    new-instance p1, Lcom/r0adkll/slidr/widget/SliderPanel$g;

    invoke-direct {p1, p0}, Lcom/r0adkll/slidr/widget/SliderPanel$g;-><init>(Lcom/r0adkll/slidr/widget/SliderPanel;)V

    iput-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->u:Ld17$c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;La17;)V
    .locals 8

    .line 10
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->l:Z

    .line 12
    new-instance v0, Lcom/r0adkll/slidr/widget/SliderPanel$a;

    invoke-direct {v0, p0}, Lcom/r0adkll/slidr/widget/SliderPanel$a;-><init>(Lcom/r0adkll/slidr/widget/SliderPanel;)V

    iput-object v0, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->o:Lb17;

    .line 13
    new-instance v0, Lcom/r0adkll/slidr/widget/SliderPanel$b;

    invoke-direct {v0, p0}, Lcom/r0adkll/slidr/widget/SliderPanel$b;-><init>(Lcom/r0adkll/slidr/widget/SliderPanel;)V

    iput-object v0, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->p:Ld17$c;

    .line 14
    new-instance v1, Lcom/r0adkll/slidr/widget/SliderPanel$c;

    invoke-direct {v1, p0}, Lcom/r0adkll/slidr/widget/SliderPanel$c;-><init>(Lcom/r0adkll/slidr/widget/SliderPanel;)V

    iput-object v1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->q:Ld17$c;

    .line 15
    new-instance v2, Lcom/r0adkll/slidr/widget/SliderPanel$d;

    invoke-direct {v2, p0}, Lcom/r0adkll/slidr/widget/SliderPanel$d;-><init>(Lcom/r0adkll/slidr/widget/SliderPanel;)V

    iput-object v2, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->r:Ld17$c;

    .line 16
    new-instance v3, Lcom/r0adkll/slidr/widget/SliderPanel$e;

    invoke-direct {v3, p0}, Lcom/r0adkll/slidr/widget/SliderPanel$e;-><init>(Lcom/r0adkll/slidr/widget/SliderPanel;)V

    iput-object v3, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->s:Ld17$c;

    .line 17
    new-instance v4, Lcom/r0adkll/slidr/widget/SliderPanel$f;

    invoke-direct {v4, p0}, Lcom/r0adkll/slidr/widget/SliderPanel$f;-><init>(Lcom/r0adkll/slidr/widget/SliderPanel;)V

    iput-object v4, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->t:Ld17$c;

    .line 18
    new-instance v5, Lcom/r0adkll/slidr/widget/SliderPanel$g;

    invoke-direct {v5, p0}, Lcom/r0adkll/slidr/widget/SliderPanel$g;-><init>(Lcom/r0adkll/slidr/widget/SliderPanel;)V

    iput-object v5, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->u:Ld17$c;

    .line 19
    iput-object p2, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->g:Landroid/view/View;

    if-nez p3, :cond_0

    .line 20
    new-instance p3, La17;

    const/4 p2, 0x0

    invoke-direct {p3, p2}, La17;-><init>(La17$a;)V

    .line 21
    :cond_0
    iput-object p3, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->n:La17;

    .line 22
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 23
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p2, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->e:I

    .line 24
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x43c80000    # 400.0f

    mul-float p2, p2, p3

    .line 25
    iget-object p3, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->n:La17;

    .line 26
    iget-object p3, p3, La17;->i:Lc17;

    .line 27
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    const/4 v6, 0x1

    if-eqz p3, :cond_6

    const/4 v7, 0x2

    if-eq p3, v6, :cond_5

    const/4 v1, 0x4

    if-eq p3, v7, :cond_4

    const/4 v2, 0x3

    if-eq p3, v2, :cond_3

    if-eq p3, v1, :cond_2

    const/4 v1, 0x5

    if-eq p3, v1, :cond_1

    .line 28
    iput v6, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->m:I

    goto :goto_0

    .line 29
    :cond_1
    iput v2, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->m:I

    move-object v0, v5

    goto :goto_0

    :cond_2
    const/16 p3, 0xc

    .line 30
    iput p3, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->m:I

    move-object v0, v4

    goto :goto_0

    :cond_3
    const/16 p3, 0x8

    .line 31
    iput p3, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->m:I

    move-object v0, v3

    goto :goto_0

    .line 32
    :cond_4
    iput v1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->m:I

    move-object v0, v2

    goto :goto_0

    .line 33
    :cond_5
    iput v7, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->m:I

    move-object v0, v1

    goto :goto_0

    .line 34
    :cond_6
    iput v6, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->m:I

    .line 35
    :goto_0
    iget-object p3, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->n:La17;

    .line 36
    iget p3, p3, La17;->a:F

    .line 37
    new-instance v1, Ld17;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Ld17;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ld17$c;)V

    .line 38
    iget v0, v1, Ld17;->b:I

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, p3

    mul-float v2, v2, v0

    float-to-int p3, v2

    iput p3, v1, Ld17;->b:I

    .line 39
    iput-object v1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->h:Ld17;

    .line 40
    iput p2, v1, Ld17;->n:F

    .line 41
    iget p2, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->m:I

    .line 42
    iput p2, v1, Ld17;->p:I

    .line 43
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 44
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->j:Landroid/graphics/Paint;

    .line 45
    iget-object p2, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->n:La17;

    .line 46
    iget p2, p2, La17;->b:I

    .line 47
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->j:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->n:La17;

    .line 49
    iget p2, p2, La17;->c:F

    const/high16 p3, 0x437f0000    # 255.0f

    mul-float p2, p2, p3

    float-to-int p2, p2

    .line 50
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 51
    new-instance p1, Le17;

    iget-object p2, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->g:Landroid/view/View;

    invoke-direct {p1, p0, p2}, Le17;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->k:Le17;

    .line 52
    new-instance p1, Lf17;

    invoke-direct {p1, p0}, Lf17;-><init>(Lcom/r0adkll/slidr/widget/SliderPanel;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static a(III)I
    .locals 0

    .line 1
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static b(Lcom/r0adkll/slidr/widget/SliderPanel;F)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->n:La17;

    .line 2
    iget v1, v0, La17;->c:F

    .line 3
    iget v0, v0, La17;->d:F

    invoke-static {v1, v0, p1, v0}, Ljo;->a(FFFF)F

    move-result p1

    .line 4
    iget-object v0, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->j:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5
    iget-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->k:Le17;

    iget-object v0, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->n:La17;

    .line 6
    iget-object v0, v0, La17;->i:Lc17;

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 9
    :cond_0
    iget-object v0, p1, Le17;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-lez v0, :cond_1

    .line 10
    iget-object v0, p1, Le17;->c:Landroid/graphics/Rect;

    iget-object v2, p1, Le17;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p1, Le17;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    .line 11
    :cond_1
    iget-object v0, p1, Le17;->c:Landroid/graphics/Rect;

    iget-object v2, p1, Le17;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v3, p1, Le17;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p1, Le17;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    .line 12
    :cond_2
    iget-object v0, p1, Le17;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-lez v0, :cond_3

    .line 13
    iget-object v0, p1, Le17;->c:Landroid/graphics/Rect;

    iget-object v2, p1, Le17;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p1, Le17;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 14
    :cond_3
    iget-object v0, p1, Le17;->c:Landroid/graphics/Rect;

    iget-object v2, p1, Le17;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, p1, Le17;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p1, Le17;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 15
    :cond_4
    iget-object v0, p1, Le17;->c:Landroid/graphics/Rect;

    iget-object v2, p1, Le17;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, p1, Le17;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p1, Le17;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 16
    :cond_5
    iget-object v0, p1, Le17;->c:Landroid/graphics/Rect;

    iget-object v2, p1, Le17;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p1, Le17;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 17
    :cond_6
    iget-object v0, p1, Le17;->c:Landroid/graphics/Rect;

    iget-object v2, p1, Le17;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v3, p1, Le17;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p1, Le17;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 18
    :cond_7
    iget-object v0, p1, Le17;->c:Landroid/graphics/Rect;

    iget-object v2, p1, Le17;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p1, Le17;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 19
    :goto_0
    iget-object p1, p1, Le17;->c:Landroid/graphics/Rect;

    .line 20
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 12

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    .line 2
    iget-object v0, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->h:Ld17;

    .line 3
    iget v1, v0, Ld17;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_5

    .line 4
    iget-object v1, v0, Ld17;->q:Lza;

    .line 5
    iget-object v1, v1, Lza;->a:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v1

    .line 6
    iget-object v4, v0, Ld17;->q:Lza;

    .line 7
    iget-object v4, v4, Lza;->a:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v4

    .line 8
    iget-object v5, v0, Ld17;->q:Lza;

    .line 9
    iget-object v5, v5, Lza;->a:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v11

    .line 10
    iget-object v5, v0, Ld17;->s:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v9, v4, v5

    .line 11
    iget-object v5, v0, Ld17;->s:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v10, v11, v5

    if-eqz v9, :cond_0

    .line 12
    iget-object v5, v0, Ld17;->s:Landroid/view/View;

    invoke-static {v5, v9}, Lha;->l(Landroid/view/View;I)V

    :cond_0
    if-eqz v10, :cond_1

    .line 13
    iget-object v5, v0, Ld17;->s:Landroid/view/View;

    invoke-static {v5, v10}, Lha;->m(Landroid/view/View;I)V

    :cond_1
    if-nez v9, :cond_2

    if-eqz v10, :cond_3

    .line 14
    :cond_2
    iget-object v5, v0, Ld17;->r:Ld17$c;

    iget-object v6, v0, Ld17;->s:Landroid/view/View;

    move v7, v4

    move v8, v11

    invoke-virtual/range {v5 .. v10}, Ld17$c;->f(Landroid/view/View;IIII)V

    :cond_3
    if-eqz v1, :cond_4

    .line 15
    iget-object v5, v0, Ld17;->q:Lza;

    .line 16
    iget-object v5, v5, Lza;->a:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 17
    iget-object v4, v0, Ld17;->q:Lza;

    .line 18
    iget-object v4, v4, Lza;->a:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v4

    if-ne v11, v4, :cond_4

    .line 19
    iget-object v1, v0, Ld17;->q:Lza;

    .line 20
    iget-object v1, v1, Lza;->a:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    const/4 v1, 0x0

    :cond_4
    if-nez v1, :cond_5

    .line 21
    iget-object v1, v0, Ld17;->u:Landroid/view/ViewGroup;

    iget-object v4, v0, Ld17;->v:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 22
    :cond_5
    iget v0, v0, Ld17;->a:I

    if-ne v0, v2, :cond_6

    const/4 v3, 0x1

    :cond_6
    if-eqz v3, :cond_7

    .line 23
    sget-object v0, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_7
    return-void
.end method

.method public getDefaultInterface()Lb17;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->o:Lb17;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->k:Le17;

    iget-object v1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->n:La17;

    .line 2
    iget-object v1, v1, La17;->i:Lc17;

    .line 3
    iget-object v2, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->j:Landroid/graphics/Paint;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_7

    const/4 v3, 0x1

    if-eq v1, v3, :cond_6

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    const/4 v3, 0x3

    if-eq v1, v3, :cond_4

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, v0, Le17;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lez v1, :cond_1

    .line 7
    invoke-virtual {v0, p1, v2}, Le17;->b(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0, p1, v2}, Le17;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v1, v0, Le17;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lez v1, :cond_3

    .line 10
    invoke-virtual {v0, p1, v2}, Le17;->d(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {v0, p1, v2}, Le17;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {v0, p1, v2}, Le17;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 13
    :cond_5
    invoke-virtual {v0, p1, v2}, Le17;->d(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 14
    :cond_6
    invoke-virtual {v0, p1, v2}, Le17;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 15
    :cond_7
    invoke-virtual {v0, p1, v2}, Le17;->b(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->n:La17;

    .line 2
    iget-boolean v0, v0, La17;->g:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 5
    iget-object v4, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->n:La17;

    .line 6
    iget-object v4, v4, La17;->i:Lc17;

    .line 7
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_7

    if-eq v4, v2, :cond_6

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3

    const/4 v3, 0x5

    if-eq v4, v3, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v3, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->n:La17;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    .line 9
    iget v3, v3, La17;->h:F

    mul-float v3, v3, v4

    cmpg-float v3, v0, v3

    if-ltz v3, :cond_2

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->n:La17;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    .line 11
    iget v4, v4, La17;->h:F

    mul-float v4, v4, v5

    sub-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->n:La17;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    .line 13
    iget v0, v0, La17;->h:F

    mul-float v0, v0, v4

    cmpg-float v0, v3, v0

    if-ltz v0, :cond_2

    .line 14
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v4, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->n:La17;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    .line 15
    iget v4, v4, La17;->h:F

    mul-float v4, v4, v5

    sub-float/2addr v0, v4

    cmpl-float v0, v3, v0

    if-lez v0, :cond_1

    goto :goto_1

    .line 16
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v4, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->n:La17;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    .line 17
    iget v4, v4, La17;->h:F

    mul-float v4, v4, v5

    sub-float/2addr v0, v4

    cmpl-float v0, v3, v0

    if-lez v0, :cond_1

    goto :goto_1

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->n:La17;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    .line 19
    iget v0, v0, La17;->h:F

    mul-float v0, v0, v4

    cmpg-float v0, v3, v0

    if-gez v0, :cond_1

    goto :goto_1

    .line 20
    :cond_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->n:La17;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    .line 21
    iget v4, v4, La17;->h:F

    mul-float v4, v4, v5

    sub-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    goto :goto_1

    .line 22
    :cond_7
    iget-object v3, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->n:La17;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    .line 23
    iget v3, v3, La17;->h:F

    mul-float v3, v3, v4

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    goto :goto_1

    .line 24
    :goto_2
    iput-boolean v0, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->l:Z

    .line 25
    :cond_8
    :try_start_0
    iget-object v0, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->h:Ld17;

    invoke-virtual {v0, p1}, Ld17;->t(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_9

    const/4 v1, 0x1

    :cond_9
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->h:Ld17;

    invoke-virtual {v0, p1}, Ld17;->m(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public setOnPanelSlideListener(Lcom/r0adkll/slidr/widget/SliderPanel$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->i:Lcom/r0adkll/slidr/widget/SliderPanel$h;

    return-void
.end method
