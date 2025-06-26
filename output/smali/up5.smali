.class public Lup5;
.super Leq5;
.source "SourceFile"


# direct methods
.method public constructor <init>(Leu5;Lbd6;)V
    .locals 1

    .line 1
    sget-object v0, Lfq5$a;->m:Lfq5$a;

    invoke-direct {p0, p1, v0, p2}, Leq5;-><init>(Leu5;Lfq5$a;Lbd6;)V

    .line 2
    invoke-static {p2}, Llu5;->f(Lbd6;)Z

    move-result p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "ArrayContainsAnyFilter expects an ArrayValue"

    invoke-static {p1, v0, p2}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b(Lyt5;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Leq5;->c:Leu5;

    .line 2
    invoke-virtual {p1, v0}, Lyt5;->b(Leu5;)Lbd6;

    move-result-object p1

    .line 3
    invoke-static {p1}, Llu5;->f(Lbd6;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lbd6;->N()Ljc6;

    move-result-object p1

    invoke-virtual {p1}, Ljc6;->i()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbd6;

    .line 5
    iget-object v2, p0, Leq5;->b:Lbd6;

    .line 6
    invoke-virtual {v2}, Lbd6;->N()Ljc6;

    move-result-object v2

    invoke-static {v2, v0}, Llu5;->d(Lkc6;Lbd6;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method
