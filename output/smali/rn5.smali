.class public Lrn5;
.super Ljn5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrn5$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljn5<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public e:Lon5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lon5<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public f:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lon5;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lon5<",
            "TK;TV;>;",
            "Ljava/util/Comparator<",
            "TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljn5;-><init>()V

    .line 2
    iput-object p1, p0, Lrn5;->e:Lon5;

    .line 3
    iput-object p2, p0, Lrn5;->f:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lon5;Ljava/util/Comparator;Lrn5$a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljn5;-><init>()V

    .line 5
    iput-object p1, p0, Lrn5;->e:Lon5;

    .line 6
    iput-object p2, p0, Lrn5;->f:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lrn5;->s(Ljava/lang/Object;)Lon5;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lrn5;->s(Ljava/lang/Object;)Lon5;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lon5;->getValue()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lrn5;->e:Lon5;

    invoke-interface {v0}, Lon5;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkn5;

    iget-object v1, p0, Lrn5;->e:Lon5;

    iget-object v2, p0, Lrn5;->f:Ljava/util/Comparator;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v2, v4}, Lkn5;-><init>(Lon5;Ljava/lang/Object;Ljava/util/Comparator;Z)V

    return-object v0
.end method

.method public j()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrn5;->f:Ljava/util/Comparator;

    return-object v0
.end method

.method public l()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrn5;->e:Lon5;

    invoke-interface {v0}, Lon5;->h()Lon5;

    move-result-object v0

    invoke-interface {v0}, Lon5;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrn5;->e:Lon5;

    invoke-interface {v0}, Lon5;->g()Lon5;

    move-result-object v0

    invoke-interface {v0}, Lon5;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljn5;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Ljn5<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrn5;->e:Lon5;

    iget-object v1, p0, Lrn5;->f:Ljava/util/Comparator;

    .line 2
    invoke-interface {v0, p1, p2, v1}, Lon5;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lon5;

    move-result-object v2

    sget-object v5, Lon5$a;->f:Lon5$a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lon5;->f(Ljava/lang/Object;Ljava/lang/Object;Lon5$a;Lon5;Lon5;)Lon5;

    move-result-object p1

    .line 3
    new-instance p2, Lrn5;

    iget-object v0, p0, Lrn5;->f:Ljava/util/Comparator;

    invoke-direct {p2, p1, v0}, Lrn5;-><init>(Lon5;Ljava/util/Comparator;)V

    return-object p2
.end method

.method public p(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkn5;

    iget-object v1, p0, Lrn5;->e:Lon5;

    iget-object v2, p0, Lrn5;->f:Ljava/util/Comparator;

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lkn5;-><init>(Lon5;Ljava/lang/Object;Ljava/util/Comparator;Z)V

    return-object v0
.end method

.method public r(Ljava/lang/Object;)Ljn5;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljn5<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lrn5;->s(Ljava/lang/Object;)Lon5;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-object p0

    .line 2
    :cond_1
    iget-object v0, p0, Lrn5;->e:Lon5;

    iget-object v1, p0, Lrn5;->f:Ljava/util/Comparator;

    .line 3
    invoke-interface {v0, p1, v1}, Lon5;->c(Ljava/lang/Object;Ljava/util/Comparator;)Lon5;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lon5$a;->f:Lon5$a;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lon5;->f(Ljava/lang/Object;Ljava/lang/Object;Lon5$a;Lon5;Lon5;)Lon5;

    move-result-object p1

    .line 4
    new-instance v0, Lrn5;

    iget-object v1, p0, Lrn5;->f:Ljava/util/Comparator;

    invoke-direct {v0, p1, v1}, Lrn5;-><init>(Lon5;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Lon5;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lon5<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrn5;->e:Lon5;

    .line 2
    :goto_0
    invoke-interface {v0}, Lon5;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3
    iget-object v1, p0, Lrn5;->f:Ljava/util/Comparator;

    invoke-interface {v0}, Lon5;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    .line 4
    invoke-interface {v0}, Lon5;->a()Lon5;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    return-object v0

    .line 5
    :cond_1
    invoke-interface {v0}, Lon5;->e()Lon5;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lrn5;->e:Lon5;

    invoke-interface {v0}, Lon5;->size()I

    move-result v0

    return v0
.end method
