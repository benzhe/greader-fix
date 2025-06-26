.class public Ltr5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lzs5;

.field public final b:Lss5;

.field public final c:Lsr5;


# direct methods
.method public constructor <init>(Lzs5;Lss5;Lsr5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ltr5;->a:Lzs5;

    .line 3
    iput-object p2, p0, Ltr5;->b:Lss5;

    .line 4
    iput-object p3, p0, Ltr5;->c:Lsr5;

    return-void
.end method


# virtual methods
.method public a(Lbu5;)Lfu5;
    .locals 3

    .line 1
    iget-object v0, p0, Ltr5;->b:Lss5;

    invoke-interface {v0, p1}, Lss5;->d(Lbu5;)Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ltr5;->a:Lzs5;

    invoke-interface {v1, p1}, Lzs5;->a(Lbu5;)Lfu5;

    move-result-object v1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru5;

    .line 4
    invoke-virtual {v2, p1, v1}, Lru5;->a(Lbu5;Lfu5;)Lfu5;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public b(Ljava/lang/Iterable;)Ljn5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lbu5;",
            ">;)",
            "Ljn5<",
            "Lbu5;",
            "Lfu5;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ltr5;->a:Lzs5;

    invoke-interface {v0, p1}, Lzs5;->c(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Ltr5;->e(Ljava/util/Map;)Ljn5;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lyq5;Lju5;)Ljn5;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyq5;",
            "Lju5;",
            ")",
            "Ljn5<",
            "Lbu5;",
            "Lyt5;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ltr5;->a:Lzs5;

    .line 2
    invoke-interface {v0, p1, p2}, Lzs5;->d(Lyq5;Lju5;)Ljn5;

    move-result-object p2

    .line 3
    iget-object v0, p0, Ltr5;->b:Lss5;

    invoke-interface {v0, p1}, Lss5;->i(Lyq5;)Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru5;

    .line 6
    iget-object v3, v3, Lru5;->d:Ljava/util/List;

    .line 7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lqu5;

    .line 8
    instance-of v5, v4, Lvu5;

    if-eqz v5, :cond_1

    .line 9
    iget-object v5, v4, Lqu5;->a:Lbu5;

    .line 10
    invoke-virtual {p2, v5}, Ljn5;->d(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 11
    iget-object v4, v4, Lqu5;->a:Lbu5;

    .line 12
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_2
    iget-object v2, p0, Ltr5;->a:Lzs5;

    invoke-interface {v2, v1}, Lzs5;->c(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lyt5;

    if-eqz v3, :cond_3

    .line 16
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbu5;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyt5;

    invoke-virtual {p2, v3, v2}, Ljn5;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljn5;

    move-result-object p2

    goto :goto_1

    .line 17
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru5;

    .line 18
    iget-object v2, v1, Lru5;->d:Ljava/util/List;

    .line 19
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lqu5;

    .line 20
    iget-object v4, p1, Lyq5;->e:Liu5;

    .line 21
    iget-object v5, v3, Lqu5;->a:Lbu5;

    .line 22
    iget-object v5, v5, Lbu5;->e:Liu5;

    .line 23
    invoke-virtual {v4}, Lvt5;->I()I

    move-result v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    invoke-virtual {v5}, Lvt5;->I()I

    move-result v8

    const/4 v9, 0x0

    if-eq v6, v8, :cond_6

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    .line 24
    :goto_3
    invoke-virtual {v4}, Lvt5;->I()I

    move-result v8

    if-ge v6, v8, :cond_8

    .line 25
    invoke-virtual {v4, v6}, Lvt5;->y(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6}, Lvt5;->y(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    :goto_4
    const/4 v7, 0x0

    goto :goto_5

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_8
    :goto_5
    if-nez v7, :cond_9

    goto :goto_2

    .line 26
    :cond_9
    iget-object v4, v3, Lqu5;->a:Lbu5;

    .line 27
    invoke-virtual {p2, v4}, Ljn5;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfu5;

    .line 28
    iget-object v6, v1, Lru5;->b:Lcom/google/firebase/Timestamp;

    .line 29
    invoke-virtual {v3, v5, v5, v6}, Lqu5;->a(Lfu5;Lfu5;Lcom/google/firebase/Timestamp;)Lfu5;

    move-result-object v3

    .line 30
    instance-of v5, v3, Lyt5;

    if-eqz v5, :cond_a

    .line 31
    check-cast v3, Lyt5;

    invoke-virtual {p2, v4, v3}, Ljn5;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljn5;

    move-result-object p2

    goto :goto_2

    .line 32
    :cond_a
    invoke-virtual {p2, v4}, Ljn5;->r(Ljava/lang/Object;)Ljn5;

    move-result-object p2

    goto :goto_2

    .line 33
    :cond_b
    invoke-virtual {p2}, Ljn5;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 34
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyt5;

    invoke-virtual {p1, v2}, Lyq5;->h(Lyt5;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 35
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbu5;

    invoke-virtual {p2, v1}, Ljn5;->r(Ljava/lang/Object;)Ljn5;

    move-result-object p2

    goto :goto_6

    :cond_d
    return-object p2
.end method

.method public d(Lyq5;Lju5;)Ljn5;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyq5;",
            "Lju5;",
            ")",
            "Ljn5<",
            "Lbu5;",
            "Lyt5;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v1, Lyq5;->e:Liu5;

    .line 2
    invoke-static {v2}, Lbu5;->l(Liu5;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, v1, Lyq5;->f:Ljava/lang/String;

    if-nez v3, :cond_0

    iget-object v3, v1, Lyq5;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    .line 3
    sget-object v1, Lzt5;->a:Ljn5;

    .line 4
    new-instance v3, Lbu5;

    invoke-direct {v3, v2}, Lbu5;-><init>(Liu5;)V

    .line 5
    invoke-virtual {v0, v3}, Ltr5;->a(Lbu5;)Lfu5;

    move-result-object v2

    .line 6
    instance-of v3, v2, Lyt5;

    if-eqz v3, :cond_1

    .line 7
    iget-object v3, v2, Lfu5;->a:Lbu5;

    .line 8
    check-cast v2, Lyt5;

    invoke-virtual {v1, v3, v2}, Ljn5;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljn5;

    move-result-object v1

    :cond_1
    return-object v1

    .line 9
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lyq5;->g()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 10
    iget-object v2, v1, Lyq5;->e:Liu5;

    .line 11
    invoke-virtual {v2}, Lvt5;->C()Z

    move-result v2

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "Currently we only support collection group queries at the root."

    .line 12
    invoke-static {v2, v4, v3}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 13
    iget-object v2, v1, Lyq5;->f:Ljava/lang/String;

    .line 14
    sget-object v3, Lzt5;->a:Ljn5;

    .line 15
    iget-object v4, v0, Ltr5;->c:Lsr5;

    invoke-interface {v4, v2}, Lsr5;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 16
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Liu5;

    .line 17
    invoke-virtual {v5, v2}, Lvt5;->k(Ljava/lang/String;)Lvt5;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Liu5;

    .line 18
    new-instance v5, Lyq5;

    iget-object v9, v1, Lyq5;->d:Ljava/util/List;

    iget-object v10, v1, Lyq5;->a:Ljava/util/List;

    iget-wide v11, v1, Lyq5;->g:J

    iget-object v13, v1, Lyq5;->h:Lyq5$a;

    iget-object v14, v1, Lyq5;->i:Lyp5;

    iget-object v15, v1, Lyq5;->j:Lyp5;

    const/4 v8, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v15}, Lyq5;-><init>(Liu5;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLyq5$a;Lyp5;Lyp5;)V

    move-object/from16 v6, p2

    .line 19
    invoke-virtual {v0, v5, v6}, Ltr5;->c(Lyq5;Lju5;)Ljn5;

    move-result-object v5

    .line 20
    invoke-virtual {v5}, Ljn5;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 21
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lbu5;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyt5;

    invoke-virtual {v3, v8, v7}, Ljn5;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljn5;

    move-result-object v3

    goto :goto_1

    :cond_4
    return-object v3

    :cond_5
    move-object/from16 v6, p2

    .line 22
    invoke-virtual/range {p0 .. p2}, Ltr5;->c(Lyq5;Lju5;)Ljn5;

    move-result-object v1

    return-object v1
.end method

.method public e(Ljava/util/Map;)Ljn5;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lbu5;",
            "Lfu5;",
            ">;)",
            "Ljn5<",
            "Lbu5;",
            "Lfu5;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lzt5;->a:Ljn5;

    .line 2
    iget-object v1, p0, Ltr5;->b:Lss5;

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Lss5;->b(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfu5;

    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lru5;

    .line 7
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbu5;

    invoke-virtual {v6, v7, v4}, Lru5;->a(Lbu5;Lfu5;)Lfu5;

    move-result-object v4

    goto :goto_1

    .line 8
    :cond_0
    invoke-interface {v3, v4}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbu5;

    .line 11
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfu5;

    if-nez v1, :cond_2

    .line 12
    new-instance v1, Lgu5;

    sget-object v3, Lju5;->f:Lju5;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lgu5;-><init>(Lbu5;Lju5;Z)V

    .line 13
    :cond_2
    invoke-virtual {v0, v2, v1}, Ljn5;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljn5;

    move-result-object v0

    goto :goto_2

    :cond_3
    return-object v0
.end method
