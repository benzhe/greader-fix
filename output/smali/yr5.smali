.class public final synthetic Lyr5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx5;


# instance fields
.field public final a:Lfs5;

.field public final b:Lsu5;


# direct methods
.method public constructor <init>(Lfs5;Lsu5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyr5;->a:Lfs5;

    iput-object p2, p0, Lyr5;->b:Lsu5;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lyr5;->a:Lfs5;

    iget-object v2, v0, Lyr5;->b:Lsu5;

    .line 1
    sget v3, Lfs5;->l:I

    .line 2
    iget-object v3, v2, Lsu5;->a:Lru5;

    .line 3
    iget-object v4, v1, Lfs5;->b:Lss5;

    .line 4
    iget-object v5, v2, Lsu5;->d:Lqi6;

    .line 5
    invoke-interface {v4, v3, v5}, Lss5;->k(Lru5;Lqi6;)V

    .line 6
    iget-object v4, v2, Lsu5;->a:Lru5;

    .line 7
    invoke-virtual {v4}, Lru5;->b()Ljava/util/Set;

    move-result-object v5

    .line 8
    check-cast v5, Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbu5;

    .line 9
    iget-object v7, v1, Lfs5;->c:Lzs5;

    invoke-interface {v7, v6}, Lzs5;->a(Lbu5;)Lfu5;

    move-result-object v7

    .line 10
    iget-object v8, v2, Lsu5;->e:Ljn5;

    .line 11
    invoke-virtual {v8, v6}, Ljn5;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lju5;

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v8, :cond_1

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :goto_1
    new-array v12, v10, [Ljava/lang/Object;

    const-string v13, "docVersions should contain every doc in the write."

    .line 12
    invoke-static {v11, v13, v12}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz v7, :cond_2

    .line 13
    iget-object v11, v7, Lfu5;->b:Lju5;

    .line 14
    invoke-virtual {v11, v8}, Lju5;->i(Lju5;)I

    move-result v8

    if-gez v8, :cond_0

    :cond_2
    const/4 v8, 0x2

    if-eqz v7, :cond_3

    .line 15
    iget-object v11, v7, Lfu5;->a:Lbu5;

    .line 16
    invoke-virtual {v11, v6}, Lbu5;->equals(Ljava/lang/Object;)Z

    move-result v11

    new-array v12, v8, [Ljava/lang/Object;

    aput-object v6, v12, v10

    .line 17
    iget-object v13, v7, Lfu5;->a:Lbu5;

    aput-object v13, v12, v9

    const-string v13, "applyToRemoteDocument: key %s doesn\'t match maybeDoc key %s"

    .line 18
    invoke-static {v11, v13, v12}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 19
    :cond_3
    iget-object v11, v4, Lru5;->d:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    .line 20
    iget-object v12, v2, Lsu5;->c:Ljava/util/List;

    .line 21
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ne v13, v11, :cond_4

    const/4 v13, 0x1

    goto :goto_2

    :cond_4
    const/4 v13, 0x0

    :goto_2
    new-array v14, v8, [Ljava/lang/Object;

    .line 22
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v10

    .line 23
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v9

    const-string v15, "Mismatch between mutations length (%d) and results length (%d)"

    .line 24
    invoke-static {v13, v15, v14}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    move-object v14, v7

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v11, :cond_6

    .line 25
    iget-object v15, v4, Lru5;->d:Ljava/util/List;

    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lqu5;

    .line 26
    iget-object v9, v15, Lqu5;->a:Lbu5;

    .line 27
    invoke-virtual {v9, v6}, Lbu5;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 28
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ltu5;

    .line 29
    invoke-virtual {v15, v14, v9}, Lqu5;->b(Lfu5;Ltu5;)Lfu5;

    move-result-object v14

    :cond_5
    add-int/lit8 v13, v13, 0x1

    const/4 v9, 0x1

    goto :goto_3

    :cond_6
    if-nez v14, :cond_8

    if-nez v7, :cond_7

    const/4 v6, 0x1

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    :goto_4
    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v10

    const/4 v9, 0x1

    aput-object v7, v8, v9

    const-string v7, "Mutation batch %s applied to document %s resulted in null."

    .line 30
    invoke-static {v6, v7, v8}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 31
    :cond_8
    iget-object v6, v1, Lfs5;->c:Lzs5;

    .line 32
    iget-object v7, v2, Lsu5;->b:Lju5;

    .line 33
    invoke-interface {v6, v14, v7}, Lzs5;->e(Lfu5;Lju5;)V

    goto/16 :goto_0

    .line 34
    :cond_9
    iget-object v2, v1, Lfs5;->b:Lss5;

    invoke-interface {v2, v4}, Lss5;->h(Lru5;)V

    .line 35
    iget-object v2, v1, Lfs5;->b:Lss5;

    invoke-interface {v2}, Lss5;->a()V

    .line 36
    iget-object v1, v1, Lfs5;->d:Ltr5;

    invoke-virtual {v3}, Lru5;->b()Ljava/util/Set;

    move-result-object v2

    .line 37
    iget-object v3, v1, Ltr5;->a:Lzs5;

    invoke-interface {v3, v2}, Lzs5;->c(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Ltr5;->e(Ljava/util/Map;)Ljn5;

    move-result-object v1

    return-object v1
.end method
