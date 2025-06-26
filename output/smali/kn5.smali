.class public Lkn5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final e:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lqn5<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field public final f:Z


# direct methods
.method public constructor <init>(Lon5;Ljava/lang/Object;Ljava/util/Comparator;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lon5<",
            "TK;TV;>;TK;",
            "Ljava/util/Comparator<",
            "TK;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lkn5;->e:Ljava/util/ArrayDeque;

    .line 3
    iput-boolean p4, p0, Lkn5;->f:Z

    .line 4
    :goto_0
    invoke-interface {p1}, Lon5;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz p2, :cond_1

    if-eqz p4, :cond_0

    .line 5
    invoke-interface {p1}, Lon5;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_1

    .line 6
    :cond_0
    invoke-interface {p1}, Lon5;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-gez v0, :cond_3

    if-eqz p4, :cond_2

    .line 7
    invoke-interface {p1}, Lon5;->a()Lon5;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {p1}, Lon5;->e()Lon5;

    move-result-object p1

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    .line 9
    iget-object p2, p0, Lkn5;->e:Ljava/util/ArrayDeque;

    check-cast p1, Lqn5;

    invoke-virtual {p2, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_2

    .line 10
    :cond_4
    iget-object v0, p0, Lkn5;->e:Ljava/util/ArrayDeque;

    move-object v1, p1

    check-cast v1, Lqn5;

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    if-eqz p4, :cond_5

    .line 11
    invoke-interface {p1}, Lon5;->e()Lon5;

    move-result-object p1

    goto :goto_0

    .line 12
    :cond_5
    invoke-interface {p1}, Lon5;->a()Lon5;

    move-result-object p1

    goto :goto_0

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkn5;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lkn5;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqn5;

    .line 2
    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    .line 3
    iget-object v2, v0, Lqn5;->a:Ljava/lang/Object;

    .line 4
    iget-object v3, v0, Lqn5;->b:Ljava/lang/Object;

    .line 5
    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    iget-boolean v2, p0, Lkn5;->f:Z

    if-eqz v2, :cond_0

    .line 7
    iget-object v0, v0, Lqn5;->c:Lon5;

    .line 8
    :goto_0
    invoke-interface {v0}, Lon5;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 9
    iget-object v2, p0, Lkn5;->e:Ljava/util/ArrayDeque;

    move-object v3, v0

    check-cast v3, Lqn5;

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 10
    invoke-interface {v0}, Lon5;->e()Lon5;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, v0, Lqn5;->d:Lon5;

    .line 12
    :goto_1
    invoke-interface {v0}, Lon5;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 13
    iget-object v2, p0, Lkn5;->e:Ljava/util/ArrayDeque;

    move-object v3, v0

    check-cast v3, Lqn5;

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 14
    invoke-interface {v0}, Lon5;->a()Lon5;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    return-object v1

    .line 15
    :catch_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove called on immutable collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
