.class public final synthetic Lxr5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx5;


# instance fields
.field public final a:Lfs5;

.field public final b:Ljava/util/Set;

.field public final c:Ljava/util/List;

.field public final d:Lcom/google/firebase/Timestamp;


# direct methods
.method public constructor <init>(Lfs5;Ljava/util/Set;Ljava/util/List;Lcom/google/firebase/Timestamp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxr5;->a:Lfs5;

    iput-object p2, p0, Lxr5;->b:Ljava/util/Set;

    iput-object p3, p0, Lxr5;->c:Ljava/util/List;

    iput-object p4, p0, Lxr5;->d:Lcom/google/firebase/Timestamp;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lxr5;->a:Lfs5;

    iget-object v1, p0, Lxr5;->b:Ljava/util/Set;

    iget-object v2, p0, Lxr5;->c:Ljava/util/List;

    iget-object v3, p0, Lxr5;->d:Lcom/google/firebase/Timestamp;

    .line 1
    iget-object v4, v0, Lfs5;->d:Ltr5;

    .line 2
    iget-object v5, v4, Ltr5;->a:Lzs5;

    invoke-interface {v5, v1}, Lzs5;->c(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v1

    .line 3
    invoke-virtual {v4, v1}, Ltr5;->e(Ljava/util/Map;)Ljn5;

    move-result-object v1

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lqu5;

    .line 6
    iget-object v7, v6, Lqu5;->a:Lbu5;

    .line 7
    invoke-virtual {v1, v7}, Ljn5;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lfu5;

    invoke-virtual {v6, v7}, Lqu5;->c(Lfu5;)Lhu5;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 8
    new-instance v8, Lvu5;

    .line 9
    iget-object v6, v6, Lqu5;->a:Lbu5;

    .line 10
    iget-object v9, v7, Lhu5;->a:Lbd6;

    invoke-virtual {v9}, Lbd6;->U()Lwc6;

    move-result-object v9

    invoke-virtual {v7, v9}, Lhu5;->a(Lwc6;)Lou5;

    move-result-object v9

    const/4 v10, 0x1

    .line 11
    invoke-static {v10}, Lwu5;->a(Z)Lwu5;

    move-result-object v10

    invoke-direct {v8, v6, v7, v9, v10}, Lvu5;-><init>(Lbu5;Lhu5;Lou5;Lwu5;)V

    .line 12
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, v0, Lfs5;->b:Lss5;

    .line 14
    invoke-interface {v0, v3, v4, v2}, Lss5;->c(Lcom/google/firebase/Timestamp;Ljava/util/List;Ljava/util/List;)Lru5;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lru5;->b()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbu5;

    .line 16
    invoke-virtual {v1, v3}, Ljn5;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfu5;

    invoke-virtual {v0, v3, v4}, Lru5;->a(Lbu5;Lfu5;)Lfu5;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 17
    iget-object v4, v3, Lfu5;->a:Lbu5;

    .line 18
    invoke-virtual {v1, v4, v3}, Ljn5;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljn5;

    move-result-object v1

    goto :goto_1

    .line 19
    :cond_3
    new-instance v2, Lhs5;

    .line 20
    iget v0, v0, Lru5;->a:I

    .line 21
    invoke-direct {v2, v0, v1}, Lhs5;-><init>(ILjn5;)V

    return-object v2
.end method
