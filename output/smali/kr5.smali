.class public Lkr5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkr5$b;
    }
.end annotation


# instance fields
.field public final a:Lyq5;

.field public b:Lmr5$a;

.field public c:Z

.field public d:Ldu5;

.field public e:Lln5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lln5<",
            "Lbu5;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lln5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lln5<",
            "Lbu5;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lln5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lln5<",
            "Lbu5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lyq5;Lln5;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyq5;",
            "Lln5<",
            "Lbu5;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkr5;->a:Lyq5;

    .line 3
    sget-object v0, Lmr5$a;->e:Lmr5$a;

    iput-object v0, p0, Lkr5;->b:Lmr5$a;

    .line 4
    invoke-virtual {p1}, Lyq5;->b()Ljava/util/Comparator;

    move-result-object p1

    .line 5
    new-instance v0, Lcu5;

    invoke-direct {v0, p1}, Lcu5;-><init>(Ljava/util/Comparator;)V

    .line 6
    new-instance p1, Ldu5;

    .line 7
    sget-object v1, Lzt5;->a:Ljn5;

    .line 8
    new-instance v2, Lln5;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lln5;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-direct {p1, v1, v2}, Ldu5;-><init>(Ljn5;Lln5;)V

    .line 9
    iput-object p1, p0, Lkr5;->d:Ldu5;

    .line 10
    iput-object p2, p0, Lkr5;->e:Lln5;

    .line 11
    sget-object p1, Lbu5;->f:Lln5;

    .line 12
    iput-object p1, p0, Lkr5;->f:Lln5;

    .line 13
    iput-object p1, p0, Lkr5;->g:Lln5;

    return-void
.end method

