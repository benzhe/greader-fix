.class public final Li83;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw83;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lw83<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Le83;

.field public final b:Ll93;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll93<",
            "**>;"
        }
    .end annotation
.end field

.field public final c:Z

.field public final d:Lg63;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg63<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ll93;Lg63;Le83;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll93<",
            "**>;",
            "Lg63<",
            "*>;",
            "Le83;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li83;->b:Ll93;

    .line 3
    invoke-virtual {p2, p3}, Lg63;->j(Le83;)Z

    move-result p1

    iput-boolean p1, p0, Li83;->c:Z

    .line 4
    iput-object p2, p0, Li83;->d:Lg63;

    .line 5
    iput-object p3, p0, Li83;->a:Le83;

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

    .line 1
    iget-object v0, p0, Li83;->b:Ll93;

    invoke-virtual {v0, p1}, Ll93;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Li83;->b:Ll93;

    invoke-virtual {v1, p2}, Ll93;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    iget-boolean v0, p0, Li83;->c:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Li83;->d:Lg63;

    invoke-virtual {v0, p1}, Lg63;->g(Ljava/lang/Object;)Lk63;

    move-result-object p1

    .line 6
    iget-object v0, p0, Li83;->d:Lg63;

    invoke-virtual {v0, p2}, Lg63;->g(Ljava/lang/Object;)Lk63;

    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Lk63;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li83;->a:Le83;

    invoke-interface {v0}, Le83;->d()La53;

    move-result-object v0

    invoke-virtual {v0}, La53;->i()Le83;

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

    .line 1
    iget-object v0, p0, Li83;->b:Ll93;

    invoke-virtual {v0, p1}, Ll93;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 2
    iget-boolean v1, p0, Li83;->c:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Li83;->d:Lg63;

    invoke-virtual {v1, p1}, Lg63;->g(Ljava/lang/Object;)Lk63;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p1}, Lk63;->hashCode()I

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

    .line 1
    iget-object v0, p0, Li83;->d:Lg63;

    invoke-virtual {v0, p1}, Lg63;->g(Ljava/lang/Object;)Lk63;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lk63;->a()Z

    move-result p1

    return p1
.end method

