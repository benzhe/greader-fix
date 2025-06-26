.class public final Lbz3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnz3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnz3<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lxy3;

.field public final b:Lb04;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb04<",
            "**>;"
        }
    .end annotation
.end field

.field public final c:Z

.field public final d:Lfx3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfx3<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb04;Lfx3;Lxy3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb04<",
            "**>;",
            "Lfx3<",
            "*>;",
            "Lxy3;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbz3;->b:Lb04;

    invoke-virtual {p2, p3}, Lfx3;->f(Lxy3;)Z

    move-result p1

    iput-boolean p1, p0, Lbz3;->c:Z

    iput-object p2, p0, Lbz3;->d:Lfx3;

    iput-object p3, p0, Lbz3;->a:Lxy3;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lbz3;->b:Lb04;

    invoke-virtual {v0, p1}, Lb04;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lbz3;->b:Lb04;

    invoke-virtual {v1, p2}, Lb04;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lbz3;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbz3;->d:Lfx3;

    invoke-virtual {v0, p1}, Lfx3;->b(Ljava/lang/Object;)Ljx3;

    move-result-object p1

    iget-object v0, p0, Lbz3;->d:Lfx3;

    invoke-virtual {v0, p2}, Lfx3;->b(Ljava/lang/Object;)Ljx3;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljx3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lbz3;->b:Lb04;

    invoke-virtual {v0, p1}, Lb04;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lbz3;->d:Lfx3;

    invoke-virtual {v0, p1}, Lfx3;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public final c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lbz3;->a:Lxy3;

    invoke-interface {v0}, Lxy3;->r()Lyy3;

    move-result-object v0

    check-cast v0, Lsx3$a;

    invoke-virtual {v0}, Lsx3$a;->e()Lxy3;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lbz3;->b:Lb04;

    invoke-virtual {v0, p1}, Lb04;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lbz3;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbz3;->d:Lfx3;

    invoke-virtual {v1, p1}, Lfx3;->b(Ljava/lang/Object;)Ljx3;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p1}, Ljx3;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final e(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lbz3;->d:Lfx3;

    invoke-virtual {v0, p1}, Lfx3;->b(Ljava/lang/Object;)Ljx3;

    move-result-object p1

    invoke-virtual {p1}, Ljx3;->b()Z

    move-result p1

    return p1
.end method

.method public final f(Ljava/lang/Object;Lv04;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lv04;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lbz3;->d:Lfx3;

    invoke-virtual {v0, p1}, Lfx3;->b(Ljava/lang/Object;)Ljx3;

    move-result-object v0

    invoke-virtual {v0}, Ljx3;->c()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmx3;

    invoke-interface {v2}, Lmx3;->v()Lu04;

    move-result-object v3

    sget-object v4, Lu04;->n:Lu04;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lmx3;->j()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lmx3;->e()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v1, Ldy3;

    invoke-interface {v2}, Lmx3;->c()I

    move-result v2

    if-eqz v3, :cond_0

    check-cast v1, Ldy3;

    .line 1
    iget-object v1, v1, Ldy3;->e:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lby3;

    .line 2
    invoke-virtual {v1}, Lfy3;->c()Lsw3;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    :goto_1
    move-object v3, p2

    check-cast v3, Lbx3;

    invoke-virtual {v3, v2, v1}, Lbx3;->c(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, p0, Lbz3;->b:Lb04;

    invoke-virtual {v0, p1}, Lb04;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lb04;->d(Ljava/lang/Object;Lv04;)V

    return-void
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lbz3;->b:Lb04;

    .line 1
    sget-object v1, Lpz3;->a:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Lb04;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p2}, Lb04;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lb04;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lb04;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lbz3;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbz3;->d:Lfx3;

    invoke-static {v0, p1, p2}, Lpz3;->e(Lfx3;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lbz3;->b:Lb04;

    invoke-virtual {v0, p1}, Lb04;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb04;->j(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v0, v1

    iget-boolean v2, p0, Lbz3;->c:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lbz3;->d:Lfx3;

    invoke-virtual {v2, p1}, Lfx3;->b(Ljava/lang/Object;)Ljx3;

    move-result-object p1

    const/4 v2, 0x0

    .line 1
    :goto_0
    iget-object v3, p1, Ljx3;->a:Lqz3;

    invoke-virtual {v3}, Lqz3;->e()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p1, Ljx3;->a:Lqz3;

    invoke-virtual {v3, v1}, Lqz3;->c(I)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-static {v3}, Ljx3;->k(Ljava/util/Map$Entry;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Ljx3;->a:Lqz3;

    invoke-virtual {p1}, Lqz3;->f()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {v1}, Ljx3;->k(Ljava/util/Map$Entry;)I

    move-result v1

    add-int/2addr v2, v1

    goto :goto_1

    :cond_1
    add-int/2addr v0, v2

    :cond_2
    return v0
.end method

.method public final i(Ljava/lang/Object;[BIILow3;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Low3;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lsx3;

    iget-object v0, p1, Lsx3;->zzjp:Lc04;

    sget-object v1, Lc04;->f:Lc04;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lc04;->e()Lc04;

    move-result-object v0

    iput-object v0, p1, Lsx3;->zzjp:Lc04;

    :cond_0
    :goto_0
    if-ge p3, p4, :cond_9

    invoke-static {p2, p3, p5}, Lc50;->g1([BILow3;)I

    move-result v3

    iget v1, p5, Low3;->a:I

    const/16 p1, 0xb

    const/4 p3, 0x2

    if-eq v1, p1, :cond_2

    and-int/lit8 p1, v1, 0x7

    if-ne p1, p3, :cond_1

    move-object v2, p2

    move v4, p4

    move-object v5, v0

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lc50;->V0(I[BIILc04;Low3;)I

    move-result p3

    goto :goto_0

    :cond_1
    invoke-static {v1, p2, v3, p4, p5}, Lc50;->T0(I[BIILow3;)I

    move-result p3

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v3, p4, :cond_6

    invoke-static {p2, v3, p5}, Lc50;->g1([BILow3;)I

    move-result v2

    iget v3, p5, Low3;->a:I

    ushr-int/lit8 v4, v3, 0x3

    and-int/lit8 v5, v3, 0x7

    if-eq v4, p3, :cond_4

    const/4 v6, 0x3

    if-eq v4, v6, :cond_3

    goto :goto_2

    :cond_3
    if-ne v5, p3, :cond_5

    invoke-static {p2, v2, p5}, Lc50;->N3([BILow3;)I

    move-result v3

    iget-object v1, p5, Low3;->c:Ljava/lang/Object;

    check-cast v1, Lsw3;

    goto :goto_1

    :cond_4
    if-nez v5, :cond_5

    invoke-static {p2, v2, p5}, Lc50;->g1([BILow3;)I

    move-result v3

    iget p1, p5, Low3;->a:I

    goto :goto_1

    :cond_5
    :goto_2
    const/16 v4, 0xc

    if-eq v3, v4, :cond_7

    invoke-static {v3, p2, v2, p4, p5}, Lc50;->T0(I[BIILow3;)I

    move-result v3

    goto :goto_1

    :cond_6
    move v2, v3

    :cond_7
    if-eqz v1, :cond_8

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p3

    invoke-virtual {v0, p1, v1}, Lc04;->b(ILjava/lang/Object;)V

    :cond_8
    move p3, v2

    goto :goto_0

    :cond_9
    if-ne p3, p4, :cond_a

    return-void

    :cond_a
    invoke-static {}, Lyx3;->c()Lyx3;

    move-result-object p1

    throw p1
.end method
