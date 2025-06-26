.class public final Lot7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzs7;


# instance fields
.field public final e:Lxs7;

.field public f:Z

.field public final g:Ltt7;


# direct methods
.method public constructor <init>(Ltt7;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lot7;->g:Ltt7;

    .line 2
    new-instance p1, Lxs7;

    invoke-direct {p1}, Lxs7;-><init>()V

    iput-object p1, p0, Lot7;->e:Lxs7;

    return-void
.end method


# virtual methods
.method public E0(J)Lzs7;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lot7;->f:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lot7;->e:Lxs7;

    .line 3
    invoke-virtual {v0, p1, p2}, Lxs7;->S(J)Lxs7;

    .line 4
    invoke-virtual {p0}, Lot7;->O()Lzs7;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public K(I)Lzs7;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lot7;->f:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lot7;->e:Lxs7;

    .line 3
    invoke-virtual {v0, p1}, Lxs7;->Q(I)Lxs7;

    .line 4
    invoke-virtual {p0}, Lot7;->O()Lzs7;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public O()Lzs7;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lot7;->f:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lot7;->e:Lxs7;

    .line 3
    invoke-virtual {v0}, Lxs7;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 4
    iget-object v2, p0, Lot7;->g:Ltt7;

    .line 5
    iget-object v3, p0, Lot7;->e:Lxs7;

    .line 6
    invoke-interface {v2, v3, v0, v1}, Ltt7;->write(Lxs7;J)V

    :cond_0
    return-object p0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public T(Ljava/lang/String;)Lzs7;
    .locals 1

    const-string v0, "string"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lot7;->f:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lot7;->e:Lxs7;

    .line 3
    invoke-virtual {v0, p1}, Lxs7;->k0(Ljava/lang/String;)Lxs7;

    .line 4
    invoke-virtual {p0}, Lot7;->O()Lzs7;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b0(Lvt7;)J
    .locals 7

    const-string v0, "source"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lot7;->e:Lxs7;

    const/16 v3, 0x2000

    int-to-long v3, v3

    .line 2
    move-object v5, p1

    check-cast v5, Lit7;

    invoke-virtual {v5, v2, v3, v4}, Lit7;->read(Lxs7;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    return-wide v0

    :cond_0
    add-long/2addr v0, v2

    .line 3
    invoke-virtual {p0}, Lot7;->O()Lzs7;

    goto :goto_0
.end method

.method public c0(J)Lzs7;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lot7;->f:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lot7;->e:Lxs7;

    .line 3
    invoke-virtual {v0, p1, p2}, Lxs7;->Z(J)Lxs7;

    .line 4
    invoke-virtual {p0}, Lot7;->O()Lzs7;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lot7;->f:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lot7;->e:Lxs7;

    .line 3
    iget-wide v2, v1, Lxs7;->f:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 4
    iget-object v4, p0, Lot7;->g:Ltt7;

    invoke-interface {v4, v1, v2, v3}, Ltt7;->write(Lxs7;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lot7;->g:Ltt7;

    invoke-interface {v1}, Ltt7;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lot7;->f:Z

    if-nez v0, :cond_3

    :goto_2
    return-void

    .line 7
    :cond_3
    throw v0
.end method

.method public flush()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lot7;->f:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lot7;->e:Lxs7;

    .line 3
    iget-wide v1, v0, Lxs7;->f:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 4
    iget-object v3, p0, Lot7;->g:Ltt7;

    invoke-interface {v3, v0, v1, v2}, Ltt7;->write(Lxs7;J)V

    .line 5
    :cond_0
    iget-object v0, p0, Lot7;->g:Ltt7;

    invoke-interface {v0}, Ltt7;->flush()V

    return-void

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()Lxs7;
    .locals 1

    .line 1
    iget-object v0, p0, Lot7;->e:Lxs7;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lot7;->f:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public j([BII)Lzs7;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lot7;->f:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lot7;->e:Lxs7;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lxs7;->L([BII)Lxs7;

    .line 4
    invoke-virtual {p0}, Lot7;->O()Lzs7;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public o0([B)Lzs7;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lot7;->f:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lot7;->e:Lxs7;

    .line 3
    invoke-virtual {v0, p1}, Lxs7;->I([B)Lxs7;

    .line 4
    invoke-virtual {p0}, Lot7;->O()Lzs7;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q0(Lbt7;)Lzs7;
    .locals 1

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lot7;->f:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lot7;->e:Lxs7;

    .line 3
    invoke-virtual {v0, p1}, Lxs7;->F(Lbt7;)Lxs7;

    .line 4
    invoke-virtual {p0}, Lot7;->O()Lzs7;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public timeout()Lwt7;
    .locals 1

    .line 1
    iget-object v0, p0, Lot7;->g:Ltt7;

    invoke-interface {v0}, Ltt7;->timeout()Lwt7;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "buffer("

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lot7;->g:Ltt7;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lzs7;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lot7;->f:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lot7;->e:Lxs7;

    .line 3
    iget-wide v1, v0, Lxs7;->f:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 4
    iget-object v3, p0, Lot7;->g:Ltt7;

    invoke-interface {v3, v0, v1, v2}, Ltt7;->write(Lxs7;J)V

    :cond_0
    return-object p0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public v(I)Lzs7;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lot7;->f:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lot7;->e:Lxs7;

    .line 3
    invoke-virtual {v0, p1}, Lxs7;->h0(I)Lxs7;

    .line 4
    invoke-virtual {p0}, Lot7;->O()Lzs7;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lot7;->f:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lot7;->e:Lxs7;

    .line 3
    invoke-virtual {v0, p1}, Lxs7;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 4
    invoke-virtual {p0}, Lot7;->O()Lzs7;

    return p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lxs7;J)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-boolean v0, p0, Lot7;->f:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lot7;->e:Lxs7;

    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lxs7;->write(Lxs7;J)V

    .line 9
    invoke-virtual {p0}, Lot7;->O()Lzs7;

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public z(I)Lzs7;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lot7;->f:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lot7;->e:Lxs7;

    .line 3
    invoke-virtual {v0, p1}, Lxs7;->a0(I)Lxs7;

    .line 4
    invoke-virtual {p0}, Lot7;->O()Lzs7;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
