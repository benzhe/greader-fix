.class public final Ldk6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqk6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lqk6<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lak6;

.field public final b:Lyk6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyk6<",
            "**>;"
        }
    .end annotation
.end field

.field public final c:Z

.field public final d:Lzi6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzi6<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lyk6;Lzi6;Lak6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyk6<",
            "**>;",
            "Lzi6<",
            "*>;",
            "Lak6;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldk6;->b:Lyk6;

    .line 3
    invoke-virtual {p2, p3}, Lzi6;->e(Lak6;)Z

    move-result p1

    iput-boolean p1, p0, Ldk6;->c:Z

    .line 4
    iput-object p2, p0, Ldk6;->d:Lzi6;

    .line 5
    iput-object p3, p0, Ldk6;->a:Lak6;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldk6;->b:Lyk6;

    invoke-virtual {v0, p1}, Lyk6;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ldk6;->b:Lyk6;

    invoke-virtual {v1, p2}, Lyk6;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    iget-boolean v0, p0, Ldk6;->c:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Ldk6;->d:Lzi6;

    invoke-virtual {v0, p1}, Lzi6;->c(Ljava/lang/Object;)Lcj6;

    move-result-object p1

    .line 6
    iget-object v0, p0, Ldk6;->d:Lzi6;

    invoke-virtual {v0, p2}, Lzi6;->c(Ljava/lang/Object;)Lcj6;

    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Lcj6;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldk6;->b:Lyk6;

    .line 2
    sget-object v1, Lsk6;->a:Ljava/lang/Class;

    .line 3
    invoke-virtual {v0, p1}, Lyk6;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    invoke-virtual {v0, p2}, Lyk6;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v1, v2}, Lyk6;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p1, v1}, Lyk6;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    iget-boolean v0, p0, Ldk6;->c:Z

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Ldk6;->d:Lzi6;

    invoke-static {v0, p1, p2}, Lsk6;->A(Lzi6;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldk6;->a:Lak6;

    invoke-interface {v0}, Lak6;->j()Lak6$a;

    move-result-object v0

    check-cast v0, Lgj6$a;

    .line 2
    invoke-virtual {v0}, Lgj6$a;->m()Lgj6;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldk6;->b:Lyk6;

    invoke-virtual {v0, p1}, Lyk6;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 2
    iget-boolean v1, p0, Ldk6;->c:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Ldk6;->d:Lzi6;

    invoke-virtual {v1, p1}, Lzi6;->c(Ljava/lang/Object;)Lcj6;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p1}, Lcj6;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public e(Ljava/lang/Object;Lhl6;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lhl6;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldk6;->d:Lzi6;

    invoke-virtual {v0, p1}, Lzi6;->c(Ljava/lang/Object;)Lcj6;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcj6;->k()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcj6$a;

    .line 6
    invoke-interface {v2}, Lcj6$a;->F()Lgl6;

    move-result-object v3

    sget-object v4, Lgl6;->n:Lgl6;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lcj6$a;->o()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcj6$a;->G()Z

    move-result v3

    if-nez v3, :cond_1

    .line 7
    instance-of v3, v1, Lmj6$b;

    if-eqz v3, :cond_0

    .line 8
    invoke-interface {v2}, Lcj6$a;->g()I

    move-result v2

    check-cast v1, Lmj6$b;

    .line 9
    iget-object v1, v1, Lmj6$b;->e:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmj6;

    .line 10
    invoke-virtual {v1}, Lnj6;->b()Lqi6;

    move-result-object v1

    .line 11
    move-object v3, p2

    check-cast v3, Lui6;

    invoke-virtual {v3, v2, v1}, Lui6;->e(ILjava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {v2}, Lcj6$a;->g()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, p2

    check-cast v3, Lui6;

    invoke-virtual {v3, v2, v1}, Lui6;->e(ILjava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_2
    iget-object v0, p0, Ldk6;->b:Lyk6;

    .line 15
    invoke-virtual {v0, p1}, Lyk6;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lyk6;->r(Ljava/lang/Object;Lhl6;)V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldk6;->b:Lyk6;

    invoke-virtual {v0, p1}, Lyk6;->j(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Ldk6;->d:Lzi6;

    invoke-virtual {v0, p1}, Lzi6;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public final g(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldk6;->d:Lzi6;

    invoke-virtual {v0, p1}, Lzi6;->c(Ljava/lang/Object;)Lcj6;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcj6;->i()Z

    move-result p1

    return p1
.end method

.method public h(Ljava/lang/Object;Lok6;Lyi6;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lok6;",
            "Lyi6;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v7, p0, Ldk6;->b:Lyk6;

    iget-object v8, p0, Ldk6;->d:Lzi6;

    .line 2
    invoke-virtual {v7, p1}, Lyk6;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 3
    invoke-virtual {v8, p1}, Lzi6;->d(Ljava/lang/Object;)Lcj6;

    move-result-object v10

    .line 4
    :goto_0
    :try_start_0
    invoke-interface {p2}, Lok6;->y()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    .line 5
    :cond_0
    invoke-virtual {v7, p1, v9}, Lyk6;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, v8

    move-object v4, v10

    move-object v5, v7

    move-object v6, v9

    .line 6
    :try_start_1
    invoke-virtual/range {v0 .. v6}, Ldk6;->k(Lok6;Lyi6;Lzi6;Lcj6;Lyk6;Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :goto_1
    return-void

    :catchall_0
    move-exception p2

    .line 7
    invoke-virtual {v7, p1, v9}, Lyk6;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    throw p2
.end method

.method public i(Ljava/lang/Object;[BIILni6;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lni6;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Lgj6;

    iget-object v1, v0, Lgj6;->unknownFields:Lzk6;

    .line 2
    sget-object v2, Lzk6;->f:Lzk6;

    if-ne v1, v2, :cond_0

    .line 3
    invoke-static {}, Lzk6;->b()Lzk6;

    move-result-object v1

    .line 4
    iput-object v1, v0, Lgj6;->unknownFields:Lzk6;

    .line 5
    :cond_0
    check-cast p1, Lgj6$c;

    .line 6
    invoke-virtual {p1}, Lgj6$c;->B()Lcj6;

    const/4 p1, 0x0

    move-object v0, p1

    :goto_0
    if-ge p3, p4, :cond_b

    .line 7
    invoke-static {p2, p3, p5}, Ln56;->i0([BILni6;)I

    move-result v4

    .line 8
    iget v2, p5, Lni6;->a:I

    const/16 p3, 0xb

    const/4 v3, 0x2

    if-eq v2, p3, :cond_3

    and-int/lit8 p3, v2, 0x7

    if-ne p3, v3, :cond_2

    .line 9
    iget-object p3, p0, Ldk6;->d:Lzi6;

    iget-object v0, p5, Lni6;->d:Lyi6;

    iget-object v3, p0, Ldk6;->a:Lak6;

    ushr-int/lit8 v5, v2, 0x3

    .line 10
    invoke-virtual {p3, v0, v3, v5}, Lzi6;->b(Lyi6;Lak6;I)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lgj6$e;

    if-nez v0, :cond_1

    move-object v3, p2

    move v5, p4

    move-object v6, v1

    move-object v7, p5

    .line 11
    invoke-static/range {v2 .. v7}, Ln56;->g0(I[BIILzk6;Lni6;)I

    move-result p3

    goto :goto_0

    .line 12
    :cond_1
    sget-object p2, Llk6;->c:Llk6;

    .line 13
    throw p1

    .line 14
    :cond_2
    invoke-static {v2, p2, v4, p4, p5}, Ln56;->d2(I[BIILni6;)I

    move-result p3

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    move-object v2, p1

    :goto_1
    if-ge v4, p4, :cond_9

    .line 15
    invoke-static {p2, v4, p5}, Ln56;->i0([BILni6;)I

    move-result v4

    .line 16
    iget v5, p5, Lni6;->a:I

    ushr-int/lit8 v6, v5, 0x3

    and-int/lit8 v7, v5, 0x7

    if-eq v6, v3, :cond_6

    const/4 v8, 0x3

    if-eq v6, v8, :cond_4

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    if-ne v7, v3, :cond_7

    .line 17
    invoke-static {p2, v4, p5}, Ln56;->P([BILni6;)I

    move-result v4

    .line 18
    iget-object v2, p5, Lni6;->c:Ljava/lang/Object;

    check-cast v2, Lqi6;

    goto :goto_1

    .line 19
    :cond_5
    sget-object p2, Llk6;->c:Llk6;

    .line 20
    throw p1

    :cond_6
    if-nez v7, :cond_7

    .line 21
    invoke-static {p2, v4, p5}, Ln56;->i0([BILni6;)I

    move-result v4

    .line 22
    iget p3, p5, Lni6;->a:I

    .line 23
    iget-object v0, p0, Ldk6;->d:Lzi6;

    iget-object v5, p5, Lni6;->d:Lyi6;

    iget-object v6, p0, Ldk6;->a:Lak6;

    .line 24
    invoke-virtual {v0, v5, v6, p3}, Lzi6;->b(Lyi6;Lak6;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgj6$e;

    goto :goto_1

    :cond_7
    :goto_2
    const/16 v6, 0xc

    if-ne v5, v6, :cond_8

    goto :goto_3

    .line 25
    :cond_8
    invoke-static {v5, p2, v4, p4, p5}, Ln56;->d2(I[BIILni6;)I

    move-result v4

    goto :goto_1

    :cond_9
    :goto_3
    if-eqz v2, :cond_a

    shl-int/lit8 p3, p3, 0x3

    or-int/2addr p3, v3

    .line 26
    invoke-virtual {v1, p3, v2}, Lzk6;->c(ILjava/lang/Object;)V

    :cond_a
    move p3, v4

    goto :goto_0

    :cond_b
    if-ne p3, p4, :cond_c

    return-void

    .line 27
    :cond_c
    invoke-static {}, Lkj6;->g()Lkj6;

    move-result-object p1

    throw p1
.end method

.method public j(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldk6;->b:Lyk6;

    .line 2
    invoke-virtual {v0, p1}, Lyk6;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lyk6;->i(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v0, v1

    .line 4
    iget-boolean v2, p0, Ldk6;->c:Z

    if-eqz v2, :cond_2

    .line 5
    iget-object v2, p0, Ldk6;->d:Lzi6;

    invoke-virtual {v2, p1}, Lzi6;->c(Ljava/lang/Object;)Lcj6;

    move-result-object p1

    const/4 v2, 0x0

    .line 6
    :goto_0
    iget-object v3, p1, Lcj6;->a:Luk6;

    invoke-virtual {v3}, Luk6;->d()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 7
    iget-object v3, p1, Lcj6;->a:Luk6;

    invoke-virtual {v3, v1}, Luk6;->c(I)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcj6;->g(Ljava/util/Map$Entry;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p1, Lcj6;->a:Luk6;

    invoke-virtual {v1}, Luk6;->e()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 9
    invoke-virtual {p1, v3}, Lcj6;->g(Ljava/util/Map$Entry;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :cond_1
    add-int/2addr v0, v2

    :cond_2
    return v0
.end method

.method public final k(Lok6;Lyi6;Lzi6;Lcj6;Lyk6;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lcj6$a<",
            "TET;>;>(",
            "Lok6;",
            "Lyi6;",
            "Lzi6<",
            "TET;>;",
            "Lcj6<",
            "TET;>;",
            "Lyk6<",
            "TUT;TUB;>;TUB;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lok6;->getTag()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xb

    if-eq v0, v2, :cond_2

    and-int/lit8 v2, v0, 0x7

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 2
    iget-object v2, p0, Ldk6;->a:Lak6;

    ushr-int/lit8 v0, v0, 0x3

    .line 3
    invoke-virtual {p3, p2, v2, v0}, Lzi6;->b(Lyi6;Lak6;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p3, p1, v0, p2, p4}, Lzi6;->h(Lok6;Ljava/lang/Object;Lyi6;Lcj6;)V

    return v1

    .line 5
    :cond_0
    invoke-virtual {p5, p6, p1}, Lyk6;->l(Ljava/lang/Object;Lok6;)Z

    move-result p1

    return p1

    .line 6
    :cond_1
    invoke-interface {p1}, Lok6;->G()Z

    move-result p1

    return p1

    :cond_2
    const/4 v0, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    .line 7
    :cond_3
    :goto_0
    invoke-interface {p1}, Lok6;->y()I

    move-result v4

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_4

    goto :goto_1

    .line 8
    :cond_4
    invoke-interface {p1}, Lok6;->getTag()I

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_5

    .line 9
    invoke-interface {p1}, Lok6;->n()I

    move-result v0

    .line 10
    iget-object v2, p0, Ldk6;->a:Lak6;

    .line 11
    invoke-virtual {p3, p2, v2, v0}, Lzi6;->b(Lyi6;Lak6;I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_5
    const/16 v5, 0x1a

    if-ne v4, v5, :cond_7

    if-eqz v2, :cond_6

    .line 12
    invoke-virtual {p3, p1, v2, p2, p4}, Lzi6;->h(Lok6;Ljava/lang/Object;Lyi6;Lcj6;)V

    goto :goto_0

    .line 13
    :cond_6
    invoke-interface {p1}, Lok6;->D()Lqi6;

    move-result-object v3

    goto :goto_0

    .line 14
    :cond_7
    invoke-interface {p1}, Lok6;->G()Z

    move-result v4

    if-nez v4, :cond_3

    .line 15
    :goto_1
    invoke-interface {p1}, Lok6;->getTag()I

    move-result p1

    const/16 v4, 0xc

    if-ne p1, v4, :cond_a

    if-eqz v3, :cond_9

    if-eqz v2, :cond_8

    .line 16
    invoke-virtual {p3, v3, v2, p2, p4}, Lzi6;->i(Lqi6;Ljava/lang/Object;Lyi6;Lcj6;)V

    goto :goto_2

    .line 17
    :cond_8
    invoke-virtual {p5, p6, v0, v3}, Lyk6;->d(Ljava/lang/Object;ILqi6;)V

    :cond_9
    :goto_2
    return v1

    .line 18
    :cond_a
    invoke-static {}, Lkj6;->a()Lkj6;

    move-result-object p1

    throw p1
.end method
