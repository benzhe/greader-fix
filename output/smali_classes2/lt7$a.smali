.class public final Llt7$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llt7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lgm7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JLxs7;ILjava/util/List;IILjava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lxs7;",
            "I",
            "Ljava/util/List<",
            "+",
            "Lbt7;",
            ">;II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v0, p6

    move/from16 v13, p7

    move-object/from16 v14, p8

    if-ge v0, v13, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "Failed requirement."

    if-eqz v3, :cond_14

    move v3, v0

    :goto_1
    if-ge v3, v13, :cond_3

    .line 1
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbt7;

    .line 2
    invoke-virtual {v5}, Lbt7;->t()I

    move-result v5

    if-lt v5, v11, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_3
    invoke-interface/range {p5 .. p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbt7;

    add-int/lit8 v4, v13, -0x1

    .line 5
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbt7;

    .line 6
    invoke-virtual {v3}, Lbt7;->t()I

    move-result v5

    const/4 v15, -0x1

    if-ne v11, v5, :cond_4

    .line 7
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    add-int/lit8 v0, v0, 0x1

    .line 8
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbt7;

    move v6, v0

    move v0, v3

    move-object v3, v5

    goto :goto_3

    :cond_4
    move v6, v0

    const/4 v0, -0x1

    .line 9
    :goto_3
    invoke-virtual {v3, v11}, Lbt7;->y(I)B

    move-result v5

    invoke-virtual {v4, v11}, Lbt7;->y(I)B

    move-result v7

    const/4 v8, 0x2

    if-eq v5, v7, :cond_e

    add-int/lit8 v1, v6, 0x1

    const/4 v2, 0x1

    :goto_4
    if-ge v1, v13, :cond_6

    add-int/lit8 v3, v1, -0x1

    .line 10
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbt7;

    .line 11
    invoke-virtual {v3, v11}, Lbt7;->y(I)B

    move-result v3

    .line 12
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbt7;

    .line 13
    invoke-virtual {v4, v11}, Lbt7;->y(I)B

    move-result v4

    if-eq v3, v4, :cond_5

    add-int/lit8 v2, v2, 0x1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 14
    :cond_6
    invoke-virtual {v9, v10}, Llt7$a;->b(Lxs7;)J

    move-result-wide v3

    add-long v3, v3, p1

    int-to-long v7, v8

    add-long/2addr v3, v7

    mul-int/lit8 v1, v2, 0x2

    int-to-long v7, v1

    add-long v16, v3, v7

    .line 15
    invoke-virtual {v10, v2}, Lxs7;->a0(I)Lxs7;

    .line 16
    invoke-virtual {v10, v0}, Lxs7;->a0(I)Lxs7;

    move v0, v6

    :goto_5
    if-ge v0, v13, :cond_9

    .line 17
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbt7;

    .line 18
    invoke-virtual {v1, v11}, Lbt7;->y(I)B

    move-result v1

    if-eq v0, v6, :cond_7

    add-int/lit8 v2, v0, -0x1

    .line 19
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbt7;

    .line 20
    invoke-virtual {v2, v11}, Lbt7;->y(I)B

    move-result v2

    if-eq v1, v2, :cond_8

    :cond_7
    and-int/lit16 v1, v1, 0xff

    .line 21
    invoke-virtual {v10, v1}, Lxs7;->a0(I)Lxs7;

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 22
    :cond_9
    new-instance v8, Lxs7;

    invoke-direct {v8}, Lxs7;-><init>()V

    :goto_6
    if-ge v6, v13, :cond_d

    .line 23
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbt7;

    .line 24
    invoke-virtual {v0, v11}, Lbt7;->y(I)B

    move-result v0

    add-int/lit8 v1, v6, 0x1

    move v2, v1

    :goto_7
    if-ge v2, v13, :cond_b

    .line 25
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbt7;

    .line 26
    invoke-virtual {v3, v11}, Lbt7;->y(I)B

    move-result v3

    if-eq v0, v3, :cond_a

    move v7, v2

    goto :goto_8

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_b
    move v7, v13

    :goto_8
    if-ne v1, v7, :cond_c

    add-int/lit8 v0, v11, 0x1

    .line 27
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbt7;

    .line 28
    invoke-virtual {v1}, Lbt7;->t()I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 29
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v10, v0}, Lxs7;->a0(I)Lxs7;

    move/from16 v18, v7

    move-object v15, v8

    goto :goto_9

    .line 30
    :cond_c
    invoke-virtual {v9, v8}, Llt7$a;->b(Lxs7;)J

    move-result-wide v0

    add-long v0, v0, v16

    long-to-int v1, v0

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v10, v1}, Lxs7;->a0(I)Lxs7;

    add-int/lit8 v4, v11, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move-object v3, v8

    move-object/from16 v5, p5

    move/from16 v18, v7

    move-object v15, v8

    move-object/from16 v8, p8

    .line 31
    invoke-virtual/range {v0 .. v8}, Llt7$a;->a(JLxs7;ILjava/util/List;IILjava/util/List;)V

    :goto_9
    move-object v8, v15

    move/from16 v6, v18

    const/4 v15, -0x1

    goto :goto_6

    :cond_d
    move-object v15, v8

    .line 32
    invoke-virtual {v10, v15}, Lxs7;->b0(Lvt7;)J

    goto/16 :goto_d

    .line 33
    :cond_e
    invoke-virtual {v3}, Lbt7;->t()I

    move-result v5

    invoke-virtual {v4}, Lbt7;->t()I

    move-result v7

    .line 34
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v7, v11

    const/4 v15, 0x0

    :goto_a
    if-ge v7, v5, :cond_f

    .line 35
    invoke-virtual {v3, v7}, Lbt7;->y(I)B

    move-result v1

    invoke-virtual {v4, v7}, Lbt7;->y(I)B

    move-result v2

    if-ne v1, v2, :cond_f

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 36
    :cond_f
    invoke-virtual {v9, v10}, Llt7$a;->b(Lxs7;)J

    move-result-wide v1

    add-long v1, v1, p1

    int-to-long v4, v8

    add-long/2addr v1, v4

    int-to-long v4, v15

    add-long/2addr v1, v4

    const-wide/16 v4, 0x1

    add-long/2addr v1, v4

    neg-int v4, v15

    .line 37
    invoke-virtual {v10, v4}, Lxs7;->a0(I)Lxs7;

    .line 38
    invoke-virtual {v10, v0}, Lxs7;->a0(I)Lxs7;

    add-int v4, v11, v15

    :goto_b
    if-ge v11, v4, :cond_10

    .line 39
    invoke-virtual {v3, v11}, Lbt7;->y(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 40
    invoke-virtual {v10, v0}, Lxs7;->a0(I)Lxs7;

    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_10
    add-int/lit8 v0, v6, 0x1

    if-ne v0, v13, :cond_13

    .line 41
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbt7;

    .line 42
    invoke-virtual {v0}, Lbt7;->t()I

    move-result v0

    if-ne v4, v0, :cond_11

    const/4 v1, 0x1

    goto :goto_c

    :cond_11
    const/4 v1, 0x0

    :goto_c
    if-eqz v1, :cond_12

    .line 43
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v10, v0}, Lxs7;->a0(I)Lxs7;

    goto :goto_d

    .line 44
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_13
    new-instance v11, Lxs7;

    invoke-direct {v11}, Lxs7;-><init>()V

    .line 46
    invoke-virtual {v9, v11}, Llt7$a;->b(Lxs7;)J

    move-result-wide v7

    add-long/2addr v7, v1

    long-to-int v0, v7

    const/4 v3, -0x1

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {v10, v0}, Lxs7;->a0(I)Lxs7;

    move-object/from16 v0, p0

    move-object v3, v11

    move-object/from16 v5, p5

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 47
    invoke-virtual/range {v0 .. v8}, Llt7$a;->a(JLxs7;ILjava/util/List;IILjava/util/List;)V

    .line 48
    invoke-virtual {v10, v11}, Lxs7;->b0(Lvt7;)J

    :goto_d
    return-void

    .line 49
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Lxs7;)J
    .locals 4

    .line 1
    iget-wide v0, p1, Lxs7;->f:J

    const/4 p1, 0x4

    int-to-long v2, p1

    .line 2
    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final varargs c([Lbt7;)Llt7;
    .locals 14

    const-string v0, "byteStrings"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 2
    new-instance p1, Llt7;

    new-array v0, v1, [Lbt7;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {p1, v0, v1, v3}, Llt7;-><init>([Lbt7;[ILgm7;)V

    return-object p1

    :cond_1
    const-string v0, "$this$toMutableList"

    .line 3
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v9, Ljava/util/ArrayList;

    const-string v0, "$this$asCollection"

    .line 5
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lck7;

    invoke-direct {v0, p1, v1}, Lck7;-><init>([Ljava/lang/Object;Z)V

    .line 7
    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v0, "$this$sort"

    .line 8
    invoke-static {v9, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_2

    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 10
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    array-length v4, p1

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    array-length v4, p1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v6, p1, v5

    const/4 v6, -0x1

    .line 12
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    new-array v4, v1, [Ljava/lang/Integer;

    .line 13
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v4, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Integer;

    array-length v4, v0

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    const-string v4, "elements"

    .line 14
    invoke-static {v0, v4}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    array-length v4, v0

    if-nez v4, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    goto :goto_2

    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    new-instance v5, Lck7;

    invoke-direct {v5, v0, v2}, Lck7;-><init>([Ljava/lang/Object;Z)V

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v12, v4

    .line 16
    :goto_2
    array-length v0, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_3
    if-ge v4, v0, :cond_a

    aget-object v6, p1, v4

    add-int/lit8 v7, v5, 0x1

    .line 17
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    const-string v10, "$this$binarySearch"

    .line 18
    invoke-static {v9, v10}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    const-string v11, ")."

    if-ltz v8, :cond_9

    if-gt v8, v10, :cond_8

    add-int/lit8 v8, v8, -0x1

    const/4 v10, 0x0

    :goto_4
    if-gt v10, v8, :cond_6

    add-int v11, v10, v8

    ushr-int/2addr v11, v2

    .line 20
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Comparable;

    .line 21
    invoke-static {v13, v6}, Ln56;->y(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v13

    if-gez v13, :cond_5

    add-int/lit8 v10, v11, 0x1

    goto :goto_4

    :cond_5
    if-lez v13, :cond_7

    add-int/lit8 v8, v11, -0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v10, v10, 0x1

    neg-int v11, v10

    .line 22
    :cond_7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v12, v11, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_3

    .line 23
    :cond_8
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "toIndex ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") is greater than size ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") is greater than toIndex ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_a
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbt7;

    .line 26
    invoke-virtual {v0}, Lbt7;->t()I

    move-result v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_5

    :cond_b
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_13

    const/4 v0, 0x0

    .line 27
    :goto_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_11

    .line 28
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbt7;

    add-int/lit8 v5, v0, 0x1

    move v6, v5

    .line 29
    :goto_7
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_10

    .line 30
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbt7;

    .line 31
    invoke-virtual {v7, v4}, Lbt7;->L(Lbt7;)Z

    move-result v8

    if-nez v8, :cond_c

    goto :goto_9

    .line 32
    :cond_c
    invoke-virtual {v7}, Lbt7;->t()I

    move-result v8

    invoke-virtual {v4}, Lbt7;->t()I

    move-result v10

    if-eq v8, v10, :cond_d

    const/4 v8, 0x1

    goto :goto_8

    :cond_d
    const/4 v8, 0x0

    :goto_8
    if-eqz v8, :cond_f

    .line 33
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-le v7, v8, :cond_e

    .line 34
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 35
    invoke-interface {v12, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_7

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 36
    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "duplicate option: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    :goto_9
    move v0, v5

    goto :goto_6

    .line 37
    :cond_11
    new-instance v0, Lxs7;

    invoke-direct {v0}, Lxs7;-><init>()V

    const-wide/16 v5, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 38
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    move-object v4, p0

    move-object v7, v0

    invoke-virtual/range {v4 .. v12}, Llt7$a;->a(JLxs7;ILjava/util/List;IILjava/util/List;)V

    .line 39
    invoke-virtual {p0, v0}, Llt7$a;->b(Lxs7;)J

    move-result-wide v4

    long-to-int v2, v4

    new-array v2, v2, [I

    .line 40
    :goto_a
    invoke-virtual {v0}, Lxs7;->J()Z

    move-result v4

    if-nez v4, :cond_12

    add-int/lit8 v4, v1, 0x1

    .line 41
    invoke-virtual {v0}, Lxs7;->readInt()I

    move-result v5

    aput v5, v2, v1

    move v1, v4

    goto :goto_a

    .line 42
    :cond_12
    new-instance v0, Llt7;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "java.util.Arrays.copyOf(this, size)"

    invoke-static {p1, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Lbt7;

    invoke-direct {v0, p1, v2, v3}, Llt7;-><init>([Lbt7;[ILgm7;)V

    return-object v0

    .line 43
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "the empty byte string is not a supported option"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 4
        0x0
        -0x1
    .end array-data
.end method
