.class public final Lga4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lna4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lna4<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lda4;

.field public final b:Lab4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lab4<",
            "**>;"
        }
    .end annotation
.end field

.field public final c:Z

.field public final d:Lq84;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq84<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lab4;Lq84;Lda4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lab4<",
            "**>;",
            "Lq84<",
            "*>;",
            "Lda4;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lga4;->b:Lab4;

    .line 1
    invoke-virtual {p2, p3}, Lq84;->a(Lda4;)Z

    move-result p1

    iput-boolean p1, p0, Lga4;->c:Z

    iput-object p2, p0, Lga4;->d:Lq84;

    iput-object p3, p0, Lga4;->a:Lda4;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lga4;->a:Lda4;

    .line 1
    invoke-interface {v0}, Lda4;->b()Ls74;

    move-result-object v0

    check-cast v0, Lz84;

    .line 2
    invoke-virtual {v0}, Lz84;->l()Lc94;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lga4;->b:Lab4;

    .line 1
    invoke-virtual {v0, p1}, Lab4;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lga4;->c:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lga4;->d:Lq84;

    .line 2
    invoke-virtual {v0, p1}, Lq84;->b(Ljava/lang/Object;)Lu84;

    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lga4;->b:Lab4;

    .line 1
    invoke-virtual {v0, p1}, Lab4;->e(Ljava/lang/Object;)V

    iget-object v0, p0, Lga4;->d:Lq84;

    .line 2
    invoke-virtual {v0, p1}, Lq84;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lga4;->b:Lab4;

    .line 1
    invoke-virtual {v0, p1}, Lab4;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lga4;->b:Lab4;

    .line 2
    invoke-virtual {v1, p2}, Lab4;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lga4;->c:Z

    if-nez v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, p0, Lga4;->d:Lq84;

    .line 4
    invoke-virtual {v0, p1}, Lq84;->b(Ljava/lang/Object;)Lu84;

    iget-object p1, p0, Lga4;->d:Lq84;

    .line 5
    invoke-virtual {p1, p2}, Lq84;->b(Ljava/lang/Object;)Lu84;

    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public final e(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lga4;->b:Lab4;

    .line 1
    invoke-virtual {v0, p1}, Lab4;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lab4;->g(Ljava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lga4;->c:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lga4;->d:Lq84;

    .line 3
    invoke-virtual {v0, p1}, Lq84;->b(Ljava/lang/Object;)Lu84;

    const/4 p1, 0x0

    throw p1
.end method

.method public final f(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lga4;->d:Lq84;

    .line 1
    invoke-virtual {v0, p1}, Lq84;->b(Ljava/lang/Object;)Lu84;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lga4;->b:Lab4;

    .line 1
    sget-object v1, Lpa4;->a:Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, p1}, Lab4;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, p2}, Lab4;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1, v2}, Lab4;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-virtual {v0, p1, v1}, Lab4;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    iget-boolean p1, p0, Lga4;->c:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lga4;->d:Lq84;

    .line 7
    invoke-virtual {p1, p2}, Lq84;->b(Ljava/lang/Object;)Lu84;

    const/4 p1, 0x0

    .line 8
    throw p1
.end method

.method public final h(Ljava/lang/Object;[BIILw74;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lw74;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object p2, p1

    check-cast p2, Lc94;

    iget-object p3, p2, Lc94;->zzc:Lbb4;

    sget-object p4, Lbb4;->f:Lbb4;

    if-eq p3, p4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lbb4;->a()Lbb4;

    move-result-object p3

    iput-object p3, p2, Lc94;->zzc:Lbb4;

    :goto_0
    check-cast p1, La94;

    const/4 p1, 0x0

    throw p1
.end method

.method public final i(Ljava/lang/Object;Lm84;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lm84;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p2, p0, Lga4;->d:Lq84;

    .line 1
    invoke-virtual {p2, p1}, Lq84;->b(Ljava/lang/Object;)Lu84;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method
