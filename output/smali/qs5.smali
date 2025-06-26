.class public final Lqs5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzs5;


# instance fields
.field public a:Ljn5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljn5<",
            "Lbu5;",
            "Landroid/util/Pair<",
            "Lfu5;",
            "Lju5;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Lps5;


# direct methods
.method public constructor <init>(Lps5;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lbu5;->f:Lln5;

    sget-object v0, Lau5;->e:Lau5;

    .line 3
    sget v1, Ljn5$a;->a:I

    .line 4
    new-instance v1, Lhn5;

    invoke-direct {v1, v0}, Lhn5;-><init>(Ljava/util/Comparator;)V

    .line 5
    iput-object v1, p0, Lqs5;->a:Ljn5;

    .line 6
    iput-object p1, p0, Lqs5;->b:Lps5;

    return-void
.end method


# virtual methods
.method public a(Lbu5;)Lfu5;
    .locals 1

    .line 1
    iget-object v0, p0, Lqs5;->a:Ljn5;

    invoke-virtual {v0, p1}, Ljn5;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lfu5;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public b(Lbu5;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lqs5;->a:Ljn5;

    invoke-virtual {v0, p1}, Ljn5;->r(Ljava/lang/Object;)Ljn5;

    move-result-object p1

    iput-object p1, p0, Lqs5;->a:Ljn5;

    return-void
.end method

.method public c(Ljava/lang/Iterable;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lbu5;",
            ">;)",
            "Ljava/util/Map<",
            "Lbu5;",
            "Lfu5;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbu5;

    .line 3
    invoke-virtual {p0, v1}, Lqs5;->a(Lbu5;)Lfu5;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public d(Lyq5;Lju5;)Ljn5;
    .locals 6
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
    invoke-virtual {p1}, Lyq5;->g()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CollectionGroup queries should be handled in LocalDocumentsView"

    .line 2
    invoke-static {v0, v2, v1}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lzt5;->a:Ljn5;

    .line 4
    iget-object v1, p1, Lyq5;->e:Liu5;

    const-string v2, ""

    .line 5
    invoke-virtual {v1, v2}, Lvt5;->k(Ljava/lang/String;)Lvt5;

    move-result-object v2

    check-cast v2, Liu5;

    .line 6
    new-instance v3, Lbu5;

    invoke-direct {v3, v2}, Lbu5;-><init>(Liu5;)V

    .line 7
    iget-object v2, p0, Lqs5;->a:Ljn5;

    .line 8
    invoke-virtual {v2, v3}, Ljn5;->p(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v2

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbu5;

    .line 12
    iget-object v4, v4, Lbu5;->e:Liu5;

    .line 13
    invoke-virtual {v1, v4}, Lvt5;->D(Lvt5;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lfu5;

    .line 15
    instance-of v5, v4, Lyt5;

    if-nez v5, :cond_2

    goto :goto_0

    .line 16
    :cond_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lju5;

    .line 17
    iget-object v3, v3, Lju5;->e:Lcom/google/firebase/Timestamp;

    iget-object v5, p2, Lju5;->e:Lcom/google/firebase/Timestamp;

    invoke-virtual {v3, v5}, Lcom/google/firebase/Timestamp;->i(Lcom/google/firebase/Timestamp;)I

    move-result v3

    if-gtz v3, :cond_3

    goto :goto_0

    .line 18
    :cond_3
    check-cast v4, Lyt5;

    .line 19
    invoke-virtual {p1, v4}, Lyq5;->h(Lyt5;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 20
    iget-object v3, v4, Lfu5;->a:Lbu5;

    .line 21
    invoke-virtual {v0, v3, v4}, Ljn5;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljn5;

    move-result-object v0

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public e(Lfu5;Lju5;)V
    .locals 3

    .line 1
    sget-object v0, Lju5;->f:Lju5;

    .line 2
    invoke-virtual {p2, v0}, Lju5;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Cannot add document to the RemoteDocumentCache with a read time of zero"

    .line 3
    invoke-static {v0, v2, v1}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lqs5;->a:Ljn5;

    .line 5
    iget-object v1, p1, Lfu5;->a:Lbu5;

    .line 6
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljn5;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljn5;

    move-result-object p2

    iput-object p2, p0, Lqs5;->a:Ljn5;

    .line 7
    iget-object p2, p0, Lqs5;->b:Lps5;

    .line 8
    iget-object p2, p2, Lps5;->c:Lns5;

    .line 9
    iget-object p1, p1, Lfu5;->a:Lbu5;

    .line 10
    iget-object p1, p1, Lbu5;->e:Liu5;

    .line 11
    invoke-virtual {p1}, Lvt5;->L()Lvt5;

    move-result-object p1

    check-cast p1, Liu5;

    .line 12
    iget-object p2, p2, Lns5;->a:Lns5$a;

    invoke-virtual {p2, p1}, Lns5$a;->a(Liu5;)Z

    return-void
.end method
