.class public final Lti6$e;
.super Lti6$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final h:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lti6$b;-><init>(I)V

    const-string p2, "out"

    .line 2
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lti6$e;->h:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public H(B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lti6$b;->f:I

    iget v1, p0, Lti6$b;->e:I

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lti6$e;->h0()V

    .line 3
    :cond_0
    iget-object v0, p0, Lti6$b;->d:[B

    iget v1, p0, Lti6$b;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lti6$b;->f:I

    aput-byte p1, v0, v1

    .line 4
    iget p1, p0, Lti6$b;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lti6$b;->g:I

    return-void
.end method

.method public I(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xb

    .line 1
    invoke-virtual {p0, v0}, Lti6$e;->i0(I)V

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lti6$b;->f0(I)V

    int-to-byte p1, p2

    .line 3
    iget-object p2, p0, Lti6$b;->d:[B

    iget v0, p0, Lti6$b;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lti6$b;->f:I

    aput-byte p1, p2, v0

    .line 4
    iget p1, p0, Lti6$b;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lti6$b;->g:I

    return-void
.end method

.method public J([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-virtual {p0, v0}, Lti6$e;->i0(I)V

    .line 2
    invoke-virtual {p0, p3}, Lti6$b;->f0(I)V

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lti6$e;->j0([BII)V

    return-void
.end method

.method public K(ILqi6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lti6$e;->a0(I)V

    .line 2
    invoke-virtual {p0, p2}, Lti6$e;->L(Lqi6;)V

    return-void
.end method

.method public L(Lqi6;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lqi6;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lti6$e;->a0(I)V

    .line 2
    invoke-virtual {p1, p0}, Lqi6;->K(Lpi6;)V

    return-void
.end method

.method public M(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xe

    .line 1
    invoke-virtual {p0, v0}, Lti6$e;->i0(I)V

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    .line 2
    invoke-virtual {p0, p1}, Lti6$b;->f0(I)V

    .line 3
    invoke-virtual {p0, p2}, Lti6$b;->d0(I)V

    return-void
.end method

.method public N(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Lti6$e;->i0(I)V

    .line 2
    invoke-virtual {p0, p1}, Lti6$b;->d0(I)V

    return-void
.end method

.method public O(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x12

    .line 1
    invoke-virtual {p0, v0}, Lti6$e;->i0(I)V

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lti6$b;->f0(I)V

    .line 3
    invoke-virtual {p0, p2, p3}, Lti6$b;->e0(J)V

    return-void
.end method

.method public P(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lti6$e;->i0(I)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lti6$b;->e0(J)V

    return-void
.end method

.method public Q(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    .line 1
    invoke-virtual {p0, v0}, Lti6$e;->i0(I)V

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lti6$b;->f0(I)V

    if-ltz p2, :cond_0

    .line 3
    invoke-virtual {p0, p2}, Lti6$b;->f0(I)V

    goto :goto_0

    :cond_0
    int-to-long p1, p2

    .line 4
    invoke-virtual {p0, p1, p2}, Lti6$b;->g0(J)V

    :goto_0
    return-void
.end method

.method public R(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    const/4 v0, 0x5

    .line 1
    invoke-virtual {p0, v0}, Lti6$e;->i0(I)V

    .line 2
    invoke-virtual {p0, p1}, Lti6$b;->f0(I)V

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    .line 3
    invoke-virtual {p0, v0, v1}, Lti6$e;->c0(J)V

    :goto_0
    return-void
.end method

.method public S(ILak6;Lqk6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lti6$e;->a0(I)V

    .line 2
    move-object p1, p2

    check-cast p1, Lii6;

    invoke-virtual {p1, p3}, Lii6;->m(Lqk6;)I

    move-result p1

    invoke-virtual {p0, p1}, Lti6$e;->a0(I)V

    .line 3
    iget-object p1, p0, Lti6;->a:Lui6;

    invoke-interface {p3, p2, p1}, Lqk6;->e(Ljava/lang/Object;Lhl6;)V

    return-void
.end method

.method public T(Lak6;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lak6;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lti6$e;->a0(I)V

    .line 2
    invoke-interface {p1, p0}, Lak6;->f(Lti6;)V

    return-void
.end method

.method public U(ILak6;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 1
    invoke-virtual {p0, v0, v1}, Lti6$e;->Y(II)V

    const/4 v1, 0x2

    .line 2
    invoke-virtual {p0, v1, p1}, Lti6$e;->Z(II)V

    const/16 p1, 0x1a

    .line 3
    invoke-virtual {p0, p1}, Lti6$e;->a0(I)V

    .line 4
    invoke-interface {p2}, Lak6;->h()I

    move-result p1

    invoke-virtual {p0, p1}, Lti6$e;->a0(I)V

    .line 5
    invoke-interface {p2, p0}, Lak6;->f(Lti6;)V

    const/4 p1, 0x4

    .line 6
    invoke-virtual {p0, v0, p1}, Lti6$e;->Y(II)V

    return-void
.end method

.method public V(ILqi6;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 1
    invoke-virtual {p0, v0, v1}, Lti6$e;->Y(II)V

    const/4 v2, 0x2

    .line 2
    invoke-virtual {p0, v2, p1}, Lti6$e;->Z(II)V

    .line 3
    invoke-virtual {p0, v1, p2}, Lti6$e;->K(ILqi6;)V

    const/4 p1, 0x4

    .line 4
    invoke-virtual {p0, v0, p1}, Lti6$e;->Y(II)V

    return-void
.end method

.method public W(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lti6$e;->a0(I)V

    .line 2
    invoke-virtual {p0, p2}, Lti6$e;->X(Ljava/lang/String;)V

    return-void
.end method

.method public X(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 2
    invoke-static {v0}, Lti6;->A(I)I

    move-result v1

    add-int v2, v1, v0

    .line 3
    iget v3, p0, Lti6$b;->e:I

    if-le v2, v3, :cond_0

    .line 4
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 5
    invoke-static {p1, v1, v2, v0}, Ldl6;->d(Ljava/lang/CharSequence;[BII)I

    move-result v0

    .line 6
    invoke-virtual {p0, v0}, Lti6$e;->a0(I)V

    .line 7
    invoke-virtual {p0, v1, v2, v0}, Lti6$e;->j0([BII)V

    return-void

    .line 8
    :cond_0
    iget v0, p0, Lti6$b;->f:I

    sub-int/2addr v3, v0

    if-le v2, v3, :cond_1

    .line 9
    invoke-virtual {p0}, Lti6$e;->h0()V

    .line 10
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lti6;->A(I)I

    move-result v0

    .line 11
    iget v2, p0, Lti6$b;->f:I
    :try_end_0
    .catch Ldl6$c; {:try_start_0 .. :try_end_0} :catch_2

    if-ne v0, v1, :cond_2

    add-int v1, v2, v0

    .line 12
    :try_start_1
    iput v1, p0, Lti6$b;->f:I

    .line 13
    iget-object v3, p0, Lti6$b;->d:[B

    iget v4, p0, Lti6$b;->e:I

    sub-int/2addr v4, v1

    invoke-static {p1, v3, v1, v4}, Ldl6;->d(Ljava/lang/CharSequence;[BII)I

    move-result v1

    .line 14
    iput v2, p0, Lti6$b;->f:I

    sub-int v3, v1, v2

    sub-int/2addr v3, v0

    .line 15
    invoke-virtual {p0, v3}, Lti6$b;->f0(I)V

    .line 16
    iput v1, p0, Lti6$b;->f:I

    goto :goto_0

    .line 17
    :cond_2
    invoke-static {p1}, Ldl6;->e(Ljava/lang/CharSequence;)I

    move-result v3

    .line 18
    invoke-virtual {p0, v3}, Lti6$b;->f0(I)V

    .line 19
    iget-object v0, p0, Lti6$b;->d:[B

    iget v1, p0, Lti6$b;->f:I

    invoke-static {p1, v0, v1, v3}, Ldl6;->d(Ljava/lang/CharSequence;[BII)I

    move-result v0

    iput v0, p0, Lti6$b;->f:I

    .line 20
    :goto_0
    iget v0, p0, Lti6$b;->g:I

    add-int/2addr v0, v3

    iput v0, p0, Lti6$b;->g:I
    :try_end_1
    .catch Ldl6$c; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 21
    :try_start_2
    new-instance v1, Lti6$d;

    invoke-direct {v1, v0}, Lti6$d;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 22
    iget v1, p0, Lti6$b;->g:I

    iget v3, p0, Lti6$b;->f:I

    sub-int/2addr v3, v2

    sub-int/2addr v1, v3

    iput v1, p0, Lti6$b;->g:I

    .line 23
    iput v2, p0, Lti6$b;->f:I

    .line 24
    throw v0
    :try_end_2
    .catch Ldl6$c; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v0

    .line 25
    invoke-virtual {p0, p1, v0}, Lti6;->F(Ljava/lang/String;Ldl6$c;)V

    :goto_1
    return-void
.end method

.method public Y(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    .line 1
    invoke-virtual {p0, p1}, Lti6$e;->a0(I)V

    return-void
.end method

.method public Z(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    .line 1
    invoke-virtual {p0, v0}, Lti6$e;->i0(I)V

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lti6$b;->f0(I)V

    .line 3
    invoke-virtual {p0, p2}, Lti6$b;->f0(I)V

    return-void
.end method

.method public a([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lti6$e;->j0([BII)V

    return-void
.end method

.method public a0(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-virtual {p0, v0}, Lti6$e;->i0(I)V

    .line 2
    invoke-virtual {p0, p1}, Lti6$b;->f0(I)V

    return-void
.end method

.method public b0(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    .line 1
    invoke-virtual {p0, v0}, Lti6$e;->i0(I)V

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lti6$b;->f0(I)V

    .line 3
    invoke-virtual {p0, p2, p3}, Lti6$b;->g0(J)V

    return-void
.end method

.method public c0(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 1
    invoke-virtual {p0, v0}, Lti6$e;->i0(I)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lti6$b;->g0(J)V

    return-void
.end method

.method public final h0()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lti6$e;->h:Ljava/io/OutputStream;

    iget-object v1, p0, Lti6$b;->d:[B

    iget v2, p0, Lti6$b;->f:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 2
    iput v3, p0, Lti6$b;->f:I

    return-void
.end method

.method public final i0(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lti6$b;->e:I

    iget v1, p0, Lti6$b;->f:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lti6$e;->h0()V

    :cond_0
    return-void
.end method

.method public j0([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lti6$b;->e:I

    iget v1, p0, Lti6$b;->f:I

    sub-int v2, v0, v1

    if-lt v2, p3, :cond_0

    .line 2
    iget-object v0, p0, Lti6$b;->d:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iget p1, p0, Lti6$b;->f:I

    add-int/2addr p1, p3

    iput p1, p0, Lti6$b;->f:I

    .line 4
    iget p1, p0, Lti6$b;->g:I

    add-int/2addr p1, p3

    iput p1, p0, Lti6$b;->g:I

    goto :goto_1

    :cond_0
    sub-int/2addr v0, v1

    .line 5
    iget-object v2, p0, Lti6$b;->d:[B

    invoke-static {p1, p2, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 6
    iget v1, p0, Lti6$b;->e:I

    iput v1, p0, Lti6$b;->f:I

    .line 7
    iget v1, p0, Lti6$b;->g:I

    add-int/2addr v1, v0

    iput v1, p0, Lti6$b;->g:I

    .line 8
    invoke-virtual {p0}, Lti6$e;->h0()V

    .line 9
    iget v0, p0, Lti6$b;->e:I

    if-gt p3, v0, :cond_1

    .line 10
    iget-object v0, p0, Lti6$b;->d:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iput p3, p0, Lti6$b;->f:I

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lti6$e;->h:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 13
    :goto_0
    iget p1, p0, Lti6$b;->g:I

    add-int/2addr p1, p3

    iput p1, p0, Lti6$b;->g:I

    :goto_1
    return-void
.end method
