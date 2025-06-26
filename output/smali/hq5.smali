.class public final synthetic Lhq5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lmq5;

.field public final f:Ltp5;


# direct methods
.method public constructor <init>(Lmq5;Ltp5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhq5;->e:Lmq5;

    iput-object p2, p0, Lhq5;->f:Ltp5;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v0, p0, Lhq5;->e:Lmq5;

    iget-object v1, p0, Lhq5;->f:Ltp5;

    .line 1
    sget-object v2, Lqx5$a;->e:Lqx5$a;

    iget-object v3, v0, Lmq5;->e:Lcr5;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "SyncEngine not yet initialized"

    invoke-static {v3, v7, v6}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-array v3, v5, [Ljava/lang/Object;

    .line 2
    iget-object v6, v1, Ltp5;->a:Ljava/lang/String;

    aput-object v6, v3, v4

    const-string v6, "FirestoreClient"

    const-string v7, "Credential changed. Current user: %s"

    .line 3
    invoke-static {v2, v6, v7, v3}, Lqx5;->a(Lqx5$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v0, v0, Lmq5;->e:Lcr5;

    .line 5
    iget-object v3, v0, Lcr5;->m:Ltp5;

    invoke-virtual {v3, v1}, Ltp5;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v5

    .line 6
    iput-object v1, v0, Lcr5;->m:Ltp5;

    if-eqz v3, :cond_6

    .line 7
    iget-object v3, v0, Lcr5;->k:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lf45;

    .line 9
    new-instance v8, Lzo5;

    sget-object v9, Lzo5$a;->g:Lzo5$a;

    const-string v10, "\'waitForPendingWrites\' task is cancelled due to User change."

    invoke-direct {v8, v10, v9}, Lzo5;-><init>(Ljava/lang/String;Lzo5$a;)V

    .line 10
    iget-object v7, v7, Lf45;->a:Le55;

    invoke-virtual {v7, v8}, Le55;->r(Ljava/lang/Exception;)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object v3, v0, Lcr5;->k:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 12
    iget-object v3, v0, Lcr5;->a:Lfs5;

    .line 13
    iget-object v6, v3, Lfs5;->b:Lss5;

    invoke-interface {v6}, Lss5;->l()Ljava/util/List;

    move-result-object v6

    .line 14
    iget-object v7, v3, Lfs5;->a:Lts5;

    invoke-virtual {v7, v1}, Lts5;->b(Ltp5;)Lss5;

    move-result-object v1

    iput-object v1, v3, Lfs5;->b:Lss5;

    .line 15
    iget-object v1, v3, Lfs5;->a:Lts5;

    .line 16
    new-instance v7, Lwr5;

    invoke-direct {v7, v3}, Lwr5;-><init>(Lfs5;)V

    const-string v8, "Start MutationQueue"

    .line 17
    invoke-virtual {v1, v8, v7}, Lts5;->h(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 18
    iget-object v1, v3, Lfs5;->b:Lss5;

    invoke-interface {v1}, Lss5;->l()Ljava/util/List;

    move-result-object v1

    .line 19
    new-instance v7, Ltr5;

    iget-object v8, v3, Lfs5;->c:Lzs5;

    iget-object v9, v3, Lfs5;->b:Lss5;

    iget-object v10, v3, Lfs5;->a:Lts5;

    .line 20
    invoke-virtual {v10}, Lts5;->a()Lsr5;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Ltr5;-><init>(Lzs5;Lss5;Lsr5;)V

    iput-object v7, v3, Lfs5;->d:Ltr5;

    .line 21
    iget-object v8, v3, Lfs5;->e:Lus5;

    check-cast v8, Lnr5;

    .line 22
    iput-object v7, v8, Lnr5;->a:Ltr5;

    .line 23
    sget-object v7, Lbu5;->f:Lln5;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/util/List;

    aput-object v6, v8, v4

    aput-object v1, v8, v5

    .line 24
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 25
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lru5;

    .line 26
    iget-object v6, v6, Lru5;->d:Ljava/util/List;

    .line 27
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lqu5;

    .line 28
    iget-object v8, v8, Lqu5;->a:Lbu5;

    .line 29
    invoke-virtual {v7, v8}, Lln5;->d(Ljava/lang/Object;)Lln5;

    move-result-object v7

    goto :goto_2

    .line 30
    :cond_5
    iget-object v1, v3, Lfs5;->d:Ltr5;

    invoke-virtual {v1, v7}, Ltr5;->b(Ljava/lang/Iterable;)Ljn5;

    move-result-object v1

    const/4 v3, 0x0

    .line 31
    invoke-virtual {v0, v1, v3}, Lcr5;->h(Ljn5;Lnw5;)V

    .line 32
    :cond_6
    iget-object v0, v0, Lcr5;->b:Lsw5;

    .line 33
    iget-boolean v1, v0, Lsw5;->e:Z

    if-eqz v1, :cond_7

    new-array v1, v4, [Ljava/lang/Object;

    const-string v3, "RemoteStore"

    const-string v4, "Restarting streams for new credential."

    .line 34
    invoke-static {v2, v3, v4, v1}, Lqx5;->a(Lqx5$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    invoke-virtual {v0}, Lsw5;->e()V

    :cond_7
    return-void
.end method
