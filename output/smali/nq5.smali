.class public Lnq5;
.super Leq5;
.source "SourceFile"


# direct methods
.method public constructor <init>(Leu5;Lbd6;)V
    .locals 1

    .line 1
    sget-object v0, Lfq5$a;->n:Lfq5$a;

    invoke-direct {p0, p1, v0, p2}, Leq5;-><init>(Leu5;Lfq5$a;Lbd6;)V

    .line 2
    invoke-static {p2}, Llu5;->f(Lbd6;)Z

    move-result p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "InFilter expects an ArrayValue"

    invoke-static {p1, v0, p2}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b(Lyt5;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Leq5;->c:Leu5;

    .line 2
    invoke-virtual {p1, v0}, Lyt5;->b(Leu5;)Lbd6;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Leq5;->b:Lbd6;

    .line 4
    invoke-virtual {v0}, Lbd6;->N()Ljc6;

    move-result-object v0

    invoke-static {v0, p1}, Llu5;->d(Lkc6;Lbd6;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
