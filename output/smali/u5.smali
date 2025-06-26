.class public Lu5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu5$a;,
        Lu5$b;
    }
.end annotation


# static fields
.field public static o:I = 0x3e8

.field public static p:Z = true

.field public static q:J

.field public static r:J


# instance fields
.field public a:I

.field public b:Lu5$a;

.field public c:I

.field public d:I

.field public e:[Ls5;

.field public f:Z

.field public g:[Z

.field public h:I

.field public i:I

.field public j:I

.field public final k:Lt5;

.field public l:[Lx5;

.field public m:I

.field public n:Lu5$a;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lu5;->a:I

    const/16 v1, 0x20

    .line 3
    iput v1, p0, Lu5;->c:I

    .line 4
    iput v1, p0, Lu5;->d:I

    const/4 v2, 0x0

    .line 5
    iput-object v2, p0, Lu5;->e:[Ls5;

    .line 6
    iput-boolean v0, p0, Lu5;->f:Z

    new-array v2, v1, [Z

    .line 7
    iput-object v2, p0, Lu5;->g:[Z

    const/4 v2, 0x1

    .line 8
    iput v2, p0, Lu5;->h:I

    .line 9
    iput v0, p0, Lu5;->i:I

    .line 10
    iput v1, p0, Lu5;->j:I

    .line 11
    sget v2, Lu5;->o:I

    new-array v2, v2, [Lx5;

    iput-object v2, p0, Lu5;->l:[Lx5;

    .line 12
    iput v0, p0, Lu5;->m:I

    new-array v0, v1, [Ls5;

    .line 13
    iput-object v0, p0, Lu5;->e:[Ls5;

    .line 14
    invoke-virtual {p0}, Lu5;->s()V

    .line 15
    new-instance v0, Lt5;

    invoke-direct {v0}, Lt5;-><init>()V

    iput-object v0, p0, Lu5;->k:Lt5;

    .line 16
    new-instance v1, Lw5;

    invoke-direct {v1, v0}, Lw5;-><init>(Lt5;)V

    iput-object v1, p0, Lu5;->b:Lu5$a;

    .line 17
    sget-boolean v1, Lu5;->p:Z

    if-eqz v1, :cond_0

    .line 18
    new-instance v1, Lu5$b;

    invoke-direct {v1, p0, v0}, Lu5$b;-><init>(Lu5;Lt5;)V

    iput-object v1, p0, Lu5;->n:Lu5$a;

    goto :goto_0

    .line 19
    :cond_0
    new-instance v1, Ls5;

    invoke-direct {v1, v0}, Ls5;-><init>(Lt5;)V

    iput-object v1, p0, Lu5;->n:Lu5$a;

    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lx5$a;Ljava/lang/String;)Lx5;
    .locals 2

    .line 1
    iget-object p2, p0, Lu5;->k:Lt5;

    iget-object p2, p2, Lt5;->c:Lv5;

    invoke-virtual {p2}, Lv5;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lx5;

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lx5;

    invoke-direct {p2, p1}, Lx5;-><init>(Lx5$a;)V

    .line 3
    iput-object p1, p2, Lx5;->i:Lx5$a;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lx5;->c()V

    .line 5
    iput-object p1, p2, Lx5;->i:Lx5$a;

    .line 6
    :goto_0
    iget p1, p0, Lu5;->m:I

    sget v0, Lu5;->o:I

    if-lt p1, v0, :cond_1

    mul-int/lit8 v0, v0, 0x2

    .line 7
    sput v0, Lu5;->o:I

    .line 8
    iget-object p1, p0, Lu5;->l:[Lx5;

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lx5;

    iput-object p1, p0, Lu5;->l:[Lx5;

    .line 9
    :cond_1
    iget-object p1, p0, Lu5;->l:[Lx5;

    iget v0, p0, Lu5;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lu5;->m:I

    aput-object p2, p1, v0

    return-object p2
.end method

.method public b(Lx5;Lx5;IFLx5;Lx5;II)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lu5;->m()Ls5;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-ne p2, p5, :cond_0

    .line 2
    iget-object p3, v0, Ls5;->d:Ls5$a;

    invoke-interface {p3, p1, v1}, Ls5$a;->i(Lx5;F)V

    .line 3
    iget-object p1, v0, Ls5;->d:Ls5$a;

    invoke-interface {p1, p6, v1}, Ls5$a;->i(Lx5;F)V

    .line 4
    iget-object p1, v0, Ls5;->d:Ls5$a;

    const/high16 p3, -0x40000000    # -2.0f

    invoke-interface {p1, p2, p3}, Ls5$a;->i(Lx5;F)V

    goto/16 :goto_0

    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, p4, v2

    if-nez v2, :cond_2

    .line 5
    iget-object p4, v0, Ls5;->d:Ls5$a;

    invoke-interface {p4, p1, v1}, Ls5$a;->i(Lx5;F)V

    .line 6
    iget-object p1, v0, Ls5;->d:Ls5$a;

    invoke-interface {p1, p2, v3}, Ls5$a;->i(Lx5;F)V

    .line 7
    iget-object p1, v0, Ls5;->d:Ls5$a;

    invoke-interface {p1, p5, v3}, Ls5$a;->i(Lx5;F)V

    .line 8
    iget-object p1, v0, Ls5;->d:Ls5$a;

    invoke-interface {p1, p6, v1}, Ls5$a;->i(Lx5;F)V

    if-gtz p3, :cond_1

    if-lez p7, :cond_6

    :cond_1
    neg-int p1, p3

    add-int/2addr p1, p7

    int-to-float p1, p1

    .line 9
    iput p1, v0, Ls5;->b:F

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    cmpg-float v2, p4, v2

    if-gtz v2, :cond_3

    .line 10
    iget-object p4, v0, Ls5;->d:Ls5$a;

    invoke-interface {p4, p1, v3}, Ls5$a;->i(Lx5;F)V

    .line 11
    iget-object p1, v0, Ls5;->d:Ls5$a;

    invoke-interface {p1, p2, v1}, Ls5$a;->i(Lx5;F)V

    int-to-float p1, p3

    .line 12
    iput p1, v0, Ls5;->b:F

    goto :goto_0

    :cond_3
    cmpl-float v2, p4, v1

    if-ltz v2, :cond_4

    .line 13
    iget-object p1, v0, Ls5;->d:Ls5$a;

    invoke-interface {p1, p6, v3}, Ls5$a;->i(Lx5;F)V

    .line 14
    iget-object p1, v0, Ls5;->d:Ls5$a;

    invoke-interface {p1, p5, v1}, Ls5$a;->i(Lx5;F)V

    neg-int p1, p7

    int-to-float p1, p1

    .line 15
    iput p1, v0, Ls5;->b:F

    goto :goto_0

    .line 16
    :cond_4
    iget-object v2, v0, Ls5;->d:Ls5$a;

    sub-float v4, v1, p4

    mul-float v5, v4, v1

    invoke-interface {v2, p1, v5}, Ls5$a;->i(Lx5;F)V

    .line 17
    iget-object p1, v0, Ls5;->d:Ls5$a;

    mul-float v2, v4, v3

    invoke-interface {p1, p2, v2}, Ls5$a;->i(Lx5;F)V

    .line 18
    iget-object p1, v0, Ls5;->d:Ls5$a;

    mul-float v3, v3, p4

    invoke-interface {p1, p5, v3}, Ls5$a;->i(Lx5;F)V

    .line 19
    iget-object p1, v0, Ls5;->d:Ls5$a;

    mul-float v1, v1, p4

    invoke-interface {p1, p6, v1}, Ls5$a;->i(Lx5;F)V

    if-gtz p3, :cond_5

    if-lez p7, :cond_6

    :cond_5
    neg-int p1, p3

    int-to-float p1, p1

    mul-float p1, p1, v4

    int-to-float p2, p7

    mul-float p2, p2, p4

    add-float/2addr p2, p1

    .line 20
    iput p2, v0, Ls5;->b:F

    :cond_6
    :goto_0
    const/16 p1, 0x8

    if-eq p8, p1, :cond_7

    .line 21
    invoke-virtual {v0, p0, p8}, Ls5;->c(Lu5;I)Ls5;

    .line 22
    :cond_7
    invoke-virtual {p0, v0}, Lu5;->c(Ls5;)V

    return-void
.end method

.method public c(Ls5;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    sget-object v2, Lx5$a;->e:Lx5$a;

    .line 2
    iget v3, v0, Lu5;->i:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iget v5, v0, Lu5;->j:I

    if-ge v3, v5, :cond_0

    iget v3, v0, Lu5;->h:I

    add-int/2addr v3, v4

    iget v5, v0, Lu5;->d:I

    if-lt v3, v5, :cond_1

    .line 3
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lu5;->p()V

    .line 4
    :cond_1
    iget-boolean v3, v1, Ls5;->e:Z

    if-nez v3, :cond_20

    .line 5
    iget-object v3, v0, Lu5;->e:[Ls5;

    array-length v3, v3

    const/4 v6, -0x1

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_9

    .line 6
    iget-object v7, v1, Ls5;->d:Ls5$a;

    invoke-interface {v7}, Ls5$a;->a()I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_5

    .line 7
    iget-object v9, v1, Ls5;->d:Ls5$a;

    invoke-interface {v9, v8}, Ls5$a;->b(I)Lx5;

    move-result-object v9

    .line 8
    iget v10, v9, Lx5;->c:I

    if-ne v10, v6, :cond_3

    iget-boolean v10, v9, Lx5;->f:Z

    if-eqz v10, :cond_4

    .line 9
    :cond_3
    iget-object v10, v1, Ls5;->c:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 10
    :cond_5
    iget-object v7, v1, Ls5;->c:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_8

    .line 11
    iget-object v7, v1, Ls5;->c:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lx5;

    .line 12
    iget-boolean v9, v8, Lx5;->f:Z

    if-eqz v9, :cond_6

    .line 13
    invoke-virtual {v1, v8, v4}, Ls5;->k(Lx5;Z)V

    goto :goto_2

    .line 14
    :cond_6
    iget-object v9, v0, Lu5;->e:[Ls5;

    iget v8, v8, Lx5;->c:I

    aget-object v8, v9, v8

    invoke-virtual {v1, v8, v4}, Ls5;->l(Ls5;Z)V

    goto :goto_2

    .line 15
    :cond_7
    iget-object v7, v1, Ls5;->c:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_8
    const/4 v3, 0x1

    goto :goto_0

    .line 16
    :cond_9
    :goto_3
    iget-object v3, v1, Ls5;->a:Lx5;

    const/4 v7, 0x0

    if-nez v3, :cond_a

    iget v3, v1, Ls5;->b:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_a

    iget-object v3, v1, Ls5;->d:Ls5$a;

    invoke-interface {v3}, Ls5$a;->a()I

    move-result v3

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_4

    :cond_a
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_b

    return-void

    .line 17
    :cond_b
    iget v3, v1, Ls5;->b:F

    cmpg-float v8, v3, v7

    if-gez v8, :cond_c

    const/high16 v8, -0x40800000    # -1.0f

    mul-float v3, v3, v8

    .line 18
    iput v3, v1, Ls5;->b:F

    .line 19
    iget-object v3, v1, Ls5;->d:Ls5$a;

    invoke-interface {v3}, Ls5$a;->c()V

    .line 20
    :cond_c
    iget-object v3, v1, Ls5;->d:Ls5$a;

    invoke-interface {v3}, Ls5$a;->a()I

    move-result v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_5
    if-ge v9, v3, :cond_13

    .line 21
    iget-object v5, v1, Ls5;->d:Ls5$a;

    invoke-interface {v5, v9}, Ls5$a;->d(I)F

    move-result v5

    .line 22
    iget-object v6, v1, Ls5;->d:Ls5$a;

    invoke-interface {v6, v9}, Ls5$a;->b(I)Lx5;

    move-result-object v6

    .line 23
    iget-object v8, v6, Lx5;->i:Lx5$a;

    if-ne v8, v2, :cond_f

    if-nez v10, :cond_d

    .line 24
    invoke-virtual {v1, v6}, Ls5;->h(Lx5;)Z

    move-result v8

    :goto_6
    move v13, v8

    goto :goto_7

    :cond_d
    cmpl-float v8, v12, v5

    if-lez v8, :cond_e

    .line 25
    invoke-virtual {v1, v6}, Ls5;->h(Lx5;)Z

    move-result v8

    goto :goto_6

    :goto_7
    move v12, v5

    move-object v10, v6

    goto :goto_a

    :cond_e
    if-nez v13, :cond_12

    .line 26
    invoke-virtual {v1, v6}, Ls5;->h(Lx5;)Z

    move-result v8

    if-eqz v8, :cond_12

    move v12, v5

    move-object v10, v6

    const/4 v13, 0x1

    goto :goto_a

    :cond_f
    if-nez v10, :cond_12

    cmpg-float v8, v5, v7

    if-gez v8, :cond_12

    if-nez v11, :cond_10

    .line 27
    invoke-virtual {v1, v6}, Ls5;->h(Lx5;)Z

    move-result v8

    :goto_8
    move v15, v8

    goto :goto_9

    :cond_10
    cmpl-float v8, v14, v5

    if-lez v8, :cond_11

    .line 28
    invoke-virtual {v1, v6}, Ls5;->h(Lx5;)Z

    move-result v8

    goto :goto_8

    :goto_9
    move v14, v5

    move-object v11, v6

    goto :goto_a

    :cond_11
    if-nez v15, :cond_12

    .line 29
    invoke-virtual {v1, v6}, Ls5;->h(Lx5;)Z

    move-result v8

    if-eqz v8, :cond_12

    move v14, v5

    move-object v11, v6

    const/4 v15, 0x1

    :cond_12
    :goto_a
    add-int/lit8 v9, v9, 0x1

    const/4 v6, -0x1

    goto :goto_5

    :cond_13
    if-eqz v10, :cond_14

    goto :goto_b

    :cond_14
    move-object v10, v11

    :goto_b
    if-nez v10, :cond_15

    const/4 v3, 0x1

    goto :goto_c

    .line 30
    :cond_15
    invoke-virtual {v1, v10}, Ls5;->j(Lx5;)V

    const/4 v3, 0x0

    .line 31
    :goto_c
    iget-object v5, v1, Ls5;->d:Ls5$a;

    invoke-interface {v5}, Ls5$a;->a()I

    move-result v5

    if-nez v5, :cond_16

    .line 32
    iput-boolean v4, v1, Ls5;->e:Z

    :cond_16
    if-eqz v3, :cond_1c

    .line 33
    iget v3, v0, Lu5;->h:I

    add-int/2addr v3, v4

    iget v5, v0, Lu5;->d:I

    if-lt v3, v5, :cond_17

    .line 34
    invoke-virtual/range {p0 .. p0}, Lu5;->p()V

    .line 35
    :cond_17
    sget-object v3, Lx5$a;->g:Lx5$a;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Lu5;->a(Lx5$a;Ljava/lang/String;)Lx5;

    move-result-object v3

    .line 36
    iget v5, v0, Lu5;->a:I

    add-int/2addr v5, v4

    iput v5, v0, Lu5;->a:I

    .line 37
    iget v6, v0, Lu5;->h:I

    add-int/2addr v6, v4

    iput v6, v0, Lu5;->h:I

    .line 38
    iput v5, v3, Lx5;->b:I

    .line 39
    iget-object v6, v0, Lu5;->k:Lt5;

    iget-object v6, v6, Lt5;->d:[Lx5;

    aput-object v3, v6, v5

    .line 40
    iput-object v3, v1, Ls5;->a:Lx5;

    .line 41
    invoke-virtual/range {p0 .. p1}, Lu5;->i(Ls5;)V

    .line 42
    iget-object v5, v0, Lu5;->n:Lu5$a;

    check-cast v5, Ls5;

    .line 43
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x0

    .line 44
    iput-object v6, v5, Ls5;->a:Lx5;

    .line 45
    iget-object v6, v5, Ls5;->d:Ls5$a;

    invoke-interface {v6}, Ls5$a;->clear()V

    const/4 v6, 0x0

    .line 46
    :goto_d
    iget-object v8, v1, Ls5;->d:Ls5$a;

    invoke-interface {v8}, Ls5$a;->a()I

    move-result v8

    if-ge v6, v8, :cond_18

    .line 47
    iget-object v8, v1, Ls5;->d:Ls5$a;

    invoke-interface {v8, v6}, Ls5$a;->b(I)Lx5;

    move-result-object v8

    .line 48
    iget-object v9, v1, Ls5;->d:Ls5$a;

    invoke-interface {v9, v6}, Ls5$a;->d(I)F

    move-result v9

    .line 49
    iget-object v10, v5, Ls5;->d:Ls5$a;

    invoke-interface {v10, v8, v9, v4}, Ls5$a;->e(Lx5;FZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 50
    :cond_18
    iget-object v5, v0, Lu5;->n:Lu5$a;

    invoke-virtual {v0, v5}, Lu5;->r(Lu5$a;)I

    .line 51
    iget v5, v3, Lx5;->c:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1b

    .line 52
    iget-object v5, v1, Ls5;->a:Lx5;

    if-ne v5, v3, :cond_19

    const/4 v5, 0x0

    .line 53
    invoke-virtual {v1, v5, v3}, Ls5;->i([ZLx5;)Lx5;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 54
    invoke-virtual {v1, v3}, Ls5;->j(Lx5;)V

    .line 55
    :cond_19
    iget-boolean v3, v1, Ls5;->e:Z

    if-nez v3, :cond_1a

    .line 56
    iget-object v3, v1, Ls5;->a:Lx5;

    invoke-virtual {v3, v1}, Lx5;->e(Ls5;)V

    .line 57
    :cond_1a
    iget v3, v0, Lu5;->i:I

    sub-int/2addr v3, v4

    iput v3, v0, Lu5;->i:I

    :cond_1b
    const/4 v3, 0x1

    goto :goto_e

    :cond_1c
    const/4 v3, 0x0

    .line 58
    :goto_e
    iget-object v5, v1, Ls5;->a:Lx5;

    if-eqz v5, :cond_1d

    iget-object v5, v5, Lx5;->i:Lx5$a;

    if-eq v5, v2, :cond_1e

    iget v2, v1, Ls5;->b:F

    cmpg-float v2, v2, v7

    if-ltz v2, :cond_1d

    goto :goto_f

    :cond_1d
    const/4 v4, 0x0

    :cond_1e
    :goto_f
    if-nez v4, :cond_1f

    return-void

    :cond_1f
    move v5, v3

    goto :goto_10

    :cond_20
    const/4 v5, 0x0

    :goto_10
    if-nez v5, :cond_21

    .line 59
    invoke-virtual/range {p0 .. p1}, Lu5;->i(Ls5;)V

    :cond_21
    return-void
.end method

.method public d(Lx5;Lx5;II)Ls5;
    .locals 4

    const/16 v0, 0x8

    if-ne p4, v0, :cond_0

    .line 1
    iget-boolean v1, p2, Lx5;->f:Z

    if-eqz v1, :cond_0

    iget v1, p1, Lx5;->c:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2
    iget p2, p2, Lx5;->e:F

    int-to-float p3, p3

    add-float/2addr p2, p3

    invoke-virtual {p1, p0, p2}, Lx5;->d(Lu5;F)V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lu5;->m()Ls5;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    if-gez p3, :cond_1

    mul-int/lit8 p3, p3, -0x1

    const/4 v2, 0x1

    :cond_1
    int-to-float p3, p3

    .line 4
    iput p3, v1, Ls5;->b:F

    :cond_2
    const/high16 p3, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v2, :cond_3

    .line 5
    iget-object v2, v1, Ls5;->d:Ls5$a;

    invoke-interface {v2, p1, p3}, Ls5$a;->i(Lx5;F)V

    .line 6
    iget-object p1, v1, Ls5;->d:Ls5$a;

    invoke-interface {p1, p2, v3}, Ls5$a;->i(Lx5;F)V

    goto :goto_0

    .line 7
    :cond_3
    iget-object v2, v1, Ls5;->d:Ls5$a;

    invoke-interface {v2, p1, v3}, Ls5$a;->i(Lx5;F)V

    .line 8
    iget-object p1, v1, Ls5;->d:Ls5$a;

    invoke-interface {p1, p2, p3}, Ls5$a;->i(Lx5;F)V

    :goto_0
    if-eq p4, v0, :cond_4

    .line 9
    invoke-virtual {v1, p0, p4}, Ls5;->c(Lu5;I)Ls5;

    .line 10
    :cond_4
    invoke-virtual {p0, v1}, Lu5;->c(Ls5;)V

    return-object v1
.end method

.method public e(Lx5;I)V
    .locals 4

    .line 1
    iget v0, p1, Lx5;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    int-to-float p2, p2

    .line 2
    invoke-virtual {p1, p0, p2}, Lx5;->d(Lu5;F)V

    return-void

    :cond_0
    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    .line 3
    iget-object v3, p0, Lu5;->e:[Ls5;

    aget-object v0, v3, v0

    .line 4
    iget-boolean v3, v0, Ls5;->e:Z

    if-eqz v3, :cond_1

    int-to-float p1, p2

    .line 5
    iput p1, v0, Ls5;->b:F

    goto :goto_1

    .line 6
    :cond_1
    iget-object v3, v0, Ls5;->d:Ls5$a;

    invoke-interface {v3}, Ls5$a;->a()I

    move-result v3

    if-nez v3, :cond_2

    .line 7
    iput-boolean v2, v0, Ls5;->e:Z

    int-to-float p1, p2

    .line 8
    iput p1, v0, Ls5;->b:F

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p0}, Lu5;->m()Ls5;

    move-result-object v0

    if-gez p2, :cond_3

    mul-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    .line 10
    iput p2, v0, Ls5;->b:F

    .line 11
    iget-object p2, v0, Ls5;->d:Ls5$a;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p2, p1, v1}, Ls5$a;->i(Lx5;F)V

    goto :goto_0

    :cond_3
    int-to-float p2, p2

    .line 12
    iput p2, v0, Ls5;->b:F

    .line 13
    iget-object p2, v0, Ls5;->d:Ls5$a;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-interface {p2, p1, v1}, Ls5$a;->i(Lx5;F)V

    .line 14
    :goto_0
    invoke-virtual {p0, v0}, Lu5;->c(Ls5;)V

    goto :goto_1

    .line 15
    :cond_4
    invoke-virtual {p0}, Lu5;->m()Ls5;

    move-result-object v0

    .line 16
    iput-object p1, v0, Ls5;->a:Lx5;

    int-to-float p2, p2

    .line 17
    iput p2, p1, Lx5;->e:F

    .line 18
    iput p2, v0, Ls5;->b:F

    .line 19
    iput-boolean v2, v0, Ls5;->e:Z

    .line 20
    invoke-virtual {p0, v0}, Lu5;->c(Ls5;)V

    :goto_1
    return-void
.end method

.method public f(Lx5;Lx5;II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lu5;->m()Ls5;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lu5;->n()Lx5;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    iput v2, v1, Lx5;->d:I

    .line 4
    invoke-virtual {v0, p1, p2, v1, p3}, Ls5;->e(Lx5;Lx5;Lx5;I)Ls5;

    const/16 p1, 0x8

    if-eq p4, p1, :cond_0

    .line 5
    iget-object p1, v0, Ls5;->d:Ls5$a;

    invoke-interface {p1, v1}, Ls5$a;->f(Lx5;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p0, p4, p2}, Lu5;->k(ILjava/lang/String;)Lx5;

    move-result-object p2

    .line 7
    iget-object p3, v0, Ls5;->d:Ls5$a;

    int-to-float p1, p1

    invoke-interface {p3, p2, p1}, Ls5$a;->i(Lx5;F)V

    .line 8
    :cond_0
    invoke-virtual {p0, v0}, Lu5;->c(Ls5;)V

    return-void
.end method

.method public g(Lx5;Lx5;II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lu5;->m()Ls5;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lu5;->n()Lx5;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    iput v2, v1, Lx5;->d:I

    .line 4
    invoke-virtual {v0, p1, p2, v1, p3}, Ls5;->f(Lx5;Lx5;Lx5;I)Ls5;

    const/16 p1, 0x8

    if-eq p4, p1, :cond_0

    .line 5
    iget-object p1, v0, Ls5;->d:Ls5$a;

    invoke-interface {p1, v1}, Ls5$a;->f(Lx5;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p0, p4, p2}, Lu5;->k(ILjava/lang/String;)Lx5;

    move-result-object p2

    .line 7
    iget-object p3, v0, Ls5;->d:Ls5$a;

    int-to-float p1, p1

    invoke-interface {p3, p2, p1}, Ls5$a;->i(Lx5;F)V

    .line 8
    :cond_0
    invoke-virtual {p0, v0}, Lu5;->c(Ls5;)V

    return-void
.end method

.method public h(Lx5;Lx5;Lx5;Lx5;FI)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lu5;->m()Ls5;

    move-result-object v6

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 2
    invoke-virtual/range {v0 .. v5}, Ls5;->d(Lx5;Lx5;Lx5;Lx5;F)Ls5;

    const/16 p1, 0x8

    if-eq p6, p1, :cond_0

    .line 3
    invoke-virtual {v6, p0, p6}, Ls5;->c(Lu5;I)Ls5;

    .line 4
    :cond_0
    invoke-virtual {p0, v6}, Lu5;->c(Ls5;)V

    return-void
.end method

.method public final i(Ls5;)V
    .locals 3

    .line 1
    sget-boolean v0, Lu5;->p:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lu5;->e:[Ls5;

    iget v1, p0, Lu5;->i:I

    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    .line 3
    iget-object v2, p0, Lu5;->k:Lt5;

    iget-object v2, v2, Lt5;->a:Lv5;

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Lv5;->b(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lu5;->e:[Ls5;

    iget v1, p0, Lu5;->i:I

    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    .line 5
    iget-object v2, p0, Lu5;->k:Lt5;

    iget-object v2, v2, Lt5;->b:Lv5;

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Lv5;->b(Ljava/lang/Object;)Z

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lu5;->e:[Ls5;

    iget v1, p0, Lu5;->i:I

    aput-object p1, v0, v1

    .line 7
    iget-object v0, p1, Ls5;->a:Lx5;

    iput v1, v0, Lx5;->c:I

    add-int/lit8 v1, v1, 0x1

    .line 8
    iput v1, p0, Lu5;->i:I

    .line 9
    invoke-virtual {v0, p1}, Lx5;->e(Ls5;)V

    return-void
.end method

.method public final j()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lu5;->i:I

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lu5;->e:[Ls5;

    aget-object v1, v1, v0

    .line 3
    iget-object v2, v1, Ls5;->a:Lx5;

    iget v1, v1, Ls5;->b:F

    iput v1, v2, Lx5;->e:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public k(ILjava/lang/String;)Lx5;
    .locals 2

    .line 1
    iget v0, p0, Lu5;->h:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lu5;->d:I

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lu5;->p()V

    .line 3
    :cond_0
    sget-object v0, Lx5$a;->h:Lx5$a;

    invoke-virtual {p0, v0, p2}, Lu5;->a(Lx5$a;Ljava/lang/String;)Lx5;

    move-result-object p2

    .line 4
    iget v0, p0, Lu5;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lu5;->a:I

    .line 5
    iget v1, p0, Lu5;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lu5;->h:I

    .line 6
    iput v0, p2, Lx5;->b:I

    .line 7
    iput p1, p2, Lx5;->d:I

    .line 8
    iget-object p1, p0, Lu5;->k:Lt5;

    iget-object p1, p1, Lt5;->d:[Lx5;

    aput-object p2, p1, v0

    .line 9
    iget-object p1, p0, Lu5;->b:Lu5$a;

    invoke-interface {p1, p2}, Lu5$a;->a(Lx5;)V

    return-object p2
.end method

.method public l(Ljava/lang/Object;)Lx5;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget v1, p0, Lu5;->h:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lu5;->d:I

    if-lt v1, v2, :cond_1

    .line 2
    invoke-virtual {p0}, Lu5;->p()V

    .line 3
    :cond_1
    instance-of v1, p1, Lb6;

    if-eqz v1, :cond_5

    .line 4
    check-cast p1, Lb6;

    .line 5
    iget-object v0, p1, Lb6;->g:Lx5;

    if-nez v0, :cond_2

    .line 6
    invoke-virtual {p1}, Lb6;->i()V

    .line 7
    iget-object p1, p1, Lb6;->g:Lx5;

    move-object v0, p1

    .line 8
    :cond_2
    iget p1, v0, Lx5;->b:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    iget v2, p0, Lu5;->a:I

    if-gt p1, v2, :cond_3

    iget-object v2, p0, Lu5;->k:Lt5;

    iget-object v2, v2, Lt5;->d:[Lx5;

    aget-object v2, v2, p1

    if-nez v2, :cond_5

    :cond_3
    if-eq p1, v1, :cond_4

    .line 9
    invoke-virtual {v0}, Lx5;->c()V

    .line 10
    :cond_4
    iget p1, p0, Lu5;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lu5;->a:I

    .line 11
    iget v1, p0, Lu5;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lu5;->h:I

    .line 12
    iput p1, v0, Lx5;->b:I

    .line 13
    sget-object v1, Lx5$a;->e:Lx5$a;

    iput-object v1, v0, Lx5;->i:Lx5$a;

    .line 14
    iget-object v1, p0, Lu5;->k:Lt5;

    iget-object v1, v1, Lt5;->d:[Lx5;

    aput-object v0, v1, p1

    :cond_5
    return-object v0
.end method

.method public m()Ls5;
    .locals 6

    .line 1
    sget-boolean v0, Lu5;->p:Z

    const-wide/16 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lu5;->k:Lt5;

    iget-object v0, v0, Lt5;->a:Lv5;

    invoke-virtual {v0}, Lv5;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls5;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lu5$b;

    iget-object v3, p0, Lu5;->k:Lt5;

    invoke-direct {v0, p0, v3}, Lu5$b;-><init>(Lu5;Lt5;)V

    .line 4
    sget-wide v3, Lu5;->r:J

    add-long/2addr v3, v1

    sput-wide v3, Lu5;->r:J

    goto :goto_0

    .line 5
    :cond_0
    iput-object v5, v0, Ls5;->a:Lx5;

    .line 6
    iget-object v1, v0, Ls5;->d:Ls5$a;

    invoke-interface {v1}, Ls5$a;->clear()V

    .line 7
    iput v4, v0, Ls5;->b:F

    .line 8
    iput-boolean v3, v0, Ls5;->e:Z

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lu5;->k:Lt5;

    iget-object v0, v0, Lt5;->b:Lv5;

    invoke-virtual {v0}, Lv5;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls5;

    if-nez v0, :cond_2

    .line 10
    new-instance v0, Ls5;

    iget-object v3, p0, Lu5;->k:Lt5;

    invoke-direct {v0, v3}, Ls5;-><init>(Lt5;)V

    .line 11
    sget-wide v3, Lu5;->q:J

    add-long/2addr v3, v1

    sput-wide v3, Lu5;->q:J

    goto :goto_0

    .line 12
    :cond_2
    iput-object v5, v0, Ls5;->a:Lx5;

    .line 13
    iget-object v1, v0, Ls5;->d:Ls5$a;

    invoke-interface {v1}, Ls5$a;->clear()V

    .line 14
    iput v4, v0, Ls5;->b:F

    .line 15
    iput-boolean v3, v0, Ls5;->e:Z

    .line 16
    :goto_0
    sget v1, Lx5;->m:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lx5;->m:I

    return-object v0
.end method

.method public n()Lx5;
    .locals 3

    .line 1
    iget v0, p0, Lu5;->h:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lu5;->d:I

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lu5;->p()V

    .line 3
    :cond_0
    sget-object v0, Lx5$a;->g:Lx5$a;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lu5;->a(Lx5$a;Ljava/lang/String;)Lx5;

    move-result-object v0

    .line 4
    iget v1, p0, Lu5;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lu5;->a:I

    .line 5
    iget v2, p0, Lu5;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lu5;->h:I

    .line 6
    iput v1, v0, Lx5;->b:I

    .line 7
    iget-object v2, p0, Lu5;->k:Lt5;

    iget-object v2, v2, Lt5;->d:[Lx5;

    aput-object v0, v2, v1

    return-object v0
.end method

.method public o(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lb6;

    .line 2
    iget-object p1, p1, Lb6;->g:Lx5;

    if-eqz p1, :cond_0

    .line 3
    iget p1, p1, Lx5;->e:F

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final p()V
    .locals 3

    .line 1
    iget v0, p0, Lu5;->c:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lu5;->c:I

    .line 2
    iget-object v1, p0, Lu5;->e:[Ls5;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls5;

    iput-object v0, p0, Lu5;->e:[Ls5;

    .line 3
    iget-object v0, p0, Lu5;->k:Lt5;

    iget-object v1, v0, Lt5;->d:[Lx5;

    iget v2, p0, Lu5;->c:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lx5;

    iput-object v1, v0, Lt5;->d:[Lx5;

    .line 4
    iget v0, p0, Lu5;->c:I

    new-array v1, v0, [Z

    iput-object v1, p0, Lu5;->g:[Z

    .line 5
    iput v0, p0, Lu5;->d:I

    .line 6
    iput v0, p0, Lu5;->j:I

    return-void
.end method

.method public q(Lu5$a;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lx5$a;->e:Lx5$a;

    const/4 v3, 0x0

    .line 2
    :goto_0
    iget v4, v0, Lu5;->i:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v3, v4, :cond_2

    .line 3
    iget-object v4, v0, Lu5;->e:[Ls5;

    aget-object v7, v4, v3

    iget-object v7, v7, Ls5;->a:Lx5;

    .line 4
    iget-object v7, v7, Lx5;->i:Lx5$a;

    if-ne v7, v1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    aget-object v4, v4, v3

    iget v4, v4, Ls5;->b:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_e

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_3
    if-nez v3, :cond_e

    add-int/2addr v4, v6

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    .line 6
    :goto_4
    iget v13, v0, Lu5;->i:I

    if-ge v9, v13, :cond_b

    .line 7
    iget-object v13, v0, Lu5;->e:[Ls5;

    aget-object v13, v13, v9

    .line 8
    iget-object v14, v13, Ls5;->a:Lx5;

    .line 9
    iget-object v14, v14, Lx5;->i:Lx5$a;

    if-ne v14, v1, :cond_3

    goto :goto_8

    .line 10
    :cond_3
    iget-boolean v14, v13, Ls5;->e:Z

    if-eqz v14, :cond_4

    goto :goto_8

    .line 11
    :cond_4
    iget v14, v13, Ls5;->b:F

    cmpg-float v14, v14, v5

    if-gez v14, :cond_a

    const/4 v14, 0x1

    .line 12
    :goto_5
    iget v15, v0, Lu5;->h:I

    if-ge v14, v15, :cond_a

    .line 13
    iget-object v15, v0, Lu5;->k:Lt5;

    iget-object v15, v15, Lt5;->d:[Lx5;

    aget-object v15, v15, v14

    .line 14
    iget-object v2, v13, Ls5;->d:Ls5$a;

    invoke-interface {v2, v15}, Ls5$a;->f(Lx5;)F

    move-result v2

    cmpg-float v16, v2, v5

    if-gtz v16, :cond_5

    goto :goto_7

    :cond_5
    const/4 v5, 0x0

    :goto_6
    const/16 v6, 0x9

    if-ge v5, v6, :cond_9

    .line 15
    iget-object v6, v15, Lx5;->g:[F

    aget v6, v6, v5

    div-float/2addr v6, v2

    cmpg-float v17, v6, v7

    if-gez v17, :cond_6

    if-eq v5, v12, :cond_7

    :cond_6
    if-le v5, v12, :cond_8

    :cond_7
    move v12, v5

    move v7, v6

    move v10, v9

    move v11, v14

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_9
    :goto_7
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_5

    :cond_a
    :goto_8
    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_4

    :cond_b
    if-eq v10, v8, :cond_c

    .line 16
    iget-object v2, v0, Lu5;->e:[Ls5;

    aget-object v2, v2, v10

    .line 17
    iget-object v5, v2, Ls5;->a:Lx5;

    iput v8, v5, Lx5;->c:I

    .line 18
    iget-object v5, v0, Lu5;->k:Lt5;

    iget-object v5, v5, Lt5;->d:[Lx5;

    aget-object v5, v5, v11

    invoke-virtual {v2, v5}, Ls5;->j(Lx5;)V

    .line 19
    iget-object v5, v2, Ls5;->a:Lx5;

    iput v10, v5, Lx5;->c:I

    .line 20
    invoke-virtual {v5, v2}, Lx5;->e(Ls5;)V

    goto :goto_9

    :cond_c
    const/4 v3, 0x1

    .line 21
    :goto_9
    iget v2, v0, Lu5;->h:I

    div-int/lit8 v2, v2, 0x2

    if-le v4, v2, :cond_d

    const/4 v3, 0x1

    :cond_d
    const/4 v5, 0x0

    const/4 v6, 0x1

    goto/16 :goto_3

    .line 22
    :cond_e
    invoke-virtual/range {p0 .. p1}, Lu5;->r(Lu5$a;)I

    .line 23
    invoke-virtual/range {p0 .. p0}, Lu5;->j()V

    return-void
.end method

.method public final r(Lu5$a;)I
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, Lu5;->h:I

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v2, p0, Lu5;->g:[Z

    aput-boolean v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_1
    :goto_1
    if-nez v2, :cond_b

    add-int/lit8 v3, v3, 0x1

    .line 3
    iget v4, p0, Lu5;->h:I

    mul-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_2

    return v3

    .line 4
    :cond_2
    move-object v4, p1

    check-cast v4, Ls5;

    .line 5
    iget-object v4, v4, Ls5;->a:Lx5;

    if-eqz v4, :cond_3

    .line 6
    iget-object v5, p0, Lu5;->g:[Z

    iget v4, v4, Lx5;->b:I

    aput-boolean v1, v5, v4

    .line 7
    :cond_3
    iget-object v4, p0, Lu5;->g:[Z

    invoke-interface {p1, p0, v4}, Lu5$a;->b(Lu5;[Z)Lx5;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 8
    iget-object v5, p0, Lu5;->g:[Z

    iget v6, v4, Lx5;->b:I

    aget-boolean v7, v5, v6

    if-eqz v7, :cond_4

    return v3

    .line 9
    :cond_4
    aput-boolean v1, v5, v6

    :cond_5
    if-eqz v4, :cond_a

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 10
    :goto_2
    iget v9, p0, Lu5;->i:I

    if-ge v7, v9, :cond_9

    .line 11
    iget-object v9, p0, Lu5;->e:[Ls5;

    aget-object v9, v9, v7

    .line 12
    iget-object v10, v9, Ls5;->a:Lx5;

    .line 13
    iget-object v10, v10, Lx5;->i:Lx5$a;

    sget-object v11, Lx5$a;->e:Lx5$a;

    if-ne v10, v11, :cond_6

    goto :goto_3

    .line 14
    :cond_6
    iget-boolean v10, v9, Ls5;->e:Z

    if-eqz v10, :cond_7

    goto :goto_3

    .line 15
    :cond_7
    iget-object v10, v9, Ls5;->d:Ls5$a;

    invoke-interface {v10, v4}, Ls5$a;->g(Lx5;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 16
    iget-object v10, v9, Ls5;->d:Ls5$a;

    invoke-interface {v10, v4}, Ls5$a;->f(Lx5;)F

    move-result v10

    const/4 v11, 0x0

    cmpg-float v11, v10, v11

    if-gez v11, :cond_8

    .line 17
    iget v9, v9, Ls5;->b:F

    neg-float v9, v9

    div-float/2addr v9, v10

    cmpg-float v10, v9, v5

    if-gez v10, :cond_8

    move v8, v7

    move v5, v9

    :cond_8
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_9
    if-le v8, v6, :cond_1

    .line 18
    iget-object v5, p0, Lu5;->e:[Ls5;

    aget-object v5, v5, v8

    .line 19
    iget-object v7, v5, Ls5;->a:Lx5;

    iput v6, v7, Lx5;->c:I

    .line 20
    invoke-virtual {v5, v4}, Ls5;->j(Lx5;)V

    .line 21
    iget-object v4, v5, Ls5;->a:Lx5;

    iput v8, v4, Lx5;->c:I

    .line 22
    invoke-virtual {v4, v5}, Lx5;->e(Ls5;)V

    goto :goto_1

    :cond_a
    const/4 v2, 0x1

    goto :goto_1

    :cond_b
    return v3
.end method

.method public final s()V
    .locals 4

    .line 1
    sget-boolean v0, Lu5;->p:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    :goto_0
    iget-object v0, p0, Lu5;->e:[Ls5;

    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 3
    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 4
    iget-object v3, p0, Lu5;->k:Lt5;

    iget-object v3, v3, Lt5;->a:Lv5;

    invoke-virtual {v3, v0}, Lv5;->b(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    iget-object v0, p0, Lu5;->e:[Ls5;

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    iget-object v0, p0, Lu5;->e:[Ls5;

    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 7
    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    .line 8
    iget-object v3, p0, Lu5;->k:Lt5;

    iget-object v3, v3, Lt5;->b:Lv5;

    invoke-virtual {v3, v0}, Lv5;->b(Ljava/lang/Object;)Z

    .line 9
    :cond_2
    iget-object v0, p0, Lu5;->e:[Ls5;

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public t()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lu5;->k:Lt5;

    iget-object v3, v2, Lt5;->d:[Lx5;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 2
    aget-object v2, v3, v1

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Lx5;->c()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, v2, Lt5;->c:Lv5;

    iget-object v2, p0, Lu5;->l:[Lx5;

    iget v3, p0, Lu5;->m:I

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    array-length v4, v2

    if-le v3, v4, :cond_2

    .line 7
    array-length v3, v2

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    .line 8
    aget-object v5, v2, v4

    .line 9
    iget v6, v1, Lv5;->b:I

    iget-object v7, v1, Lv5;->a:[Ljava/lang/Object;

    array-length v8, v7

    if-ge v6, v8, :cond_3

    .line 10
    aput-object v5, v7, v6

    add-int/lit8 v6, v6, 0x1

    .line 11
    iput v6, v1, Lv5;->b:I

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 12
    :cond_4
    iput v0, p0, Lu5;->m:I

    .line 13
    iget-object v1, p0, Lu5;->k:Lt5;

    iget-object v1, v1, Lt5;->d:[Lx5;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    iput v0, p0, Lu5;->a:I

    .line 15
    iget-object v1, p0, Lu5;->b:Lu5$a;

    invoke-interface {v1}, Lu5$a;->clear()V

    const/4 v1, 0x1

    .line 16
    iput v1, p0, Lu5;->h:I

    const/4 v1, 0x0

    .line 17
    :goto_2
    iget v2, p0, Lu5;->i:I

    if-ge v1, v2, :cond_5

    .line 18
    iget-object v2, p0, Lu5;->e:[Ls5;

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 19
    :cond_5
    invoke-virtual {p0}, Lu5;->s()V

    .line 20
    iput v0, p0, Lu5;->i:I

    .line 21
    sget-boolean v0, Lu5;->p:Z

    if-eqz v0, :cond_6

    .line 22
    new-instance v0, Lu5$b;

    iget-object v1, p0, Lu5;->k:Lt5;

    invoke-direct {v0, p0, v1}, Lu5$b;-><init>(Lu5;Lt5;)V

    iput-object v0, p0, Lu5;->n:Lu5$a;

    goto :goto_3

    .line 23
    :cond_6
    new-instance v0, Ls5;

    iget-object v1, p0, Lu5;->k:Lt5;

    invoke-direct {v0, v1}, Ls5;-><init>(Lt5;)V

    iput-object v0, p0, Lu5;->n:Lu5$a;

    :goto_3
    return-void
.end method
