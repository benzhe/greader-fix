.class public abstract Luj3;
.super Lzj3;
.source "SourceFile"


# instance fields
.field public final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lnj3;",
            "Lwj3;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lzj3;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Luj3;->b:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Luj3;->c:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public final a([Lxd3;Lnj3;)Lbk3;
    .locals 40
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyd3;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1
    array-length v3, v0

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [I

    .line 2
    array-length v5, v0

    add-int/2addr v5, v4

    new-array v6, v5, [[Lkj3;

    .line 3
    array-length v7, v0

    add-int/2addr v7, v4

    new-array v12, v7, [[[I

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v5, :cond_0

    .line 4
    iget v9, v2, Lnj3;->a:I

    new-array v10, v9, [Lkj3;

    aput-object v10, v6, v8

    .line 5
    new-array v9, v9, [[I

    aput-object v9, v12, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 6
    :cond_0
    array-length v5, v0

    new-array v11, v5, [I

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v5, :cond_1

    .line 7
    aget-object v9, v0, v8

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x4

    aput v9, v11, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 8
    :goto_2
    iget v8, v2, Lnj3;->a:I

    if-ge v5, v8, :cond_8

    .line 9
    iget-object v8, v2, Lnj3;->b:[Lkj3;

    aget-object v8, v8, v5

    .line 10
    array-length v10, v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 11
    :goto_3
    array-length v15, v0

    if-ge v13, v15, :cond_5

    .line 12
    aget-object v15, v0, v13

    const/4 v7, 0x0

    .line 13
    :goto_4
    iget v4, v8, Lkj3;->a:I

    if-ge v7, v4, :cond_4

    .line 14
    iget-object v4, v8, Lkj3;->b:[Lcom/google/android/gms/internal/ads/zzht;

    aget-object v4, v4, v7

    .line 15
    move-object v9, v15

    check-cast v9, Luh3;

    .line 16
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v19, v10

    .line 17
    :try_start_0
    iget-object v10, v9, Luh3;->i:Lwh3;

    invoke-virtual {v9, v10, v4}, Luh3;->B(Lwh3;Lcom/google/android/gms/internal/ads/zzht;)I

    move-result v4
    :try_end_0
    .catch Ldi3; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x3

    and-int/2addr v4, v9

    if-le v4, v14, :cond_3

    if-eq v4, v9, :cond_2

    move v14, v4

    move v10, v13

    goto :goto_5

    :cond_2
    move v10, v13

    goto :goto_6

    :cond_3
    move/from16 v10, v19

    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    .line 18
    iget v2, v9, Lxd3;->c:I

    .line 19
    invoke-static {v0, v2}, Lyd3;->b(Ljava/lang/Exception;I)Lyd3;

    move-result-object v0

    throw v0

    :cond_4
    move/from16 v19, v10

    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x1

    goto :goto_3

    .line 20
    :cond_5
    :goto_6
    array-length v4, v0

    if-ne v10, v4, :cond_6

    .line 21
    iget v4, v8, Lkj3;->a:I

    new-array v4, v4, [I

    goto :goto_8

    :cond_6
    aget-object v4, v0, v10

    .line 22
    iget v7, v8, Lkj3;->a:I

    new-array v7, v7, [I

    const/4 v9, 0x0

    .line 23
    :goto_7
    iget v13, v8, Lkj3;->a:I

    if-ge v9, v13, :cond_7

    .line 24
    iget-object v13, v8, Lkj3;->b:[Lcom/google/android/gms/internal/ads/zzht;

    aget-object v13, v13, v9

    .line 25
    move-object v14, v4

    check-cast v14, Luh3;

    .line 26
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :try_start_1
    iget-object v15, v14, Luh3;->i:Lwh3;

    invoke-virtual {v14, v15, v13}, Luh3;->B(Lwh3;Lcom/google/android/gms/internal/ads/zzht;)I

    move-result v13
    :try_end_1
    .catch Ldi3; {:try_start_1 .. :try_end_1} :catch_1

    .line 28
    aput v13, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :catch_1
    move-exception v0

    .line 29
    iget v2, v14, Lxd3;->c:I

    .line 30
    invoke-static {v0, v2}, Lyd3;->b(Ljava/lang/Exception;I)Lyd3;

    move-result-object v0

    throw v0

    :cond_7
    move-object v4, v7

    .line 31
    :goto_8
    aget v7, v3, v10

    .line 32
    aget-object v9, v6, v10

    aput-object v8, v9, v7

    .line 33
    aget-object v8, v12, v10

    aput-object v4, v8, v7

    .line 34
    aget v4, v3, v10

    const/4 v7, 0x1

    add-int/2addr v4, v7

    aput v4, v3, v10

    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x1

    goto/16 :goto_2

    .line 35
    :cond_8
    array-length v4, v0

    new-array v10, v4, [Lnj3;

    .line 36
    array-length v4, v0

    new-array v9, v4, [I

    const/4 v4, 0x0

    .line 37
    :goto_9
    array-length v5, v0

    if-ge v4, v5, :cond_9

    .line 38
    aget v5, v3, v4

    .line 39
    new-instance v7, Lnj3;

    aget-object v8, v6, v4

    .line 40
    invoke-static {v8, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lkj3;

    invoke-direct {v7, v8}, Lnj3;-><init>([Lkj3;)V

    aput-object v7, v10, v4

    .line 41
    aget-object v7, v12, v4

    invoke-static {v7, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    aput-object v5, v12, v4

    .line 42
    aget-object v5, v0, v4

    .line 43
    iget v5, v5, Lxd3;->a:I

    .line 44
    aput v5, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 45
    :cond_9
    array-length v4, v0

    aget v3, v3, v4

    .line 46
    new-instance v13, Lnj3;

    array-length v4, v0

    aget-object v4, v6, v4

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lkj3;

    invoke-direct {v13, v3}, Lnj3;-><init>([Lkj3;)V

    .line 47
    move-object v3, v1

    check-cast v3, Ltj3;

    .line 48
    array-length v4, v0

    .line 49
    new-array v5, v4, [Lyj3;

    .line 50
    iget-object v3, v3, Ltj3;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrj3;

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_a
    const/4 v8, 0x2

    if-ge v6, v4, :cond_2f

    .line 51
    aget-object v15, v0, v6

    .line 52
    iget v15, v15, Lxd3;->a:I

    if-ne v8, v15, :cond_2e

    if-nez v7, :cond_2d

    .line 53
    aget-object v7, v10, v6

    aget-object v15, v12, v6

    iget v8, v3, Lrj3;->b:I

    iget v14, v3, Lrj3;->c:I

    iget v2, v3, Lrj3;->d:I

    move-object/from16 v20, v13

    iget v13, v3, Lrj3;->g:I

    move-object/from16 v21, v11

    iget v11, v3, Lrj3;->h:I

    move-object/from16 v22, v9

    iget-boolean v9, v3, Lrj3;->i:Z

    iget-boolean v1, v3, Lrj3;->e:Z

    move-object/from16 v23, v12

    iget-boolean v12, v3, Lrj3;->f:Z

    move-object/from16 v24, v3

    move/from16 v28, v4

    move-object/from16 v29, v10

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v25, 0x0

    const/16 v26, -0x1

    const/16 v27, -0x1

    .line 54
    :goto_b
    iget v10, v7, Lnj3;->a:I

    if-ge v3, v10, :cond_2a

    .line 55
    iget-object v10, v7, Lnj3;->b:[Lkj3;

    aget-object v10, v10, v3

    move-object/from16 v30, v7

    .line 56
    new-instance v7, Ljava/util/ArrayList;

    move-object/from16 v31, v5

    iget v5, v10, Lkj3;->a:I

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    move/from16 v32, v6

    const/4 v5, 0x0

    .line 57
    :goto_c
    iget v6, v10, Lkj3;->a:I

    if-ge v5, v6, :cond_a

    .line 58
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_a
    const v5, 0x7fffffff

    if-eq v13, v5, :cond_17

    if-ne v11, v5, :cond_b

    goto/16 :goto_14

    :cond_b
    move/from16 v33, v0

    const/4 v6, 0x0

    .line 59
    :goto_d
    iget v0, v10, Lkj3;->a:I

    if-ge v6, v0, :cond_14

    .line 60
    iget-object v0, v10, Lkj3;->b:[Lcom/google/android/gms/internal/ads/zzht;

    aget-object v0, v0, v6

    move-object/from16 v34, v4

    .line 61
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzht;->n:I

    if-lez v4, :cond_11

    move/from16 v35, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzht;->o:I

    if-lez v1, :cond_12

    move/from16 v36, v9

    if-eqz v9, :cond_e

    if-le v4, v1, :cond_c

    const/4 v9, 0x1

    goto :goto_e

    :cond_c
    const/4 v9, 0x0

    :goto_e
    move/from16 v37, v11

    if-le v13, v11, :cond_d

    const/4 v11, 0x1

    goto :goto_f

    :cond_d
    const/4 v11, 0x0

    :goto_f
    if-eq v9, v11, :cond_f

    move v9, v13

    move/from16 v38, v9

    move/from16 v11, v37

    goto :goto_10

    :cond_e
    move/from16 v37, v11

    :cond_f
    move v11, v13

    move/from16 v38, v11

    move/from16 v9, v37

    :goto_10
    mul-int v13, v4, v9

    move/from16 v39, v2

    mul-int v2, v1, v11

    if-lt v13, v2, :cond_10

    .line 62
    new-instance v1, Landroid/graphics/Point;

    invoke-static {v2, v4}, Lel3;->h(II)I

    move-result v2

    invoke-direct {v1, v11, v2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_11

    .line 63
    :cond_10
    new-instance v2, Landroid/graphics/Point;

    invoke-static {v13, v1}, Lel3;->h(II)I

    move-result v1

    invoke-direct {v2, v1, v9}, Landroid/graphics/Point;-><init>(II)V

    move-object v1, v2

    .line 64
    :goto_11
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzht;->n:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzht;->o:I

    mul-int v4, v2, v0

    .line 65
    iget v9, v1, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    const v11, 0x3f7ae148    # 0.98f

    mul-float v9, v9, v11

    float-to-int v9, v9

    if-lt v2, v9, :cond_13

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float v1, v1, v11

    float-to-int v1, v1

    if-lt v0, v1, :cond_13

    if-ge v4, v5, :cond_13

    move v5, v4

    goto :goto_12

    :cond_11
    move/from16 v35, v1

    :cond_12
    move/from16 v39, v2

    move/from16 v36, v9

    move/from16 v37, v11

    move/from16 v38, v13

    :cond_13
    :goto_12
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, v34

    move/from16 v1, v35

    move/from16 v9, v36

    move/from16 v11, v37

    move/from16 v13, v38

    move/from16 v2, v39

    goto/16 :goto_d

    :cond_14
    move/from16 v35, v1

    move/from16 v39, v2

    move-object/from16 v34, v4

    move/from16 v36, v9

    move/from16 v37, v11

    move/from16 v38, v13

    const v0, 0x7fffffff

    if-eq v5, v0, :cond_18

    .line 66
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_13
    if-ltz v0, :cond_18

    .line 67
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 68
    iget-object v2, v10, Lkj3;->b:[Lcom/google/android/gms/internal/ads/zzht;

    aget-object v1, v2, v1

    .line 69
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzht;->h()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_15

    if-le v1, v5, :cond_16

    .line 70
    :cond_15
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_16
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_17
    :goto_14
    move/from16 v33, v0

    move/from16 v35, v1

    move/from16 v39, v2

    move-object/from16 v34, v4

    move/from16 v36, v9

    move/from16 v37, v11

    move/from16 v38, v13

    .line 71
    :cond_18
    aget-object v0, v15, v3

    move/from16 v2, v25

    move/from16 v5, v26

    move/from16 v6, v27

    move-object/from16 v4, v34

    const/4 v1, 0x0

    .line 72
    :goto_15
    iget v9, v10, Lkj3;->a:I

    if-ge v1, v9, :cond_29

    .line 73
    aget v9, v0, v1

    invoke-static {v9, v12}, Ltj3;->c(IZ)Z

    move-result v9

    if-eqz v9, :cond_27

    .line 74
    iget-object v9, v10, Lkj3;->b:[Lcom/google/android/gms/internal/ads/zzht;

    aget-object v9, v9, v1

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c

    iget v11, v9, Lcom/google/android/gms/internal/ads/zzht;->n:I

    const/4 v13, -0x1

    if-eq v11, v13, :cond_19

    if-gt v11, v8, :cond_1c

    :cond_19
    iget v11, v9, Lcom/google/android/gms/internal/ads/zzht;->o:I

    if-eq v11, v13, :cond_1a

    if-gt v11, v14, :cond_1c

    :cond_1a
    iget v11, v9, Lcom/google/android/gms/internal/ads/zzht;->f:I

    if-eq v11, v13, :cond_1b

    move/from16 v13, v39

    if-gt v11, v13, :cond_1d

    goto :goto_16

    :cond_1b
    move/from16 v13, v39

    :goto_16
    const/4 v11, 0x1

    goto :goto_17

    :cond_1c
    move/from16 v13, v39

    :cond_1d
    const/4 v11, 0x0

    :goto_17
    if-nez v11, :cond_1f

    if-eqz v35, :cond_1e

    goto :goto_18

    :cond_1e
    move-object/from16 v27, v0

    move-object/from16 v25, v4

    move-object/from16 v26, v7

    goto :goto_1e

    :cond_1f
    :goto_18
    move-object/from16 v25, v4

    move-object/from16 v26, v7

    if-eqz v11, :cond_20

    const/4 v4, 0x2

    goto :goto_19

    :cond_20
    const/4 v4, 0x1

    .line 76
    :goto_19
    aget v7, v0, v1

    move-object/from16 v27, v0

    const/4 v0, 0x0

    invoke-static {v7, v0}, Ltj3;->c(IZ)Z

    move-result v7

    if-eqz v7, :cond_21

    add-int/lit16 v4, v4, 0x3e8

    :cond_21
    if-le v4, v2, :cond_22

    const/4 v0, 0x1

    goto :goto_1a

    :cond_22
    const/4 v0, 0x0

    :goto_1a
    if-ne v4, v2, :cond_26

    .line 77
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzht;->h()I

    move-result v0

    if-eq v0, v5, :cond_23

    .line 78
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzht;->h()I

    move-result v0

    invoke-static {v0, v5}, Ltj3;->d(II)I

    move-result v0

    goto :goto_1b

    .line 79
    :cond_23
    iget v0, v9, Lcom/google/android/gms/internal/ads/zzht;->f:I

    invoke-static {v0, v6}, Ltj3;->d(II)I

    move-result v0

    :goto_1b
    if-eqz v7, :cond_24

    if-eqz v11, :cond_24

    if-lez v0, :cond_25

    goto :goto_1c

    :cond_24
    if-gez v0, :cond_25

    :goto_1c
    const/4 v0, 0x1

    goto :goto_1d

    :cond_25
    const/4 v0, 0x0

    :cond_26
    :goto_1d
    if-eqz v0, :cond_28

    .line 80
    iget v0, v9, Lcom/google/android/gms/internal/ads/zzht;->f:I

    .line 81
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzht;->h()I

    move-result v2

    move v6, v0

    move/from16 v33, v1

    move v5, v2

    move v2, v4

    move-object v4, v10

    goto :goto_1f

    :cond_27
    move-object/from16 v27, v0

    move-object/from16 v25, v4

    move-object/from16 v26, v7

    move/from16 v13, v39

    :cond_28
    :goto_1e
    move-object/from16 v4, v25

    :goto_1f
    add-int/lit8 v1, v1, 0x1

    move/from16 v39, v13

    move-object/from16 v7, v26

    move-object/from16 v0, v27

    goto/16 :goto_15

    :cond_29
    move-object/from16 v25, v4

    move/from16 v13, v39

    add-int/lit8 v3, v3, 0x1

    move/from16 v26, v5

    move/from16 v27, v6

    move-object/from16 v7, v30

    move-object/from16 v5, v31

    move/from16 v6, v32

    move/from16 v0, v33

    move/from16 v1, v35

    move/from16 v9, v36

    move/from16 v11, v37

    move/from16 v25, v2

    move v2, v13

    move/from16 v13, v38

    goto/16 :goto_b

    :cond_2a
    move/from16 v33, v0

    move-object/from16 v34, v4

    move-object/from16 v31, v5

    move/from16 v32, v6

    if-nez v34, :cond_2b

    const/4 v15, 0x0

    goto :goto_20

    .line 82
    :cond_2b
    new-instance v15, Lvj3;

    move/from16 v0, v33

    move-object/from16 v1, v34

    invoke-direct {v15, v1, v0}, Lvj3;-><init>(Lkj3;I)V

    .line 83
    :goto_20
    aput-object v15, v31, v32

    .line 84
    aget-object v0, v31, v32

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    goto :goto_21

    :cond_2c
    const/4 v0, 0x0

    :goto_21
    move v7, v0

    goto :goto_22

    :cond_2d
    move-object/from16 v24, v3

    move/from16 v28, v4

    move-object/from16 v31, v5

    move/from16 v32, v6

    move-object/from16 v22, v9

    move-object/from16 v29, v10

    move-object/from16 v21, v11

    move-object/from16 v23, v12

    move-object/from16 v20, v13

    .line 85
    :goto_22
    aget-object v0, v29, v32

    iget v0, v0, Lnj3;->a:I

    goto :goto_23

    :cond_2e
    move-object/from16 v24, v3

    move/from16 v28, v4

    move-object/from16 v31, v5

    move/from16 v32, v6

    move-object/from16 v22, v9

    move-object/from16 v29, v10

    move-object/from16 v21, v11

    move-object/from16 v23, v12

    move-object/from16 v20, v13

    :goto_23
    add-int/lit8 v6, v32, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v13, v20

    move-object/from16 v11, v21

    move-object/from16 v9, v22

    move-object/from16 v12, v23

    move-object/from16 v3, v24

    move/from16 v4, v28

    move-object/from16 v10, v29

    move-object/from16 v5, v31

    goto/16 :goto_a

    :cond_2f
    move-object/from16 v24, v3

    move-object/from16 v31, v5

    move-object/from16 v22, v9

    move-object/from16 v29, v10

    move-object/from16 v21, v11

    move-object/from16 v23, v12

    move-object/from16 v20, v13

    move v3, v4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_24
    if-ge v0, v3, :cond_4f

    move-object/from16 v4, p1

    .line 86
    aget-object v5, v4, v0

    .line 87
    iget v5, v5, Lxd3;->a:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_44

    const/4 v6, 0x2

    if-eq v5, v6, :cond_43

    const/4 v9, 0x3

    if-eq v5, v9, :cond_38

    .line 88
    aget-object v5, v4, v0

    .line 89
    iget v5, v5, Lxd3;->a:I

    .line 90
    aget-object v5, v29, v0

    aget-object v7, v23, v0

    move-object/from16 v8, v24

    iget-boolean v10, v8, Lrj3;->f:Z

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 91
    :goto_25
    iget v15, v5, Lnj3;->a:I

    if-ge v11, v15, :cond_36

    .line 92
    iget-object v15, v5, Lnj3;->b:[Lkj3;

    aget-object v15, v15, v11

    .line 93
    aget-object v18, v7, v11

    const/4 v6, 0x0

    .line 94
    :goto_26
    iget v9, v15, Lkj3;->a:I

    if-ge v6, v9, :cond_35

    .line 95
    aget v9, v18, v6

    invoke-static {v9, v10}, Ltj3;->c(IZ)Z

    move-result v9

    if-eqz v9, :cond_33

    .line 96
    iget-object v9, v15, Lkj3;->b:[Lcom/google/android/gms/internal/ads/zzht;

    aget-object v9, v9, v6

    .line 97
    iget v9, v9, Lcom/google/android/gms/internal/ads/zzht;->B:I

    const/16 v17, 0x1

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_30

    const/4 v9, 0x1

    goto :goto_27

    :cond_30
    const/4 v9, 0x0

    :goto_27
    move/from16 v28, v3

    if-eqz v9, :cond_31

    const/4 v9, 0x2

    goto :goto_28

    :cond_31
    const/4 v9, 0x1

    .line 98
    :goto_28
    aget v3, v18, v6

    move-object/from16 v25, v5

    const/4 v5, 0x0

    invoke-static {v3, v5}, Ltj3;->c(IZ)Z

    move-result v3

    if-eqz v3, :cond_32

    add-int/lit16 v9, v9, 0x3e8

    :cond_32
    if-le v9, v13, :cond_34

    move v12, v6

    move v13, v9

    move-object v14, v15

    goto :goto_29

    :cond_33
    move/from16 v28, v3

    move-object/from16 v25, v5

    :cond_34
    :goto_29
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v5, v25

    move/from16 v3, v28

    goto :goto_26

    :cond_35
    move/from16 v28, v3

    move-object/from16 v25, v5

    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x2

    const/4 v9, 0x3

    goto :goto_25

    :cond_36
    move/from16 v28, v3

    if-nez v14, :cond_37

    const/4 v3, 0x0

    goto :goto_2a

    .line 99
    :cond_37
    new-instance v3, Lvj3;

    invoke-direct {v3, v14, v12}, Lvj3;-><init>(Lkj3;I)V

    .line 100
    :goto_2a
    aput-object v3, v31, v0

    goto/16 :goto_3a

    :cond_38
    move/from16 v28, v3

    move-object/from16 v8, v24

    if-nez v2, :cond_4e

    .line 101
    aget-object v2, v29, v0

    aget-object v3, v23, v0

    iget-boolean v5, v8, Lrj3;->f:Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 102
    :goto_2b
    iget v11, v2, Lnj3;->a:I

    if-ge v6, v11, :cond_40

    .line 103
    iget-object v11, v2, Lnj3;->b:[Lkj3;

    aget-object v11, v11, v6

    .line 104
    aget-object v12, v3, v6

    move-object v13, v10

    move v10, v9

    move v9, v7

    const/4 v7, 0x0

    .line 105
    :goto_2c
    iget v14, v11, Lkj3;->a:I

    if-ge v7, v14, :cond_3f

    .line 106
    aget v14, v12, v7

    invoke-static {v14, v5}, Ltj3;->c(IZ)Z

    move-result v14

    if-eqz v14, :cond_3d

    .line 107
    iget-object v14, v11, Lkj3;->b:[Lcom/google/android/gms/internal/ads/zzht;

    aget-object v14, v14, v7

    .line 108
    iget v14, v14, Lcom/google/android/gms/internal/ads/zzht;->B:I

    and-int/lit8 v15, v14, 0x1

    if-eqz v15, :cond_39

    const/4 v15, 0x1

    goto :goto_2d

    :cond_39
    const/4 v15, 0x0

    :goto_2d
    and-int/lit8 v14, v14, 0x2

    if-eqz v14, :cond_3a

    const/4 v14, 0x1

    goto :goto_2e

    :cond_3a
    const/4 v14, 0x0

    :goto_2e
    if-eqz v15, :cond_3b

    const/4 v14, 0x3

    goto :goto_2f

    :cond_3b
    if-eqz v14, :cond_3d

    const/4 v14, 0x1

    .line 109
    :goto_2f
    aget v15, v12, v7

    move-object/from16 v18, v2

    const/4 v2, 0x0

    invoke-static {v15, v2}, Ltj3;->c(IZ)Z

    move-result v15

    if-eqz v15, :cond_3c

    add-int/lit16 v14, v14, 0x3e8

    :cond_3c
    if-le v14, v10, :cond_3e

    move v9, v7

    move-object v13, v11

    move v10, v14

    goto :goto_30

    :cond_3d
    move-object/from16 v18, v2

    :cond_3e
    :goto_30
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, v18

    goto :goto_2c

    :cond_3f
    move-object/from16 v18, v2

    add-int/lit8 v6, v6, 0x1

    move v7, v9

    move v9, v10

    move-object v10, v13

    goto :goto_2b

    :cond_40
    if-nez v10, :cond_41

    const/4 v2, 0x0

    goto :goto_31

    .line 110
    :cond_41
    new-instance v2, Lvj3;

    invoke-direct {v2, v10, v7}, Lvj3;-><init>(Lkj3;I)V

    .line 111
    :goto_31
    aput-object v2, v31, v0

    .line 112
    aget-object v2, v31, v0

    if-eqz v2, :cond_42

    const/4 v7, 0x1

    goto :goto_32

    :cond_42
    const/4 v7, 0x0

    :goto_32
    move/from16 v16, v7

    goto/16 :goto_3b

    :cond_43
    move/from16 v28, v3

    move-object/from16 v8, v24

    goto/16 :goto_3a

    :cond_44
    move/from16 v28, v3

    move-object/from16 v8, v24

    if-nez v1, :cond_4e

    .line 113
    aget-object v1, v29, v0

    aget-object v3, v23, v0

    iget-boolean v5, v8, Lrj3;->f:Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    .line 114
    :goto_33
    iget v11, v1, Lnj3;->a:I

    if-ge v6, v11, :cond_4b

    .line 115
    iget-object v11, v1, Lnj3;->b:[Lkj3;

    aget-object v11, v11, v6

    .line 116
    aget-object v12, v3, v6

    move v13, v10

    move v10, v9

    move v9, v7

    const/4 v7, 0x0

    .line 117
    :goto_34
    iget v14, v11, Lkj3;->a:I

    if-ge v7, v14, :cond_4a

    .line 118
    aget v14, v12, v7

    invoke-static {v14, v5}, Ltj3;->c(IZ)Z

    move-result v14

    if-eqz v14, :cond_48

    .line 119
    iget-object v14, v11, Lkj3;->b:[Lcom/google/android/gms/internal/ads/zzht;

    aget-object v14, v14, v7

    .line 120
    aget v15, v12, v7

    .line 121
    iget v14, v14, Lcom/google/android/gms/internal/ads/zzht;->B:I

    const/16 v17, 0x1

    and-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_45

    const/4 v14, 0x1

    goto :goto_35

    :cond_45
    const/4 v14, 0x0

    :goto_35
    move/from16 v16, v2

    const/4 v2, 0x0

    if-eqz v14, :cond_46

    const/4 v14, 0x2

    goto :goto_36

    :cond_46
    const/4 v14, 0x1

    .line 122
    :goto_36
    invoke-static {v15, v2}, Ltj3;->c(IZ)Z

    move-result v15

    if-eqz v15, :cond_47

    add-int/lit16 v14, v14, 0x3e8

    :cond_47
    if-le v14, v9, :cond_49

    move v10, v6

    move v13, v7

    move v9, v14

    goto :goto_37

    :cond_48
    move/from16 v16, v2

    const/4 v2, 0x0

    const/16 v17, 0x1

    :cond_49
    :goto_37
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, v16

    goto :goto_34

    :cond_4a
    move/from16 v16, v2

    const/4 v2, 0x0

    const/16 v17, 0x1

    add-int/lit8 v6, v6, 0x1

    move v7, v9

    move v9, v10

    move v10, v13

    move/from16 v2, v16

    goto :goto_33

    :cond_4b
    move/from16 v16, v2

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/16 v17, 0x1

    if-ne v9, v6, :cond_4c

    const/4 v3, 0x0

    goto :goto_38

    .line 123
    :cond_4c
    iget-object v1, v1, Lnj3;->b:[Lkj3;

    aget-object v1, v1, v9

    .line 124
    new-instance v3, Lvj3;

    invoke-direct {v3, v1, v10}, Lvj3;-><init>(Lkj3;I)V

    .line 125
    :goto_38
    aput-object v3, v31, v0

    .line 126
    aget-object v1, v31, v0

    if-eqz v1, :cond_4d

    const/4 v7, 0x1

    goto :goto_39

    :cond_4d
    const/4 v7, 0x0

    :goto_39
    move v1, v7

    goto :goto_3c

    :cond_4e
    :goto_3a
    move/from16 v16, v2

    :goto_3b
    const/4 v2, 0x0

    const/4 v6, -0x1

    const/16 v17, 0x1

    :goto_3c
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v24, v8

    move/from16 v2, v16

    move/from16 v3, v28

    goto/16 :goto_24

    :cond_4f
    move-object/from16 v4, p1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 127
    :goto_3d
    array-length v1, v4

    if-ge v0, v1, :cond_53

    move-object/from16 v1, p0

    .line 128
    iget-object v3, v1, Luj3;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_50

    const/4 v3, 0x0

    .line 129
    aput-object v3, v31, v0

    goto :goto_3f

    :cond_50
    const/4 v3, 0x0

    .line 130
    aget-object v5, v29, v0

    .line 131
    iget-object v6, v1, Luj3;->b:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    if-nez v6, :cond_51

    move-object v5, v3

    goto :goto_3e

    .line 132
    :cond_51
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lwj3;

    :goto_3e
    if-nez v5, :cond_52

    :goto_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 133
    :cond_52
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0

    :cond_53
    move-object/from16 v1, p0

    const/4 v3, 0x0

    .line 134
    new-instance v0, Lxj3;

    move-object v8, v0

    move-object/from16 v9, v22

    move-object/from16 v10, v29

    move-object/from16 v11, v21

    move-object/from16 v12, v23

    move-object/from16 v13, v20

    invoke-direct/range {v8 .. v13}, Lxj3;-><init>([I[Lnj3;[I[[[ILnj3;)V

    .line 135
    array-length v5, v4

    new-array v5, v5, [Lqe3;

    const/4 v7, 0x0

    .line 136
    :goto_40
    array-length v2, v4

    if-ge v7, v2, :cond_55

    .line 137
    aget-object v2, v31, v7

    if-eqz v2, :cond_54

    sget-object v2, Lqe3;->a:Lqe3;

    goto :goto_41

    :cond_54
    move-object v2, v3

    :goto_41
    aput-object v2, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_40

    .line 138
    :cond_55
    new-instance v2, Lbk3;

    new-instance v3, Lak3;

    move-object/from16 v4, v31

    invoke-direct {v3, v4}, Lak3;-><init>([Lyj3;)V

    move-object/from16 v4, p2

    invoke-direct {v2, v4, v3, v0, v5}, Lbk3;-><init>(Lnj3;Lak3;Ljava/lang/Object;[Lqe3;)V

    return-object v2
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lxj3;

    return-void
.end method