.method public final f(Ljava/lang/Object;Lga3;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lga3;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li83;->d:Lg63;

    invoke-virtual {v0, p1}, Lg63;->g(Ljava/lang/Object;)Lk63;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lk63;->b()Ljava/util/Iterator;

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

    check-cast v2, Lm63;

    .line 6
    invoke-interface {v2}, Lm63;->E()Lea3;

    move-result-object v3

    sget-object v4, Lea3;->n:Lea3;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lm63;->n()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lm63;->r()Z

    move-result v3

    if-nez v3, :cond_1

    .line 7
    instance-of v3, v1, Lh73;

    if-eqz v3, :cond_0

    .line 8
    invoke-interface {v2}, Lm63;->f()I

    move-result v2

    check-cast v1, Lh73;

    .line 9
    iget-object v1, v1, Lh73;->e:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf73;

    .line 10
    invoke-virtual {v1}, Lj73;->a()Lk53;

    move-result-object v1

    .line 11
    move-object v3, p2

    check-cast v3, Ld63;

    invoke-virtual {v3, v2, v1}, Ld63;->f(ILjava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {v2}, Lm63;->f()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, p2

    check-cast v3, Ld63;

    invoke-virtual {v3, v2, v1}, Ld63;->f(ILjava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_2
    iget-object v0, p0, Li83;->b:Ll93;

    .line 15
    invoke-virtual {v0, p1}, Ll93;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ll93;->p(Ljava/lang/Object;Lga3;)V

    return-void
.end method

.method public final g(Ljava/lang/Object;[BIILg53;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lg53;",
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

    check-cast v0, Ls63;

    iget-object v1, v0, Ls63;->zzitn:Lo93;

    .line 2
    sget-object v2, Lo93;->f:Lo93;

    if-ne v1, v2, :cond_0

    .line 3
    invoke-static {}, Lo93;->d()Lo93;

    move-result-object v1

    .line 4
    iput-object v1, v0, Ls63;->zzitn:Lo93;

    .line 5
    :cond_0
    check-cast p1, Ls63$d;

    .line 6
    invoke-virtual {p1}, Ls63$d;->x()Lk63;

    const/4 p1, 0x0

    move-object v0, p1

    :goto_0
    if-ge p3, p4, :cond_a

    .line 7
    invoke-static {p2, p3, p5}, Lc50;->e1([BILg53;)I

    move-result v4

    .line 8
    iget v2, p5, Lg53;->a:I

    const/16 p3, 0xb

    const/4 v3, 0x2

    if-eq v2, p3, :cond_3

    and-int/lit8 p3, v2, 0x7

    if-ne p3, v3, :cond_2

    .line 9
    iget-object p3, p0, Li83;->d:Lg63;

    iget-object v0, p5, Lg53;->d:Le63;

    iget-object v3, p0, Li83;->a:Le83;

    ushr-int/lit8 v5, v2, 0x3

    .line 10
    invoke-virtual {p3, v0, v3, v5}, Lg63;->c(Le63;Le83;I)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Ls63$f;

    if-nez v0, :cond_1

    move-object v3, p2

    move v5, p4

    move-object v6, v1

    move-object v7, p5

    .line 11
    invoke-static/range {v2 .. v7}, Lc50;->S0(I[BIILo93;Lg53;)I

    move-result p3

    goto :goto_0

    .line 12
    :cond_1
    sget-object p1, Lq83;->c:Lq83;

    .line 13
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1

    .line 14
    :cond_2
    invoke-static {v2, p2, v4, p4, p5}, Lc50;->Q0(I[BIILg53;)I

    move-result p3

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    move-object v2, p1

    :goto_1
    if-ge v4, p4, :cond_8

    .line 15
    invoke-static {p2, v4, p5}, Lc50;->e1([BILg53;)I

    move-result v4

    .line 16
    iget v5, p5, Lg53;->a:I

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
    invoke-static {p2, v4, p5}, Lc50;->M3([BILg53;)I

    move-result v4

    .line 18
    iget-object v2, p5, Lg53;->c:Ljava/lang/Object;

    check-cast v2, Lk53;

    goto :goto_1

    .line 19
    :cond_5
    sget-object p1, Lq83;->c:Lq83;

    .line 20
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1

    :cond_6
    if-nez v7, :cond_7

    .line 21
    invoke-static {p2, v4, p5}, Lc50;->e1([BILg53;)I

    move-result v4

    .line 22
    iget p3, p5, Lg53;->a:I

    .line 23
    iget-object v0, p0, Li83;->d:Lg63;

    iget-object v5, p5, Lg53;->d:Le63;

    iget-object v6, p0, Li83;->a:Le83;

    .line 24
    invoke-virtual {v0, v5, v6, p3}, Lg63;->c(Le63;Le83;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls63$f;

    goto :goto_1

    :cond_7
    :goto_2
    const/16 v6, 0xc

    if-eq v5, v6, :cond_8

    .line 25
    invoke-static {v5, p2, v4, p4, p5}, Lc50;->Q0(I[BIILg53;)I

    move-result v4

    goto :goto_1

    :cond_8
    if-eqz v2, :cond_9

    shl-int/lit8 p3, p3, 0x3

    or-int/2addr p3, v3

    .line 26
    invoke-virtual {v1, p3, v2}, Lo93;->e(ILjava/lang/Object;)V

    :cond_9
    move p3, v4

    goto/16 :goto_0

    :cond_a
    if-ne p3, p4, :cond_b

    return-void

    .line 27
    :cond_b
    invoke-static {}, Le73;->g()Le73;

    move-result-object p1

    throw p1
.end method

.method public final h(Ljava/lang/Object;Lz53;Le63;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lz53;",
            "Le63;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li83;->b:Ll93;

    iget-object v1, p0, Li83;->d:Lg63;

    .line 2
    invoke-virtual {v0, p1}, Ll93;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 3
    invoke-virtual {v1, p1}, Lg63;->h(Ljava/lang/Object;)Lk63;

    move-result-object v3

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lz53;->z()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_1

    .line 5
    invoke-virtual {v0, p1, v2}, Ll93;->r(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_1
    :try_start_1
    iget v4, p2, Lz53;->b:I

    const/16 v6, 0xb

    if-eq v4, v6, :cond_4

    and-int/lit8 v5, v4, 0x7

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 7
    iget-object v5, p0, Li83;->a:Le83;

    ushr-int/lit8 v4, v4, 0x3

    .line 8
    invoke-virtual {v1, p3, v5, v4}, Lg63;->c(Le63;Le83;I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 9
    invoke-virtual {v1, p2, v4, p3, v3}, Lg63;->e(Lz53;Ljava/lang/Object;Le63;Lk63;)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {v0, v2, p2}, Ll93;->f(Ljava/lang/Object;Lz53;)Z

    move-result v4

    goto :goto_2

    .line 11
    :cond_3
    invoke-virtual {p2}, Lz53;->A()Z

    move-result v4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v7, v6

    .line 12
    :cond_5
    :goto_0
    invoke-virtual {p2}, Lz53;->z()I

    move-result v8

    if-eq v8, v5, :cond_9

    .line 13
    iget v8, p2, Lz53;->b:I

    const/16 v9, 0x10

    if-ne v8, v9, :cond_6

    .line 14
    invoke-virtual {p2}, Lz53;->t()I

    move-result v4

    .line 15
    iget-object v6, p0, Li83;->a:Le83;

    .line 16
    invoke-virtual {v1, p3, v6, v4}, Lg63;->c(Le63;Le83;I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    :cond_6
    const/16 v9, 0x1a

    if-ne v8, v9, :cond_8

    if-eqz v6, :cond_7

    .line 17
    invoke-virtual {v1, p2, v6, p3, v3}, Lg63;->e(Lz53;Ljava/lang/Object;Le63;Lk63;)V

    goto :goto_0

    .line 18
    :cond_7
    invoke-virtual {p2}, Lz53;->s()Lk53;

    move-result-object v7

    goto :goto_0

    .line 19
    :cond_8
    invoke-virtual {p2}, Lz53;->A()Z

    move-result v8

    if-nez v8, :cond_5

    .line 20
    :cond_9
    iget v5, p2, Lz53;->b:I

    const/16 v8, 0xc

    if-ne v5, v8, :cond_c

    if-eqz v7, :cond_b

    if-eqz v6, :cond_a

    .line 21
    invoke-virtual {v1, v7, v6, p3, v3}, Lg63;->d(Lk53;Ljava/lang/Object;Le63;Lk63;)V

    goto :goto_1

    .line 22
    :cond_a
    invoke-virtual {v0, v2, v4, v7}, Ll93;->b(Ljava/lang/Object;ILk53;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_b
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_0

    .line 23
    invoke-virtual {v0, p1, v2}, Ll93;->r(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 24
    :cond_c
    :try_start_2
    invoke-static {}, Le73;->e()Le73;

    move-result-object p2

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p2

    .line 25
    invoke-virtual {v0, p1, v2}, Ll93;->r(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    throw p2
.end method

.method public final i(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li83;->b:Ll93;

    .line 2
    sget-object v1, Ly83;->a:Ljava/lang/Class;

    .line 3
    invoke-virtual {v0, p1}, Ll93;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    invoke-virtual {v0, p2}, Ll93;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v1, v2}, Ll93;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p1, v1}, Ll93;->q(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    iget-boolean v0, p0, Li83;->c:Z

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Li83;->d:Lg63;

    invoke-static {v0, p1, p2}, Ly83;->f(Lg63;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final j(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li83;->b:Ll93;

    invoke-virtual {v0, p1}, Ll93;->g(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Li83;->d:Lg63;

    invoke-virtual {v0, p1}, Lg63;->i(Ljava/lang/Object;)V

    return-void
.end method

.method public final k(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li83;->b:Ll93;

    .line 2
    invoke-virtual {v0, p1}, Ll93;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ll93;->m(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v0, v1

    .line 4
    iget-boolean v2, p0, Li83;->c:Z

    if-eqz v2, :cond_2

    .line 5
    iget-object v2, p0, Li83;->d:Lg63;

    invoke-virtual {v2, p1}, Lg63;->g(Ljava/lang/Object;)Lk63;

    move-result-object p1

    const/4 v2, 0x0

    .line 6
    :goto_0
    iget-object v3, p1, Lk63;->a:Lb93;

    invoke-virtual {v3}, Lb93;->d()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 7
    iget-object v3, p1, Lk63;->a:Lb93;

    invoke-virtual {v3, v1}, Lb93;->h(I)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-static {v3}, Lk63;->m(Ljava/util/Map$Entry;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p1, Lk63;->a:Lb93;

    invoke-virtual {p1}, Lb93;->e()Ljava/lang/Iterable;

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

    .line 9
    invoke-static {v1}, Lk63;->m(Ljava/util/Map$Entry;)I

    move-result v1

    add-int/2addr v2, v1

    goto :goto_1

    :cond_1
    add-int/2addr v0, v2

    :cond_2
    return v0
.end method
