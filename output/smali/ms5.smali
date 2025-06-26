.class public Lms5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxs5;


# instance fields
.field public a:Lys5;

.field public final b:Lps5;

.field public c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lbu5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lps5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lms5;->b:Lps5;

    return-void
.end method


# virtual methods
.method public a(Lbu5;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lms5;->j(Lbu5;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lms5;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lms5;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lms5;->b:Lps5;

    .line 2
    iget-object v0, v0, Lps5;->e:Lqs5;

    .line 3
    iget-object v1, p0, Lms5;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbu5;

    .line 4
    invoke-virtual {p0, v2}, Lms5;->j(Lbu5;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Lqs5;->b(Lbu5;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lms5;->c:Ljava/util/Set;

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lms5;->c:Ljava/util/Set;

    return-void
.end method

.method public d(Lbu5;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lms5;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public e()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public f(Lut5;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lms5;->b:Lps5;

    .line 2
    iget-object v0, v0, Lps5;->d:Lrs5;

    .line 3
    iget v1, p1, Lut5;->b:I

    .line 4
    iget-object v2, v0, Lrs5;->b:Lys5;

    invoke-virtual {v2, v1}, Lys5;->d(I)Lln5;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lln5;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    move-object v2, v1

    check-cast v2, Lln5$a;

    invoke-virtual {v2}, Lln5$a;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lln5$a;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbu5;

    .line 6
    iget-object v3, p0, Lms5;->c:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, v0, Lrs5;->a:Ljava/util/Map;

    .line 8
    iget-object v2, p1, Lut5;->a:Ldr5;

    .line 9
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, v0, Lrs5;->b:Lys5;

    .line 11
    iget p1, p1, Lut5;->b:I

    .line 12
    invoke-virtual {v0, p1}, Lys5;->g(I)Lln5;

    return-void
.end method

.method public g(Lys5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lms5;->a:Lys5;

    return-void
.end method

.method public h(Lbu5;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lms5;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public i(Lbu5;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lms5;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final j(Lbu5;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lms5;->b:Lps5;

    .line 2
    iget-object v0, v0, Lps5;->d:Lrs5;

    .line 3
    iget-object v0, v0, Lrs5;->b:Lys5;

    invoke-virtual {v0, p1}, Lys5;->c(Lbu5;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4
    :cond_0
    iget-object v0, p0, Lms5;->b:Lps5;

    .line 5
    iget-object v0, v0, Lps5;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Los5;

    .line 7
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v4, Lqr5;

    invoke-direct {v4, p1, v3}, Lqr5;-><init>(Lbu5;I)V

    .line 9
    iget-object v2, v2, Los5;->b:Lln5;

    .line 10
    iget-object v2, v2, Lln5;->e:Ljn5;

    invoke-virtual {v2, v4}, Ljn5;->p(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v2

    .line 11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    .line 12
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 13
    check-cast v2, Lqr5;

    .line 14
    iget-object v2, v2, Lqr5;->a:Lbu5;

    .line 15
    invoke-virtual {v2, p1}, Lbu5;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    return v1

    .line 16
    :cond_4
    iget-object v0, p0, Lms5;->a:Lys5;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lys5;->c(Lbu5;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v1

    :cond_5
    return v3
.end method