.method public static b(Lbq5;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lbq5;->a:Lbq5$a;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    return v1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown change type: "

    invoke-static {v1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    iget-object p0, p0, Lbq5;->a:Lbq5$a;

    .line 5
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a(Lkr5$b;Lvw5;)Llr5;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    sget-object v3, Lmr5$a;->f:Lmr5$a;

    iget-boolean v4, v1, Lkr5$b;->c:Z

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    const-string v8, "Cannot apply changes that need a refill"

    .line 2
    invoke-static {v4, v8, v7}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v12, v0, Lkr5;->d:Ldu5;

    .line 4
    iget-object v4, v1, Lkr5$b;->a:Ldu5;

    iput-object v4, v0, Lkr5;->d:Ldu5;

    .line 5
    iget-object v4, v1, Lkr5$b;->d:Lln5;

    iput-object v4, v0, Lkr5;->g:Lln5;

    .line 6
    iget-object v4, v1, Lkr5$b;->b:Lcq5;

    .line 7
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v13, Ljava/util/ArrayList;

    iget-object v4, v4, Lcq5;->a:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v13, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    new-instance v4, Ljr5;

    invoke-direct {v4, v0}, Ljr5;-><init>(Lkr5;)V

    .line 10
    invoke-static {v13, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v2, :cond_3

    .line 11
    iget-object v4, v2, Lvw5;->c:Lln5;

    .line 12
    invoke-virtual {v4}, Lln5;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    move-object v7, v4

    check-cast v7, Lln5$a;

    invoke-virtual {v7}, Lln5$a;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Lln5$a;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbu5;

    .line 13
    iget-object v8, v0, Lkr5;->e:Lln5;

    invoke-virtual {v8, v7}, Lln5;->d(Ljava/lang/Object;)Lln5;

    move-result-object v7

    iput-object v7, v0, Lkr5;->e:Lln5;

    goto :goto_0

    .line 14
    :cond_0
    iget-object v4, v2, Lvw5;->d:Lln5;

    .line 15
    invoke-virtual {v4}, Lln5;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    move-object v7, v4

    check-cast v7, Lln5$a;

    invoke-virtual {v7}, Lln5$a;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Lln5$a;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbu5;

    .line 16
    iget-object v8, v0, Lkr5;->e:Lln5;

    .line 17
    invoke-virtual {v8, v7}, Lln5;->contains(Ljava/lang/Object;)Z

    move-result v8

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v7, v9, v6

    const-string v7, "Modified document %s not found in view."

    .line 18
    invoke-static {v8, v7, v9}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 19
    :cond_1
    iget-object v4, v2, Lvw5;->e:Lln5;

    .line 20
    invoke-virtual {v4}, Lln5;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    move-object v7, v4

    check-cast v7, Lln5$a;

    invoke-virtual {v7}, Lln5$a;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Lln5$a;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbu5;

    .line 21
    iget-object v8, v0, Lkr5;->e:Lln5;

    invoke-virtual {v8, v7}, Lln5;->h(Ljava/lang/Object;)Lln5;

    move-result-object v7

    iput-object v7, v0, Lkr5;->e:Lln5;

    goto :goto_2

    .line 22
    :cond_2
    iget-boolean v2, v2, Lvw5;->b:Z

    .line 23
    iput-boolean v2, v0, Lkr5;->c:Z

    .line 24
    :cond_3
    iget-boolean v2, v0, Lkr5;->c:Z

    if-nez v2, :cond_4

    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto/16 :goto_8

    .line 26
    :cond_4
    iget-object v2, v0, Lkr5;->f:Lln5;

    .line 27
    sget-object v4, Lbu5;->f:Lln5;

    .line 28
    iput-object v4, v0, Lkr5;->f:Lln5;

    .line 29
    iget-object v4, v0, Lkr5;->d:Ldu5;

    invoke-virtual {v4}, Ldu5;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_3
    move-object v7, v4

    check-cast v7, Lln5$a;

    invoke-virtual {v7}, Lln5$a;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v7}, Lln5$a;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyt5;

    .line 30
    iget-object v8, v7, Lfu5;->a:Lbu5;

    .line 31
    iget-object v9, v0, Lkr5;->e:Lln5;

    .line 32
    iget-object v9, v9, Lln5;->e:Ljn5;

    invoke-virtual {v9, v8}, Ljn5;->d(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_4

    .line 33
    :cond_6
    iget-object v9, v0, Lkr5;->d:Ldu5;

    .line 34
    iget-object v9, v9, Ldu5;->e:Ljn5;

    invoke-virtual {v9, v8}, Ljn5;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lyt5;

    if-nez v8, :cond_7

    goto :goto_4

    .line 35
    :cond_7
    invoke-virtual {v8}, Lyt5;->d()Z

    move-result v8

    if-eqz v8, :cond_8

    :goto_4
    const/4 v8, 0x0

    goto :goto_5

    :cond_8
    const/4 v8, 0x1

    :goto_5
    if-eqz v8, :cond_5

    .line 36
    iget-object v8, v0, Lkr5;->f:Lln5;

    .line 37
    iget-object v7, v7, Lfu5;->a:Lbu5;

    .line 38
    invoke-virtual {v8, v7}, Lln5;->d(Ljava/lang/Object;)Lln5;

    move-result-object v7

    iput-object v7, v0, Lkr5;->f:Lln5;

    goto :goto_3

    .line 39
    :cond_9
    new-instance v4, Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v2}, Lln5;->size()I

    move-result v7

    iget-object v8, v0, Lkr5;->f:Lln5;

    invoke-virtual {v8}, Lln5;->size()I

    move-result v8

    add-int/2addr v8, v7

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    invoke-virtual {v2}, Lln5;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a
    :goto_6
    move-object v8, v7

    check-cast v8, Lln5$a;

    invoke-virtual {v8}, Lln5$a;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {v8}, Lln5$a;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lbu5;

    .line 42
    iget-object v9, v0, Lkr5;->f:Lln5;

    invoke-virtual {v9, v8}, Lln5;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 43
    new-instance v9, Lrq5;

    sget-object v10, Lrq5$a;->f:Lrq5$a;

    invoke-direct {v9, v10, v8}, Lrq5;-><init>(Lrq5$a;Lbu5;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 44
    :cond_b
    iget-object v7, v0, Lkr5;->f:Lln5;

    invoke-virtual {v7}, Lln5;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_c
    :goto_7
    move-object v8, v7

    check-cast v8, Lln5$a;

    invoke-virtual {v8}, Lln5$a;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-virtual {v8}, Lln5$a;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lbu5;

    .line 45
    invoke-virtual {v2, v8}, Lln5;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 46
    new-instance v9, Lrq5;

    sget-object v10, Lrq5$a;->e:Lrq5$a;

    invoke-direct {v9, v10, v8}, Lrq5;-><init>(Lrq5$a;Lbu5;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_d
    move-object v2, v4

    .line 47
    :goto_8
    iget-object v4, v0, Lkr5;->f:Lln5;

    invoke-virtual {v4}, Lln5;->size()I

    move-result v4

    if-nez v4, :cond_e

    iget-boolean v4, v0, Lkr5;->c:Z

    if-eqz v4, :cond_e

    const/4 v4, 0x1

    goto :goto_9

    :cond_e
    const/4 v4, 0x0

    :goto_9
    if-eqz v4, :cond_f

    .line 48
    sget-object v4, Lmr5$a;->g:Lmr5$a;

    goto :goto_a

    :cond_f
    move-object v4, v3

    .line 49
    :goto_a
    iget-object v7, v0, Lkr5;->b:Lmr5$a;

    if-eq v4, v7, :cond_10

    const/16 v16, 0x1

    goto :goto_b

    :cond_10
    const/16 v16, 0x0

    .line 50
    :goto_b
    iput-object v4, v0, Lkr5;->b:Lmr5$a;

    const/4 v7, 0x0

    .line 51
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_11

    if-eqz v16, :cond_13

    :cond_11
    if-ne v4, v3, :cond_12

    const/4 v14, 0x1

    goto :goto_c

    :cond_12
    const/4 v14, 0x0

    .line 52
    :goto_c
    new-instance v7, Lmr5;

    iget-object v10, v0, Lkr5;->a:Lyq5;

    iget-object v11, v1, Lkr5$b;->a:Ldu5;

    iget-object v15, v1, Lkr5$b;->d:Lln5;

    const/16 v17, 0x0

    move-object v9, v7

    invoke-direct/range {v9 .. v17}, Lmr5;-><init>(Lyq5;Ldu5;Ldu5;Ljava/util/List;ZLln5;ZZ)V

    .line 53
    :cond_13
    new-instance v1, Llr5;

    invoke-direct {v1, v7, v2}, Llr5;-><init>(Lmr5;Ljava/util/List;)V

    return-object v1
.end method

.method public c(Ljn5;Lkr5$b;)Lkr5$b;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lfu5;",
            ">(",
            "Ljn5<",
            "Lbu5;",
            "TD;>;",
            "Lkr5$b;",
            ")",
            "Lkr5$b;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    sget-object v2, Lbq5$a;->e:Lbq5$a;

    if-eqz v1, :cond_0

    iget-object v3, v1, Lkr5$b;->b:Lcq5;

    goto :goto_0

    :cond_0
    new-instance v3, Lcq5;

    invoke-direct {v3}, Lcq5;-><init>()V

    :goto_0
    move-object v6, v3

    if-eqz v1, :cond_1

    .line 2
    iget-object v3, v1, Lkr5$b;->a:Ldu5;

    goto :goto_1

    :cond_1
    iget-object v3, v0, Lkr5;->d:Ldu5;

    :goto_1
    if-eqz v1, :cond_2

    .line 3
    iget-object v4, v1, Lkr5$b;->d:Lln5;

    goto :goto_2

    :cond_2
    iget-object v4, v0, Lkr5;->g:Lln5;

    .line 4
    :goto_2
    iget-object v5, v0, Lkr5;->a:Lyq5;

    invoke-virtual {v5}, Lyq5;->e()Z

    move-result v5

    const-string v7, "Called getLimitToFirst when no limit was set"

    const/4 v9, 0x0

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Ldu5;->size()I

    move-result v5

    int-to-long v10, v5

    iget-object v5, v0, Lkr5;->a:Lyq5;

    .line 5
    invoke-virtual {v5}, Lyq5;->e()Z

    move-result v12

    new-array v13, v9, [Ljava/lang/Object;

    invoke-static {v12, v7, v13}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-wide v12, v5, Lyq5;->g:J

    cmp-long v5, v10, v12

    if-nez v5, :cond_3

    .line 7
    iget-object v5, v3, Ldu5;->f:Lln5;

    .line 8
    iget-object v5, v5, Lln5;->e:Ljn5;

    invoke-virtual {v5}, Ljn5;->l()Ljava/lang/Object;

    move-result-object v5

    .line 9
    check-cast v5, Lyt5;

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    .line 10
    :goto_3
    iget-object v10, v0, Lkr5;->a:Lyq5;

    invoke-virtual {v10}, Lyq5;->f()Z

    move-result v10

    const-string v11, "Called getLimitToLast when no limit was set"

    if-eqz v10, :cond_4

    invoke-virtual {v3}, Ldu5;->size()I

    move-result v10

    int-to-long v12, v10

    iget-object v10, v0, Lkr5;->a:Lyq5;

    .line 11
    invoke-virtual {v10}, Lyq5;->f()Z

    move-result v14

    new-array v15, v9, [Ljava/lang/Object;

    invoke-static {v14, v11, v15}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 12
    iget-wide v14, v10, Lyq5;->g:J

    cmp-long v10, v12, v14

    if-nez v10, :cond_4

    .line 13
    iget-object v10, v3, Ldu5;->f:Lln5;

    .line 14
    iget-object v10, v10, Lln5;->e:Ljn5;

    invoke-virtual {v10}, Ljn5;->n()Ljava/lang/Object;

    move-result-object v10

    .line 15
    check-cast v10, Lyt5;

    goto :goto_4

    :cond_4
    const/4 v10, 0x0

    .line 16
    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljn5;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v14, v3

    const/4 v13, 0x0

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    const/16 v16, 0x1

    if-eqz v15, :cond_16

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 17
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v8, v17

    check-cast v8, Lbu5;

    .line 18
    invoke-virtual {v3, v8}, Ldu5;->d(Lbu5;)Lyt5;

    move-result-object v9

    .line 19
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lfu5;

    move-object/from16 v18, v3

    .line 20
    instance-of v3, v15, Lyt5;

    if-eqz v3, :cond_5

    .line 21
    check-cast v15, Lyt5;

    goto :goto_6

    :cond_5
    const/4 v15, 0x0

    :goto_6
    if-eqz v15, :cond_6

    .line 22
    iget-object v3, v15, Lfu5;->a:Lbu5;

    .line 23
    invoke-virtual {v8, v3}, Lbu5;->equals(Ljava/lang/Object;)Z

    move-result v3

    move-object/from16 p1, v12

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v8, v12, v17

    .line 24
    iget-object v1, v15, Lfu5;->a:Lbu5;

    aput-object v1, v12, v16

    const-string v1, "Mismatching key in doc change %s != %s"

    .line 25
    invoke-static {v3, v1, v12}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 26
    iget-object v1, v0, Lkr5;->a:Lyq5;

    invoke-virtual {v1, v15}, Lyq5;->h(Lyt5;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v15, 0x0

    goto :goto_7

    :cond_6
    move-object/from16 p1, v12

    :cond_7
    :goto_7
    if-eqz v9, :cond_8

    .line 27
    iget-object v1, v0, Lkr5;->g:Lln5;

    .line 28
    iget-object v3, v9, Lfu5;->a:Lbu5;

    .line 29
    invoke-virtual {v1, v3}, Lln5;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    :goto_8
    if-eqz v15, :cond_a

    .line 30
    invoke-virtual {v15}, Lyt5;->d()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, v0, Lkr5;->g:Lln5;

    .line 31
    iget-object v12, v15, Lfu5;->a:Lbu5;

    .line 32
    invoke-virtual {v3, v12}, Lln5;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 33
    invoke-virtual {v15}, Lyt5;->c()Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    const/4 v3, 0x1

    goto :goto_9

    :cond_a
    const/4 v3, 0x0

    :goto_9
    if-eqz v9, :cond_e

    if-eqz v15, :cond_e

    .line 34
    iget-object v12, v9, Lyt5;->d:Lhu5;

    move/from16 v19, v13

    iget-object v13, v15, Lyt5;->d:Lhu5;

    .line 35
    invoke-virtual {v12, v13}, Lhu5;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d

    .line 36
    invoke-virtual {v9}, Lyt5;->d()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 37
    invoke-virtual {v15}, Lyt5;->c()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 38
    invoke-virtual {v15}, Lyt5;->d()Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x1

    goto :goto_a

    :cond_b
    const/4 v1, 0x0

    :goto_a
    if-nez v1, :cond_12

    .line 39
    sget-object v1, Lbq5$a;->g:Lbq5$a;

    .line 40
    new-instance v3, Lbq5;

    invoke-direct {v3, v1, v15}, Lbq5;-><init>(Lbq5$a;Lyt5;)V

    .line 41
    invoke-virtual {v6, v3}, Lcq5;->a(Lbq5;)V

    if-eqz v5, :cond_c

    .line 42
    iget-object v1, v0, Lkr5;->a:Lyq5;

    invoke-virtual {v1}, Lyq5;->b()Ljava/util/Comparator;

    move-result-object v1

    check-cast v1, Lyq5$b;

    invoke-virtual {v1, v15, v5}, Lyq5$b;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_11

    :cond_c
    if-eqz v10, :cond_10

    iget-object v1, v0, Lkr5;->a:Lyq5;

    .line 43
    invoke-virtual {v1}, Lyq5;->b()Ljava/util/Comparator;

    move-result-object v1

    check-cast v1, Lyq5$b;

    invoke-virtual {v1, v15, v10}, Lyq5$b;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_10

    goto :goto_c

    :cond_d
    if-eq v1, v3, :cond_12

    .line 44
    sget-object v1, Lbq5$a;->h:Lbq5$a;

    .line 45
    new-instance v3, Lbq5;

    invoke-direct {v3, v1, v15}, Lbq5;-><init>(Lbq5$a;Lyt5;)V

    .line 46
    invoke-virtual {v6, v3}, Lcq5;->a(Lbq5;)V

    goto :goto_b

    :cond_e
    move/from16 v19, v13

    if-nez v9, :cond_f

    if-eqz v15, :cond_f

    .line 47
    sget-object v1, Lbq5$a;->f:Lbq5$a;

    .line 48
    new-instance v3, Lbq5;

    invoke-direct {v3, v1, v15}, Lbq5;-><init>(Lbq5$a;Lyt5;)V

    .line 49
    invoke-virtual {v6, v3}, Lcq5;->a(Lbq5;)V

    goto :goto_b

    :cond_f
    if-eqz v9, :cond_12

    if-nez v15, :cond_12

    .line 50
    new-instance v1, Lbq5;

    invoke-direct {v1, v2, v9}, Lbq5;-><init>(Lbq5$a;Lyt5;)V

    .line 51
    invoke-virtual {v6, v1}, Lcq5;->a(Lbq5;)V

    if-nez v5, :cond_11

    if-eqz v10, :cond_10

    goto :goto_c

    :cond_10
    :goto_b
    move/from16 v13, v19

    goto :goto_d

    :cond_11
    :goto_c
    const/4 v13, 0x1

    goto :goto_d

    :cond_12
    move/from16 v13, v19

    const/16 v16, 0x0

    :goto_d
    if-eqz v16, :cond_15

    if-eqz v15, :cond_14

    .line 52
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v1, v15, Lfu5;->a:Lbu5;

    .line 54
    invoke-virtual {v14, v1}, Ldu5;->h(Lbu5;)Ldu5;

    move-result-object v1

    .line 55
    iget-object v3, v1, Ldu5;->e:Ljn5;

    .line 56
    iget-object v8, v15, Lfu5;->a:Lbu5;

    .line 57
    invoke-virtual {v3, v8, v15}, Ljn5;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljn5;

    move-result-object v3

    .line 58
    iget-object v1, v1, Ldu5;->f:Lln5;

    .line 59
    new-instance v8, Lln5;

    iget-object v1, v1, Lln5;->e:Ljn5;

    const/4 v9, 0x0

    invoke-virtual {v1, v15, v9}, Ljn5;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljn5;

    move-result-object v1

    invoke-direct {v8, v1}, Lln5;-><init>(Ljn5;)V

    .line 60
    new-instance v1, Ldu5;

    invoke-direct {v1, v3, v8}, Ldu5;-><init>(Ljn5;Lln5;)V

    .line 61
    invoke-virtual {v15}, Lyt5;->d()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 62
    iget-object v3, v15, Lfu5;->a:Lbu5;

    .line 63
    invoke-virtual {v4, v3}, Lln5;->d(Ljava/lang/Object;)Lln5;

    move-result-object v3

    goto :goto_e

    .line 64
    :cond_13
    iget-object v3, v15, Lfu5;->a:Lbu5;

    .line 65
    invoke-virtual {v4, v3}, Lln5;->h(Ljava/lang/Object;)Lln5;

    move-result-object v3

    goto :goto_e

    :cond_14
    const/4 v9, 0x0

    .line 66
    invoke-virtual {v14, v8}, Ldu5;->h(Lbu5;)Ldu5;

    move-result-object v1

    .line 67
    invoke-virtual {v4, v8}, Lln5;->h(Ljava/lang/Object;)Lln5;

    move-result-object v3

    :goto_e
    move-object v14, v1

    move-object v4, v3

    goto :goto_f

    :cond_15
    const/4 v9, 0x0

    :goto_f
    move-object/from16 v12, p1

    move-object/from16 v1, p2

    move-object/from16 v3, v18

    const/4 v9, 0x0

    goto/16 :goto_5

    :cond_16
    move/from16 v19, v13

    .line 68
    iget-object v1, v0, Lkr5;->a:Lyq5;

    invoke-virtual {v1}, Lyq5;->e()Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, v0, Lkr5;->a:Lyq5;

    invoke-virtual {v1}, Lyq5;->f()Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_10

    :cond_17
    move-object v7, v4

    move-object v5, v14

    goto :goto_14

    .line 69
    :cond_18
    :goto_10
    iget-object v1, v0, Lkr5;->a:Lyq5;

    invoke-virtual {v1}, Lyq5;->e()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, v0, Lkr5;->a:Lyq5;

    .line 70
    invoke-virtual {v1}, Lyq5;->e()Z

    move-result v3

    const/4 v5, 0x0

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v3, v7, v8}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iget-wide v7, v1, Lyq5;->g:J

    goto :goto_11

    :cond_19
    const/4 v5, 0x0

    .line 72
    iget-object v1, v0, Lkr5;->a:Lyq5;

    .line 73
    invoke-virtual {v1}, Lyq5;->f()Z

    move-result v3

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v3, v11, v7}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-wide v7, v1, Lyq5;->g:J

    .line 75
    :goto_11
    invoke-virtual {v14}, Ldu5;->size()I

    move-result v1

    int-to-long v9, v1

    :goto_12
    sub-long/2addr v9, v7

    const-wide/16 v7, 0x0

    cmp-long v1, v9, v7

    if-lez v1, :cond_17

    .line 76
    iget-object v1, v0, Lkr5;->a:Lyq5;

    invoke-virtual {v1}, Lyq5;->e()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 77
    iget-object v1, v14, Ldu5;->f:Lln5;

    .line 78
    iget-object v1, v1, Lln5;->e:Ljn5;

    invoke-virtual {v1}, Ljn5;->l()Ljava/lang/Object;

    move-result-object v1

    .line 79
    check-cast v1, Lyt5;

    goto :goto_13

    .line 80
    :cond_1a
    iget-object v1, v14, Ldu5;->f:Lln5;

    .line 81
    iget-object v1, v1, Lln5;->e:Ljn5;

    invoke-virtual {v1}, Ljn5;->n()Ljava/lang/Object;

    move-result-object v1

    .line 82
    check-cast v1, Lyt5;

    .line 83
    :goto_13
    iget-object v3, v1, Lfu5;->a:Lbu5;

    .line 84
    invoke-virtual {v14, v3}, Ldu5;->h(Lbu5;)Ldu5;

    move-result-object v14

    .line 85
    iget-object v3, v1, Lfu5;->a:Lbu5;

    .line 86
    invoke-virtual {v4, v3}, Lln5;->h(Ljava/lang/Object;)Lln5;

    move-result-object v4

    .line 87
    new-instance v3, Lbq5;

    invoke-direct {v3, v2, v1}, Lbq5;-><init>(Lbq5$a;Lyt5;)V

    .line 88
    invoke-virtual {v6, v3}, Lcq5;->a(Lbq5;)V

    const-wide/16 v7, 0x1

    goto :goto_12

    :goto_14
    if-eqz v19, :cond_1c

    if-nez p2, :cond_1b

    goto :goto_15

    :cond_1b
    const/4 v1, 0x0

    goto :goto_16

    :cond_1c
    :goto_15
    const/4 v1, 0x1

    :goto_16
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "View was refilled using docs that themselves needed refilling."

    .line 89
    invoke-static {v1, v3, v2}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 90
    new-instance v1, Lkr5$b;

    const/4 v9, 0x0

    move-object v4, v1

    move/from16 v8, v19

    invoke-direct/range {v4 .. v9}, Lkr5$b;-><init>(Ldu5;Lcq5;Lln5;ZLkr5$a;)V

    return-object v1
.end method
