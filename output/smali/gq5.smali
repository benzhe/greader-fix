.class public final synthetic Lgq5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lmq5;

.field public final f:Ljava/util/List;

.field public final g:Lf45;


# direct methods
.method public constructor <init>(Lmq5;Ljava/util/List;Lf45;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgq5;->e:Lmq5;

    iput-object p2, p0, Lgq5;->f:Ljava/util/List;

    iput-object p3, p0, Lgq5;->g:Lf45;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lgq5;->e:Lmq5;

    iget-object v1, p0, Lgq5;->f:Ljava/util/List;

    iget-object v2, p0, Lgq5;->g:Lf45;

    .line 1
    iget-object v0, v0, Lmq5;->e:Lcr5;

    const-string v3, "writeMutations"

    .line 2
    invoke-virtual {v0, v3}, Lcr5;->g(Ljava/lang/String;)V

    .line 3
    iget-object v3, v0, Lcr5;->a:Lfs5;

    .line 4
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v4, Lcom/google/firebase/Timestamp;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-direct {v4, v5}, Lcom/google/firebase/Timestamp;-><init>(Ljava/util/Date;)V

    .line 6
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lqu5;

    .line 8
    iget-object v7, v7, Lqu5;->a:Lbu5;

    .line 9
    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    iget-object v6, v3, Lfs5;->a:Lts5;

    .line 11
    new-instance v7, Lxr5;

    invoke-direct {v7, v3, v5, v1, v4}, Lxr5;-><init>(Lfs5;Ljava/util/Set;Ljava/util/List;Lcom/google/firebase/Timestamp;)V

    const-string v1, "Locally write mutations"

    .line 12
    invoke-virtual {v6, v1, v7}, Lts5;->g(Ljava/lang/String;Lrx5;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhs5;

    .line 13
    iget v3, v1, Lhs5;->a:I

    .line 14
    iget-object v4, v0, Lcr5;->j:Ljava/util/Map;

    iget-object v5, v0, Lcr5;->m:Ltp5;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_1

    .line 15
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 16
    iget-object v5, v0, Lcr5;->j:Ljava/util/Map;

    iget-object v6, v0, Lcr5;->m:Ltp5;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v1, v1, Lhs5;->b:Ljn5;

    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v1, v2}, Lcr5;->h(Ljn5;Lnw5;)V

    .line 20
    iget-object v0, v0, Lcr5;->b:Lsw5;

    invoke-virtual {v0}, Lsw5;->c()V

    return-void
.end method
