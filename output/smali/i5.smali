.class public Li5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:I

.field public a:Landroid/view/View;

.field public b:I

.field public c:I

.field public d:Lk5;

.field public e:Lk5;

.field public f:Lh5;

.field public g:Lh5;

.field public h:[Lp4;

.field public i:Lp4;

.field public j:F

.field public k:F

.field public l:F

.field public m:[I

.field public n:[D

.field public o:[D

.field public p:[Ljava/lang/String;

.field public q:[I

.field public r:I

.field public s:[F

.field public t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lk5;",
            ">;"
        }
    .end annotation
.end field

.field public u:[F

.field public v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lx4;",
            ">;"
        }
    .end annotation
.end field

.field public w:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ln5;",
            ">;"
        }
    .end annotation
.end field

.field public x:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lm5;",
            ">;"
        }
    .end annotation
.end field

.field public y:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lb5;",
            ">;"
        }
    .end annotation
.end field

.field public z:[Lg5;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Li5;->c:I

    .line 3
    new-instance v1, Lk5;

    invoke-direct {v1}, Lk5;-><init>()V

    iput-object v1, p0, Li5;->d:Lk5;

    .line 4
    new-instance v1, Lk5;

    invoke-direct {v1}, Lk5;-><init>()V

    iput-object v1, p0, Li5;->e:Lk5;

    .line 5
    new-instance v1, Lh5;

    invoke-direct {v1}, Lh5;-><init>()V

    iput-object v1, p0, Li5;->f:Lh5;

    .line 6
    new-instance v1, Lh5;

    invoke-direct {v1}, Lh5;-><init>()V

    iput-object v1, p0, Li5;->g:Lh5;

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 7
    iput v1, p0, Li5;->j:F

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Li5;->k:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    iput v1, p0, Li5;->l:F

    const/4 v1, 0x4

    .line 10
    iput v1, p0, Li5;->r:I

    new-array v1, v1, [F

    .line 11
    iput-object v1, p0, Li5;->s:[F

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Li5;->t:Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [F

    .line 13
    iput-object v1, p0, Li5;->u:[F

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Li5;->v:Ljava/util/ArrayList;

    .line 15
    iput v0, p0, Li5;->A:I

    .line 16
    iput-object p1, p0, Li5;->a:Landroid/view/View;

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Li5;->b:I

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 19
    instance-of v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    if-eqz v0, :cond_0

    .line 20
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 21
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->U:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(F[F)F
    .locals 10

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 1
    aput v1, p2, v2

    goto :goto_0

    .line 2
    :cond_0
    iget v3, p0, Li5;->l:F

    float-to-double v4, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v4, v6

    if-eqz v8, :cond_2

    .line 3
    iget v4, p0, Li5;->k:F

    cmpg-float v5, p1, v4

    if-gez v5, :cond_1

    const/4 p1, 0x0

    :cond_1
    cmpl-float v5, p1, v4

    if-lez v5, :cond_2

    float-to-double v8, p1

    cmpg-double v5, v8, v6

    if-gez v5, :cond_2

    sub-float/2addr p1, v4

    mul-float p1, p1, v3

    .line 4
    :cond_2
    :goto_0
    iget-object v3, p0, Li5;->d:Lk5;

    iget-object v3, v3, Lk5;->e:Lq4;

    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 5
    iget-object v5, p0, Li5;->t:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lk5;

    .line 6
    iget-object v7, v6, Lk5;->e:Lq4;

    if-eqz v7, :cond_3

    .line 7
    iget v8, v6, Lk5;->g:F

    cmpg-float v9, v8, p1

    if-gez v9, :cond_4

    move-object v3, v7

    move v0, v8

    goto :goto_1

    .line 8
    :cond_4
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 9
    iget v4, v6, Lk5;->g:F

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_7

    .line 10
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_2

    :cond_6
    move v1, v4

    :goto_2
    sub-float/2addr p1, v0

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    float-to-double v4, p1

    .line 11
    invoke-virtual {v3, v4, v5}, Lq4;->a(D)D

    move-result-wide v6

    double-to-float p1, v6

    mul-float p1, p1, v1

    add-float/2addr p1, v0

    if-eqz p2, :cond_7

    .line 12
    invoke-virtual {v3, v4, v5}, Lq4;->b(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p2, v2

    :cond_7
    return p1
.end method

.method public b(FFF[F)V
    .locals 11

    .line 1
    iget-object v0, p0, Li5;->u:[F

    invoke-virtual {p0, p1, v0}, Li5;->a(F[F)F

    move-result p1

    .line 2
    iget-object v0, p0, Li5;->h:[Lp4;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3
    aget-object v0, v0, v1

    float-to-double v2, p1

    iget-object p1, p0, Li5;->o:[D

    invoke-virtual {v0, v2, v3, p1}, Lp4;->f(D[D)V

    .line 4
    iget-object p1, p0, Li5;->h:[Lp4;

    aget-object p1, p1, v1

    iget-object v0, p0, Li5;->n:[D

    invoke-virtual {p1, v2, v3, v0}, Lp4;->c(D[D)V

    .line 5
    iget-object p1, p0, Li5;->u:[F

    aget p1, p1, v1

    .line 6
    :goto_0
    iget-object v9, p0, Li5;->o:[D

    array-length v0, v9

    if-ge v1, v0, :cond_0

    .line 7
    aget-wide v4, v9, v1

    float-to-double v6, p1

    mul-double v4, v4, v6

    aput-wide v4, v9, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Li5;->i:Lp4;

    if-eqz p1, :cond_2

    .line 9
    iget-object v0, p0, Li5;->n:[D

    array-length v1, v0

    if-lez v1, :cond_1

    .line 10
    invoke-virtual {p1, v2, v3, v0}, Lp4;->c(D[D)V

    .line 11
    iget-object p1, p0, Li5;->i:Lp4;

    iget-object v0, p0, Li5;->o:[D

    invoke-virtual {p1, v2, v3, v0}, Lp4;->f(D[D)V

    .line 12
    iget-object v4, p0, Li5;->d:Lk5;

    iget-object v8, p0, Li5;->m:[I

    iget-object v9, p0, Li5;->o:[D

    iget-object v10, p0, Li5;->n:[D

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v4 .. v10}, Lk5;->w(FF[F[I[D[D)V

    :cond_1
    return-void

    .line 13
    :cond_2
    iget-object v4, p0, Li5;->d:Lk5;

    iget-object v8, p0, Li5;->m:[I

    iget-object v10, p0, Li5;->n:[D

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v4 .. v10}, Lk5;->w(FF[F[I[D[D)V

    return-void

    .line 14
    :cond_3
    iget-object p1, p0, Li5;->e:Lk5;

    iget v0, p1, Lk5;->i:F

    iget-object v2, p0, Li5;->d:Lk5;

    iget v3, v2, Lk5;->i:F

    sub-float/2addr v0, v3

    .line 15
    iget v3, p1, Lk5;->j:F

    iget v4, v2, Lk5;->j:F

    sub-float/2addr v3, v4

    .line 16
    iget v4, p1, Lk5;->k:F

    iget v5, v2, Lk5;->k:F

    sub-float/2addr v4, v5

    .line 17
    iget p1, p1, Lk5;->l:F

    iget v2, v2, Lk5;->l:F

    sub-float/2addr p1, v2

    add-float/2addr v4, v0

    add-float/2addr p1, v3

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v5, v2, p2

    mul-float v5, v5, v0

    mul-float v4, v4, p2

    add-float/2addr v4, v5

    .line 18
    aput v4, p4, v1

    sub-float/2addr v2, p3

    mul-float v2, v2, v3

    mul-float p1, p1, p3

    add-float/2addr p1, v2

    const/4 p2, 0x1

    .line 19
    aput p1, p4, p2

    return-void
.end method

.method public c(Landroid/view/View;FJLz4;)Z
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const/4 v1, 0x0

    move/from16 v2, p2

    .line 1
    invoke-virtual {v0, v2, v1}, Li5;->a(F[F)F

    move-result v8

    .line 2
    iget-object v2, v0, Li5;->x:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm5;

    .line 4
    invoke-virtual {v3, v7, v8}, Lm5;->c(Landroid/view/View;F)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, v0, Li5;->w:Ljava/util/HashMap;

    const/4 v9, 0x0

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v2, 0x0

    move-object v11, v1

    const/4 v12, 0x0

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln5;

    .line 7
    instance-of v2, v1, Ln5$d;

    if-eqz v2, :cond_1

    .line 8
    move-object v11, v1

    check-cast v11, Ln5$d;

    goto :goto_1

    :cond_1
    move-object/from16 v2, p1

    move v3, v8

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    .line 9
    invoke-virtual/range {v1 .. v6}, Ln5;->d(Landroid/view/View;FJLz4;)Z

    move-result v1

    or-int/2addr v12, v1

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    move-object v11, v1

    .line 10
    :cond_3
    iget-object v1, v0, Li5;->h:[Lp4;

    if-eqz v1, :cond_35

    .line 11
    aget-object v1, v1, v9

    float-to-double v13, v8

    iget-object v2, v0, Li5;->n:[D

    invoke-virtual {v1, v13, v14, v2}, Lp4;->c(D[D)V

    .line 12
    iget-object v1, v0, Li5;->h:[Lp4;

    aget-object v1, v1, v9

    iget-object v2, v0, Li5;->o:[D

    invoke-virtual {v1, v13, v14, v2}, Lp4;->f(D[D)V

    .line 13
    iget-object v1, v0, Li5;->i:Lp4;

    if-eqz v1, :cond_4

    .line 14
    iget-object v2, v0, Li5;->n:[D

    array-length v3, v2

    if-lez v3, :cond_4

    .line 15
    invoke-virtual {v1, v13, v14, v2}, Lp4;->c(D[D)V

    .line 16
    iget-object v1, v0, Li5;->i:Lp4;

    iget-object v2, v0, Li5;->o:[D

    invoke-virtual {v1, v13, v14, v2}, Lp4;->f(D[D)V

    .line 17
    :cond_4
    iget-object v1, v0, Li5;->d:Lk5;

    iget-object v2, v0, Li5;->m:[I

    iget-object v3, v0, Li5;->n:[D

    iget-object v4, v0, Li5;->o:[D

    .line 18
    iget v5, v1, Lk5;->i:F

    .line 19
    iget v6, v1, Lk5;->j:F

    .line 20
    iget v9, v1, Lk5;->k:F

    .line 21
    iget v10, v1, Lk5;->l:F

    .line 22
    array-length v15, v2

    if-eqz v15, :cond_5

    iget-object v15, v1, Lk5;->q:[D

    array-length v15, v15

    move/from16 p2, v5

    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    aget v5, v2, v5

    if-gt v15, v5, :cond_6

    .line 23
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    aget v5, v2, v5

    add-int/lit8 v5, v5, 0x1

    .line 24
    new-array v15, v5, [D

    iput-object v15, v1, Lk5;->q:[D

    .line 25
    new-array v5, v5, [D

    iput-object v5, v1, Lk5;->r:[D

    goto :goto_2

    :cond_5
    move/from16 p2, v5

    .line 26
    :cond_6
    :goto_2
    iget-object v5, v1, Lk5;->q:[D

    move v15, v9

    move/from16 v16, v10

    const-wide/high16 v9, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v5, v9, v10}, Ljava/util/Arrays;->fill([DD)V

    const/4 v5, 0x0

    .line 27
    :goto_3
    array-length v9, v2

    if-ge v5, v9, :cond_7

    .line 28
    iget-object v9, v1, Lk5;->q:[D

    aget v10, v2, v5

    aget-wide v17, v3, v5

    aput-wide v17, v9, v10

    .line 29
    iget-object v9, v1, Lk5;->r:[D

    aget v10, v2, v5

    aget-wide v17, v4, v5

    aput-wide v17, v9, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v9, v6

    move/from16 v17, v16

    const/4 v10, 0x0

    const/16 v16, 0x0

    move/from16 v6, p2

    move/from16 p2, v12

    .line 30
    :goto_4
    iget-object v12, v1, Lk5;->q:[D

    move/from16 v18, v8

    array-length v8, v12

    if-ge v2, v8, :cond_f

    .line 31
    aget-wide v19, v12, v2

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-eqz v8, :cond_8

    move-object v8, v11

    goto :goto_6

    :cond_8
    const-wide/16 v19, 0x0

    .line 32
    iget-object v8, v1, Lk5;->q:[D

    aget-wide v21, v8, v2

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_5

    :cond_9
    iget-object v8, v1, Lk5;->q:[D

    aget-wide v21, v8, v2

    add-double v19, v21, v19

    :goto_5
    move-object v8, v11

    move-wide/from16 v11, v19

    double-to-float v11, v11

    .line 33
    iget-object v12, v1, Lk5;->r:[D

    move/from16 v19, v11

    aget-wide v11, v12, v2

    double-to-float v11, v11

    const/4 v12, 0x1

    if-eq v2, v12, :cond_e

    const/4 v12, 0x2

    if-eq v2, v12, :cond_d

    const/4 v12, 0x3

    if-eq v2, v12, :cond_c

    const/4 v12, 0x4

    if-eq v2, v12, :cond_b

    const/4 v11, 0x5

    if-eq v2, v11, :cond_a

    goto :goto_6

    :cond_a
    move/from16 v3, v19

    goto :goto_6

    :cond_b
    move/from16 v16, v11

    move/from16 v17, v19

    goto :goto_6

    :cond_c
    move v5, v11

    move/from16 v15, v19

    goto :goto_6

    :cond_d
    move v10, v11

    move/from16 v9, v19

    goto :goto_6

    :cond_e
    move v4, v11

    move/from16 v6, v19

    :goto_6
    add-int/lit8 v2, v2, 0x1

    move-object v11, v8

    move/from16 v8, v18

    goto :goto_4

    :cond_f
    move-object v8, v11

    .line 34
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_11

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 35
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_10

    .line 36
    invoke-virtual {v7, v1}, Landroid/view/View;->setRotation(F)V

    :cond_10
    move-wide/from16 v19, v13

    goto :goto_8

    :cond_11
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 37
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    goto :goto_7

    :cond_12
    const/high16 v1, 0x7fc00000    # Float.NaN

    :goto_7
    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v5, v2

    add-float/2addr v5, v4

    div-float v16, v16, v2

    add-float v2, v16, v10

    float-to-double v10, v1

    float-to-double v3, v3

    float-to-double v1, v2

    move-wide/from16 v19, v13

    float-to-double v12, v5

    .line 38
    invoke-static {v1, v2, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    add-double/2addr v1, v3

    add-double/2addr v1, v10

    double-to-float v1, v1

    .line 39
    invoke-virtual {v7, v1}, Landroid/view/View;->setRotation(F)V

    :goto_8
    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v6, v1

    float-to-int v2, v6

    add-float/2addr v9, v1

    float-to-int v1, v9

    add-float/2addr v6, v15

    float-to-int v3, v6

    add-float v9, v9, v17

    float-to-int v4, v9

    sub-int v5, v3, v2

    sub-int v6, v4, v1

    .line 40
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    if-ne v5, v9, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    if-eq v6, v9, :cond_13

    goto :goto_9

    :cond_13
    const/4 v9, 0x0

    goto :goto_a

    :cond_14
    :goto_9
    const/4 v9, 0x1

    :goto_a
    if-eqz v9, :cond_15

    const/high16 v9, 0x40000000    # 2.0f

    .line 41
    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 42
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 43
    invoke-virtual {v7, v5, v6}, Landroid/view/View;->measure(II)V

    .line 44
    :cond_15
    invoke-virtual {v7, v2, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 45
    iget-object v1, v0, Li5;->x:Ljava/util/HashMap;

    if-eqz v1, :cond_17

    .line 46
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm5;

    .line 47
    instance-of v3, v2, Lm5$d;

    if-eqz v3, :cond_16

    .line 48
    check-cast v2, Lm5$d;

    iget-object v3, v0, Li5;->o:[D

    const/4 v4, 0x0

    aget-wide v5, v3, v4

    const/4 v9, 0x1

    aget-wide v9, v3, v9

    .line 49
    iget-object v2, v2, Lm5;->a:Lp4;

    move-wide/from16 v11, v19

    invoke-virtual {v2, v11, v12, v4}, Lp4;->b(DI)D

    move-result-wide v2

    double-to-float v2, v2

    .line 50
    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v7, v2}, Landroid/view/View;->setRotation(F)V

    goto :goto_b

    :cond_17
    move-wide/from16 v11, v19

    if-eqz v8, :cond_18

    .line 51
    iget-object v1, v0, Li5;->o:[D

    const/4 v2, 0x0

    aget-wide v9, v1, v2

    const/4 v2, 0x1

    aget-wide v13, v1, v2

    move-object v1, v8

    move/from16 v2, v18

    move-wide/from16 v3, p3

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    .line 52
    invoke-virtual/range {v1 .. v6}, Ln5;->b(FJLandroid/view/View;Lz4;)F

    move-result v1

    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v7, v1}, Landroid/view/View;->setRotation(F)V

    .line 53
    iget-boolean v1, v8, Ln5;->h:Z

    or-int v1, v1, p2

    goto :goto_c

    :cond_18
    move/from16 v1, p2

    :goto_c
    const/4 v2, 0x1

    .line 54
    :goto_d
    iget-object v3, v0, Li5;->h:[Lp4;

    array-length v4, v3

    if-ge v2, v4, :cond_19

    .line 55
    aget-object v3, v3, v2

    .line 56
    iget-object v4, v0, Li5;->s:[F

    invoke-virtual {v3, v11, v12, v4}, Lp4;->d(D[F)V

    .line 57
    iget-object v3, v0, Li5;->d:Lk5;

    iget-object v3, v3, Lk5;->o:Ljava/util/LinkedHashMap;

    iget-object v4, v0, Li5;->p:[Ljava/lang/String;

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly6;

    iget-object v4, v0, Li5;->s:[F

    invoke-virtual {v3, v7, v4}, Ly6;->g(Landroid/view/View;[F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 58
    :cond_19
    iget-object v2, v0, Li5;->f:Lh5;

    iget v3, v2, Lh5;->f:I

    if-nez v3, :cond_1c

    const/4 v3, 0x0

    cmpg-float v3, v18, v3

    if-gtz v3, :cond_1a

    .line 59
    iget v2, v2, Lh5;->g:I

    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_e

    :cond_1a
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v18, v3

    if-ltz v3, :cond_1b

    .line 60
    iget-object v2, v0, Li5;->g:Lh5;

    iget v2, v2, Lh5;->g:I

    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_e

    .line 61
    :cond_1b
    iget-object v3, v0, Li5;->g:Lh5;

    iget v3, v3, Lh5;->g:I

    iget v2, v2, Lh5;->g:I

    if-eq v3, v2, :cond_1c

    const/4 v2, 0x0

    .line 62
    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    .line 63
    :cond_1c
    :goto_e
    iget-object v2, v0, Li5;->z:[Lg5;

    if-eqz v2, :cond_34

    const/4 v2, 0x0

    .line 64
    :goto_f
    iget-object v3, v0, Li5;->z:[Lg5;

    array-length v4, v3

    if-ge v2, v4, :cond_34

    .line 65
    aget-object v3, v3, v2

    .line 66
    iget v4, v3, Lg5;->j:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_23

    .line 67
    iget-object v4, v3, Lg5;->k:Landroid/view/View;

    if-nez v4, :cond_1d

    .line 68
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget v6, v3, Lg5;->j:I

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Lg5;->k:Landroid/view/View;

    .line 69
    :cond_1d
    iget-object v4, v3, Lg5;->v:Landroid/graphics/RectF;

    iget-object v6, v3, Lg5;->k:Landroid/view/View;

    iget-boolean v8, v3, Lg5;->u:Z

    invoke-virtual {v3, v4, v6, v8}, Lg5;->e(Landroid/graphics/RectF;Landroid/view/View;Z)V

    .line 70
    iget-object v4, v3, Lg5;->w:Landroid/graphics/RectF;

    iget-boolean v6, v3, Lg5;->u:Z

    invoke-virtual {v3, v4, v7, v6}, Lg5;->e(Landroid/graphics/RectF;Landroid/view/View;Z)V

    .line 71
    iget-object v4, v3, Lg5;->v:Landroid/graphics/RectF;

    iget-object v6, v3, Lg5;->w:Landroid/graphics/RectF;

    invoke-virtual {v4, v6}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 72
    iget-boolean v4, v3, Lg5;->m:Z

    if-eqz v4, :cond_1e

    const/4 v4, 0x0

    .line 73
    iput-boolean v4, v3, Lg5;->m:Z

    const/4 v6, 0x1

    goto :goto_10

    :cond_1e
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 74
    :goto_10
    iget-boolean v8, v3, Lg5;->o:Z

    if-eqz v8, :cond_1f

    .line 75
    iput-boolean v4, v3, Lg5;->o:Z

    const/4 v4, 0x1

    const/4 v8, 0x1

    goto :goto_11

    :cond_1f
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 76
    :goto_11
    iput-boolean v4, v3, Lg5;->n:Z

    const/4 v4, 0x0

    :goto_12
    move/from16 v9, v18

    goto/16 :goto_18

    :cond_20
    const/4 v4, 0x1

    .line 77
    iget-boolean v6, v3, Lg5;->m:Z

    if-nez v6, :cond_21

    .line 78
    iput-boolean v4, v3, Lg5;->m:Z

    const/4 v6, 0x1

    goto :goto_13

    :cond_21
    const/4 v6, 0x0

    .line 79
    :goto_13
    iget-boolean v8, v3, Lg5;->n:Z

    if-eqz v8, :cond_22

    const/4 v8, 0x0

    .line 80
    iput-boolean v8, v3, Lg5;->n:Z

    const/4 v8, 0x1

    goto :goto_14

    :cond_22
    const/4 v8, 0x0

    .line 81
    :goto_14
    iput-boolean v4, v3, Lg5;->o:Z

    move v4, v8

    goto/16 :goto_17

    .line 82
    :cond_23
    iget-boolean v4, v3, Lg5;->m:Z

    if-eqz v4, :cond_24

    .line 83
    iget v4, v3, Lg5;->p:F

    sub-float v8, v18, v4

    .line 84
    iget v6, v3, Lg5;->t:F

    sub-float/2addr v6, v4

    mul-float v6, v6, v8

    const/4 v4, 0x0

    cmpg-float v4, v6, v4

    if-gez v4, :cond_25

    const/4 v4, 0x0

    .line 85
    iput-boolean v4, v3, Lg5;->m:Z

    const/4 v4, 0x1

    const/4 v6, 0x1

    goto :goto_15

    .line 86
    :cond_24
    iget v4, v3, Lg5;->p:F

    sub-float v8, v18, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v6, v3, Lg5;->l:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_25

    const/4 v4, 0x1

    .line 87
    iput-boolean v4, v3, Lg5;->m:Z

    :cond_25
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 88
    :goto_15
    iget-boolean v4, v3, Lg5;->n:Z

    if-eqz v4, :cond_26

    .line 89
    iget v4, v3, Lg5;->p:F

    sub-float v8, v18, v4

    .line 90
    iget v9, v3, Lg5;->t:F

    sub-float/2addr v9, v4

    mul-float v9, v9, v8

    const/4 v4, 0x0

    cmpg-float v9, v9, v4

    if-gez v9, :cond_27

    cmpg-float v4, v8, v4

    if-gez v4, :cond_27

    const/4 v4, 0x0

    .line 91
    iput-boolean v4, v3, Lg5;->n:Z

    const/4 v4, 0x1

    goto :goto_16

    .line 92
    :cond_26
    iget v4, v3, Lg5;->p:F

    sub-float v8, v18, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v8, v3, Lg5;->l:F

    cmpl-float v4, v4, v8

    if-lez v4, :cond_27

    const/4 v4, 0x1

    .line 93
    iput-boolean v4, v3, Lg5;->n:Z

    :cond_27
    const/4 v4, 0x0

    .line 94
    :goto_16
    iget-boolean v8, v3, Lg5;->o:Z

    if-eqz v8, :cond_28

    .line 95
    iget v8, v3, Lg5;->p:F

    sub-float v9, v18, v8

    .line 96
    iget v10, v3, Lg5;->t:F

    sub-float/2addr v10, v8

    mul-float v10, v10, v9

    const/4 v8, 0x0

    cmpg-float v10, v10, v8

    if-gez v10, :cond_29

    cmpl-float v8, v9, v8

    if-lez v8, :cond_29

    const/4 v8, 0x0

    .line 97
    iput-boolean v8, v3, Lg5;->o:Z

    const/4 v8, 0x1

    goto/16 :goto_12

    .line 98
    :cond_28
    iget v8, v3, Lg5;->p:F

    sub-float v8, v18, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, v3, Lg5;->l:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_29

    const/4 v8, 0x1

    .line 99
    iput-boolean v8, v3, Lg5;->o:Z

    :cond_29
    :goto_17
    const/4 v8, 0x0

    goto/16 :goto_12

    .line 100
    :goto_18
    iput v9, v3, Lg5;->t:F

    if-nez v4, :cond_2a

    if-nez v6, :cond_2a

    if-eqz v8, :cond_2c

    .line 101
    :cond_2a
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v11, v3, Lg5;->i:I

    .line 102
    iget-object v12, v10, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    if-eqz v12, :cond_2b

    .line 103
    invoke-interface {v12, v10, v11, v8, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->c(Landroidx/constraintlayout/motion/widget/MotionLayout;IZF)V

    .line 104
    :cond_2b
    iget-object v12, v10, Landroidx/constraintlayout/motion/widget/MotionLayout;->j0:Ljava/util/ArrayList;

    if-eqz v12, :cond_2c

    .line 105
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_19
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    .line 106
    invoke-interface {v13, v10, v11, v8, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->c(Landroidx/constraintlayout/motion/widget/MotionLayout;IZF)V

    goto :goto_19

    .line 107
    :cond_2c
    iget v10, v3, Lg5;->f:I

    if-ne v10, v5, :cond_2d

    move-object v5, v7

    goto :goto_1a

    :cond_2d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v10, v3, Lg5;->f:I

    invoke-virtual {v5, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    :goto_1a
    const-string v10, "Could not find method \""

    const-string v11, "Exception in call \""

    const-string v12, " "

    const-string v13, "\"on class "

    const-string v14, "KeyTrigger"

    if-eqz v4, :cond_2f

    .line 108
    iget-object v4, v3, Lg5;->g:Ljava/lang/String;

    if-eqz v4, :cond_2f

    .line 109
    iget-object v4, v3, Lg5;->r:Ljava/lang/reflect/Method;

    if-nez v4, :cond_2e

    .line 110
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    iget-object v15, v3, Lg5;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 p2, v1

    const/4 v1, 0x0

    :try_start_1
    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v4, v15, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, v3, Lg5;->r:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1b

    :catch_0
    move/from16 p2, v1

    .line 111
    :catch_1
    invoke-static {v10}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v3, Lg5;->g:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ld0$h;->F(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-static {v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :cond_2e
    move/from16 p2, v1

    .line 114
    :goto_1b
    :try_start_2
    iget-object v1, v3, Lg5;->r:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1c

    .line 115
    :catch_2
    invoke-static {v11}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v3, Lg5;->g:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ld0$h;->F(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-static {v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    :cond_2f
    move/from16 p2, v1

    :goto_1c
    if-eqz v8, :cond_31

    .line 118
    iget-object v1, v3, Lg5;->h:Ljava/lang/String;

    if-eqz v1, :cond_31

    .line 119
    iget-object v1, v3, Lg5;->s:Ljava/lang/reflect/Method;

    if-nez v1, :cond_30

    .line 120
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v4, v3, Lg5;->h:Ljava/lang/String;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, v3, Lg5;->s:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1d

    .line 121
    :catch_3
    invoke-static {v10}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v3, Lg5;->h:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ld0$h;->F(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-static {v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_30
    :goto_1d
    :try_start_4
    iget-object v1, v3, Lg5;->s:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_1e

    .line 125
    :catch_4
    invoke-static {v11}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v3, Lg5;->h:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ld0$h;->F(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-static {v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    :goto_1e
    if-eqz v6, :cond_33

    .line 128
    iget-object v1, v3, Lg5;->e:Ljava/lang/String;

    if-eqz v1, :cond_33

    .line 129
    iget-object v1, v3, Lg5;->q:Ljava/lang/reflect/Method;

    if-nez v1, :cond_32

    .line 130
    :try_start_5
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v4, v3, Lg5;->e:Ljava/lang/String;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, v3, Lg5;->q:Ljava/lang/reflect/Method;
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_1f

    .line 131
    :catch_5
    invoke-static {v10}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v3, Lg5;->e:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ld0$h;->F(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-static {v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_32
    :goto_1f
    :try_start_6
    iget-object v1, v3, Lg5;->q:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_20

    .line 135
    :catch_6
    invoke-static {v11}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v3, Lg5;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ld0$h;->F(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-static {v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    :goto_20
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, p2

    move/from16 v18, v9

    goto/16 :goto_f

    :cond_34
    move/from16 p2, v1

    move/from16 v9, v18

    goto :goto_21

    :cond_35
    move v9, v8

    move/from16 p2, v12

    .line 138
    iget-object v1, v0, Li5;->d:Lk5;

    iget v2, v1, Lk5;->i:F

    iget-object v3, v0, Li5;->e:Lk5;

    iget v4, v3, Lk5;->i:F

    invoke-static {v4, v2, v9, v2}, Ljo;->a(FFFF)F

    move-result v2

    .line 139
    iget v4, v1, Lk5;->j:F

    iget v5, v3, Lk5;->j:F

    invoke-static {v5, v4, v9, v4}, Ljo;->a(FFFF)F

    move-result v4

    .line 140
    iget v5, v1, Lk5;->k:F

    iget v6, v3, Lk5;->k:F

    invoke-static {v6, v5, v9, v5}, Ljo;->a(FFFF)F

    move-result v8

    .line 141
    iget v1, v1, Lk5;->l:F

    iget v3, v3, Lk5;->l:F

    invoke-static {v3, v1, v9, v1}, Ljo;->a(FFFF)F

    move-result v10

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v2, v11

    float-to-int v12, v2

    add-float/2addr v4, v11

    float-to-int v11, v4

    add-float/2addr v2, v8

    float-to-int v2, v2

    add-float/2addr v4, v10

    float-to-int v4, v4

    sub-int v8, v2, v12

    sub-int v10, v4, v11

    cmpl-float v5, v6, v5

    if-nez v5, :cond_36

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_37

    :cond_36
    const/high16 v1, 0x40000000    # 2.0f

    .line 142
    invoke-static {v8, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 143
    invoke-static {v10, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 144
    invoke-virtual {v7, v3, v1}, Landroid/view/View;->measure(II)V

    .line 145
    :cond_37
    invoke-virtual {v7, v12, v11, v2, v4}, Landroid/view/View;->layout(IIII)V

    :goto_21
    move/from16 v12, p2

    .line 146
    iget-object v1, v0, Li5;->y:Ljava/util/HashMap;

    if-eqz v1, :cond_39

    .line 147
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb5;

    .line 148
    instance-of v3, v2, Lb5$f;

    if-eqz v3, :cond_38

    .line 149
    check-cast v2, Lb5$f;

    iget-object v3, v0, Li5;->o:[D

    const/4 v4, 0x0

    aget-wide v4, v3, v4

    const/4 v6, 0x1

    aget-wide v10, v3, v6

    .line 150
    invoke-virtual {v2, v9}, Lb5;->a(F)F

    move-result v2

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v7, v2}, Landroid/view/View;->setRotation(F)V

    goto :goto_22

    .line 151
    :cond_38
    invoke-virtual {v2, v7, v9}, Lb5;->c(Landroid/view/View;F)V

    goto :goto_22

    :cond_39
    return v12
.end method

.method public final d(Lk5;)V
    .locals 4

    .line 1
    iget-object v0, p0, Li5;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Li5;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Li5;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Li5;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lk5;->t(FFFF)V

    return-void
.end method

.method public e(IIJ)V
    .locals 32

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 3
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 4
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 5
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget v5, v0, Li5;->A:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 7
    iget-object v6, v0, Li5;->d:Lk5;

    iput v5, v6, Lk5;->n:I

    .line 8
    :cond_0
    iget-object v5, v0, Li5;->f:Lh5;

    iget-object v6, v0, Li5;->g:Lh5;

    .line 9
    iget v7, v5, Lh5;->e:F

    iget v8, v6, Lh5;->e:F

    invoke-virtual {v5, v7, v8}, Lh5;->k(FF)Z

    move-result v7

    const-string v8, "alpha"

    if-eqz v7, :cond_1

    .line 10
    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_1
    iget v7, v5, Lh5;->h:F

    iget v9, v6, Lh5;->h:F

    invoke-virtual {v5, v7, v9}, Lh5;->k(FF)Z

    move-result v7

    const-string v9, "elevation"

    if-eqz v7, :cond_2

    .line 12
    invoke-virtual {v2, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_2
    iget v7, v5, Lh5;->g:I

    iget v10, v6, Lh5;->g:I

    if-eq v7, v10, :cond_4

    iget v11, v5, Lh5;->f:I

    if-nez v11, :cond_4

    if-eqz v7, :cond_3

    if-nez v10, :cond_4

    .line 14
    :cond_3
    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_4
    iget v7, v5, Lh5;->i:F

    iget v10, v6, Lh5;->i:F

    invoke-virtual {v5, v7, v10}, Lh5;->k(FF)Z

    move-result v7

    const-string v10, "rotation"

    if-eqz v7, :cond_5

    .line 16
    invoke-virtual {v2, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_5
    iget v7, v5, Lh5;->s:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    const-string v11, "transitionPathRotate"

    if-eqz v7, :cond_6

    iget v7, v6, Lh5;->s:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_7

    .line 18
    :cond_6
    invoke-virtual {v2, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_7
    iget v7, v5, Lh5;->t:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    const-string v12, "progress"

    if-eqz v7, :cond_8

    iget v7, v6, Lh5;->t:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_9

    .line 20
    :cond_8
    invoke-virtual {v2, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_9
    iget v7, v5, Lh5;->j:F

    iget v13, v6, Lh5;->j:F

    invoke-virtual {v5, v7, v13}, Lh5;->k(FF)Z

    move-result v7

    const-string v13, "rotationX"

    if-eqz v7, :cond_a

    .line 22
    invoke-virtual {v2, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_a
    iget v7, v5, Lh5;->k:F

    iget v14, v6, Lh5;->k:F

    invoke-virtual {v5, v7, v14}, Lh5;->k(FF)Z

    move-result v7

    const-string v14, "rotationY"

    if-eqz v7, :cond_b

    .line 24
    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_b
    iget v7, v5, Lh5;->n:F

    iget v15, v6, Lh5;->n:F

    invoke-virtual {v5, v7, v15}, Lh5;->k(FF)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "transformPivotX"

    .line 26
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_c
    iget v7, v5, Lh5;->o:F

    iget v15, v6, Lh5;->o:F

    invoke-virtual {v5, v7, v15}, Lh5;->k(FF)Z

    move-result v7

    if-eqz v7, :cond_d

    const-string v7, "transformPivotY"

    .line 28
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_d
    iget v7, v5, Lh5;->l:F

    iget v15, v6, Lh5;->l:F

    invoke-virtual {v5, v7, v15}, Lh5;->k(FF)Z

    move-result v7

    const-string v15, "scaleX"

    if-eqz v7, :cond_e

    .line 30
    invoke-virtual {v2, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_e
    iget v7, v5, Lh5;->m:F

    move-object/from16 v16, v13

    iget v13, v6, Lh5;->m:F

    invoke-virtual {v5, v7, v13}, Lh5;->k(FF)Z

    move-result v7

    const-string v13, "scaleY"

    if-eqz v7, :cond_f

    .line 32
    invoke-virtual {v2, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_f
    iget v7, v5, Lh5;->p:F

    move-object/from16 v17, v14

    iget v14, v6, Lh5;->p:F

    invoke-virtual {v5, v7, v14}, Lh5;->k(FF)Z

    move-result v7

    const-string v14, "translationX"

    if-eqz v7, :cond_10

    .line 34
    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_10
    iget v7, v5, Lh5;->q:F

    move-object/from16 v18, v14

    iget v14, v6, Lh5;->q:F

    invoke-virtual {v5, v7, v14}, Lh5;->k(FF)Z

    move-result v7

    const-string v14, "translationY"

    if-eqz v7, :cond_11

    .line 36
    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_11
    iget v7, v5, Lh5;->r:F

    iget v6, v6, Lh5;->r:F

    invoke-virtual {v5, v7, v6}, Lh5;->k(FF)Z

    move-result v5

    const-string v6, "translationZ"

    if-eqz v5, :cond_12

    .line 38
    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_12
    iget-object v5, v0, Li5;->v:Ljava/util/ArrayList;

    if-eqz v5, :cond_1b

    .line 40
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v5

    move-object/from16 v5, v19

    check-cast v5, Lx4;

    move-object/from16 v19, v14

    .line 41
    instance-of v14, v5, Ld5;

    if-eqz v14, :cond_14

    .line 42
    check-cast v5, Ld5;

    .line 43
    new-instance v14, Lk5;

    move-object/from16 v27, v6

    iget-object v6, v0, Li5;->d:Lk5;

    move-object/from16 v28, v12

    iget-object v12, v0, Li5;->e:Lk5;

    move-object/from16 v21, v14

    move/from16 v22, p1

    move/from16 v23, p2

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v12

    invoke-direct/range {v21 .. v26}, Lk5;-><init>(IILd5;Lk5;Lk5;)V

    .line 44
    iget-object v6, v0, Li5;->t:Ljava/util/ArrayList;

    invoke-static {v6, v14}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v6

    if-nez v6, :cond_13

    const-string v12, " KeyPath positon \""

    .line 45
    invoke-static {v12}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v21, v15

    iget v15, v14, Lk5;->h:F

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v15, "\" outside of range"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v15, "MotionController"

    invoke-static {v15, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_13
    move-object/from16 v21, v15

    .line 46
    :goto_1
    iget-object v12, v0, Li5;->t:Ljava/util/ArrayList;

    neg-int v6, v6

    const/4 v15, -0x1

    add-int/2addr v6, v15

    invoke-virtual {v12, v6, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 47
    iget v5, v5, Le5;->e:I

    if-eq v5, v15, :cond_19

    .line 48
    iput v5, v0, Li5;->c:I

    goto :goto_2

    :cond_14
    move-object/from16 v27, v6

    move-object/from16 v28, v12

    move-object/from16 v21, v15

    .line 49
    instance-of v6, v5, La5;

    if-eqz v6, :cond_15

    .line 50
    invoke-virtual {v5, v3}, Lx4;->b(Ljava/util/HashSet;)V

    goto :goto_2

    .line 51
    :cond_15
    instance-of v6, v5, Lf5;

    if-eqz v6, :cond_16

    .line 52
    invoke-virtual {v5, v1}, Lx4;->b(Ljava/util/HashSet;)V

    goto :goto_2

    .line 53
    :cond_16
    instance-of v6, v5, Lg5;

    if-eqz v6, :cond_18

    if-nez v7, :cond_17

    .line 54
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 55
    :cond_17
    check-cast v5, Lg5;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 56
    :cond_18
    invoke-virtual {v5, v4}, Lx4;->d(Ljava/util/HashMap;)V

    .line 57
    invoke-virtual {v5, v2}, Lx4;->b(Ljava/util/HashSet;)V

    :cond_19
    :goto_2
    move-object/from16 v14, v19

    move-object/from16 v5, v20

    move-object/from16 v15, v21

    move-object/from16 v6, v27

    move-object/from16 v12, v28

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v27, v6

    move-object/from16 v28, v12

    move-object/from16 v19, v14

    move-object/from16 v21, v15

    goto :goto_3

    :cond_1b
    move-object/from16 v27, v6

    move-object/from16 v28, v12

    move-object/from16 v19, v14

    move-object/from16 v21, v15

    const/4 v7, 0x0

    :goto_3
    const/4 v5, 0x0

    if-eqz v7, :cond_1c

    new-array v5, v5, [Lg5;

    .line 58
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lg5;

    iput-object v5, v0, Li5;->z:[Lg5;

    .line 59
    :cond_1c
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    const/4 v12, 0x1

    if-nez v5, :cond_36

    .line 60
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Li5;->x:Ljava/util/HashMap;

    .line 61
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_32

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string v15, "CUSTOM,"

    .line 62
    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_20

    .line 63
    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    const-string v6, ","

    .line 64
    invoke-virtual {v14, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v12

    .line 65
    iget-object v12, v0, Li5;->v:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v7, v20

    check-cast v7, Lx4;

    move-object/from16 v20, v5

    .line 66
    iget-object v5, v7, Lx4;->d:Ljava/util/HashMap;

    if-nez v5, :cond_1d

    goto :goto_6

    .line 67
    :cond_1d
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ly6;

    if-eqz v5, :cond_1e

    .line 68
    iget v7, v7, Lx4;->a:I

    invoke-virtual {v15, v7, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_1e
    :goto_6
    move-object/from16 v5, v20

    goto :goto_5

    :cond_1f
    move-object/from16 v20, v5

    .line 69
    new-instance v5, Lm5$b;

    invoke-direct {v5, v14, v15}, Lm5$b;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    move-object/from16 v15, v18

    move-object/from16 v12, v19

    move-object/from16 v7, v27

    move-object/from16 v6, v28

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object v2, v5

    move-object/from16 v3, v17

    move-object/from16 v5, v21

    move-object/from16 v17, v16

    goto/16 :goto_e

    :cond_20
    move-object/from16 v20, v5

    .line 70
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_7
    move-object/from16 v15, v18

    move-object/from16 v12, v19

    move-object/from16 v5, v21

    :goto_8
    move-object/from16 v7, v27

    move-object/from16 v6, v28

    :goto_9
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    goto/16 :goto_b

    :sswitch_0
    const-string v5, "waveOffset"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_21

    goto :goto_7

    :cond_21
    const/16 v5, 0xf

    move-object/from16 v15, v18

    move-object/from16 v12, v19

    move-object/from16 v5, v21

    move-object/from16 v7, v27

    move-object/from16 v6, v28

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    const/16 v16, 0xf

    goto/16 :goto_c

    :sswitch_1
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_22

    goto :goto_7

    :cond_22
    const/16 v5, 0xe

    move-object/from16 v15, v18

    move-object/from16 v12, v19

    move-object/from16 v5, v21

    move-object/from16 v7, v27

    move-object/from16 v6, v28

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    const/16 v16, 0xe

    goto/16 :goto_c

    :sswitch_2
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_23

    goto :goto_7

    :cond_23
    const/16 v5, 0xd

    move-object/from16 v15, v18

    move-object/from16 v12, v19

    move-object/from16 v5, v21

    move-object/from16 v7, v27

    move-object/from16 v6, v28

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    const/16 v16, 0xd

    goto/16 :goto_c

    :sswitch_3
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_24

    goto :goto_7

    :cond_24
    const/16 v5, 0xc

    move-object/from16 v15, v18

    move-object/from16 v12, v19

    move-object/from16 v5, v21

    move-object/from16 v7, v27

    move-object/from16 v6, v28

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    const/16 v16, 0xc

    goto/16 :goto_c

    :sswitch_4
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_25

    goto/16 :goto_7

    :cond_25
    const/16 v5, 0xb

    move-object/from16 v15, v18

    move-object/from16 v12, v19

    move-object/from16 v5, v21

    move-object/from16 v7, v27

    move-object/from16 v6, v28

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    const/16 v16, 0xb

    goto/16 :goto_c

    :sswitch_5
    const-string v5, "transformPivotY"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_26

    goto/16 :goto_7

    :cond_26
    const/16 v5, 0xa

    move-object/from16 v15, v18

    move-object/from16 v12, v19

    move-object/from16 v5, v21

    move-object/from16 v7, v27

    move-object/from16 v6, v28

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    const/16 v16, 0xa

    goto/16 :goto_c

    :sswitch_6
    const-string v5, "transformPivotX"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_27

    goto/16 :goto_7

    :cond_27
    const/16 v5, 0x9

    move-object/from16 v15, v18

    move-object/from16 v12, v19

    move-object/from16 v5, v21

    move-object/from16 v7, v27

    move-object/from16 v6, v28

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    const/16 v16, 0x9

    goto/16 :goto_c

    :sswitch_7
    const-string v5, "waveVariesBy"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_28

    goto/16 :goto_7

    :cond_28
    const/16 v5, 0x8

    move-object/from16 v15, v18

    move-object/from16 v12, v19

    move-object/from16 v5, v21

    move-object/from16 v7, v27

    move-object/from16 v6, v28

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    const/16 v16, 0x8

    goto/16 :goto_c

    :sswitch_8
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_29

    goto/16 :goto_7

    :cond_29
    const/4 v5, 0x7

    move-object/from16 v15, v18

    move-object/from16 v12, v19

    move-object/from16 v5, v21

    move-object/from16 v7, v27

    move-object/from16 v6, v28

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    const/16 v16, 0x7

    goto/16 :goto_c

    :sswitch_9
    move-object/from16 v5, v21

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2a

    move-object/from16 v15, v18

    move-object/from16 v12, v19

    goto/16 :goto_8

    :cond_2a
    const/4 v6, 0x6

    move-object/from16 v15, v18

    move-object/from16 v12, v19

    move-object/from16 v7, v27

    move-object/from16 v6, v28

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    const/16 v16, 0x6

    goto/16 :goto_c

    :sswitch_a
    move-object/from16 v5, v21

    move-object/from16 v6, v28

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2b

    move-object/from16 v15, v18

    move-object/from16 v12, v19

    move-object/from16 v7, v27

    goto/16 :goto_9

    :cond_2b
    const/4 v7, 0x5

    move-object/from16 v15, v18

    move-object/from16 v12, v19

    move-object/from16 v7, v27

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    const/16 v16, 0x5

    goto/16 :goto_c

    :sswitch_b
    move-object/from16 v5, v21

    move-object/from16 v7, v27

    move-object/from16 v6, v28

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2c

    move-object/from16 v15, v18

    move-object/from16 v12, v19

    goto/16 :goto_9

    :cond_2c
    const/4 v12, 0x4

    move-object/from16 v15, v18

    move-object/from16 v12, v19

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    const/16 v16, 0x4

    goto/16 :goto_c

    :sswitch_c
    move-object/from16 v12, v19

    move-object/from16 v5, v21

    move-object/from16 v7, v27

    move-object/from16 v6, v28

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2d

    move-object/from16 v19, v3

    move-object/from16 v3, v17

    move-object/from16 v15, v18

    :goto_a
    move-object/from16 v18, v2

    move-object/from16 v2, v16

    goto/16 :goto_b

    :cond_2d
    const/4 v15, 0x3

    move-object/from16 v19, v3

    move-object/from16 v3, v17

    move-object/from16 v15, v18

    move-object/from16 v18, v2

    move-object/from16 v2, v16

    const/16 v16, 0x3

    goto/16 :goto_c

    :sswitch_d
    move-object/from16 v15, v18

    move-object/from16 v12, v19

    move-object/from16 v5, v21

    move-object/from16 v7, v27

    move-object/from16 v6, v28

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2e

    goto/16 :goto_9

    :cond_2e
    const/16 v18, 0x2

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    const/16 v16, 0x2

    goto :goto_c

    :sswitch_e
    move-object/from16 v15, v18

    move-object/from16 v12, v19

    move-object/from16 v5, v21

    move-object/from16 v7, v27

    move-object/from16 v6, v28

    move-object/from16 v19, v3

    move-object/from16 v3, v17

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2f

    goto :goto_a

    :cond_2f
    const/16 v17, 0x1

    move-object/from16 v18, v2

    move-object/from16 v2, v16

    const/16 v16, 0x1

    goto :goto_c

    :sswitch_f
    move-object/from16 v15, v18

    move-object/from16 v12, v19

    move-object/from16 v5, v21

    move-object/from16 v7, v27

    move-object/from16 v6, v28

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_30

    goto :goto_b

    :cond_30
    const/16 v16, 0x0

    goto :goto_c

    :goto_b
    const/16 v16, -0x1

    :goto_c
    packed-switch v16, :pswitch_data_0

    const/16 v16, 0x0

    goto/16 :goto_d

    .line 71
    :pswitch_0
    new-instance v16, Lm5$a;

    invoke-direct/range {v16 .. v16}, Lm5$a;-><init>()V

    goto :goto_d

    .line 72
    :pswitch_1
    new-instance v16, Lm5$a;

    invoke-direct/range {v16 .. v16}, Lm5$a;-><init>()V

    goto :goto_d

    .line 73
    :pswitch_2
    new-instance v16, Lm5$d;

    invoke-direct/range {v16 .. v16}, Lm5$d;-><init>()V

    goto :goto_d

    .line 74
    :pswitch_3
    new-instance v16, Lm5$c;

    invoke-direct/range {v16 .. v16}, Lm5$c;-><init>()V

    goto :goto_d

    .line 75
    :pswitch_4
    new-instance v16, Lm5$h;

    invoke-direct/range {v16 .. v16}, Lm5$h;-><init>()V

    goto :goto_d

    .line 76
    :pswitch_5
    new-instance v16, Lm5$f;

    invoke-direct/range {v16 .. v16}, Lm5$f;-><init>()V

    goto :goto_d

    .line 77
    :pswitch_6
    new-instance v16, Lm5$e;

    invoke-direct/range {v16 .. v16}, Lm5$e;-><init>()V

    goto :goto_d

    .line 78
    :pswitch_7
    new-instance v16, Lm5$a;

    invoke-direct/range {v16 .. v16}, Lm5$a;-><init>()V

    goto :goto_d

    .line 79
    :pswitch_8
    new-instance v16, Lm5$l;

    invoke-direct/range {v16 .. v16}, Lm5$l;-><init>()V

    goto :goto_d

    .line 80
    :pswitch_9
    new-instance v16, Lm5$k;

    invoke-direct/range {v16 .. v16}, Lm5$k;-><init>()V

    goto :goto_d

    .line 81
    :pswitch_a
    new-instance v16, Lm5$g;

    invoke-direct/range {v16 .. v16}, Lm5$g;-><init>()V

    goto :goto_d

    .line 82
    :pswitch_b
    new-instance v16, Lm5$o;

    invoke-direct/range {v16 .. v16}, Lm5$o;-><init>()V

    goto :goto_d

    .line 83
    :pswitch_c
    new-instance v16, Lm5$n;

    invoke-direct/range {v16 .. v16}, Lm5$n;-><init>()V

    goto :goto_d

    .line 84
    :pswitch_d
    new-instance v16, Lm5$m;

    invoke-direct/range {v16 .. v16}, Lm5$m;-><init>()V

    goto :goto_d

    .line 85
    :pswitch_e
    new-instance v16, Lm5$j;

    invoke-direct/range {v16 .. v16}, Lm5$j;-><init>()V

    goto :goto_d

    .line 86
    :pswitch_f
    new-instance v16, Lm5$i;

    invoke-direct/range {v16 .. v16}, Lm5$i;-><init>()V

    :goto_d
    move-object/from16 v17, v2

    move-object/from16 v2, v16

    :goto_e
    if-nez v2, :cond_31

    const/4 v2, 0x1

    move-object/from16 v21, v5

    move-object/from16 v28, v6

    move-object/from16 v27, v7

    move-object/from16 v16, v17

    move-object/from16 v2, v18

    move-object/from16 v5, v20

    move-object/from16 v17, v3

    move-object/from16 v18, v15

    move-object/from16 v3, v19

    move-object/from16 v19, v12

    const/4 v12, 0x1

    goto/16 :goto_4

    .line 87
    :cond_31
    iput-object v14, v2, Lm5;->e:Ljava/lang/String;

    move-object/from16 v16, v3

    .line 88
    iget-object v3, v0, Li5;->x:Ljava/util/HashMap;

    invoke-virtual {v3, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    move-object/from16 v21, v5

    move-object/from16 v28, v6

    move-object/from16 v27, v7

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v5, v20

    move-object/from16 v19, v12

    move-object/from16 v18, v15

    const/4 v12, 0x1

    move-object/from16 v31, v17

    move-object/from16 v17, v16

    move-object/from16 v16, v31

    goto/16 :goto_4

    :cond_32
    move-object/from16 v15, v18

    move-object/from16 v12, v19

    move-object/from16 v5, v21

    move-object/from16 v7, v27

    move-object/from16 v6, v28

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v31, v17

    move-object/from16 v17, v16

    move-object/from16 v16, v31

    .line 89
    iget-object v2, v0, Li5;->v:Ljava/util/ArrayList;

    if-eqz v2, :cond_34

    .line 90
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_33
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx4;

    .line 91
    instance-of v14, v3, Ly4;

    if-eqz v14, :cond_33

    .line 92
    iget-object v14, v0, Li5;->x:Ljava/util/HashMap;

    invoke-virtual {v3, v14}, Lx4;->a(Ljava/util/HashMap;)V

    goto :goto_f

    .line 93
    :cond_34
    iget-object v2, v0, Li5;->f:Lh5;

    iget-object v3, v0, Li5;->x:Ljava/util/HashMap;

    const/4 v14, 0x0

    invoke-virtual {v2, v3, v14}, Lh5;->i(Ljava/util/HashMap;I)V

    .line 94
    iget-object v2, v0, Li5;->g:Lh5;

    iget-object v3, v0, Li5;->x:Ljava/util/HashMap;

    const/16 v14, 0x64

    invoke-virtual {v2, v3, v14}, Lh5;->i(Ljava/util/HashMap;I)V

    .line 95
    iget-object v2, v0, Li5;->x:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 96
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_35

    .line 97
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    goto :goto_11

    :cond_35
    const/4 v14, 0x0

    :goto_11
    move-object/from16 v20, v2

    .line 98
    iget-object v2, v0, Li5;->x:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm5;

    invoke-virtual {v2, v14}, Lm5;->d(I)V

    move-object/from16 v2, v20

    goto :goto_10

    :cond_36
    move-object/from16 v15, v18

    move-object/from16 v12, v19

    move-object/from16 v5, v21

    move-object/from16 v7, v27

    move-object/from16 v6, v28

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v31, v17

    move-object/from16 v17, v16

    move-object/from16 v16, v31

    .line 99
    :cond_37
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5f

    .line 100
    iget-object v2, v0, Li5;->w:Ljava/util/HashMap;

    if-nez v2, :cond_38

    .line 101
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Li5;->w:Ljava/util/HashMap;

    .line 102
    :cond_38
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 103
    iget-object v3, v0, Li5;->w:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    goto :goto_12

    :cond_39
    const-string v3, "CUSTOM,"

    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 105
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    const-string v14, ","

    .line 106
    invoke-virtual {v2, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/16 v20, 0x1

    aget-object v14, v14, v20

    move-object/from16 v20, v1

    .line 107
    iget-object v1, v0, Li5;->v:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v1

    move-object/from16 v1, v21

    check-cast v1, Lx4;

    move-object/from16 v21, v4

    .line 108
    iget-object v4, v1, Lx4;->d:Ljava/util/HashMap;

    if-nez v4, :cond_3a

    goto :goto_14

    .line 109
    :cond_3a
    invoke-virtual {v4, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly6;

    if-eqz v4, :cond_3b

    .line 110
    iget v1, v1, Lx4;->a:I

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_3b
    :goto_14
    move-object/from16 v4, v21

    move-object/from16 v1, v22

    goto :goto_13

    :cond_3c
    move-object/from16 v21, v4

    .line 111
    new-instance v1, Ln5$b;

    invoke-direct {v1, v2, v3}, Ln5$b;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    move-object v4, v1

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    move-object/from16 v16, v15

    move-wide/from16 v14, p3

    goto/16 :goto_1a

    :cond_3d
    move-object/from16 v20, v1

    move-object/from16 v21, v4

    .line 112
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    :goto_15
    move-object/from16 v1, v16

    :goto_16
    move-object/from16 v3, v17

    goto/16 :goto_17

    :sswitch_10
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    goto :goto_15

    :cond_3e
    const/16 v1, 0xb

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    const/16 v4, 0xb

    goto/16 :goto_18

    :sswitch_11
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    goto :goto_15

    :cond_3f
    const/16 v1, 0xa

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    const/16 v4, 0xa

    goto/16 :goto_18

    :sswitch_12
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    goto :goto_15

    :cond_40
    const/16 v1, 0x9

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    const/16 v4, 0x9

    goto/16 :goto_18

    :sswitch_13
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    goto :goto_15

    :cond_41
    const/16 v1, 0x8

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    const/16 v4, 0x8

    goto/16 :goto_18

    :sswitch_14
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    goto :goto_15

    :cond_42
    const/4 v1, 0x7

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    const/4 v4, 0x7

    goto/16 :goto_18

    :sswitch_15
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    goto :goto_15

    :cond_43
    const/4 v1, 0x6

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    const/4 v4, 0x6

    goto/16 :goto_18

    :sswitch_16
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    goto :goto_15

    :cond_44
    const/4 v1, 0x5

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    const/4 v4, 0x5

    goto :goto_18

    :sswitch_17
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    goto :goto_15

    :cond_45
    const/4 v1, 0x4

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    const/4 v4, 0x4

    goto :goto_18

    :sswitch_18
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    goto/16 :goto_15

    :cond_46
    const/4 v1, 0x3

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    const/4 v4, 0x3

    goto :goto_18

    :sswitch_19
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    goto/16 :goto_15

    :cond_47
    const/4 v1, 0x2

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    const/4 v4, 0x2

    goto :goto_18

    :sswitch_1a
    move-object/from16 v1, v16

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    goto/16 :goto_16

    :cond_48
    const/4 v3, 0x1

    move-object/from16 v3, v17

    const/4 v4, 0x1

    goto :goto_18

    :sswitch_1b
    move-object/from16 v1, v16

    move-object/from16 v3, v17

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_49

    goto :goto_17

    :cond_49
    const/4 v4, 0x0

    goto :goto_18

    :goto_17
    const/4 v4, -0x1

    :goto_18
    packed-switch v4, :pswitch_data_1

    move-object/from16 v16, v15

    move-wide/from16 v14, p3

    const/4 v4, 0x0

    goto :goto_1a

    .line 113
    :pswitch_10
    new-instance v4, Ln5$a;

    invoke-direct {v4}, Ln5$a;-><init>()V

    goto :goto_19

    .line 114
    :pswitch_11
    new-instance v4, Ln5$d;

    invoke-direct {v4}, Ln5$d;-><init>()V

    goto :goto_19

    .line 115
    :pswitch_12
    new-instance v4, Ln5$c;

    invoke-direct {v4}, Ln5$c;-><init>()V

    goto :goto_19

    .line 116
    :pswitch_13
    new-instance v4, Ln5$f;

    invoke-direct {v4}, Ln5$f;-><init>()V

    goto :goto_19

    .line 117
    :pswitch_14
    new-instance v4, Ln5$j;

    invoke-direct {v4}, Ln5$j;-><init>()V

    goto :goto_19

    .line 118
    :pswitch_15
    new-instance v4, Ln5$i;

    invoke-direct {v4}, Ln5$i;-><init>()V

    goto :goto_19

    .line 119
    :pswitch_16
    new-instance v4, Ln5$e;

    invoke-direct {v4}, Ln5$e;-><init>()V

    goto :goto_19

    .line 120
    :pswitch_17
    new-instance v4, Ln5$m;

    invoke-direct {v4}, Ln5$m;-><init>()V

    goto :goto_19

    .line 121
    :pswitch_18
    new-instance v4, Ln5$l;

    invoke-direct {v4}, Ln5$l;-><init>()V

    goto :goto_19

    .line 122
    :pswitch_19
    new-instance v4, Ln5$k;

    invoke-direct {v4}, Ln5$k;-><init>()V

    goto :goto_19

    .line 123
    :pswitch_1a
    new-instance v4, Ln5$h;

    invoke-direct {v4}, Ln5$h;-><init>()V

    goto :goto_19

    .line 124
    :pswitch_1b
    new-instance v4, Ln5$g;

    invoke-direct {v4}, Ln5$g;-><init>()V

    :goto_19
    move-object/from16 v16, v15

    move-wide/from16 v14, p3

    .line 125
    iput-wide v14, v4, Ln5;->i:J

    :goto_1a
    if-nez v4, :cond_4a

    goto :goto_1b

    .line 126
    :cond_4a
    iput-object v2, v4, Ln5;->f:Ljava/lang/String;

    .line 127
    iget-object v14, v0, Li5;->w:Ljava/util/HashMap;

    invoke-virtual {v14, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1b
    move-object/from16 v17, v3

    move-object/from16 v15, v16

    move-object/from16 v4, v21

    move-object/from16 v16, v1

    move-object/from16 v1, v20

    goto/16 :goto_12

    :cond_4b
    move-object/from16 v21, v4

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    move-object/from16 v16, v15

    .line 128
    iget-object v2, v0, Li5;->v:Ljava/util/ArrayList;

    if-eqz v2, :cond_5d

    .line 129
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lx4;

    .line 130
    instance-of v14, v4, Lf5;

    if-eqz v14, :cond_5c

    .line 131
    check-cast v4, Lf5;

    iget-object v14, v0, Li5;->w:Ljava/util/HashMap;

    .line 132
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 p3, v2

    move-object/from16 v2, v17

    check-cast v2, Ljava/lang/String;

    .line 134
    invoke-virtual {v14, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v22, v17

    check-cast v22, Ln5;

    move-object/from16 v17, v14

    const-string v14, "CUSTOM"

    .line 135
    invoke-virtual {v2, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4d

    const/4 v14, 0x7

    .line 136
    invoke-virtual {v2, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 137
    iget-object v14, v4, Lx4;->d:Ljava/util/HashMap;

    invoke-virtual {v14, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly6;

    if-eqz v2, :cond_4c

    .line 138
    move-object/from16 v14, v22

    check-cast v14, Ln5$b;

    move-object/from16 p4, v15

    iget v15, v4, Lx4;->a:I

    iget v0, v4, Lf5;->s:F

    move-object/from16 v20, v3

    iget v3, v4, Lf5;->r:I

    move-object/from16 v28, v1

    iget v1, v4, Lf5;->t:F

    move-object/from16 v29, v4

    .line 139
    iget-object v4, v14, Ln5$b;->k:Landroid/util/SparseArray;

    invoke-virtual {v4, v15, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 140
    iget-object v2, v14, Ln5$b;->l:Landroid/util/SparseArray;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/16 v22, 0x0

    aput v0, v4, v22

    const/4 v0, 0x1

    aput v1, v4, v0

    invoke-virtual {v2, v15, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 141
    iget v0, v14, Ln5;->b:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v14, Ln5;->b:I

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move-object/from16 v15, p4

    move-object/from16 v14, v17

    move-object/from16 v3, v20

    move-object/from16 v1, v28

    move-object/from16 v4, v29

    goto :goto_1d

    :cond_4c
    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move-object/from16 v14, v17

    goto :goto_1d

    :cond_4d
    move-object/from16 v28, v1

    move-object/from16 v20, v3

    move-object/from16 v29, v4

    move-object/from16 p4, v15

    .line 142
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_2

    :goto_1e
    move-object/from16 v0, v16

    :goto_1f
    move-object/from16 v3, v20

    move-object/from16 v1, v28

    goto/16 :goto_22

    :sswitch_1c
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    goto :goto_1e

    :cond_4e
    const/16 v0, 0xb

    move-object/from16 v0, v16

    move-object/from16 v3, v20

    move-object/from16 v1, v28

    const/16 v4, 0xb

    goto/16 :goto_23

    :sswitch_1d
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    goto :goto_1e

    :cond_4f
    const/16 v0, 0xa

    move-object/from16 v0, v16

    move-object/from16 v3, v20

    move-object/from16 v1, v28

    const/16 v4, 0xa

    goto/16 :goto_23

    :sswitch_1e
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    goto :goto_1e

    :cond_50
    const/16 v0, 0x9

    move-object/from16 v0, v16

    move-object/from16 v3, v20

    move-object/from16 v1, v28

    const/16 v4, 0x9

    goto/16 :goto_23

    :sswitch_1f
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    goto :goto_1e

    :cond_51
    const/16 v0, 0x8

    move-object/from16 v0, v16

    move-object/from16 v3, v20

    move-object/from16 v1, v28

    const/16 v4, 0x8

    goto/16 :goto_23

    :sswitch_20
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    goto :goto_1e

    :cond_52
    const/4 v0, 0x7

    move-object/from16 v0, v16

    move-object/from16 v3, v20

    move-object/from16 v1, v28

    const/4 v4, 0x7

    goto/16 :goto_23

    :sswitch_21
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto :goto_1e

    :cond_53
    const/4 v0, 0x6

    move-object/from16 v0, v16

    move-object/from16 v3, v20

    move-object/from16 v1, v28

    const/4 v4, 0x6

    goto/16 :goto_23

    :sswitch_22
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    goto :goto_1e

    :cond_54
    const/4 v0, 0x5

    move-object/from16 v0, v16

    move-object/from16 v3, v20

    move-object/from16 v1, v28

    const/4 v4, 0x5

    goto/16 :goto_23

    :sswitch_23
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    goto :goto_20

    :cond_55
    const/4 v0, 0x4

    move-object/from16 v0, v16

    move-object/from16 v3, v20

    move-object/from16 v1, v28

    const/4 v4, 0x4

    goto :goto_23

    :sswitch_24
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    :goto_20
    move-object/from16 v0, v16

    goto :goto_21

    :cond_56
    const/4 v0, 0x3

    move-object/from16 v0, v16

    move-object/from16 v3, v20

    move-object/from16 v1, v28

    const/4 v4, 0x3

    goto :goto_23

    :sswitch_25
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    :goto_21
    goto/16 :goto_1f

    :cond_57
    const/4 v1, 0x2

    move-object/from16 v3, v20

    move-object/from16 v1, v28

    const/4 v4, 0x2

    goto :goto_23

    :sswitch_26
    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_58

    move-object/from16 v3, v20

    goto :goto_22

    :cond_58
    const/4 v3, 0x1

    move-object/from16 v3, v20

    const/4 v4, 0x1

    goto :goto_23

    :sswitch_27
    move-object/from16 v0, v16

    move-object/from16 v3, v20

    move-object/from16 v1, v28

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_59

    goto :goto_22

    :cond_59
    const/4 v4, 0x0

    goto :goto_23

    :goto_22
    const/4 v4, -0x1

    :goto_23
    packed-switch v4, :pswitch_data_2

    move-object/from16 v28, v1

    move-object/from16 v16, v3

    move-object/from16 v4, v29

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UNKNOWN addValues \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyTimeCycles"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24

    :pswitch_1c
    move-object/from16 v4, v29

    .line 144
    iget v2, v4, Lf5;->f:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_5a

    .line 145
    iget v2, v4, Lx4;->a:I

    iget v14, v4, Lf5;->f:F

    iget v15, v4, Lf5;->s:F

    move-object/from16 v16, v3

    iget v3, v4, Lf5;->r:I

    move-object/from16 v28, v1

    iget v1, v4, Lf5;->t:F

    move/from16 v23, v2

    move/from16 v24, v14

    move/from16 v25, v15

    move/from16 v26, v3

    move/from16 v27, v1

    invoke-virtual/range {v22 .. v27}, Ln5;->c(IFFIF)V

    goto/16 :goto_24

    :cond_5a
    move-object/from16 v28, v1

    move-object/from16 v16, v3

    goto/16 :goto_24

    :pswitch_1d
    move-object/from16 v28, v1

    move-object/from16 v16, v3

    move-object/from16 v4, v29

    .line 146
    iget v1, v4, Lf5;->k:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_5b

    .line 147
    iget v1, v4, Lx4;->a:I

    iget v2, v4, Lf5;->k:F

    iget v3, v4, Lf5;->s:F

    iget v14, v4, Lf5;->r:I

    iget v15, v4, Lf5;->t:F

    move/from16 v23, v1

    move/from16 v24, v2

    move/from16 v25, v3

    move/from16 v26, v14

    move/from16 v27, v15

    invoke-virtual/range {v22 .. v27}, Ln5;->c(IFFIF)V

    goto/16 :goto_24

    :pswitch_1e
    move-object/from16 v28, v1

    move-object/from16 v16, v3

    move-object/from16 v4, v29

    .line 148
    iget v1, v4, Lf5;->g:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_5b

    .line 149
    iget v1, v4, Lx4;->a:I

    iget v2, v4, Lf5;->g:F

    iget v3, v4, Lf5;->s:F

    iget v14, v4, Lf5;->r:I

    iget v15, v4, Lf5;->t:F

    move/from16 v23, v1

    move/from16 v24, v2

    move/from16 v25, v3

    move/from16 v26, v14

    move/from16 v27, v15

    invoke-virtual/range {v22 .. v27}, Ln5;->c(IFFIF)V

    goto/16 :goto_24

    :pswitch_1f
    move-object/from16 v28, v1

    move-object/from16 v16, v3

    move-object/from16 v4, v29

    .line 150
    iget v1, v4, Lf5;->h:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_5b

    .line 151
    iget v1, v4, Lx4;->a:I

    iget v2, v4, Lf5;->h:F

    iget v3, v4, Lf5;->s:F

    iget v14, v4, Lf5;->r:I

    iget v15, v4, Lf5;->t:F

    move/from16 v23, v1

    move/from16 v24, v2

    move/from16 v25, v3

    move/from16 v26, v14

    move/from16 v27, v15

    invoke-virtual/range {v22 .. v27}, Ln5;->c(IFFIF)V

    goto/16 :goto_24

    :pswitch_20
    move-object/from16 v28, v1

    move-object/from16 v16, v3

    move-object/from16 v4, v29

    .line 152
    iget v1, v4, Lf5;->m:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_5b

    .line 153
    iget v1, v4, Lx4;->a:I

    iget v2, v4, Lf5;->m:F

    iget v3, v4, Lf5;->s:F

    iget v14, v4, Lf5;->r:I

    iget v15, v4, Lf5;->t:F

    move/from16 v23, v1

    move/from16 v24, v2

    move/from16 v25, v3

    move/from16 v26, v14

    move/from16 v27, v15

    invoke-virtual/range {v22 .. v27}, Ln5;->c(IFFIF)V

    goto/16 :goto_24

    :pswitch_21
    move-object/from16 v28, v1

    move-object/from16 v16, v3

    move-object/from16 v4, v29

    .line 154
    iget v1, v4, Lf5;->l:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_5b

    .line 155
    iget v1, v4, Lx4;->a:I

    iget v2, v4, Lf5;->l:F

    iget v3, v4, Lf5;->s:F

    iget v14, v4, Lf5;->r:I

    iget v15, v4, Lf5;->t:F

    move/from16 v23, v1

    move/from16 v24, v2

    move/from16 v25, v3

    move/from16 v26, v14

    move/from16 v27, v15

    invoke-virtual/range {v22 .. v27}, Ln5;->c(IFFIF)V

    goto/16 :goto_24

    :pswitch_22
    move-object/from16 v28, v1

    move-object/from16 v16, v3

    move-object/from16 v4, v29

    .line 156
    iget v1, v4, Lf5;->q:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_5b

    .line 157
    iget v1, v4, Lx4;->a:I

    iget v2, v4, Lf5;->q:F

    iget v3, v4, Lf5;->s:F

    iget v14, v4, Lf5;->r:I

    iget v15, v4, Lf5;->t:F

    move/from16 v23, v1

    move/from16 v24, v2

    move/from16 v25, v3

    move/from16 v26, v14

    move/from16 v27, v15

    invoke-virtual/range {v22 .. v27}, Ln5;->c(IFFIF)V

    goto/16 :goto_24

    :pswitch_23
    move-object/from16 v28, v1

    move-object/from16 v16, v3

    move-object/from16 v4, v29

    .line 158
    iget v1, v4, Lf5;->p:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_5b

    .line 159
    iget v1, v4, Lx4;->a:I

    iget v2, v4, Lf5;->p:F

    iget v3, v4, Lf5;->s:F

    iget v14, v4, Lf5;->r:I

    iget v15, v4, Lf5;->t:F

    move/from16 v23, v1

    move/from16 v24, v2

    move/from16 v25, v3

    move/from16 v26, v14

    move/from16 v27, v15

    invoke-virtual/range {v22 .. v27}, Ln5;->c(IFFIF)V

    goto/16 :goto_24

    :pswitch_24
    move-object/from16 v28, v1

    move-object/from16 v16, v3

    move-object/from16 v4, v29

    .line 160
    iget v1, v4, Lf5;->o:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_5b

    .line 161
    iget v1, v4, Lx4;->a:I

    iget v2, v4, Lf5;->o:F

    iget v3, v4, Lf5;->s:F

    iget v14, v4, Lf5;->r:I

    iget v15, v4, Lf5;->t:F

    move/from16 v23, v1

    move/from16 v24, v2

    move/from16 v25, v3

    move/from16 v26, v14

    move/from16 v27, v15

    invoke-virtual/range {v22 .. v27}, Ln5;->c(IFFIF)V

    goto/16 :goto_24

    :pswitch_25
    move-object/from16 v28, v1

    move-object/from16 v16, v3

    move-object/from16 v4, v29

    .line 162
    iget v1, v4, Lf5;->n:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_5b

    .line 163
    iget v1, v4, Lx4;->a:I

    iget v2, v4, Lf5;->n:F

    iget v3, v4, Lf5;->s:F

    iget v14, v4, Lf5;->r:I

    iget v15, v4, Lf5;->t:F

    move/from16 v23, v1

    move/from16 v24, v2

    move/from16 v25, v3

    move/from16 v26, v14

    move/from16 v27, v15

    invoke-virtual/range {v22 .. v27}, Ln5;->c(IFFIF)V

    goto :goto_24

    :pswitch_26
    move-object/from16 v28, v1

    move-object/from16 v16, v3

    move-object/from16 v4, v29

    .line 164
    iget v1, v4, Lf5;->j:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_5b

    .line 165
    iget v1, v4, Lx4;->a:I

    iget v2, v4, Lf5;->j:F

    iget v3, v4, Lf5;->s:F

    iget v14, v4, Lf5;->r:I

    iget v15, v4, Lf5;->t:F

    move/from16 v23, v1

    move/from16 v24, v2

    move/from16 v25, v3

    move/from16 v26, v14

    move/from16 v27, v15

    invoke-virtual/range {v22 .. v27}, Ln5;->c(IFFIF)V

    goto :goto_24

    :pswitch_27
    move-object/from16 v28, v1

    move-object/from16 v16, v3

    move-object/from16 v4, v29

    .line 166
    iget v1, v4, Lf5;->i:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_5b

    .line 167
    iget v1, v4, Lx4;->a:I

    iget v2, v4, Lf5;->i:F

    iget v3, v4, Lf5;->s:F

    iget v14, v4, Lf5;->r:I

    iget v15, v4, Lf5;->t:F

    move/from16 v23, v1

    move/from16 v24, v2

    move/from16 v25, v3

    move/from16 v26, v14

    move/from16 v27, v15

    invoke-virtual/range {v22 .. v27}, Ln5;->c(IFFIF)V

    :cond_5b
    :goto_24
    move-object/from16 v2, p3

    move-object/from16 v15, p4

    move-object/from16 v3, v16

    move-object/from16 v14, v17

    move-object/from16 v1, v28

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    goto/16 :goto_1d

    :cond_5c
    move-object/from16 v28, v1

    move-object/from16 p3, v2

    move-object/from16 v0, v16

    move-object/from16 v16, v3

    move-object/from16 v2, p3

    move-object/from16 v3, v16

    move-object/from16 v1, v28

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    goto/16 :goto_1c

    :cond_5d
    move-object/from16 v28, v1

    move-object/from16 v0, v16

    move-object/from16 v16, v3

    move-object/from16 v1, p0

    .line 168
    iget-object v2, v1, Li5;->w:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v4, v21

    .line 169
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5e

    .line 170
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    goto :goto_26

    :cond_5e
    const/4 v14, 0x0

    .line 171
    :goto_26
    iget-object v15, v1, Li5;->w:Ljava/util/HashMap;

    invoke-virtual {v15, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln5;

    invoke-virtual {v3, v14}, Ln5;->e(I)V

    move-object/from16 v21, v4

    goto :goto_25

    :cond_5f
    move-object v1, v0

    move-object v0, v15

    move-object/from16 v28, v16

    move-object/from16 v16, v17

    .line 172
    :cond_60
    iget-object v2, v1, Li5;->t:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    new-array v3, v2, [Lk5;

    .line 173
    iget-object v4, v1, Li5;->d:Lk5;

    const/4 v14, 0x0

    aput-object v4, v3, v14

    add-int/lit8 v4, v2, -0x1

    .line 174
    iget-object v15, v1, Li5;->e:Lk5;

    aput-object v15, v3, v4

    .line 175
    iget-object v4, v1, Li5;->t:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_61

    iget v4, v1, Li5;->c:I

    const/4 v15, -0x1

    if-ne v4, v15, :cond_61

    .line 176
    iput v14, v1, Li5;->c:I

    .line 177
    :cond_61
    iget-object v4, v1, Li5;->t:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v14, 0x1

    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_62

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lk5;

    add-int/lit8 v17, v14, 0x1

    .line 178
    aput-object v15, v3, v14

    move/from16 v14, v17

    goto :goto_27

    .line 179
    :cond_62
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 180
    iget-object v14, v1, Li5;->e:Lk5;

    iget-object v14, v14, Lk5;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {v14}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_28
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_65

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 p3, v14

    .line 181
    iget-object v14, v1, Li5;->d:Lk5;

    iget-object v14, v14, Lk5;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {v14, v15}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_63

    .line 182
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    const-string v0, "CUSTOM,"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v14, v18

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 183
    invoke-virtual {v4, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_63
    move-object/from16 v17, v0

    move-object/from16 v14, v18

    :cond_64
    :goto_29
    move-object/from16 v18, v14

    move-object/from16 v0, v17

    move-object/from16 v14, p3

    goto :goto_28

    :cond_65
    move-object/from16 v17, v0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 184
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, v1, Li5;->p:[Ljava/lang/String;

    .line 185
    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, v1, Li5;->q:[I

    const/4 v0, 0x0

    .line 186
    :goto_2a
    iget-object v4, v1, Li5;->p:[Ljava/lang/String;

    array-length v14, v4

    if-ge v0, v14, :cond_68

    .line 187
    aget-object v4, v4, v0

    .line 188
    iget-object v14, v1, Li5;->q:[I

    const/4 v15, 0x0

    aput v15, v14, v0

    const/4 v14, 0x0

    :goto_2b
    if-ge v14, v2, :cond_67

    .line 189
    aget-object v15, v3, v14

    iget-object v15, v15, Lk5;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {v15, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_66

    .line 190
    iget-object v15, v1, Li5;->q:[I

    aget v18, v15, v0

    aget-object v14, v3, v14

    iget-object v14, v14, Lk5;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {v14, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly6;

    invoke-virtual {v4}, Ly6;->d()I

    move-result v4

    add-int v4, v4, v18

    aput v4, v15, v0

    goto :goto_2c

    :cond_66
    add-int/lit8 v14, v14, 0x1

    goto :goto_2b

    :cond_67
    :goto_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_68
    const/4 v0, 0x0

    .line 191
    aget-object v0, v3, v0

    iget v0, v0, Lk5;->n:I

    const/4 v14, -0x1

    if-eq v0, v14, :cond_69

    const/4 v0, 0x1

    goto :goto_2d

    :cond_69
    const/4 v0, 0x0

    .line 192
    :goto_2d
    array-length v4, v4

    add-int/lit8 v4, v4, 0x12

    new-array v14, v4, [Z

    const/4 v15, 0x1

    :goto_2e
    if-ge v15, v2, :cond_6a

    move-object/from16 v18, v12

    .line 193
    aget-object v12, v3, v15

    add-int/lit8 v20, v15, -0x1

    move-object/from16 v27, v7

    aget-object v7, v3, v20

    .line 194
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v20, 0x0

    .line 195
    aget-boolean v21, v14, v20

    move-object/from16 v22, v6

    iget v6, v12, Lk5;->h:F

    move-object/from16 v23, v5

    iget v5, v7, Lk5;->h:F

    invoke-virtual {v12, v6, v5}, Lk5;->k(FF)Z

    move-result v5

    or-int v5, v21, v5

    aput-boolean v5, v14, v20

    const/4 v5, 0x1

    .line 196
    aget-boolean v5, v14, v5

    iget v6, v12, Lk5;->i:F

    move-object/from16 v20, v13

    iget v13, v7, Lk5;->i:F

    invoke-virtual {v12, v6, v13}, Lk5;->k(FF)Z

    move-result v6

    or-int/2addr v6, v0

    or-int/2addr v5, v6

    const/4 v6, 0x1

    aput-boolean v5, v14, v6

    const/4 v5, 0x2

    .line 197
    aget-boolean v5, v14, v5

    iget v6, v12, Lk5;->j:F

    iget v13, v7, Lk5;->j:F

    invoke-virtual {v12, v6, v13}, Lk5;->k(FF)Z

    move-result v6

    or-int/2addr v6, v0

    or-int/2addr v5, v6

    const/4 v6, 0x2

    aput-boolean v5, v14, v6

    const/4 v5, 0x3

    .line 198
    aget-boolean v6, v14, v5

    iget v13, v12, Lk5;->k:F

    iget v5, v7, Lk5;->k:F

    invoke-virtual {v12, v13, v5}, Lk5;->k(FF)Z

    move-result v5

    or-int/2addr v5, v6

    const/4 v6, 0x3

    aput-boolean v5, v14, v6

    const/4 v5, 0x4

    .line 199
    aget-boolean v6, v14, v5

    iget v13, v12, Lk5;->l:F

    iget v7, v7, Lk5;->l:F

    invoke-virtual {v12, v13, v7}, Lk5;->k(FF)Z

    move-result v7

    or-int/2addr v6, v7

    aput-boolean v6, v14, v5

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v12, v18

    move-object/from16 v13, v20

    move-object/from16 v6, v22

    move-object/from16 v5, v23

    move-object/from16 v7, v27

    goto :goto_2e

    :cond_6a
    move-object/from16 v23, v5

    move-object/from16 v22, v6

    move-object/from16 v27, v7

    move-object/from16 v18, v12

    move-object/from16 v20, v13

    const/4 v0, 0x0

    const/4 v5, 0x1

    :goto_2f
    if-ge v5, v4, :cond_6c

    .line 200
    aget-boolean v6, v14, v5

    if-eqz v6, :cond_6b

    add-int/lit8 v0, v0, 0x1

    :cond_6b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 201
    :cond_6c
    new-array v0, v0, [I

    iput-object v0, v1, Li5;->m:[I

    .line 202
    array-length v5, v0

    new-array v5, v5, [D

    iput-object v5, v1, Li5;->n:[D

    .line 203
    array-length v0, v0

    new-array v0, v0, [D

    iput-object v0, v1, Li5;->o:[D

    const/4 v0, 0x0

    const/4 v5, 0x1

    :goto_30
    if-ge v5, v4, :cond_6e

    .line 204
    aget-boolean v6, v14, v5

    if-eqz v6, :cond_6d

    .line 205
    iget-object v6, v1, Li5;->m:[I

    add-int/lit8 v7, v0, 0x1

    aput v5, v6, v0

    move v0, v7

    :cond_6d
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 206
    :cond_6e
    iget-object v0, v1, Li5;->m:[I

    array-length v0, v0

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x1

    aput v0, v4, v5

    const/4 v0, 0x0

    aput v2, v4, v0

    const-class v0, D

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 207
    new-array v4, v2, [D

    const/4 v5, 0x0

    :goto_31
    if-ge v5, v2, :cond_71

    .line 208
    aget-object v6, v3, v5

    aget-object v7, v0, v5

    iget-object v12, v1, Li5;->m:[I

    const/4 v13, 0x6

    new-array v13, v13, [F

    .line 209
    iget v14, v6, Lk5;->h:F

    const/4 v15, 0x0

    aput v14, v13, v15

    iget v14, v6, Lk5;->i:F

    const/4 v15, 0x1

    aput v14, v13, v15

    iget v14, v6, Lk5;->j:F

    const/4 v15, 0x2

    aput v14, v13, v15

    iget v14, v6, Lk5;->k:F

    const/4 v15, 0x3

    aput v14, v13, v15

    iget v14, v6, Lk5;->l:F

    const/16 v21, 0x4

    aput v14, v13, v21

    iget v6, v6, Lk5;->m:F

    const/4 v14, 0x5

    aput v6, v13, v14

    const/4 v6, 0x0

    const/4 v14, 0x0

    .line 210
    :goto_32
    array-length v15, v12

    if-ge v6, v15, :cond_70

    .line 211
    aget v15, v12, v6

    move-object/from16 v24, v10

    const/4 v10, 0x6

    if-ge v15, v10, :cond_6f

    add-int/lit8 v10, v14, 0x1

    .line 212
    aget v15, v12, v6

    aget v15, v13, v15

    move-object/from16 v25, v12

    move-object/from16 v26, v13

    float-to-double v12, v15

    aput-wide v12, v7, v14

    move v14, v10

    goto :goto_33

    :cond_6f
    move-object/from16 v25, v12

    move-object/from16 v26, v13

    :goto_33
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v10, v24

    move-object/from16 v12, v25

    move-object/from16 v13, v26

    goto :goto_32

    :cond_70
    move-object/from16 v24, v10

    .line 213
    aget-object v6, v3, v5

    iget v6, v6, Lk5;->g:F

    float-to-double v6, v6

    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    :cond_71
    move-object/from16 v24, v10

    const/4 v5, 0x0

    .line 214
    :goto_34
    iget-object v6, v1, Li5;->m:[I

    array-length v7, v6

    if-ge v5, v7, :cond_73

    .line 215
    aget v6, v6, v5

    .line 216
    sget-object v7, Lk5;->s:[Ljava/lang/String;

    array-length v7, v7

    if-ge v6, v7, :cond_72

    .line 217
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lk5;->s:[Ljava/lang/String;

    iget-object v10, v1, Li5;->m:[I

    aget v10, v10, v5

    aget-object v7, v7, v10

    const-string v10, " ["

    invoke-static {v6, v7, v10}, Ljo;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    :goto_35
    if-ge v7, v2, :cond_72

    .line 218
    invoke-static {v6}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v10, v0, v7

    aget-wide v12, v10, v5

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_35

    :cond_72
    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    .line 219
    :cond_73
    iget-object v5, v1, Li5;->p:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    new-array v5, v5, [Lp4;

    iput-object v5, v1, Li5;->h:[Lp4;

    const/4 v5, 0x0

    .line 220
    :goto_36
    iget-object v6, v1, Li5;->p:[Ljava/lang/String;

    array-length v7, v6

    if-ge v5, v7, :cond_79

    .line 221
    aget-object v6, v6, v5

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_37
    if-ge v7, v2, :cond_78

    .line 222
    aget-object v14, v3, v7

    .line 223
    iget-object v14, v14, Lk5;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {v14, v6}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_77

    if-nez v13, :cond_74

    .line 224
    new-array v12, v2, [D

    .line 225
    aget-object v13, v3, v7

    .line 226
    iget-object v13, v13, Lk5;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {v13, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ly6;

    invoke-virtual {v13}, Ly6;->d()I

    move-result v13

    const/4 v14, 0x2

    new-array v14, v14, [I

    const/4 v15, 0x1

    aput v13, v14, v15

    const/4 v13, 0x0

    aput v2, v14, v13

    .line 227
    const-class v13, D

    invoke-static {v13, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[D

    .line 228
    :cond_74
    aget-object v14, v3, v7

    iget v14, v14, Lk5;->g:F

    float-to-double v14, v14

    aput-wide v14, v12, v10

    .line 229
    aget-object v14, v3, v7

    aget-object v15, v13, v10

    .line 230
    iget-object v14, v14, Lk5;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {v14, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ly6;

    move-object/from16 p1, v6

    .line 231
    invoke-virtual {v14}, Ly6;->d()I

    move-result v6

    move-object/from16 p2, v12

    const/4 v12, 0x1

    if-ne v6, v12, :cond_76

    .line 232
    invoke-virtual {v14}, Ly6;->b()F

    move-result v6

    move-object/from16 p3, v13

    float-to-double v12, v6

    const/4 v6, 0x0

    aput-wide v12, v15, v6

    :cond_75
    move-object/from16 v25, v11

    goto :goto_39

    :cond_76
    move-object/from16 p3, v13

    .line 233
    invoke-virtual {v14}, Ly6;->d()I

    move-result v6

    .line 234
    new-array v12, v6, [F

    .line 235
    invoke-virtual {v14, v12}, Ly6;->c([F)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_38
    if-ge v13, v6, :cond_75

    add-int/lit8 v21, v14, 0x1

    move/from16 p4, v6

    .line 236
    aget v6, v12, v13

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    float-to-double v11, v6

    aput-wide v11, v15, v14

    add-int/lit8 v13, v13, 0x1

    move/from16 v6, p4

    move/from16 v14, v21

    move-object/from16 v11, v25

    move-object/from16 v12, v26

    goto :goto_38

    :goto_39
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    goto :goto_3a

    :cond_77
    move-object/from16 p1, v6

    move-object/from16 v25, v11

    :goto_3a
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v6, p1

    move-object/from16 v11, v25

    goto/16 :goto_37

    :cond_78
    move-object/from16 v25, v11

    .line 237
    invoke-static {v12, v10}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v6

    .line 238
    invoke-static {v13, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[D

    .line 239
    iget-object v10, v1, Li5;->h:[Lp4;

    add-int/lit8 v5, v5, 0x1

    iget v11, v1, Li5;->c:I

    invoke-static {v11, v6, v7}, Lp4;->a(I[D[[D)Lp4;

    move-result-object v6

    aput-object v6, v10, v5

    move-object/from16 v11, v25

    goto/16 :goto_36

    :cond_79
    move-object/from16 v25, v11

    .line 240
    iget-object v5, v1, Li5;->h:[Lp4;

    iget v6, v1, Li5;->c:I

    invoke-static {v6, v4, v0}, Lp4;->a(I[D[[D)Lp4;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v5, v4

    .line 241
    aget-object v0, v3, v4

    iget v0, v0, Lk5;->n:I

    const/4 v5, -0x1

    if-eq v0, v5, :cond_7b

    .line 242
    new-array v0, v2, [I

    .line 243
    new-array v5, v2, [D

    const/4 v6, 0x2

    new-array v7, v6, [I

    const/4 v10, 0x1

    aput v6, v7, v10

    aput v2, v7, v4

    .line 244
    const-class v4, D

    invoke-static {v4, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    const/4 v6, 0x0

    :goto_3b
    if-ge v6, v2, :cond_7a

    .line 245
    aget-object v7, v3, v6

    iget v7, v7, Lk5;->n:I

    aput v7, v0, v6

    .line 246
    aget-object v7, v3, v6

    iget v7, v7, Lk5;->g:F

    float-to-double v10, v7

    aput-wide v10, v5, v6

    .line 247
    aget-object v7, v4, v6

    aget-object v10, v3, v6

    iget v10, v10, Lk5;->i:F

    float-to-double v10, v10

    const/4 v12, 0x0

    aput-wide v10, v7, v12

    .line 248
    aget-object v7, v4, v6

    aget-object v10, v3, v6

    iget v10, v10, Lk5;->j:F

    float-to-double v10, v10

    const/4 v12, 0x1

    aput-wide v10, v7, v12

    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    .line 249
    :cond_7a
    new-instance v2, Lo4;

    invoke-direct {v2, v0, v5, v4}, Lo4;-><init>([I[D[[D)V

    .line 250
    iput-object v2, v1, Li5;->i:Lp4;

    :cond_7b
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 251
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Li5;->y:Ljava/util/HashMap;

    .line 252
    iget-object v2, v1, Li5;->v:Ljava/util/ArrayList;

    if-eqz v2, :cond_98

    .line 253
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_95

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "CUSTOM"

    .line 254
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 255
    new-instance v4, Lb5$c;

    invoke-direct {v4}, Lb5$c;-><init>()V

    move-object/from16 p1, v2

    move-object v2, v4

    move-object/from16 v15, v16

    move-object/from16 v13, v17

    move-object/from16 v12, v18

    move-object/from16 v6, v20

    move-object/from16 v10, v22

    move-object/from16 v7, v23

    move-object/from16 v5, v24

    move-object/from16 v4, v25

    move-object/from16 v11, v27

    move-object/from16 v14, v28

    goto/16 :goto_47

    .line 256
    :cond_7c
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_3

    :goto_3d
    move-object/from16 v15, v16

    move-object/from16 v13, v17

    move-object/from16 v12, v18

    move-object/from16 v6, v20

    move-object/from16 v10, v22

    move-object/from16 v7, v23

    move-object/from16 v5, v24

    move-object/from16 v4, v25

    :goto_3e
    move-object/from16 v11, v27

    :goto_3f
    move-object/from16 v14, v28

    goto/16 :goto_44

    :sswitch_28
    const-string v4, "waveOffset"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7d

    goto :goto_3d

    :cond_7d
    const/16 v4, 0xd

    move-object/from16 v15, v16

    move-object/from16 v13, v17

    move-object/from16 v12, v18

    move-object/from16 v6, v20

    move-object/from16 v10, v22

    move-object/from16 v7, v23

    move-object/from16 v5, v24

    move-object/from16 v4, v25

    move-object/from16 v11, v27

    move-object/from16 v14, v28

    const/16 v16, 0xd

    goto/16 :goto_45

    :sswitch_29
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7e

    goto :goto_3d

    :cond_7e
    const/16 v4, 0xc

    move-object/from16 v15, v16

    move-object/from16 v13, v17

    move-object/from16 v12, v18

    move-object/from16 v6, v20

    move-object/from16 v10, v22

    move-object/from16 v7, v23

    move-object/from16 v5, v24

    move-object/from16 v4, v25

    move-object/from16 v11, v27

    move-object/from16 v14, v28

    const/16 v16, 0xc

    goto/16 :goto_45

    :sswitch_2a
    move-object/from16 v4, v25

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7f

    :goto_40
    move-object/from16 v15, v16

    move-object/from16 v13, v17

    move-object/from16 v12, v18

    move-object/from16 v6, v20

    move-object/from16 v10, v22

    move-object/from16 v7, v23

    move-object/from16 v5, v24

    goto :goto_3e

    :cond_7f
    const/16 v5, 0xb

    move-object/from16 v15, v16

    move-object/from16 v13, v17

    move-object/from16 v12, v18

    move-object/from16 v6, v20

    move-object/from16 v10, v22

    move-object/from16 v7, v23

    move-object/from16 v5, v24

    move-object/from16 v11, v27

    move-object/from16 v14, v28

    const/16 v16, 0xb

    goto/16 :goto_45

    :sswitch_2b
    move-object/from16 v4, v25

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_80

    goto :goto_40

    :cond_80
    const/16 v5, 0xa

    move-object/from16 v15, v16

    move-object/from16 v13, v17

    move-object/from16 v12, v18

    move-object/from16 v6, v20

    move-object/from16 v10, v22

    move-object/from16 v7, v23

    move-object/from16 v5, v24

    move-object/from16 v11, v27

    move-object/from16 v14, v28

    const/16 v16, 0xa

    goto/16 :goto_45

    :sswitch_2c
    move-object/from16 v5, v24

    move-object/from16 v4, v25

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_81

    goto :goto_41

    :cond_81
    const/16 v6, 0x9

    move-object/from16 v15, v16

    move-object/from16 v13, v17

    move-object/from16 v12, v18

    move-object/from16 v6, v20

    move-object/from16 v10, v22

    move-object/from16 v7, v23

    move-object/from16 v11, v27

    move-object/from16 v14, v28

    const/16 v16, 0x9

    goto/16 :goto_45

    :sswitch_2d
    move-object/from16 v5, v24

    move-object/from16 v4, v25

    const-string v6, "waveVariesBy"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_82

    :goto_41
    move-object/from16 v6, v20

    goto :goto_42

    :cond_82
    const/16 v6, 0x8

    move-object/from16 v15, v16

    move-object/from16 v13, v17

    move-object/from16 v12, v18

    move-object/from16 v6, v20

    move-object/from16 v10, v22

    move-object/from16 v7, v23

    move-object/from16 v11, v27

    move-object/from16 v14, v28

    const/16 v16, 0x8

    goto/16 :goto_45

    :sswitch_2e
    move-object/from16 v6, v20

    move-object/from16 v5, v24

    move-object/from16 v4, v25

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_83

    :goto_42
    move-object/from16 v15, v16

    move-object/from16 v13, v17

    move-object/from16 v12, v18

    move-object/from16 v10, v22

    move-object/from16 v7, v23

    goto/16 :goto_3e

    :cond_83
    const/4 v7, 0x7

    move-object/from16 v15, v16

    move-object/from16 v13, v17

    move-object/from16 v12, v18

    move-object/from16 v10, v22

    move-object/from16 v7, v23

    move-object/from16 v11, v27

    move-object/from16 v14, v28

    const/16 v16, 0x7

    goto/16 :goto_45

    :sswitch_2f
    move-object/from16 v6, v20

    move-object/from16 v7, v23

    move-object/from16 v5, v24

    move-object/from16 v4, v25

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_84

    move-object/from16 v10, v22

    goto :goto_43

    :cond_84
    const/4 v10, 0x6

    move-object/from16 v15, v16

    move-object/from16 v13, v17

    move-object/from16 v12, v18

    move-object/from16 v10, v22

    move-object/from16 v11, v27

    move-object/from16 v14, v28

    const/16 v16, 0x6

    goto/16 :goto_45

    :sswitch_30
    move-object/from16 v6, v20

    move-object/from16 v10, v22

    move-object/from16 v7, v23

    move-object/from16 v5, v24

    move-object/from16 v4, v25

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_85

    :goto_43
    move-object/from16 v15, v16

    move-object/from16 v13, v17

    move-object/from16 v12, v18

    goto/16 :goto_3e

    :cond_85
    const/4 v11, 0x5

    move-object/from16 v15, v16

    move-object/from16 v13, v17

    move-object/from16 v12, v18

    move-object/from16 v11, v27

    move-object/from16 v14, v28

    const/16 v16, 0x5

    goto/16 :goto_45

    :sswitch_31
    move-object/from16 v6, v20

    move-object/from16 v10, v22

    move-object/from16 v7, v23

    move-object/from16 v5, v24

    move-object/from16 v4, v25

    move-object/from16 v11, v27

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_86

    move-object/from16 v15, v16

    move-object/from16 v13, v17

    move-object/from16 v12, v18

    goto/16 :goto_3f

    :cond_86
    const/4 v12, 0x4

    move-object/from16 v15, v16

    move-object/from16 v13, v17

    move-object/from16 v12, v18

    move-object/from16 v14, v28

    const/16 v16, 0x4

    goto/16 :goto_45

    :sswitch_32
    move-object/from16 v12, v18

    move-object/from16 v6, v20

    move-object/from16 v10, v22

    move-object/from16 v7, v23

    move-object/from16 v5, v24

    move-object/from16 v4, v25

    move-object/from16 v11, v27

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_87

    move-object/from16 v15, v16

    move-object/from16 v13, v17

    goto/16 :goto_3f

    :cond_87
    const/4 v13, 0x3

    move-object/from16 v15, v16

    move-object/from16 v13, v17

    move-object/from16 v14, v28

    const/16 v16, 0x3

    goto/16 :goto_45

    :sswitch_33
    move-object/from16 v13, v17

    move-object/from16 v12, v18

    move-object/from16 v6, v20

    move-object/from16 v10, v22

    move-object/from16 v7, v23

    move-object/from16 v5, v24

    move-object/from16 v4, v25

    move-object/from16 v11, v27

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_88

    move-object/from16 v15, v16

    goto/16 :goto_3f

    :cond_88
    const/4 v14, 0x2

    move-object/from16 v15, v16

    move-object/from16 v14, v28

    const/16 v16, 0x2

    goto :goto_45

    :sswitch_34
    move-object/from16 v13, v17

    move-object/from16 v12, v18

    move-object/from16 v6, v20

    move-object/from16 v10, v22

    move-object/from16 v7, v23

    move-object/from16 v5, v24

    move-object/from16 v4, v25

    move-object/from16 v11, v27

    move-object/from16 v14, v28

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_89

    move-object/from16 v15, v16

    goto :goto_44

    :cond_89
    const/4 v15, 0x1

    move-object/from16 v15, v16

    const/16 v16, 0x1

    goto :goto_45

    :sswitch_35
    move-object/from16 v15, v16

    move-object/from16 v13, v17

    move-object/from16 v12, v18

    move-object/from16 v6, v20

    move-object/from16 v10, v22

    move-object/from16 v7, v23

    move-object/from16 v5, v24

    move-object/from16 v4, v25

    move-object/from16 v11, v27

    move-object/from16 v14, v28

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_8a

    goto :goto_44

    :cond_8a
    const/16 v16, 0x0

    goto :goto_45

    :goto_44
    const/16 v16, -0x1

    :goto_45
    packed-switch v16, :pswitch_data_3

    const/16 v16, 0x0

    :goto_46
    move-object/from16 p1, v2

    move-object/from16 v2, v16

    goto :goto_47

    .line 257
    :pswitch_28
    new-instance v16, Lb5$b;

    invoke-direct/range {v16 .. v16}, Lb5$b;-><init>()V

    goto :goto_46

    .line 258
    :pswitch_29
    new-instance v16, Lb5$b;

    invoke-direct/range {v16 .. v16}, Lb5$b;-><init>()V

    goto :goto_46

    .line 259
    :pswitch_2a
    new-instance v16, Lb5$f;

    invoke-direct/range {v16 .. v16}, Lb5$f;-><init>()V

    goto :goto_46

    .line 260
    :pswitch_2b
    new-instance v16, Lb5$e;

    invoke-direct/range {v16 .. v16}, Lb5$e;-><init>()V

    goto :goto_46

    .line 261
    :pswitch_2c
    new-instance v16, Lb5$h;

    invoke-direct/range {v16 .. v16}, Lb5$h;-><init>()V

    goto :goto_46

    .line 262
    :pswitch_2d
    new-instance v16, Lb5$b;

    invoke-direct/range {v16 .. v16}, Lb5$b;-><init>()V

    goto :goto_46

    .line 263
    :pswitch_2e
    new-instance v16, Lb5$l;

    invoke-direct/range {v16 .. v16}, Lb5$l;-><init>()V

    goto :goto_46

    .line 264
    :pswitch_2f
    new-instance v16, Lb5$k;

    invoke-direct/range {v16 .. v16}, Lb5$k;-><init>()V

    goto :goto_46

    .line 265
    :pswitch_30
    new-instance v16, Lb5$g;

    invoke-direct/range {v16 .. v16}, Lb5$g;-><init>()V

    goto :goto_46

    .line 266
    :pswitch_31
    new-instance v16, Lb5$o;

    invoke-direct/range {v16 .. v16}, Lb5$o;-><init>()V

    goto :goto_46

    .line 267
    :pswitch_32
    new-instance v16, Lb5$n;

    invoke-direct/range {v16 .. v16}, Lb5$n;-><init>()V

    goto :goto_46

    .line 268
    :pswitch_33
    new-instance v16, Lb5$m;

    invoke-direct/range {v16 .. v16}, Lb5$m;-><init>()V

    goto :goto_46

    .line 269
    :pswitch_34
    new-instance v16, Lb5$j;

    invoke-direct/range {v16 .. v16}, Lb5$j;-><init>()V

    goto :goto_46

    .line 270
    :pswitch_35
    new-instance v16, Lb5$i;

    invoke-direct/range {v16 .. v16}, Lb5$i;-><init>()V

    goto :goto_46

    :goto_47
    if-nez v2, :cond_8b

    move-object/from16 v25, v4

    move-object/from16 v24, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v28, v10

    goto/16 :goto_4f

    :cond_8b
    move-object/from16 v25, v4

    .line 271
    iget v4, v2, Lb5;->e:I

    move-object/from16 v24, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8c

    const/4 v4, 0x1

    goto :goto_48

    :cond_8c
    const/4 v4, 0x0

    :goto_48
    if-eqz v4, :cond_94

    .line 272
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_94

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/16 v4, 0x63

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v5, v4

    const-wide/16 v16, 0x0

    const/4 v4, 0x0

    const/16 v18, 0x0

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-wide/from16 v18, v16

    const/4 v6, 0x0

    :goto_49
    const/16 v7, 0x64

    if-ge v6, v7, :cond_93

    int-to-float v7, v6

    mul-float v7, v7, v5

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    float-to-double v8, v7

    move/from16 p2, v5

    .line 273
    iget-object v5, v1, Li5;->d:Lk5;

    iget-object v5, v5, Lk5;->e:Lq4;

    move-object/from16 v26, v5

    .line 274
    iget-object v5, v1, Li5;->t:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/high16 v27, 0x7fc00000    # Float.NaN

    const/16 v28, 0x0

    move-wide/from16 p3, v8

    move-object/from16 v8, v26

    :goto_4a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lk5;

    move-object/from16 v26, v5

    .line 275
    iget-object v5, v9, Lk5;->e:Lq4;

    if-eqz v5, :cond_8e

    move-object/from16 v29, v5

    .line 276
    iget v5, v9, Lk5;->g:F

    cmpg-float v30, v5, v7

    if-gez v30, :cond_8d

    move/from16 v28, v5

    move-object/from16 v8, v29

    goto :goto_4b

    .line 277
    :cond_8d
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_8e

    .line 278
    iget v5, v9, Lk5;->g:F

    move/from16 v27, v5

    :cond_8e
    :goto_4b
    move-object/from16 v5, v26

    goto :goto_4a

    :cond_8f
    if-eqz v8, :cond_91

    .line 279
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_90

    const/high16 v27, 0x3f800000    # 1.0f

    :cond_90
    sub-float v7, v7, v28

    sub-float v27, v27, v28

    div-float v7, v7, v27

    move-object v5, v10

    float-to-double v9, v7

    .line 280
    invoke-virtual {v8, v9, v10}, Lq4;->a(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float v7, v7, v27

    add-float v7, v7, v28

    float-to-double v8, v7

    goto :goto_4c

    :cond_91
    move-object v5, v10

    move-wide/from16 v8, p3

    .line 281
    :goto_4c
    iget-object v7, v1, Li5;->h:[Lp4;

    const/4 v10, 0x0

    aget-object v7, v7, v10

    iget-object v10, v1, Li5;->n:[D

    invoke-virtual {v7, v8, v9, v10}, Lp4;->c(D[D)V

    .line 282
    iget-object v7, v1, Li5;->d:Lk5;

    iget-object v8, v1, Li5;->m:[I

    iget-object v9, v1, Li5;->n:[D

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v0, v10}, Lk5;->l([I[D[FI)V

    if-lez v6, :cond_92

    float-to-double v7, v4

    const/4 v4, 0x1

    .line 283
    aget v4, v0, v4

    move-object/from16 v28, v5

    float-to-double v4, v4

    sub-double v4, v16, v4

    aget v9, v0, v10

    float-to-double v9, v9

    sub-double v9, v18, v9

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    add-double/2addr v4, v7

    double-to-float v4, v4

    goto :goto_4d

    :cond_92
    move-object/from16 v28, v5

    :goto_4d
    const/4 v5, 0x0

    .line 284
    aget v5, v0, v5

    float-to-double v7, v5

    const/4 v5, 0x1

    .line 285
    aget v5, v0, v5

    float-to-double v9, v5

    add-int/lit8 v6, v6, 0x1

    move/from16 v5, p2

    move-wide/from16 v18, v7

    move-wide/from16 v16, v9

    move-object/from16 v8, v22

    move-object/from16 v9, v23

    move-object/from16 v10, v28

    goto/16 :goto_49

    :cond_93
    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v28, v10

    move v0, v4

    goto :goto_4e

    :cond_94
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v28, v10

    .line 286
    :goto_4e
    iput-object v3, v2, Lb5;->c:Ljava/lang/String;

    .line 287
    iget-object v4, v1, Li5;->y:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4f
    move-object/from16 v2, p1

    move-object/from16 v27, v11

    move-object/from16 v18, v12

    move-object/from16 v17, v13

    move-object/from16 v16, v15

    move-object/from16 v8, v22

    move-object/from16 v9, v23

    move-object/from16 v22, v28

    move-object/from16 v28, v14

    move-object/from16 v23, v21

    goto/16 :goto_3c

    .line 288
    :cond_95
    iget-object v2, v1, Li5;->v:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_96
    :goto_50
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_97

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx4;

    .line 289
    instance-of v4, v3, La5;

    if-eqz v4, :cond_96

    .line 290
    check-cast v3, La5;

    iget-object v4, v1, Li5;->y:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, La5;->e(Ljava/util/HashMap;)V

    goto :goto_50

    .line 291
    :cond_97
    iget-object v2, v1, Li5;->y:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_51
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_98

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb5;

    .line 292
    invoke-virtual {v3, v0}, Lb5;->d(F)V

    goto :goto_51

    :cond_98
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_f
        -0x4a771f65 -> :sswitch_e
        -0x490b9c39 -> :sswitch_d
        -0x490b9c38 -> :sswitch_c
        -0x490b9c37 -> :sswitch_b
        -0x3bab3dd3 -> :sswitch_a
        -0x3621dfb2 -> :sswitch_9
        -0x3621dfb1 -> :sswitch_8
        -0x2f893320 -> :sswitch_7
        -0x2d5a2d1e -> :sswitch_6
        -0x2d5a2d1d -> :sswitch_5
        -0x266f082 -> :sswitch_4
        -0x42d1a3 -> :sswitch_3
        0x2382115 -> :sswitch_2
        0x589b15e -> :sswitch_1
        0x94e04ec -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x4a771f66 -> :sswitch_1b
        -0x4a771f65 -> :sswitch_1a
        -0x490b9c39 -> :sswitch_19
        -0x490b9c38 -> :sswitch_18
        -0x490b9c37 -> :sswitch_17
        -0x3bab3dd3 -> :sswitch_16
        -0x3621dfb2 -> :sswitch_15
        -0x3621dfb1 -> :sswitch_14
        -0x266f082 -> :sswitch_13
        -0x42d1a3 -> :sswitch_12
        0x2382115 -> :sswitch_11
        0x589b15e -> :sswitch_10
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x4a771f66 -> :sswitch_27
        -0x4a771f65 -> :sswitch_26
        -0x490b9c39 -> :sswitch_25
        -0x490b9c38 -> :sswitch_24
        -0x490b9c37 -> :sswitch_23
        -0x3bab3dd3 -> :sswitch_22
        -0x3621dfb2 -> :sswitch_21
        -0x3621dfb1 -> :sswitch_20
        -0x266f082 -> :sswitch_1f
        -0x42d1a3 -> :sswitch_1e
        0x2382115 -> :sswitch_1d
        0x589b15e -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        -0x4a771f66 -> :sswitch_35
        -0x4a771f65 -> :sswitch_34
        -0x490b9c39 -> :sswitch_33
        -0x490b9c38 -> :sswitch_32
        -0x490b9c37 -> :sswitch_31
        -0x3bab3dd3 -> :sswitch_30
        -0x3621dfb2 -> :sswitch_2f
        -0x3621dfb1 -> :sswitch_2e
        -0x2f893320 -> :sswitch_2d
        -0x266f082 -> :sswitch_2c
        -0x42d1a3 -> :sswitch_2b
        0x2382115 -> :sswitch_2a
        0x589b15e -> :sswitch_29
        0x94e04ec -> :sswitch_28
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, " start: x: "

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Li5;->d:Lk5;

    iget v1, v1, Lk5;->i:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Li5;->d:Lk5;

    iget v2, v2, Lk5;->j:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " end: x: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Li5;->e:Lk5;

    iget v2, v2, Lk5;->i:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li5;->e:Lk5;

    iget v1, v1, Lk5;->j:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
