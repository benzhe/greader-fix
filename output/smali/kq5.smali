.class public final synthetic Lkq5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lmq5;

.field public final f:Lzq5;


# direct methods
.method public constructor <init>(Lmq5;Lzq5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkq5;->e:Lmq5;

    iput-object p2, p0, Lkq5;->f:Lzq5;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lkq5;->e:Lmq5;

    iget-object v2, v0, Lkq5;->f:Lzq5;

    .line 1
    iget-object v1, v1, Lmq5;->f:Ldq5;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v3, v2, Lzq5;->a:Lyq5;

    .line 4
    iget-object v4, v1, Ldq5;->b:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldq5$b;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_1

    .line 5
    new-instance v4, Ldq5$b;

    invoke-direct {v4}, Ldq5$b;-><init>()V

    .line 6
    iget-object v8, v1, Ldq5;->b:Ljava/util/Map;

    invoke-interface {v8, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_1
    iget-object v8, v4, Ldq5$b;->a:Ljava/util/List;

    .line 8
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v8, v1, Ldq5;->d:Lwq5;

    invoke-virtual {v2, v8}, Lzq5;->a(Lwq5;)Z

    move-result v8

    xor-int/2addr v8, v5

    new-array v9, v6, [Ljava/lang/Object;

    const-string v10, "onOnlineStateChanged() shouldn\'t raise an event for brand-new listeners."

    .line 10
    invoke-static {v8, v10, v9}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v8, v4, Ldq5$b;->b:Lmr5;

    if-eqz v8, :cond_2

    .line 12
    invoke-virtual {v2, v8}, Lzq5;->b(Lmr5;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13
    invoke-virtual {v1}, Ldq5;->b()V

    :cond_2
    if-eqz v7, :cond_8

    .line 14
    iget-object v1, v1, Ldq5;->a:Lcr5;

    const-string v2, "listen"

    .line 15
    invoke-virtual {v1, v2}, Lcr5;->g(Ljava/lang/String;)V

    .line 16
    iget-object v2, v1, Lcr5;->c:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v5

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v3, v7, v6

    const-string v8, "We already listen to query: %s"

    invoke-static {v2, v8, v7}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 17
    iget-object v2, v1, Lcr5;->a:Lfs5;

    invoke-virtual {v3}, Lyq5;->i()Ldr5;

    move-result-object v7

    .line 18
    iget-object v8, v2, Lfs5;->g:Ltt5;

    invoke-interface {v8, v7}, Ltt5;->b(Ldr5;)Lut5;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_3

    .line 19
    iget v10, v8, Lut5;->b:I

    goto :goto_1

    .line 20
    :cond_3
    new-instance v8, Lfs5$b;

    invoke-direct {v8, v9}, Lfs5$b;-><init>(Lfs5$a;)V

    .line 21
    iget-object v10, v2, Lfs5;->a:Lts5;

    .line 22
    new-instance v11, Lds5;

    invoke-direct {v11, v2, v8, v7}, Lds5;-><init>(Lfs5;Lfs5$b;Ldr5;)V

    const-string v12, "Allocate target"

    .line 23
    invoke-virtual {v10, v12, v11}, Lts5;->h(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 24
    iget v10, v8, Lfs5$b;->b:I

    .line 25
    iget-object v8, v8, Lfs5$b;->a:Lut5;

    .line 26
    :goto_1
    iget-object v11, v2, Lfs5;->h:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_4

    .line 27
    iget-object v11, v2, Lfs5;->h:Landroid/util/SparseArray;

    invoke-virtual {v11, v10, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    iget-object v2, v2, Lfs5;->i:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v2, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_4
    iget v2, v8, Lut5;->b:I

    .line 30
    iget-object v7, v1, Lcr5;->a:Lfs5;

    invoke-virtual {v7, v3, v5}, Lfs5;->a(Lyq5;Z)Lws5;

    move-result-object v7

    .line 31
    iget-object v10, v1, Lcr5;->d:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 32
    iget-object v10, v1, Lcr5;->d:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lyq5;

    .line 33
    iget-object v11, v1, Lcr5;->c:Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lar5;

    .line 34
    iget-object v10, v10, Lar5;->c:Lkr5;

    .line 35
    iget-object v10, v10, Lkr5;->b:Lmr5$a;

    .line 36
    sget-object v11, Lmr5$a;->g:Lmr5$a;

    if-ne v10, v11, :cond_5

    const/4 v14, 0x1

    goto :goto_2

    :cond_5
    const/4 v14, 0x0

    .line 37
    :goto_2
    new-instance v6, Lvw5;

    sget-object v13, Lqi6;->f:Lqi6;

    .line 38
    sget-object v17, Lbu5;->f:Lln5;

    move-object v12, v6

    move-object/from16 v15, v17

    move-object/from16 v16, v17

    .line 39
    invoke-direct/range {v12 .. v17}, Lvw5;-><init>(Lqi6;ZLln5;Lln5;Lln5;)V

    goto :goto_3

    :cond_6
    move-object v6, v9

    .line 40
    :goto_3
    new-instance v10, Lkr5;

    .line 41
    iget-object v11, v7, Lws5;->b:Lln5;

    .line 42
    invoke-direct {v10, v3, v11}, Lkr5;-><init>(Lyq5;Lln5;)V

    .line 43
    iget-object v7, v7, Lws5;->a:Ljn5;

    .line 44
    invoke-virtual {v10, v7, v9}, Lkr5;->c(Ljn5;Lkr5$b;)Lkr5$b;

    move-result-object v7

    .line 45
    invoke-virtual {v10, v7, v6}, Lkr5;->a(Lkr5$b;Lvw5;)Llr5;

    move-result-object v6

    .line 46
    iget-object v7, v6, Llr5;->b:Ljava/util/List;

    .line 47
    invoke-virtual {v1, v7, v2}, Lcr5;->o(Ljava/util/List;I)V

    .line 48
    new-instance v7, Lar5;

    invoke-direct {v7, v3, v2, v10}, Lar5;-><init>(Lyq5;ILkr5;)V

    .line 49
    iget-object v9, v1, Lcr5;->c:Ljava/util/Map;

    invoke-interface {v9, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v7, v1, Lcr5;->d:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 51
    iget-object v7, v1, Lcr5;->d:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_7
    iget-object v5, v1, Lcr5;->d:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v2, v6, Llr5;->a:Lmr5;

    .line 54
    iget-object v3, v1, Lcr5;->n:Lcr5$b;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v3, Ldq5;

    invoke-virtual {v3, v2}, Ldq5;->a(Ljava/util/List;)V

    .line 55
    iget-object v1, v1, Lcr5;->b:Lsw5;

    invoke-virtual {v1, v8}, Lsw5;->d(Lut5;)V

    .line 56
    iget v1, v8, Lut5;->b:I

    .line 57
    iput v1, v4, Ldq5$b;->c:I

    :cond_8
    return-void
.end method
