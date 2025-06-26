.class public final Lur5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Low5;


# direct methods
.method public constructor <init>(Low5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lur5;->a:Low5;

    return-void
.end method


# virtual methods
.method public a(Lcv5;)Lfu5;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcv5;->H()Lcv5$c;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 2
    invoke-virtual {p1}, Lcv5;->K()Lfv5;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lur5;->a:Low5;

    invoke-virtual {p1}, Lfv5;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Low5;->a(Ljava/lang/String;)Lbu5;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lur5;->a:Low5;

    invoke-virtual {p1}, Lfv5;->G()Lwk6;

    move-result-object p1

    invoke-virtual {v1, p1}, Low5;->e(Lwk6;)Lju5;

    move-result-object p1

    .line 5
    new-instance v1, Lku5;

    invoke-direct {v1, v0, p1}, Lku5;-><init>(Lbu5;Lju5;)V

    return-object v1

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Unknown MaybeDocument %s"

    .line 6
    invoke-static {p1, v0}, Lbx5;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    const/4 p1, 0x0

    throw p1

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcv5;->G()Lmc6;

    move-result-object v0

    invoke-virtual {p1}, Lcv5;->I()Z

    move-result p1

    .line 8
    iget-object v1, p0, Lur5;->a:Low5;

    invoke-virtual {v0}, Lmc6;->H()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Low5;->a(Ljava/lang/String;)Lbu5;

    move-result-object v1

    .line 9
    iget-object v2, p0, Lur5;->a:Low5;

    invoke-virtual {v0}, Lmc6;->I()Lwk6;

    move-result-object v3

    invoke-virtual {v2, v3}, Low5;->e(Lwk6;)Lju5;

    move-result-object v2

    .line 10
    new-instance v3, Lyt5;

    .line 11
    invoke-virtual {v0}, Lmc6;->G()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lhu5;->b(Ljava/util/Map;)Lhu5;

    move-result-object v0

    if-eqz p1, :cond_2

    .line 12
    sget-object p1, Lyt5$a;->f:Lyt5$a;

    goto :goto_0

    .line 13
    :cond_2
    sget-object p1, Lyt5$a;->g:Lyt5$a;

    :goto_0
    invoke-direct {v3, v1, v2, v0, p1}, Lyt5;-><init>(Lbu5;Lju5;Lhu5;Lyt5$a;)V

    return-object v3

    .line 14
    :cond_3
    invoke-virtual {p1}, Lcv5;->J()Ldv5;

    move-result-object v0

    invoke-virtual {p1}, Lcv5;->I()Z

    move-result p1

    .line 15
    iget-object v1, p0, Lur5;->a:Low5;

    invoke-virtual {v0}, Ldv5;->F()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Low5;->a(Ljava/lang/String;)Lbu5;

    move-result-object v1

    .line 16
    iget-object v2, p0, Lur5;->a:Low5;

    invoke-virtual {v0}, Ldv5;->G()Lwk6;

    move-result-object v0

    invoke-virtual {v2, v0}, Low5;->e(Lwk6;)Lju5;

    move-result-object v0

    .line 17
    new-instance v2, Lgu5;

    invoke-direct {v2, v1, v0, p1}, Lgu5;-><init>(Lbu5;Lju5;Z)V

    return-object v2
.end method

.method public b(Lgv5;)Lru5;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lgv5;->I()I

    move-result v0

    .line 2
    iget-object v1, p0, Lur5;->a:Low5;

    invoke-virtual {p1}, Lgv5;->J()Lwk6;

    move-result-object v2

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Lcom/google/firebase/Timestamp;

    invoke-virtual {v2}, Lwk6;->G()J

    move-result-wide v3

    invoke-virtual {v2}, Lwk6;->F()I

    move-result v2

    invoke-direct {v1, v3, v4, v2}, Lcom/google/firebase/Timestamp;-><init>(JI)V

    .line 5
    invoke-virtual {p1}, Lgv5;->H()I

    move-result v2

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_0

    .line 7
    iget-object v6, p0, Lur5;->a:Low5;

    invoke-virtual {p1, v5}, Lgv5;->G(I)Lcd6;

    move-result-object v7

    invoke-virtual {v6, v7}, Low5;->b(Lcd6;)Lqu5;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lgv5;->L()I

    move-result v2

    .line 9
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v4, v2, :cond_1

    .line 10
    iget-object v6, p0, Lur5;->a:Low5;

    invoke-virtual {p1, v4}, Lgv5;->K(I)Lcd6;

    move-result-object v7

    invoke-virtual {v6, v7}, Low5;->b(Lcd6;)Lqu5;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 11
    :cond_1
    new-instance p1, Lru5;

    invoke-direct {p1, v0, v1, v3, v5}, Lru5;-><init>(ILcom/google/firebase/Timestamp;Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method

.method public c(Lev5;)Lut5;
    .locals 23

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Lev5;->Q()I

    move-result v3

    .line 2
    iget-object v1, v0, Lur5;->a:Low5;

    invoke-virtual/range {p1 .. p1}, Lev5;->P()Lwk6;

    move-result-object v2

    invoke-virtual {v1, v2}, Low5;->e(Lwk6;)Lju5;

    move-result-object v7

    .line 3
    iget-object v1, v0, Lur5;->a:Low5;

    .line 4
    invoke-virtual/range {p1 .. p1}, Lev5;->L()Lwk6;

    move-result-object v2

    invoke-virtual {v1, v2}, Low5;->e(Lwk6;)Lju5;

    move-result-object v8

    .line 5
    invoke-virtual/range {p1 .. p1}, Lev5;->O()Lqi6;

    move-result-object v9

    .line 6
    invoke-virtual/range {p1 .. p1}, Lev5;->M()J

    move-result-wide v4

    .line 7
    invoke-virtual/range {p1 .. p1}, Lev5;->R()Lev5$c;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v10, 0x0

    if-eqz v1, :cond_2

    if-ne v1, v6, :cond_1

    .line 8
    iget-object v1, v0, Lur5;->a:Low5;

    invoke-virtual/range {p1 .. p1}, Lev5;->K()Lzc6$c;

    move-result-object v2

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v2}, Lzc6$c;->F()I

    move-result v11

    if-ne v11, v6, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    new-array v6, v6, [Ljava/lang/Object;

    .line 11
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v6, v10

    const-string v11, "DocumentsTarget contained other than 1 document %d"

    invoke-static {v12, v11, v6}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v2, v10}, Lzc6$c;->E(I)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {v1, v2}, Low5;->c(Ljava/lang/String;)Liu5;

    move-result-object v1

    invoke-static {v1}, Lyq5;->a(Liu5;)Lyq5;

    move-result-object v1

    invoke-virtual {v1}, Lyq5;->i()Ldr5;

    move-result-object v1

    move-object v2, v1

    move-object/from16 v22, v9

    goto/16 :goto_10

    :cond_1
    new-array v1, v6, [Ljava/lang/Object;

    .line 14
    invoke-virtual/range {p1 .. p1}, Lev5;->R()Lev5$c;

    move-result-object v3

    aput-object v3, v1, v10

    const-string v3, "Unknown targetType %d"

    invoke-static {v3, v1}, Lbx5;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    throw v2

    .line 15
    :cond_2
    iget-object v1, v0, Lur5;->a:Low5;

    invoke-virtual/range {p1 .. p1}, Lev5;->N()Lzc6$d;

    move-result-object v11

    .line 16
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {v11}, Lzc6$d;->F()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Low5;->c(Ljava/lang/String;)Liu5;

    move-result-object v1

    .line 18
    invoke-virtual {v11}, Lzc6$d;->G()Lyc6;

    move-result-object v11

    .line 19
    invoke-virtual {v11}, Lyc6;->L()I

    move-result v12

    if-lez v12, :cond_5

    if-ne v12, v6, :cond_3

    const/4 v12, 0x1

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    :goto_1
    new-array v13, v10, [Ljava/lang/Object;

    const-string v14, "StructuredQuery.from with more than one collection is not supported."

    .line 20
    invoke-static {v12, v14, v13}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 21
    invoke-virtual {v11, v10}, Lyc6;->K(I)Lyc6$c;

    move-result-object v12

    .line 22
    invoke-virtual {v12}, Lyc6$c;->E()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 23
    invoke-virtual {v12}, Lyc6$c;->F()Ljava/lang/String;

    move-result-object v12

    move-object v13, v1

    move-object v14, v12

    goto :goto_2

    .line 24
    :cond_4
    invoke-virtual {v12}, Lyc6$c;->F()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lvt5;->k(Ljava/lang/String;)Lvt5;

    move-result-object v1

    check-cast v1, Liu5;

    :cond_5
    move-object v13, v1

    move-object v14, v2

    .line 25
    :goto_2
    invoke-virtual {v11}, Lyc6;->U()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 26
    invoke-virtual {v11}, Lyc6;->Q()Lyc6$h;

    move-result-object v1

    .line 27
    sget-object v15, Lfq5$a;->i:Lfq5$a;

    sget-object v2, Lfq5$a;->h:Lfq5$a;

    invoke-virtual {v1}, Lyc6$h;->I()Lyc6$h$b;

    move-result-object v12

    sget-object v10, Lyc6$h$b;->e:Lyc6$h$b;

    if-ne v12, v10, :cond_7

    .line 28
    invoke-virtual {v1}, Lyc6$h;->F()Lyc6$d;

    move-result-object v10

    invoke-virtual {v10}, Lyc6$d;->G()Lyc6$d$b;

    move-result-object v10

    sget-object v12, Lyc6$d$b;->g:Lyc6$d$b;

    if-ne v10, v12, :cond_6

    const/4 v10, 0x1

    goto :goto_3

    :cond_6
    const/4 v10, 0x0

    :goto_3
    new-array v12, v6, [Ljava/lang/Object;

    .line 29
    invoke-virtual {v1}, Lyc6$h;->F()Lyc6$d;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lyc6$d;->G()Lyc6$d$b;

    move-result-object v18

    const/16 v17, 0x0

    aput-object v18, v12, v17

    const-string v6, "Only AND-type composite filters are supported, got %d"

    .line 30
    invoke-static {v10, v6, v12}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 31
    invoke-virtual {v1}, Lyc6$h;->F()Lyc6$d;

    move-result-object v1

    invoke-virtual {v1}, Lyc6$d;->F()Ljava/util/List;

    move-result-object v1

    goto :goto_4

    .line 32
    :cond_7
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 33
    :goto_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lyc6$h;

    .line 35
    invoke-virtual {v10}, Lyc6$h;->I()Lyc6$h$b;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    if-eqz v12, :cond_e

    const/4 v0, 0x1

    if-eq v12, v0, :cond_d

    const/4 v0, 0x2

    if-ne v12, v0, :cond_c

    .line 36
    invoke-virtual {v10}, Lyc6$h;->J()Lyc6$k;

    move-result-object v10

    .line 37
    invoke-virtual {v10}, Lyc6$k;->F()Lyc6$g;

    move-result-object v12

    invoke-virtual {v12}, Lyc6$g;->E()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Leu5;->M(Ljava/lang/String;)Leu5;

    move-result-object v12

    .line 38
    invoke-virtual {v10}, Lyc6$k;->G()Lyc6$k$b;

    move-result-object v19

    move-object/from16 v20, v1

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    move-object/from16 v22, v9

    const/4 v9, 0x1

    if-eq v1, v9, :cond_b

    if-eq v1, v0, :cond_a

    const/4 v0, 0x3

    if-eq v1, v0, :cond_9

    const/4 v0, 0x4

    if-ne v1, v0, :cond_8

    .line 39
    sget-object v0, Llu5;->b:Lbd6;

    invoke-static {v12, v15, v0}, Leq5;->c(Leu5;Lfq5$a;Lbd6;)Leq5;

    move-result-object v0

    goto :goto_6

    :cond_8
    new-array v0, v9, [Ljava/lang/Object;

    .line 40
    invoke-virtual {v10}, Lyc6$k;->G()Lyc6$k$b;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Unrecognized UnaryFilter.operator %d"

    invoke-static {v1, v0}, Lbx5;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    const/4 v0, 0x0

    throw v0

    .line 41
    :cond_9
    sget-object v0, Llu5;->a:Lbd6;

    invoke-static {v12, v15, v0}, Leq5;->c(Leu5;Lfq5$a;Lbd6;)Leq5;

    move-result-object v0

    goto :goto_6

    .line 42
    :cond_a
    sget-object v0, Llu5;->b:Lbd6;

    invoke-static {v12, v2, v0}, Leq5;->c(Leu5;Lfq5$a;Lbd6;)Leq5;

    move-result-object v0

    goto :goto_6

    .line 43
    :cond_b
    sget-object v0, Llu5;->a:Lbd6;

    invoke-static {v12, v2, v0}, Leq5;->c(Leu5;Lfq5$a;Lbd6;)Leq5;

    move-result-object v0

    .line 44
    :goto_6
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_c
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 45
    invoke-virtual {v10}, Lyc6$h;->I()Lyc6$h$b;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Unrecognized Filter.filterType %d"

    invoke-static {v1, v0}, Lbx5;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    const/4 v0, 0x0

    throw v0

    :cond_d
    move-object/from16 v20, v1

    move-object/from16 v22, v9

    .line 46
    invoke-virtual {v10}, Lyc6$h;->H()Lyc6$f;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lyc6$f;->G()Lyc6$g;

    move-result-object v1

    invoke-virtual {v1}, Lyc6$g;->E()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Leu5;->M(Ljava/lang/String;)Leu5;

    move-result-object v1

    .line 48
    invoke-virtual {v0}, Lyc6$f;->H()Lyc6$f$b;

    move-result-object v9

    .line 49
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v9, v0, v1

    const-string v1, "Unhandled FieldFilter.operator %d"

    .line 50
    invoke-static {v1, v0}, Lbx5;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    const/4 v0, 0x0

    goto :goto_9

    .line 51
    :pswitch_0
    sget-object v9, Lfq5$a;->o:Lfq5$a;

    goto :goto_7

    .line 52
    :pswitch_1
    sget-object v9, Lfq5$a;->m:Lfq5$a;

    goto :goto_7

    .line 53
    :pswitch_2
    sget-object v9, Lfq5$a;->n:Lfq5$a;

    goto :goto_7

    .line 54
    :pswitch_3
    sget-object v9, Lfq5$a;->l:Lfq5$a;

    goto :goto_7

    :pswitch_4
    move-object v9, v15

    goto :goto_7

    :pswitch_5
    move-object v9, v2

    goto :goto_7

    .line 55
    :pswitch_6
    sget-object v9, Lfq5$a;->k:Lfq5$a;

    goto :goto_7

    .line 56
    :pswitch_7
    sget-object v9, Lfq5$a;->j:Lfq5$a;

    goto :goto_7

    .line 57
    :pswitch_8
    sget-object v9, Lfq5$a;->g:Lfq5$a;

    goto :goto_7

    .line 58
    :pswitch_9
    sget-object v9, Lfq5$a;->f:Lfq5$a;

    .line 59
    :goto_7
    invoke-virtual {v0}, Lyc6$f;->I()Lbd6;

    move-result-object v0

    invoke-static {v1, v9, v0}, Leq5;->c(Leu5;Lfq5$a;Lbd6;)Leq5;

    move-result-object v0

    .line 60
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v9, v22

    goto/16 :goto_5

    .line 61
    :goto_9
    throw v0

    :cond_e
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Nested composite filters are not supported."

    .line 62
    invoke-static {v2, v1}, Lbx5;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    throw v0

    :cond_f
    move-object/from16 v22, v9

    move-object v15, v6

    goto :goto_a

    :cond_10
    move-object/from16 v22, v9

    .line 63
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v15, v0

    .line 64
    :goto_a
    invoke-virtual {v11}, Lyc6;->O()I

    move-result v0

    if-lez v0, :cond_14

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_13

    .line 66
    invoke-virtual {v11, v2}, Lyc6;->N(I)Lyc6$i;

    move-result-object v6

    .line 67
    invoke-virtual {v6}, Lyc6$i;->F()Lyc6$g;

    move-result-object v9

    invoke-virtual {v9}, Lyc6$g;->E()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Leu5;->M(Ljava/lang/String;)Leu5;

    move-result-object v9

    .line 68
    invoke-virtual {v6}, Lyc6$i;->E()Lyc6$e;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/4 v12, 0x1

    if-eq v10, v12, :cond_12

    const/4 v12, 0x2

    if-ne v10, v12, :cond_11

    .line 69
    sget-object v6, Lxq5$a;->g:Lxq5$a;

    const/16 v16, 0x0

    goto :goto_c

    :cond_11
    const/4 v10, 0x1

    new-array v0, v10, [Ljava/lang/Object;

    .line 70
    invoke-virtual {v6}, Lyc6$i;->E()Lyc6$e;

    move-result-object v1

    const/4 v6, 0x0

    aput-object v1, v0, v6

    const-string v1, "Unrecognized direction %d"

    invoke-static {v1, v0}, Lbx5;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    const/16 v16, 0x0

    throw v16

    :cond_12
    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x2

    const/16 v16, 0x0

    .line 71
    sget-object v17, Lxq5$a;->f:Lxq5$a;

    move-object/from16 v6, v17

    .line 72
    :goto_c
    new-instance v10, Lxq5;

    invoke-direct {v10, v6, v9}, Lxq5;-><init>(Lxq5$a;Leu5;)V

    .line 73
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_13
    const/16 v16, 0x0

    move-object v0, v1

    goto :goto_d

    :cond_14
    const/16 v16, 0x0

    .line 74
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_d
    const-wide/16 v1, -0x1

    .line 75
    invoke-virtual {v11}, Lyc6;->S()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 76
    invoke-virtual {v11}, Lyc6;->M()Lhj6;

    move-result-object v1

    invoke-virtual {v1}, Lhj6;->E()I

    move-result v1

    int-to-long v1, v1

    :cond_15
    move-wide/from16 v17, v1

    .line 77
    invoke-virtual {v11}, Lyc6;->T()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 78
    invoke-virtual {v11}, Lyc6;->P()Llc6;

    move-result-object v1

    .line 79
    new-instance v2, Lyp5;

    invoke-virtual {v1}, Llc6;->i()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v1}, Llc6;->E()Z

    move-result v1

    invoke-direct {v2, v6, v1}, Lyp5;-><init>(Ljava/util/List;Z)V

    move-object/from16 v20, v2

    goto :goto_e

    :cond_16
    move-object/from16 v20, v16

    .line 80
    :goto_e
    invoke-virtual {v11}, Lyc6;->R()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 81
    invoke-virtual {v11}, Lyc6;->J()Llc6;

    move-result-object v1

    .line 82
    new-instance v2, Lyp5;

    invoke-virtual {v1}, Llc6;->i()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v1}, Llc6;->E()Z

    move-result v1

    invoke-direct {v2, v6, v1}, Lyp5;-><init>(Ljava/util/List;Z)V

    move-object/from16 v21, v2

    goto :goto_f

    :cond_17
    move-object/from16 v21, v16

    .line 83
    :goto_f
    new-instance v1, Lyq5;

    sget-object v19, Lyq5$a;->e:Lyq5$a;

    move-object v12, v1

    move-object/from16 v16, v0

    invoke-direct/range {v12 .. v21}, Lyq5;-><init>(Liu5;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLyq5$a;Lyp5;Lyp5;)V

    .line 84
    invoke-virtual {v1}, Lyq5;->i()Ldr5;

    move-result-object v0

    move-object v2, v0

    .line 85
    :goto_10
    new-instance v0, Lut5;

    sget-object v6, Lvs5;->e:Lvs5;

    move-object v1, v0

    move-object/from16 v9, v22

    invoke-direct/range {v1 .. v9}, Lut5;-><init>(Ldr5;IJLvs5;Lju5;Lju5;Lqi6;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
.end method
