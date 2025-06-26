.class public final synthetic Lbs5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx5;


# instance fields
.field public final a:Lfs5;

.field public final b:Lnw5;

.field public final c:Lju5;


# direct methods
.method public constructor <init>(Lfs5;Lnw5;Lju5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbs5;->a:Lfs5;

    iput-object p2, p0, Lbs5;->b:Lnw5;

    iput-object p3, p0, Lbs5;->c:Lju5;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 15

    iget-object v0, p0, Lbs5;->a:Lfs5;

    iget-object v1, p0, Lbs5;->b:Lnw5;

    iget-object v2, p0, Lbs5;->c:Lju5;

    .line 1
    sget v3, Lfs5;->l:I

    .line 2
    iget-object v3, v1, Lnw5;->b:Ljava/util/Map;

    .line 3
    iget-object v4, v0, Lfs5;->a:Lts5;

    invoke-virtual {v4}, Lts5;->c()Lxs5;

    move-result-object v4

    invoke-interface {v4}, Lxs5;->e()J

    move-result-wide v4

    .line 4
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 6
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 7
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvw5;

    .line 8
    iget-object v10, v0, Lfs5;->h:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lut5;

    if-nez v10, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v11, v0, Lfs5;->g:Ltt5;

    .line 10
    iget-object v12, v6, Lvw5;->e:Lln5;

    .line 11
    invoke-interface {v11, v12, v9}, Ltt5;->i(Lln5;I)V

    .line 12
    iget-object v11, v0, Lfs5;->g:Ltt5;

    .line 13
    iget-object v12, v6, Lvw5;->c:Lln5;

    .line 14
    invoke-interface {v11, v12, v9}, Ltt5;->f(Lln5;I)V

    .line 15
    iget-object v11, v6, Lvw5;->a:Lqi6;

    .line 16
    invoke-virtual {v11}, Lqi6;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 17
    iget-object v12, v1, Lnw5;->a:Lju5;

    .line 18
    invoke-virtual {v10, v11, v12}, Lut5;->a(Lqi6;Lju5;)Lut5;

    move-result-object v11

    .line 19
    invoke-virtual {v11, v4, v5}, Lut5;->b(J)Lut5;

    move-result-object v11

    .line 20
    iget-object v12, v0, Lfs5;->h:Landroid/util/SparseArray;

    invoke-virtual {v12, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    iget-object v9, v11, Lut5;->g:Lqi6;

    .line 22
    invoke-virtual {v9}, Lqi6;->isEmpty()Z

    move-result v9

    xor-int/2addr v9, v7

    new-array v12, v8, [Ljava/lang/Object;

    const-string v13, "Attempted to persist query data with empty resume token"

    .line 23
    invoke-static {v9, v13, v12}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 24
    iget-object v9, v10, Lut5;->g:Lqi6;

    .line 25
    invoke-virtual {v9}, Lqi6;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    .line 26
    :cond_2
    iget-object v9, v11, Lut5;->e:Lju5;

    .line 27
    iget-object v9, v9, Lju5;->e:Lcom/google/firebase/Timestamp;

    .line 28
    iget-wide v12, v9, Lcom/google/firebase/Timestamp;->e:J

    .line 29
    iget-object v9, v10, Lut5;->e:Lju5;

    .line 30
    iget-object v9, v9, Lju5;->e:Lcom/google/firebase/Timestamp;

    .line 31
    iget-wide v9, v9, Lcom/google/firebase/Timestamp;->e:J

    sub-long/2addr v12, v9

    .line 32
    sget-wide v9, Lfs5;->k:J

    cmp-long v14, v12, v9

    if-ltz v14, :cond_3

    goto :goto_1

    .line 33
    :cond_3
    iget-object v9, v6, Lvw5;->c:Lln5;

    .line 34
    invoke-virtual {v9}, Lln5;->size()I

    move-result v9

    .line 35
    iget-object v10, v6, Lvw5;->d:Lln5;

    .line 36
    invoke-virtual {v10}, Lln5;->size()I

    move-result v10

    add-int/2addr v10, v9

    .line 37
    iget-object v6, v6, Lvw5;->e:Lln5;

    .line 38
    invoke-virtual {v6}, Lln5;->size()I

    move-result v6

    add-int/2addr v6, v10

    if-lez v6, :cond_4

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_0

    .line 39
    iget-object v6, v0, Lfs5;->g:Ltt5;

    invoke-interface {v6, v11}, Ltt5;->g(Lut5;)V

    goto/16 :goto_0

    .line 40
    :cond_5
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 41
    iget-object v4, v1, Lnw5;->d:Ljava/util/Map;

    .line 42
    iget-object v5, v1, Lnw5;->e:Ljava/util/Set;

    .line 43
    iget-object v6, v0, Lfs5;->c:Lzs5;

    .line 44
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v6, v9}, Lzs5;->c(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v6

    .line 45
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x2

    if-eqz v9, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 46
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lbu5;

    .line 47
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lfu5;

    .line 48
    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lfu5;

    .line 49
    instance-of v13, v9, Lgu5;

    if-eqz v13, :cond_7

    .line 50
    iget-object v13, v9, Lfu5;->b:Lju5;

    .line 51
    sget-object v14, Lju5;->f:Lju5;

    invoke-virtual {v13, v14}, Lju5;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 52
    iget-object v10, v0, Lfs5;->c:Lzs5;

    .line 53
    iget-object v12, v9, Lfu5;->a:Lbu5;

    .line 54
    invoke-interface {v10, v12}, Lzs5;->b(Lbu5;)V

    .line 55
    invoke-virtual {v3, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    if-eqz v12, :cond_9

    .line 56
    iget-object v13, v9, Lfu5;->b:Lju5;

    iget-object v14, v12, Lfu5;->b:Lju5;

    .line 57
    invoke-virtual {v13, v14}, Lju5;->i(Lju5;)I

    move-result v13

    if-gtz v13, :cond_9

    .line 58
    iget-object v13, v9, Lfu5;->b:Lju5;

    iget-object v14, v12, Lfu5;->b:Lju5;

    .line 59
    invoke-virtual {v13, v14}, Lju5;->i(Lju5;)I

    move-result v13

    if-nez v13, :cond_8

    .line 60
    invoke-virtual {v12}, Lfu5;->a()Z

    move-result v13

    if-eqz v13, :cond_8

    goto :goto_3

    :cond_8
    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v11, v13, v8

    .line 61
    iget-object v12, v12, Lfu5;->b:Lju5;

    aput-object v12, v13, v7

    .line 62
    iget-object v9, v9, Lfu5;->b:Lju5;

    aput-object v9, v13, v10

    .line 63
    sget-object v9, Lqx5$a;->e:Lqx5$a;

    const-string v10, "LocalStore"

    const-string v12, "Ignoring outdated watch update for %s.Current version: %s  Watch version: %s"

    invoke-static {v9, v10, v12, v13}, Lqx5;->a(Lqx5$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 64
    :cond_9
    :goto_3
    sget-object v10, Lju5;->f:Lju5;

    .line 65
    iget-object v12, v1, Lnw5;->a:Lju5;

    .line 66
    invoke-virtual {v10, v12}, Lju5;->equals(Ljava/lang/Object;)Z

    move-result v10

    xor-int/2addr v10, v7

    new-array v12, v8, [Ljava/lang/Object;

    const-string v13, "Cannot add a document when the remote version is zero"

    .line 67
    invoke-static {v10, v13, v12}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 68
    iget-object v10, v0, Lfs5;->c:Lzs5;

    .line 69
    iget-object v12, v1, Lnw5;->a:Lju5;

    .line 70
    invoke-interface {v10, v9, v12}, Lzs5;->e(Lfu5;Lju5;)V

    .line 71
    invoke-virtual {v3, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :goto_4
    invoke-interface {v5, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 73
    iget-object v9, v0, Lfs5;->a:Lts5;

    invoke-virtual {v9}, Lts5;->c()Lxs5;

    move-result-object v9

    invoke-interface {v9, v11}, Lxs5;->a(Lbu5;)V

    goto/16 :goto_2

    .line 74
    :cond_a
    iget-object v1, v0, Lfs5;->g:Ltt5;

    invoke-interface {v1}, Ltt5;->e()Lju5;

    move-result-object v1

    .line 75
    sget-object v4, Lju5;->f:Lju5;

    invoke-virtual {v2, v4}, Lju5;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 76
    invoke-virtual {v2, v1}, Lju5;->i(Lju5;)I

    move-result v4

    if-ltz v4, :cond_b

    const/4 v4, 0x1

    goto :goto_5

    :cond_b
    const/4 v4, 0x0

    :goto_5
    new-array v5, v10, [Ljava/lang/Object;

    aput-object v2, v5, v8

    aput-object v1, v5, v7

    const-string v1, "Watch stream reverted to previous snapshot?? (%s < %s)"

    .line 77
    invoke-static {v4, v1, v5}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 78
    iget-object v1, v0, Lfs5;->g:Ltt5;

    invoke-interface {v1, v2}, Ltt5;->h(Lju5;)V

    .line 79
    :cond_c
    iget-object v0, v0, Lfs5;->d:Ltr5;

    invoke-virtual {v0, v3}, Ltr5;->e(Ljava/util/Map;)Ljn5;

    move-result-object v0

    return-object v0
.end method
