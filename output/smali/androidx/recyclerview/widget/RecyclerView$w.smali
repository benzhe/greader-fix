.class public abstract Landroidx/recyclerview/widget/RecyclerView$w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "w"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$w$b;,
        Landroidx/recyclerview/widget/RecyclerView$w$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Landroidx/recyclerview/widget/RecyclerView;

.field public c:Landroidx/recyclerview/widget/RecyclerView$m;

.field public d:Z

.field public e:Z

.field public f:Landroid/view/View;

.field public final g:Landroidx/recyclerview/widget/RecyclerView$w$a;

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:I

    .line 3
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$w$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$w$a;-><init>(II)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->g:Landroidx/recyclerview/widget/RecyclerView$w$a;

    return-void
.end method


# virtual methods
.method public a(I)Landroid/graphics/PointF;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView$m;

    .line 2
    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView$w$b;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$w$b;

    .line 4
    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$w$b;->a(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "You should override computeScrollVectorForPosition when the LayoutManager does not implement "

    .line 5
    invoke-static {p1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-class v0, Landroidx/recyclerview/widget/RecyclerView$w$b;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecyclerView"

    .line 7
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->d()V

    .line 4
    :cond_1
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->d:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->f:Landroid/view/View;

    if-nez v1, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView$m;

    if-eqz v1, :cond_3

    .line 5
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:I

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$w;->a(I)Landroid/graphics/PointF;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 6
    iget v5, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v6, v5, v4

    if-nez v6, :cond_2

    iget v6, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v6, v6, v4

    if-eqz v6, :cond_3

    .line 7
    :cond_2
    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    float-to-int v5, v5

    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 8
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    .line 9
    invoke-virtual {v0, v5, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->h0(II[I)V

    :cond_3
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->d:Z

    .line 11
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$w;->f:Landroid/view/View;

    if-eqz v5, :cond_6

    .line 12
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->K(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$a0;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 15
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$a0;->getLayoutPosition()I

    move-result v2

    .line 16
    :cond_4
    iget v5, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:I

    if-ne v2, v5, :cond_5

    .line 17
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->f:Landroid/view/View;

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->l0:Landroidx/recyclerview/widget/RecyclerView$x;

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$w;->g:Landroidx/recyclerview/widget/RecyclerView$w$a;

    invoke-virtual {p0, v2, v3, v5}, Landroidx/recyclerview/widget/RecyclerView$w;->c(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$x;Landroidx/recyclerview/widget/RecyclerView$w$a;)V

    .line 18
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->g:Landroidx/recyclerview/widget/RecyclerView$w$a;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$w$a;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 19
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->d()V

    goto :goto_0

    :cond_5
    const-string v2, "RecyclerView"

    const-string v5, "Passed over target position while smooth scrolling."

    .line 20
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iput-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$w;->f:Landroid/view/View;

    .line 22
    :cond_6
    :goto_0
    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->e:Z

    if-eqz v2, :cond_e

    .line 23
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->l0:Landroidx/recyclerview/widget/RecyclerView$x;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->g:Landroidx/recyclerview/widget/RecyclerView$w$a;

    move-object v3, p0

    check-cast v3, Lsf;

    .line 24
    iget-object v5, v3, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->q:Landroidx/recyclerview/widget/RecyclerView$m;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$m;->y()I

    move-result v5

    if-nez v5, :cond_7

    .line 25
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$w;->d()V

    goto/16 :goto_2

    .line 26
    :cond_7
    iget v5, v3, Lsf;->o:I

    sub-int p1, v5, p1

    mul-int v5, v5, p1

    if-gtz v5, :cond_8

    const/4 p1, 0x0

    :cond_8
    iput p1, v3, Lsf;->o:I

    .line 27
    iget v5, v3, Lsf;->p:I

    sub-int p2, v5, p2

    mul-int v5, v5, p2

    if-gtz v5, :cond_9

    const/4 p2, 0x0

    :cond_9
    iput p2, v3, Lsf;->p:I

    if-nez p1, :cond_c

    if-nez p2, :cond_c

    .line 28
    iget p1, v3, Landroidx/recyclerview/widget/RecyclerView$w;->a:I

    .line 29
    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/RecyclerView$w;->a(I)Landroid/graphics/PointF;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 30
    iget p2, p1, Landroid/graphics/PointF;->x:F

    cmpl-float v5, p2, v4

    if-nez v5, :cond_a

    iget v5, p1, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v5, v4

    if-nez v4, :cond_a

    goto :goto_1

    :cond_a
    mul-float p2, p2, p2

    .line 31
    iget v4, p1, Landroid/graphics/PointF;->y:F

    mul-float v4, v4, v4

    add-float/2addr v4, p2

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float p2, v4

    .line 32
    iget v4, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr v4, p2

    iput v4, p1, Landroid/graphics/PointF;->x:F

    .line 33
    iget v5, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr v5, p2

    iput v5, p1, Landroid/graphics/PointF;->y:F

    .line 34
    iput-object p1, v3, Lsf;->k:Landroid/graphics/PointF;

    const p1, 0x461c4000    # 10000.0f

    mul-float v4, v4, p1

    float-to-int p2, v4

    .line 35
    iput p2, v3, Lsf;->o:I

    mul-float v5, v5, p1

    float-to-int p1, v5

    .line 36
    iput p1, v3, Lsf;->p:I

    const/16 p1, 0x2710

    .line 37
    invoke-virtual {v3, p1}, Lsf;->g(I)I

    move-result p1

    .line 38
    iget p2, v3, Lsf;->o:I

    int-to-float p2, p2

    const v4, 0x3f99999a    # 1.2f

    mul-float p2, p2, v4

    float-to-int p2, p2

    iget v5, v3, Lsf;->p:I

    int-to-float v5, v5

    mul-float v5, v5, v4

    float-to-int v5, v5

    int-to-float p1, p1

    mul-float p1, p1, v4

    float-to-int p1, p1

    iget-object v3, v3, Lsf;->i:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v2, p2, v5, p1, v3}, Landroidx/recyclerview/widget/RecyclerView$w$a;->b(IIILandroid/view/animation/Interpolator;)V

    goto :goto_2

    .line 39
    :cond_b
    :goto_1
    iget p1, v3, Landroidx/recyclerview/widget/RecyclerView$w;->a:I

    .line 40
    iput p1, v2, Landroidx/recyclerview/widget/RecyclerView$w$a;->d:I

    .line 41
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$w;->d()V

    .line 42
    :cond_c
    :goto_2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->g:Landroidx/recyclerview/widget/RecyclerView$w$a;

    .line 43
    iget p2, p1, Landroidx/recyclerview/widget/RecyclerView$w$a;->d:I

    const/4 v2, 0x1

    if-ltz p2, :cond_d

    const/4 v1, 0x1

    .line 44
    :cond_d
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$w$a;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    if-eqz v1, :cond_e

    .line 45
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->e:Z

    if-eqz p1, :cond_e

    .line 46
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->d:Z

    .line 47
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView;->i0:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$z;->a()V

    :cond_e
    return-void
.end method

.method public abstract c(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$x;Landroidx/recyclerview/widget/RecyclerView$w$a;)V
.end method

.method public final d()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->e:Z

    .line 3
    move-object v1, p0

    check-cast v1, Lsf;

    .line 4
    iput v0, v1, Lsf;->p:I

    iput v0, v1, Lsf;->o:I

    const/4 v2, 0x0

    .line 5
    iput-object v2, v1, Lsf;->k:Landroid/graphics/PointF;

    .line 6
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->l0:Landroidx/recyclerview/widget/RecyclerView$x;

    const/4 v3, -0x1

    iput v3, v1, Landroidx/recyclerview/widget/RecyclerView$x;->a:I

    .line 7
    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->f:Landroid/view/View;

    .line 8
    iput v3, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:I

    .line 9
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->d:Z

    .line 10
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView$m;

    .line 11
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$m;->g:Landroidx/recyclerview/widget/RecyclerView$w;

    if-ne v1, p0, :cond_1

    .line 12
    iput-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$m;->g:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 13
    :cond_1
    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView$m;

    .line 14
    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method
