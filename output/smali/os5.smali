.class public final Los5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lss5;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru5;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lln5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lln5<",
            "Lqr5;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:Lqi6;

.field public final e:Lps5;


# direct methods
.method public constructor <init>(Lps5;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Los5;->e:Lps5;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Los5;->a:Ljava/util/List;

    .line 4
    new-instance p1, Lln5;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sget v1, Lqr5;->c:I

    sget-object v1, Lor5;->e:Lor5;

    invoke-direct {p1, v0, v1}, Lln5;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    iput-object p1, p0, Los5;->b:Lln5;

    const/4 p1, 0x1

    .line 5
    iput p1, p0, Los5;->c:I

    .line 6
    sget-object p1, Lax5;->s:Lqi6;

    iput-object p1, p0, Los5;->d:Lqi6;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Los5;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Los5;->b:Lln5;

    .line 3
    iget-object v0, v0, Lln5;->e:Ljn5;

    invoke-virtual {v0}, Ljn5;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Document leak -- detected dangling mutation references when queue is empty."

    .line 4
    invoke-static {v0, v2, v1}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lbu5;",
            ">;)",
            "Ljava/util/List<",
            "Lru5;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lln5;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 3
    sget-object v2, Lvx5;->a:Ljava/util/Comparator;

    .line 4
    invoke-direct {v0, v1, v2}, Lln5;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbu5;

    .line 6
    new-instance v2, Lqr5;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lqr5;-><init>(Lbu5;I)V

    .line 7
    iget-object v3, p0, Los5;->b:Lln5;

    .line 8
    iget-object v3, v3, Lln5;->e:Ljn5;

    invoke-virtual {v3, v2}, Ljn5;->p(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v2

    .line 9
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 11
    check-cast v3, Lqr5;

    .line 12
    iget-object v4, v3, Lqr5;->a:Lbu5;

    .line 13
    invoke-virtual {v1, v4}, Lbu5;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    iget v3, v3, Lqr5;->b:I

    .line 15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lln5;->d(Ljava/lang/Object;)Lln5;

    move-result-object v0

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {p0, v0}, Los5;->o(Lln5;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/google/firebase/Timestamp;Ljava/util/List;Ljava/util/List;)Lru5;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/Timestamp;",
            "Ljava/util/List<",
            "Lqu5;",
            ">;",
            "Ljava/util/List<",
            "Lqu5;",
            ">;)",
            "Lru5;"
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Mutation batches should not be empty"

    invoke-static {v0, v4, v3}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget v0, p0, Los5;->c:I

    add-int/lit8 v3, v0, 0x1

    .line 3
    iput v3, p0, Los5;->c:I

    .line 4
    iget-object v3, p0, Los5;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 5
    iget-object v4, p0, Los5;->a:Ljava/util/List;

    sub-int/2addr v3, v1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru5;

    .line 6
    iget v3, v3, Lru5;->a:I

    if-ge v3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Mutation batchIds must be monotonically increasing order"

    .line 7
    invoke-static {v1, v3, v2}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :cond_1
    new-instance v1, Lru5;

    invoke-direct {v1, v0, p1, p2, p3}, Lru5;-><init>(ILcom/google/firebase/Timestamp;Ljava/util/List;Ljava/util/List;)V

    .line 9
    iget-object p1, p0, Los5;->a:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lqu5;

    .line 11
    iget-object p3, p0, Los5;->b:Lln5;

    new-instance v2, Lqr5;

    .line 12
    iget-object v3, p2, Lqu5;->a:Lbu5;

    .line 13
    invoke-direct {v2, v3, v0}, Lqr5;-><init>(Lbu5;I)V

    .line 14
    new-instance v3, Lln5;

    iget-object p3, p3, Lln5;->e:Ljn5;

    const/4 v4, 0x0

    invoke-virtual {p3, v2, v4}, Ljn5;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljn5;

    move-result-object p3

    invoke-direct {v3, p3}, Lln5;-><init>(Ljn5;)V

    .line 15
    iput-object v3, p0, Los5;->b:Lln5;

    .line 16
    iget-object p3, p0, Los5;->e:Lps5;

    .line 17
    iget-object p3, p3, Lps5;->c:Lns5;

    .line 18
    iget-object p2, p2, Lqu5;->a:Lbu5;

    .line 19
    iget-object p2, p2, Lbu5;->e:Liu5;

    .line 20
    invoke-virtual {p2}, Lvt5;->L()Lvt5;

    move-result-object p2

    check-cast p2, Liu5;

    .line 21
    iget-object p3, p3, Lns5;->a:Lns5$a;

    invoke-virtual {p3, p2}, Lns5$a;->a(Liu5;)Z

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public d(Lbu5;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbu5;",
            ")",
            "Ljava/util/List<",
            "Lru5;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lqr5;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lqr5;-><init>(Lbu5;I)V

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v3, p0, Los5;->b:Lln5;

    .line 4
    iget-object v3, v3, Lln5;->e:Ljn5;

    invoke-virtual {v3, v0}, Ljn5;->p(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 7
    check-cast v3, Lqr5;

    .line 8
    iget-object v4, v3, Lqr5;->a:Lbu5;

    .line 9
    invoke-virtual {p1, v4}, Lbu5;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 10
    :cond_0
    iget v3, v3, Lqr5;->b:I

    .line 11
    invoke-virtual {p0, v3}, Los5;->g(I)Lru5;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "Batches in the index must exist in the main table"

    .line 12
    invoke-static {v4, v6, v5}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_2
    return-object v2
.end method

.method public e(Lqi6;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Los5;->d:Lqi6;

    return-void
.end method

.method public f(I)Lru5;
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 1
    invoke-virtual {p0, p1}, Los5;->m(I)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    iget-object v0, p0, Los5;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    iget-object v0, p0, Los5;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru5;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public g(I)Lru5;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Los5;->m(I)I

    move-result v0

    if-ltz v0, :cond_2

    .line 2
    iget-object v1, p0, Los5;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v1, p0, Los5;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru5;

    .line 4
    iget v1, v0, Lru5;->a:I

    const/4 v2, 0x0

    if-ne v1, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "If found batch must match"

    .line 5
    invoke-static {p1, v2, v1}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public h(Lru5;)V
    .locals 5

    .line 1
    iget v0, p1, Lru5;->a:I

    const-string v1, "removed"

    .line 2
    invoke-virtual {p0, v0, v1}, Los5;->n(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Can only remove the first entry of the mutation queue"

    .line 3
    invoke-static {v0, v3, v2}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Los5;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Los5;->b:Lln5;

    .line 6
    iget-object v1, p1, Lru5;->d:Ljava/util/List;

    .line 7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqu5;

    .line 8
    iget-object v2, v2, Lqu5;->a:Lbu5;

    .line 9
    iget-object v3, p0, Los5;->e:Lps5;

    .line 10
    iget-object v3, v3, Lps5;->f:Lxs5;

    .line 11
    invoke-interface {v3, v2}, Lxs5;->d(Lbu5;)V

    .line 12
    new-instance v3, Lqr5;

    .line 13
    iget v4, p1, Lru5;->a:I

    .line 14
    invoke-direct {v3, v2, v4}, Lqr5;-><init>(Lbu5;I)V

    .line 15
    invoke-virtual {v0, v3}, Lln5;->h(Ljava/lang/Object;)Lln5;

    move-result-object v0

    goto :goto_1

    .line 16
    :cond_1
    iput-object v0, p0, Los5;->b:Lln5;

    return-void
.end method

.method public i(Lyq5;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyq5;",
            ")",
            "Ljava/util/List<",
            "Lru5;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lyq5;->g()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "CollectionGroup queries should be handled in LocalDocumentsView"

    .line 2
    invoke-static {v0, v3, v2}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object p1, p1, Lyq5;->e:Liu5;

    .line 4
    invoke-virtual {p1}, Lvt5;->I()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 5
    invoke-static {p1}, Lbu5;->l(Liu5;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ""

    .line 6
    invoke-virtual {p1, v2}, Lvt5;->k(Ljava/lang/String;)Lvt5;

    move-result-object v2

    check-cast v2, Liu5;

    goto :goto_0

    :cond_0
    move-object v2, p1

    .line 7
    :goto_0
    new-instance v3, Lqr5;

    .line 8
    new-instance v4, Lbu5;

    invoke-direct {v4, v2}, Lbu5;-><init>(Liu5;)V

    .line 9
    invoke-direct {v3, v4, v1}, Lqr5;-><init>(Lbu5;I)V

    .line 10
    new-instance v1, Lln5;

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 12
    sget-object v4, Lvx5;->a:Ljava/util/Comparator;

    .line 13
    invoke-direct {v1, v2, v4}, Lln5;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    .line 14
    iget-object v2, p0, Los5;->b:Lln5;

    .line 15
    iget-object v2, v2, Lln5;->e:Ljn5;

    invoke-virtual {v2, v3}, Ljn5;->p(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v2

    .line 16
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 17
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 18
    check-cast v3, Lqr5;

    .line 19
    iget-object v4, v3, Lqr5;->a:Lbu5;

    .line 20
    iget-object v4, v4, Lbu5;->e:Liu5;

    .line 21
    invoke-virtual {p1, v4}, Lvt5;->D(Lvt5;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    .line 22
    :cond_2
    invoke-virtual {v4}, Lvt5;->I()I

    move-result v4

    if-ne v4, v0, :cond_1

    .line 23
    iget v3, v3, Lqr5;->b:I

    .line 24
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lln5;->d(Ljava/lang/Object;)Lln5;

    move-result-object v1

    goto :goto_1

    .line 25
    :cond_3
    :goto_2
    invoke-virtual {p0, v1}, Los5;->o(Lln5;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public j()Lqi6;
    .locals 1

    .line 1
    iget-object v0, p0, Los5;->d:Lqi6;

    return-object v0
.end method

.method public k(Lru5;Lqi6;)V
    .locals 6

    .line 1
    iget p1, p1, Lru5;->a:I

    const-string v0, "acknowledged"

    .line 2
    invoke-virtual {p0, p1, v0}, Los5;->n(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "Can only acknowledge the first batch in the mutation queue"

    .line 3
    invoke-static {v3, v5, v4}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v3, p0, Los5;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru5;

    .line 5
    iget v3, v0, Lru5;->a:I

    if-ne p1, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    .line 7
    iget p1, v0, Lru5;->a:I

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    const-string p1, "Queue ordering failure: expected batch %d, got batch %d"

    .line 9
    invoke-static {v3, p1, v4}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 10
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iput-object p2, p0, Los5;->d:Lqi6;

    return-void
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru5;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Los5;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final m(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Los5;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Los5;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru5;

    .line 3
    iget v0, v0, Lru5;->a:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public final n(ILjava/lang/String;)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Los5;->m(I)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    .line 2
    iget-object v2, p0, Los5;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const-string p2, "Batches must exist to be %s"

    invoke-static {v2, p2, v1}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public final o(Lln5;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lln5<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lru5;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Lln5;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    move-object v1, p1

    check-cast v1, Lln5$a;

    invoke-virtual {v1}, Lln5$a;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lln5$a;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Los5;->g(I)Lru5;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, Los5;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Los5;->c:I

    :cond_0
    return-void
.end method
