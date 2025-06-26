.class public final Lzw3$d;
.super Lzw3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzw3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final d:Ljava/nio/ByteBuffer;

.field public final e:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lzw3;-><init>(Lax3;)V

    iput-object p1, p0, Lzw3$d;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lzw3$d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    return-void
.end method


# virtual methods
.method public final A(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lzw3$d;->V(I)V

    if-ltz p2, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Lzw3$d;->V(I)V

    goto :goto_0

    :cond_0
    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Lzw3$d;->u(J)V

    :goto_0
    return-void
.end method

.method public final B(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x1

    .line 1
    invoke-virtual {p0, p1}, Lzw3$d;->V(I)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lzw3$d;->E(J)V

    return-void
.end method

.method public final D(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lzw3$d;->V(I)V

    .line 2
    invoke-virtual {p0, p2}, Lzw3$d;->V(I)V

    return-void
.end method

.method public final E(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lzw3$d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lzw3$c;

    invoke-direct {p2, p1}, Lzw3$c;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final I(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    .line 1
    invoke-virtual {p0, p1}, Lzw3$d;->V(I)V

    .line 2
    invoke-virtual {p0, p2}, Lzw3$d;->W(I)V

    return-void
.end method

.method public final U(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lzw3$d;->V(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lzw3$d;->u(J)V

    return-void
.end method

.method public final V(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lzw3$d;->e:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    iget-object v0, p0, Lzw3$d;->e:Ljava/nio/ByteBuffer;

    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lzw3$c;

    invoke-direct {v0, p1}, Lzw3$c;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final W(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lzw3$d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lzw3$c;

    invoke-direct {v0, p1}, Lzw3$c;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final a([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lzw3$d;->c([BII)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lzw3$d;->d:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lzw3$d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final c([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lzw3$d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lzw3$c;

    invoke-direct {p2, p1}, Lzw3$c;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lzw3$c;

    invoke-direct {p2, p1}, Lzw3$c;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final c0(Lsw3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lsw3;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lzw3$d;->V(I)V

    invoke-virtual {p1, p0}, Lsw3;->j(Lrw3;)V

    return-void
.end method

.method public final d0(Lxy3;Lnz3;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Ljw3;

    invoke-virtual {v0}, Ljw3;->c()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-interface {p2, v0}, Lnz3;->h(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljw3;->a(I)V

    :cond_0
    invoke-virtual {p0, v1}, Lzw3$d;->V(I)V

    iget-object v0, p0, Lzw3;->a:Lbx3;

    invoke-interface {p2, p1, v0}, Lnz3;->f(Ljava/lang/Object;Lv04;)V

    return-void
.end method

.method public final e(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lzw3$d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lzw3$c;

    invoke-direct {v0, p1}, Lzw3$c;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final e0(Lxy3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lxy3;->o()I

    move-result v0

    invoke-virtual {p0, v0}, Lzw3$d;->V(I)V

    invoke-interface {p1, p0}, Lxy3;->q(Lzw3;)V

    return-void
.end method

.method public final f(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lzw3$d;->V(I)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lzw3$d;->u(J)V

    return-void
.end method

.method public final f0(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lzw3$d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Lzw3;->Z(I)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lzw3;->Z(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v1, p0, Lzw3$d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v2

    iget-object v2, p0, Lzw3$d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Lm04; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1
    :try_start_1
    iget-object v2, p0, Lzw3$d;->e:Ljava/nio/ByteBuffer;

    invoke-static {p1, v2}, Lj04;->c(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lm04; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2
    :try_start_2
    iget-object v2, p0, Lzw3$d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget-object v3, p0, Lzw3$d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sub-int v1, v2, v1

    invoke-virtual {p0, v1}, Lzw3$d;->V(I)V

    iget-object v1, p0, Lzw3$d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :catch_0
    move-exception v1

    .line 3
    new-instance v2, Lzw3$c;

    invoke-direct {v2, v1}, Lzw3$c;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 4
    :cond_0
    invoke-static {p1}, Lj04;->a(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p0, v1}, Lzw3$d;->V(I)V
    :try_end_2
    .catch Lm04; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 5
    :try_start_3
    iget-object v1, p0, Lzw3$d;->e:Ljava/nio/ByteBuffer;

    invoke-static {p1, v1}, Lj04;->c(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lm04; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    return-void

    :catch_1
    move-exception v1

    :try_start_4
    new-instance v2, Lzw3$c;

    invoke-direct {v2, v1}, Lzw3$c;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catch Lm04; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p1

    .line 6
    new-instance v0, Lzw3$c;

    invoke-direct {v0, p1}, Lzw3$c;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception v1

    iget-object v2, p0, Lzw3$d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, p1, v1}, Lzw3;->k(Ljava/lang/String;Lm04;)V

    return-void
.end method

.method public final g(ILsw3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lzw3$d;->V(I)V

    .line 2
    invoke-virtual {p0, p2}, Lzw3$d;->c0(Lsw3;)V

    return-void
.end method

.method public final h(ILxy3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lzw3$d;->V(I)V

    .line 2
    invoke-virtual {p0, p2}, Lzw3$d;->e0(Lxy3;)V

    return-void
.end method

.method public final i(ILxy3;Lnz3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lzw3$d;->V(I)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lzw3$d;->d0(Lxy3;Lnz3;)V

    return-void
.end method

.method public final j(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lzw3$d;->V(I)V

    .line 2
    invoke-virtual {p0, p2}, Lzw3$d;->f0(Ljava/lang/String;)V

    return-void
.end method

.method public final l()I
    .locals 1

    iget-object v0, p0, Lzw3$d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public final q(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lzw3$d;->V(I)V

    return-void
.end method

.method public final r(ILsw3;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lzw3$d;->q(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lzw3$d;->D(II)V

    invoke-virtual {p0, v1, p2}, Lzw3$d;->g(ILsw3;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lzw3$d;->q(II)V

    return-void
.end method

.method public final s(ILxy3;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lzw3$d;->q(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lzw3$d;->D(II)V

    invoke-virtual {p0, v1, p2}, Lzw3$d;->h(ILxy3;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lzw3$d;->q(II)V

    return-void
.end method

.method public final t(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lzw3$d;->V(I)V

    int-to-byte p1, p2

    .line 2
    invoke-virtual {p0, p1}, Lzw3$d;->e(B)V

    return-void
.end method

.method public final u(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    :try_start_0
    iget-object v0, p0, Lzw3$d;->e:Ljava/nio/ByteBuffer;

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    iget-object v0, p0, Lzw3$d;->e:Ljava/nio/ByteBuffer;

    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lzw3$c;

    invoke-direct {p2, p1}, Lzw3$c;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
