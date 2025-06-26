.class public Lys5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lln5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lln5<",
            "Lqr5;",
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


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lln5;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    sget v2, Lqr5;->c:I

    sget-object v2, Lor5;->e:Lor5;

    invoke-direct {v0, v1, v2}, Lln5;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    iput-object v0, p0, Lys5;->a:Lln5;

    .line 3
    new-instance v0, Lln5;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lpr5;->e:Lpr5;

    invoke-direct {v0, v1, v2}, Lln5;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    iput-object v0, p0, Lys5;->b:Lln5;

    return-void
.end method


# virtual methods
.method public a(Lbu5;I)V
    .locals 2

    .line 1
    new-instance v0, Lqr5;

    invoke-direct {v0, p1, p2}, Lqr5;-><init>(Lbu5;I)V

    .line 2
    iget-object p1, p0, Lys5;->a:Lln5;

    .line 3
    new-instance p2, Lln5;

    iget-object p1, p1, Lln5;->e:Ljn5;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljn5;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljn5;

    move-result-object p1

    invoke-direct {p2, p1}, Lln5;-><init>(Ljn5;)V

    .line 4
    iput-object p2, p0, Lys5;->a:Lln5;

    .line 5
    iget-object p1, p0, Lys5;->b:Lln5;

    .line 6
    new-instance p2, Lln5;

    iget-object p1, p1, Lln5;->e:Ljn5;

    invoke-virtual {p1, v0, v1}, Ljn5;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljn5;

    move-result-object p1

    invoke-direct {p2, p1}, Lln5;-><init>(Ljn5;)V

    .line 7
    iput-object p2, p0, Lys5;->b:Lln5;

    return-void
.end method

.method public b(Lln5;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lln5<",
            "Lbu5;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lln5;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    move-object v0, p1

    check-cast v0, Lln5$a;

    invoke-virtual {v0}, Lln5$a;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lln5$a;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbu5;

    .line 2
    invoke-virtual {p0, v0, p2}, Lys5;->a(Lbu5;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Lbu5;)Z
    .locals 3

    .line 1
    new-instance v0, Lqr5;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lqr5;-><init>(Lbu5;I)V

    .line 2
    iget-object v2, p0, Lys5;->a:Lln5;

    .line 3
    iget-object v2, v2, Lln5;->e:Ljn5;

    invoke-virtual {v2, v0}, Ljn5;->p(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    .line 5
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Lqr5;

    .line 7
    iget-object v0, v0, Lqr5;->a:Lbu5;

    .line 8
    invoke-virtual {v0, p1}, Lbu5;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public d(I)Lln5;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lln5<",
            "Lbu5;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lbu5;->f:Lln5;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Lbu5;

    invoke-static {v0}, Liu5;->M(Ljava/util/List;)Liu5;

    move-result-object v0

    invoke-direct {v1, v0}, Lbu5;-><init>(Liu5;)V

    .line 3
    new-instance v0, Lqr5;

    invoke-direct {v0, v1, p1}, Lqr5;-><init>(Lbu5;I)V

    .line 4
    iget-object v1, p0, Lys5;->b:Lln5;

    .line 5
    iget-object v1, v1, Lln5;->e:Ljn5;

    invoke-virtual {v1, v0}, Ljn5;->p(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    .line 6
    sget-object v1, Lbu5;->f:Lln5;

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 9
    check-cast v2, Lqr5;

    .line 10
    iget v3, v2, Lqr5;->b:I

    if-ne v3, p1, :cond_0

    .line 11
    iget-object v2, v2, Lqr5;->a:Lbu5;

    .line 12
    invoke-virtual {v1, v2}, Lln5;->d(Ljava/lang/Object;)Lln5;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public e(Lbu5;I)V
    .locals 1

    .line 1
    new-instance v0, Lqr5;

    invoke-direct {v0, p1, p2}, Lqr5;-><init>(Lbu5;I)V

    .line 2
    iget-object p1, p0, Lys5;->a:Lln5;

    invoke-virtual {p1, v0}, Lln5;->h(Ljava/lang/Object;)Lln5;

    move-result-object p1

    iput-object p1, p0, Lys5;->a:Lln5;

    .line 3
    iget-object p1, p0, Lys5;->b:Lln5;

    invoke-virtual {p1, v0}, Lln5;->h(Ljava/lang/Object;)Lln5;

    move-result-object p1

    iput-object p1, p0, Lys5;->b:Lln5;

    return-void
.end method

.method public f(Lln5;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lln5<",
            "Lbu5;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lln5;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    move-object v0, p1

    check-cast v0, Lln5$a;

    invoke-virtual {v0}, Lln5$a;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lln5$a;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbu5;

    .line 2
    invoke-virtual {p0, v0, p2}, Lys5;->e(Lbu5;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g(I)Lln5;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lln5<",
            "Lbu5;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lbu5;->f:Lln5;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Lbu5;

    invoke-static {v0}, Liu5;->M(Ljava/util/List;)Liu5;

    move-result-object v0

    invoke-direct {v1, v0}, Lbu5;-><init>(Liu5;)V

    .line 3
    new-instance v0, Lqr5;

    invoke-direct {v0, v1, p1}, Lqr5;-><init>(Lbu5;I)V

    .line 4
    iget-object v1, p0, Lys5;->b:Lln5;

    .line 5
    iget-object v1, v1, Lln5;->e:Ljn5;

    invoke-virtual {v1, v0}, Ljn5;->p(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    .line 6
    sget-object v1, Lbu5;->f:Lln5;

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 9
    check-cast v2, Lqr5;

    .line 10
    iget v3, v2, Lqr5;->b:I

    if-ne v3, p1, :cond_0

    .line 11
    iget-object v3, v2, Lqr5;->a:Lbu5;

    .line 12
    invoke-virtual {v1, v3}, Lln5;->d(Ljava/lang/Object;)Lln5;

    move-result-object v1

    .line 13
    iget-object v3, p0, Lys5;->a:Lln5;

    invoke-virtual {v3, v2}, Lln5;->h(Ljava/lang/Object;)Lln5;

    move-result-object v3

    iput-object v3, p0, Lys5;->a:Lln5;

    .line 14
    iget-object v3, p0, Lys5;->b:Lln5;

    invoke-virtual {v3, v2}, Lln5;->h(Ljava/lang/Object;)Lln5;

    move-result-object v2

    iput-object v2, p0, Lys5;->b:Lln5;

    goto :goto_0

    :cond_0
    return-object v1
.end method
