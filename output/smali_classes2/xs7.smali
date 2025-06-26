.class public final Lxs7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lat7;
.implements Lzs7;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxs7$a;
    }
.end annotation


# instance fields
.field public e:Lqt7;

.field public f:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final D(I)Lbt7;
    .locals 8

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lbt7;->h:Lbt7;

    goto :goto_2

    .line 2
    :cond_0
    iget-wide v0, p0, Lxs7;->f:J

    const-wide/16 v2, 0x0

    int-to-long v4, p1

    .line 3
    invoke-static/range {v0 .. v5}, Ln56;->u(JJJ)V

    .line 4
    iget-object v0, p0, Lxs7;->e:Lqt7;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    .line 5
    invoke-static {v0}, Lim7;->c(Ljava/lang/Object;)V

    iget v4, v0, Lqt7;->c:I

    iget v5, v0, Lqt7;->b:I

    if-eq v4, v5, :cond_1

    sub-int/2addr v4, v5

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    .line 6
    iget-object v0, v0, Lqt7;->f:Lqt7;

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "s.limit == s.pos"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 8
    :cond_2
    new-array v0, v3, [[B

    mul-int/lit8 v2, v3, 0x2

    .line 9
    new-array v2, v2, [I

    .line 10
    iget-object v4, p0, Lxs7;->e:Lqt7;

    move-object v5, v4

    const/4 v4, 0x0

    :goto_1
    if-ge v1, p1, :cond_3

    .line 11
    invoke-static {v5}, Lim7;->c(Ljava/lang/Object;)V

    iget-object v6, v5, Lqt7;->a:[B

    aput-object v6, v0, v4

    .line 12
    iget v6, v5, Lqt7;->c:I

    iget v7, v5, Lqt7;->b:I

    sub-int/2addr v6, v7

    add-int/2addr v1, v6

    .line 13
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v6

    aput v6, v2, v4

    add-int v6, v4, v3

    .line 14
    iget v7, v5, Lqt7;->b:I

    aput v7, v2, v6

    const/4 v6, 0x1

    .line 15
    iput-boolean v6, v5, Lqt7;->d:Z

    add-int/2addr v4, v6

    .line 16
    iget-object v5, v5, Lqt7;->f:Lqt7;

    goto :goto_1

    .line 17
    :cond_3
    new-instance p1, Lst7;

    invoke-direct {p1, v0, v2}, Lst7;-><init>([[B[I)V

    :goto_2
    return-object p1
.end method

.method public D0(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lxs7;->f:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public final E(I)Lqt7;
    .locals 3

    const/16 v0, 0x2000

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 1
    iget-object v1, p0, Lxs7;->e:Lqt7;

    if-nez v1, :cond_1

    .line 2
    invoke-static {}, Lrt7;->b()Lqt7;

    move-result-object p1

    .line 3
    iput-object p1, p0, Lxs7;->e:Lqt7;

    .line 4
    iput-object p1, p1, Lqt7;->g:Lqt7;

    .line 5
    iput-object p1, p1, Lqt7;->f:Lqt7;

    goto :goto_2

    .line 6
    :cond_1
    invoke-static {v1}, Lim7;->c(Ljava/lang/Object;)V

    iget-object v1, v1, Lqt7;->g:Lqt7;

    .line 7
    invoke-static {v1}, Lim7;->c(Ljava/lang/Object;)V

    iget v2, v1, Lqt7;->c:I

    add-int/2addr v2, p1

    if-gt v2, v0, :cond_3

    iget-boolean p1, v1, Lqt7;->e:Z

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, v1

    goto :goto_2

    .line 8
    :cond_3
    :goto_1
    invoke-static {}, Lrt7;->b()Lqt7;

    move-result-object p1

    invoke-virtual {v1, p1}, Lqt7;->b(Lqt7;)Lqt7;

    :goto_2
    return-object p1

    .line 9
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unexpected capacity"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic E0(J)Lzs7;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lxs7;->S(J)Lxs7;

    move-result-object p1

    return-object p1
.end method

.method public F(Lbt7;)Lxs7;
    .locals 2

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lbt7;->t()I

    move-result v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, p0, v1, v0}, Lbt7;->P(Lxs7;II)V

    return-object p0
.end method

.method public G()[B
    .locals 2

    .line 1
    iget-wide v0, p0, Lxs7;->f:J

    .line 2
    invoke-virtual {p0, v0, v1}, Lxs7;->l0(J)[B

    move-result-object v0

    return-object v0
.end method

.method public G0()J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lxs7;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_9

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-wide v4, v2

    .line 2
    :cond_0
    iget-object v6, p0, Lxs7;->e:Lqt7;

    invoke-static {v6}, Lim7;->c(Ljava/lang/Object;)V

    .line 3
    iget-object v7, v6, Lqt7;->a:[B

    .line 4
    iget v8, v6, Lqt7;->b:I

    .line 5
    iget v9, v6, Lqt7;->c:I

    :goto_0
    if-ge v8, v9, :cond_6

    .line 6
    aget-byte v10, v7, v8

    const/16 v11, 0x30

    int-to-byte v11, v11

    if-lt v10, v11, :cond_1

    const/16 v12, 0x39

    int-to-byte v12, v12

    if-gt v10, v12, :cond_1

    sub-int v11, v10, v11

    goto :goto_2

    :cond_1
    const/16 v11, 0x61

    int-to-byte v11, v11

    if-lt v10, v11, :cond_2

    const/16 v12, 0x66

    int-to-byte v12, v12

    if-gt v10, v12, :cond_2

    goto :goto_1

    :cond_2
    const/16 v11, 0x41

    int-to-byte v11, v11

    if-lt v10, v11, :cond_4

    const/16 v12, 0x46

    int-to-byte v12, v12

    if-gt v10, v12, :cond_4

    :goto_1
    sub-int v11, v10, v11

    add-int/lit8 v11, v11, 0xa

    :goto_2
    const-wide/high16 v12, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v12, v4

    cmp-long v14, v12, v2

    if-nez v14, :cond_3

    const/4 v10, 0x4

    shl-long/2addr v4, v10

    int-to-long v10, v11

    or-long/2addr v4, v10

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_3
    new-instance v0, Lxs7;

    invoke-direct {v0}, Lxs7;-><init>()V

    invoke-virtual {v0, v4, v5}, Lxs7;->Z(J)Lxs7;

    invoke-virtual {v0, v10}, Lxs7;->Q(I)Lxs7;

    .line 8
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Number too large: "

    invoke-static {v2}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lxs7;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    if-eqz v0, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    .line 9
    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "Expected leading [0-9a-fA-F] character but was 0x"

    .line 10
    invoke-static {v1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v10}, Ln56;->t2(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_3
    if-ne v8, v9, :cond_7

    .line 12
    invoke-virtual {v6}, Lqt7;->a()Lqt7;

    move-result-object v7

    iput-object v7, p0, Lxs7;->e:Lqt7;

    .line 13
    invoke-static {v6}, Lrt7;->a(Lqt7;)V

    goto :goto_4

    .line 14
    :cond_7
    iput v8, v6, Lqt7;->b:I

    :goto_4
    if-nez v1, :cond_8

    .line 15
    iget-object v6, p0, Lxs7;->e:Lqt7;

    if-nez v6, :cond_0

    .line 16
    :cond_8
    iget-wide v1, p0, Lxs7;->f:J

    int-to-long v6, v0

    sub-long/2addr v1, v6

    .line 17
    iput-wide v1, p0, Lxs7;->f:J

    return-wide v4

    .line 18
    :cond_9
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public I([B)Lxs7;
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lxs7;->L([BII)Lxs7;

    return-object p0
.end method

.method public J()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lxs7;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public J0(Llt7;)I
    .locals 3

    const-string v0, "options"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lxt7;->c(Lxs7;Llt7;Z)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p1, Llt7;->e:[Lbt7;

    .line 3
    aget-object p1, p1, v0

    .line 4
    invoke-virtual {p1}, Lbt7;->t()I

    move-result p1

    int-to-long v1, p1

    .line 5
    invoke-virtual {p0, v1, v2}, Lxs7;->skip(J)V

    :goto_0
    return v0
.end method

.method public bridge synthetic K(I)Lzs7;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lxs7;->Q(I)Lxs7;

    return-object p0
.end method

.method public L([BII)Lxs7;
    .locals 9

    const-string v0, "source"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v7, p3

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Ln56;->u(JJJ)V

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lxs7;->E(I)Lqt7;

    move-result-object v0

    sub-int v1, p3, p2

    .line 3
    iget v2, v0, Lqt7;->c:I

    rsub-int v2, v2, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4
    iget-object v2, v0, Lqt7;->a:[B

    .line 5
    iget v3, v0, Lqt7;->c:I

    add-int v4, p2, v1

    .line 6
    invoke-static {p1, v2, v3, p2, v4}, Lek7;->b([B[BIII)[B

    .line 7
    iget p2, v0, Lqt7;->c:I

    add-int/2addr p2, v1

    iput p2, v0, Lqt7;->c:I

    move p2, v4

    goto :goto_0

    .line 8
    :cond_0
    iget-wide p1, p0, Lxs7;->f:J

    add-long/2addr p1, v7

    .line 9
    iput-wide p1, p0, Lxs7;->f:J

    return-object p0
.end method

.method public N(Lxs7;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v0, p0, Lxs7;->f:J

    cmp-long v2, v0, p2

    if-ltz v2, :cond_0

    .line 2
    invoke-virtual {p1, p0, p2, p3}, Lxs7;->write(Lxs7;J)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1, p0, v0, v1}, Lxs7;->write(Lxs7;J)V

    .line 4
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public O()Lzs7;
    .locals 0

    return-object p0
.end method

.method public P()J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-wide v1, v0, Lxs7;->f:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_b

    const-wide/16 v1, -0x7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2
    :cond_0
    iget-object v8, v0, Lxs7;->e:Lqt7;

    invoke-static {v8}, Lim7;->c(Ljava/lang/Object;)V

    .line 3
    iget-object v9, v8, Lqt7;->a:[B

    .line 4
    iget v10, v8, Lqt7;->b:I

    .line 5
    iget v11, v8, Lqt7;->c:I

    :goto_0
    if-ge v10, v11, :cond_7

    .line 6
    aget-byte v12, v9, v10

    const/16 v13, 0x30

    int-to-byte v13, v13

    if-lt v12, v13, :cond_4

    const/16 v14, 0x39

    int-to-byte v14, v14

    if-gt v12, v14, :cond_4

    sub-int/2addr v13, v12

    const-wide v14, -0xcccccccccccccccL

    cmp-long v16, v3, v14

    if-ltz v16, :cond_2

    if-nez v16, :cond_1

    int-to-long v14, v13

    cmp-long v16, v14, v1

    if-gez v16, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v14, 0xa

    mul-long v3, v3, v14

    int-to-long v12, v13

    add-long/2addr v3, v12

    goto :goto_2

    .line 7
    :cond_2
    :goto_1
    new-instance v1, Lxs7;

    invoke-direct {v1}, Lxs7;-><init>()V

    invoke-virtual {v1, v3, v4}, Lxs7;->S(J)Lxs7;

    invoke-virtual {v1, v12}, Lxs7;->Q(I)Lxs7;

    if-nez v6, :cond_3

    .line 8
    invoke-virtual {v1}, Lxs7;->readByte()B

    .line 9
    :cond_3
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "Number too large: "

    invoke-static {v3}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lxs7;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const/16 v13, 0x2d

    int-to-byte v13, v13

    if-ne v12, v13, :cond_5

    if-nez v5, :cond_5

    const-wide/16 v12, 0x1

    sub-long/2addr v1, v12

    const/4 v6, 0x1

    :goto_2
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    if-eqz v5, :cond_6

    const/4 v7, 0x1

    goto :goto_3

    .line 10
    :cond_6
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Expected leading [0-9] or \'-\' character but was 0x"

    .line 11
    invoke-static {v2}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v12}, Ln56;->t2(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_3
    if-ne v10, v11, :cond_8

    .line 13
    invoke-virtual {v8}, Lqt7;->a()Lqt7;

    move-result-object v9

    iput-object v9, v0, Lxs7;->e:Lqt7;

    .line 14
    invoke-static {v8}, Lrt7;->a(Lqt7;)V

    goto :goto_4

    .line 15
    :cond_8
    iput v10, v8, Lqt7;->b:I

    :goto_4
    if-nez v7, :cond_9

    .line 16
    iget-object v8, v0, Lxs7;->e:Lqt7;

    if-nez v8, :cond_0

    .line 17
    :cond_9
    iget-wide v1, v0, Lxs7;->f:J

    int-to-long v7, v5

    sub-long/2addr v1, v7

    .line 18
    iput-wide v1, v0, Lxs7;->f:J

    if-eqz v6, :cond_a

    goto :goto_5

    :cond_a
    neg-long v3, v3

    :goto_5
    return-wide v3

    .line 19
    :cond_b
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public Q(I)Lxs7;
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lxs7;->E(I)Lqt7;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lqt7;->a:[B

    iget v2, v0, Lqt7;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lqt7;->c:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 3
    iget-wide v0, p0, Lxs7;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 4
    iput-wide v0, p0, Lxs7;->f:J

    return-object p0
.end method

.method public R(J)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    const-wide/16 v0, 0x1

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, p1, v2

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    add-long v2, p1, v0

    :goto_1
    const/16 v4, 0xa

    int-to-byte v10, v4

    const-wide/16 v6, 0x0

    move-object v4, p0

    move v5, v10

    move-wide v8, v2

    .line 1
    invoke-virtual/range {v4 .. v9}, Lxs7;->g(BJJ)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_2

    .line 2
    invoke-static {p0, v4, v5}, Lxt7;->b(Lxs7;J)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 3
    :cond_2
    iget-wide v4, p0, Lxs7;->f:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_3

    sub-long v0, v2, v0

    .line 4
    invoke-virtual {p0, v0, v1}, Lxs7;->f(J)B

    move-result v0

    const/16 v1, 0xd

    int-to-byte v1, v1

    if-ne v0, v1, :cond_3

    .line 5
    invoke-virtual {p0, v2, v3}, Lxs7;->f(J)B

    move-result v0

    if-ne v0, v10, :cond_3

    .line 6
    invoke-static {p0, v2, v3}, Lxt7;->b(Lxs7;J)Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1

    .line 7
    :cond_3
    new-instance v6, Lxs7;

    invoke-direct {v6}, Lxs7;-><init>()V

    const-wide/16 v2, 0x0

    const/16 v0, 0x20

    .line 8
    iget-wide v4, p0, Lxs7;->f:J

    int-to-long v0, v0

    .line 9
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, v6

    .line 10
    invoke-virtual/range {v0 .. v5}, Lxs7;->e(Lxs7;JJ)Lxs7;

    .line 11
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "\\n not found: limit="

    invoke-static {v1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 12
    iget-wide v2, p0, Lxs7;->f:J

    .line 13
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " content="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v6}, Lxs7;->e0()Lbt7;

    move-result-object p1

    invoke-virtual {p1}, Lbt7;->w()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2026

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string v0, "limit < 0: "

    .line 16
    invoke-static {v0, p1, p2}, Ljo;->j(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public S(J)Lxs7;
    .locals 12

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/16 p1, 0x30

    .line 1
    invoke-virtual {p0, p1}, Lxs7;->Q(I)Lxs7;

    goto/16 :goto_2

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_2

    neg-long p1, p1

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    const-string p1, "-9223372036854775808"

    .line 2
    invoke-virtual {p0, p1}, Lxs7;->k0(Ljava/lang/String;)Lxs7;

    goto/16 :goto_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    const-wide/32 v5, 0x5f5e100

    const/16 v2, 0xa

    cmp-long v7, p1, v5

    if-gez v7, :cond_a

    const-wide/16 v5, 0x2710

    cmp-long v7, p1, v5

    if-gez v7, :cond_6

    const-wide/16 v5, 0x64

    cmp-long v7, p1, v5

    if-gez v7, :cond_4

    const-wide/16 v5, 0xa

    cmp-long v7, p1, v5

    if-gez v7, :cond_3

    goto/16 :goto_0

    :cond_3
    const/4 v4, 0x2

    goto/16 :goto_0

    :cond_4
    const-wide/16 v4, 0x3e8

    cmp-long v6, p1, v4

    if-gez v6, :cond_5

    const/4 v4, 0x3

    goto/16 :goto_0

    :cond_5
    const/4 v4, 0x4

    goto/16 :goto_0

    :cond_6
    const-wide/32 v4, 0xf4240

    cmp-long v6, p1, v4

    if-gez v6, :cond_8

    const-wide/32 v4, 0x186a0

    cmp-long v6, p1, v4

    if-gez v6, :cond_7

    const/4 v4, 0x5

    goto/16 :goto_0

    :cond_7
    const/4 v4, 0x6

    goto/16 :goto_0

    :cond_8
    const-wide/32 v4, 0x989680

    cmp-long v6, p1, v4

    if-gez v6, :cond_9

    const/4 v4, 0x7

    goto/16 :goto_0

    :cond_9
    const/16 v4, 0x8

    goto/16 :goto_0

    :cond_a
    const-wide v4, 0xe8d4a51000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_e

    const-wide v4, 0x2540be400L

    cmp-long v6, p1, v4

    if-gez v6, :cond_c

    const-wide/32 v4, 0x3b9aca00

    cmp-long v6, p1, v4

    if-gez v6, :cond_b

    const/16 v4, 0x9

    goto :goto_0

    :cond_b
    const/16 v4, 0xa

    goto :goto_0

    :cond_c
    const-wide v4, 0x174876e800L

    cmp-long v6, p1, v4

    if-gez v6, :cond_d

    const/16 v4, 0xb

    goto :goto_0

    :cond_d
    const/16 v4, 0xc

    goto :goto_0

    :cond_e
    const-wide v4, 0x38d7ea4c68000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_11

    const-wide v4, 0x9184e72a000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_f

    const/16 v4, 0xd

    goto :goto_0

    :cond_f
    const-wide v4, 0x5af3107a4000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_10

    const/16 v4, 0xe

    goto :goto_0

    :cond_10
    const/16 v4, 0xf

    goto :goto_0

    :cond_11
    const-wide v4, 0x16345785d8a0000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_13

    const-wide v4, 0x2386f26fc10000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_12

    const/16 v4, 0x10

    goto :goto_0

    :cond_12
    const/16 v4, 0x11

    goto :goto_0

    :cond_13
    const-wide v4, 0xde0b6b3a7640000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_14

    const/16 v4, 0x12

    goto :goto_0

    :cond_14
    const/16 v4, 0x13

    :goto_0
    if-eqz v3, :cond_15

    add-int/lit8 v4, v4, 0x1

    .line 3
    :cond_15
    invoke-virtual {p0, v4}, Lxs7;->E(I)Lqt7;

    move-result-object v5

    .line 4
    iget-object v6, v5, Lqt7;->a:[B

    .line 5
    iget v7, v5, Lqt7;->c:I

    add-int/2addr v7, v4

    :goto_1
    cmp-long v8, p1, v0

    if-eqz v8, :cond_16

    int-to-long v8, v2

    .line 6
    rem-long v10, p1, v8

    long-to-int v11, v10

    add-int/lit8 v7, v7, -0x1

    .line 7
    sget-object v10, Lxt7;->a:[B

    .line 8
    aget-byte v10, v10, v11

    aput-byte v10, v6, v7

    .line 9
    div-long/2addr p1, v8

    goto :goto_1

    :cond_16
    if-eqz v3, :cond_17

    add-int/lit8 v7, v7, -0x1

    const/16 p1, 0x2d

    int-to-byte p1, p1

    .line 10
    aput-byte p1, v6, v7

    .line 11
    :cond_17
    iget p1, v5, Lqt7;->c:I

    add-int/2addr p1, v4

    iput p1, v5, Lqt7;->c:I

    .line 12
    iget-wide p1, p0, Lxs7;->f:J

    int-to-long v0, v4

    add-long/2addr p1, v0

    .line 13
    iput-wide p1, p0, Lxs7;->f:J

    :goto_2
    return-object p0
.end method

.method public bridge synthetic T(Ljava/lang/String;)Lzs7;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lxs7;->k0(Ljava/lang/String;)Lxs7;

    return-object p0
.end method

.method public U(JLbt7;)Z
    .locals 7

    const-string v0, "bytes"

    invoke-static {p3, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p3}, Lbt7;->t()I

    move-result v1

    .line 2
    invoke-static {p3, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_3

    if-ltz v1, :cond_3

    .line 3
    iget-wide v2, p0, Lxs7;->f:J

    sub-long/2addr v2, p1

    int-to-long v4, v1

    cmp-long v6, v2, v4

    if-ltz v6, :cond_3

    .line 4
    invoke-virtual {p3}, Lbt7;->t()I

    move-result v2

    sub-int/2addr v2, v0

    if-ge v2, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    int-to-long v3, v2

    add-long/2addr v3, p1

    .line 5
    invoke-virtual {p0, v3, v4}, Lxs7;->f(J)B

    move-result v3

    add-int v4, v0, v2

    .line 6
    invoke-virtual {p3, v4}, Lbt7;->y(I)B

    move-result v4

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_1
    return v0
.end method

.method public V(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    const-string v0, "charset"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v0, p0, Lxs7;->f:J

    invoke-virtual {p0, v0, v1, p1}, Lxs7;->q(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public Z(J)Lxs7;
    .locals 12

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/16 p1, 0x30

    .line 1
    invoke-virtual {p0, p1}, Lxs7;->Q(I)Lxs7;

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    ushr-long v1, p1, v0

    or-long/2addr v1, p1

    const/4 v3, 0x2

    ushr-long v4, v1, v3

    or-long/2addr v1, v4

    const/4 v4, 0x4

    ushr-long v5, v1, v4

    or-long/2addr v1, v5

    const/16 v5, 0x8

    ushr-long v6, v1, v5

    or-long/2addr v1, v6

    const/16 v6, 0x10

    ushr-long v7, v1, v6

    or-long/2addr v1, v7

    const/16 v7, 0x20

    ushr-long v8, v1, v7

    or-long/2addr v1, v8

    ushr-long v8, v1, v0

    const-wide v10, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v8, v10

    sub-long/2addr v1, v8

    ushr-long v8, v1, v3

    const-wide v10, 0x3333333333333333L    # 4.667261458395856E-62

    and-long/2addr v8, v10

    and-long/2addr v1, v10

    add-long/2addr v8, v1

    ushr-long v1, v8, v4

    add-long/2addr v1, v8

    const-wide v8, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long/2addr v1, v8

    ushr-long v8, v1, v5

    add-long/2addr v1, v8

    ushr-long v5, v1, v6

    add-long/2addr v1, v5

    const-wide/16 v5, 0x3f

    and-long v8, v1, v5

    ushr-long/2addr v1, v7

    and-long/2addr v1, v5

    add-long/2addr v8, v1

    const/4 v1, 0x3

    int-to-long v1, v1

    add-long/2addr v8, v1

    int-to-long v1, v4

    .line 2
    div-long/2addr v8, v1

    long-to-int v1, v8

    .line 3
    invoke-virtual {p0, v1}, Lxs7;->E(I)Lqt7;

    move-result-object v2

    .line 4
    iget-object v3, v2, Lqt7;->a:[B

    .line 5
    iget v5, v2, Lqt7;->c:I

    add-int v6, v5, v1

    sub-int/2addr v6, v0

    :goto_0
    if-lt v6, v5, :cond_1

    .line 6
    sget-object v0, Lxt7;->a:[B

    const-wide/16 v7, 0xf

    and-long/2addr v7, p1

    long-to-int v8, v7

    .line 7
    aget-byte v0, v0, v8

    aput-byte v0, v3, v6

    ushr-long/2addr p1, v4

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 8
    :cond_1
    iget p1, v2, Lqt7;->c:I

    add-int/2addr p1, v1

    iput p1, v2, Lqt7;->c:I

    .line 9
    iget-wide p1, p0, Lxs7;->f:J

    int-to-long v0, v1

    add-long/2addr p1, v0

    .line 10
    iput-wide p1, p0, Lxs7;->f:J

    :goto_1
    return-object p0
.end method

.method public a0(I)Lxs7;
    .locals 5

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Lxs7;->E(I)Lqt7;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lqt7;->a:[B

    .line 3
    iget v2, v0, Lqt7;->c:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 4
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 5
    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 6
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 7
    aput-byte p1, v1, v3

    .line 8
    iput v2, v0, Lqt7;->c:I

    .line 9
    iget-wide v0, p0, Lxs7;->f:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    .line 10
    iput-wide v0, p0, Lxs7;->f:J

    return-object p0
.end method

.method public b()Lxs7;
    .locals 6

    .line 1
    new-instance v0, Lxs7;

    invoke-direct {v0}, Lxs7;-><init>()V

    .line 2
    iget-wide v1, p0, Lxs7;->f:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v1, p0, Lxs7;->e:Lqt7;

    invoke-static {v1}, Lim7;->c(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v1}, Lqt7;->c()Lqt7;

    move-result-object v2

    .line 5
    iput-object v2, v0, Lxs7;->e:Lqt7;

    .line 6
    iput-object v2, v2, Lqt7;->g:Lqt7;

    .line 7
    iput-object v2, v2, Lqt7;->f:Lqt7;

    .line 8
    iget-object v3, v1, Lqt7;->f:Lqt7;

    :goto_0
    if-eq v3, v1, :cond_1

    .line 9
    iget-object v4, v2, Lqt7;->g:Lqt7;

    invoke-static {v4}, Lim7;->c(Ljava/lang/Object;)V

    invoke-static {v3}, Lim7;->c(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lqt7;->c()Lqt7;

    move-result-object v5

    invoke-virtual {v4, v5}, Lqt7;->b(Lqt7;)Lqt7;

    .line 10
    iget-object v3, v3, Lqt7;->f:Lqt7;

    goto :goto_0

    .line 11
    :cond_1
    iget-wide v1, p0, Lxs7;->f:J

    .line 12
    iput-wide v1, v0, Lxs7;->f:J

    :goto_1
    return-object v0
.end method

.method public b0(Lvt7;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    :goto_0
    const/16 v2, 0x2000

    int-to-long v2, v2

    .line 1
    invoke-interface {p1, p0, v2, v3}, Lvt7;->read(Lxs7;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    return-wide v0

    :cond_0
    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public final c()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lxs7;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v2, p0, Lxs7;->e:Lqt7;

    invoke-static {v2}, Lim7;->c(Ljava/lang/Object;)V

    iget-object v2, v2, Lqt7;->g:Lqt7;

    invoke-static {v2}, Lim7;->c(Ljava/lang/Object;)V

    .line 3
    iget v3, v2, Lqt7;->c:I

    const/16 v4, 0x2000

    if-ge v3, v4, :cond_1

    iget-boolean v4, v2, Lqt7;->e:Z

    if-eqz v4, :cond_1

    .line 4
    iget v2, v2, Lqt7;->b:I

    sub-int/2addr v3, v2

    int-to-long v2, v3

    sub-long/2addr v0, v2

    :cond_1
    move-wide v2, v0

    :goto_0
    return-wide v2
.end method

.method public bridge synthetic c0(J)Lzs7;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lxs7;->Z(J)Lxs7;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lxs7;->b()Lxs7;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public final e(Lxs7;JJ)Lxs7;
    .locals 8

    const-string v0, "out"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v1, p0, Lxs7;->f:J

    move-wide v3, p2

    move-wide v5, p4

    .line 2
    invoke-static/range {v1 .. v6}, Ln56;->u(JJJ)V

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_0

    goto :goto_3

    .line 3
    :cond_0
    iget-wide v2, p1, Lxs7;->f:J

    add-long/2addr v2, p4

    .line 4
    iput-wide v2, p1, Lxs7;->f:J

    .line 5
    iget-object v2, p0, Lxs7;->e:Lqt7;

    .line 6
    :goto_0
    invoke-static {v2}, Lim7;->c(Ljava/lang/Object;)V

    iget v3, v2, Lqt7;->c:I

    iget v4, v2, Lqt7;->b:I

    sub-int v5, v3, v4

    int-to-long v5, v5

    cmp-long v7, p2, v5

    if-ltz v7, :cond_1

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long/2addr p2, v3

    .line 7
    iget-object v2, v2, Lqt7;->f:Lqt7;

    goto :goto_0

    :cond_1
    :goto_1
    cmp-long v3, p4, v0

    if-lez v3, :cond_3

    .line 8
    invoke-static {v2}, Lim7;->c(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lqt7;->c()Lqt7;

    move-result-object v3

    .line 9
    iget v4, v3, Lqt7;->b:I

    long-to-int p3, p2

    add-int/2addr v4, p3

    iput v4, v3, Lqt7;->b:I

    long-to-int p2, p4

    add-int/2addr v4, p2

    .line 10
    iget p2, v3, Lqt7;->c:I

    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, v3, Lqt7;->c:I

    .line 11
    iget-object p2, p1, Lxs7;->e:Lqt7;

    if-nez p2, :cond_2

    .line 12
    iput-object v3, v3, Lqt7;->g:Lqt7;

    .line 13
    iput-object v3, v3, Lqt7;->f:Lqt7;

    .line 14
    iput-object v3, p1, Lxs7;->e:Lqt7;

    goto :goto_2

    .line 15
    :cond_2
    invoke-static {p2}, Lim7;->c(Ljava/lang/Object;)V

    iget-object p2, p2, Lqt7;->g:Lqt7;

    invoke-static {p2}, Lim7;->c(Ljava/lang/Object;)V

    invoke-virtual {p2, v3}, Lqt7;->b(Lqt7;)Lqt7;

    .line 16
    :goto_2
    iget p2, v3, Lqt7;->c:I

    iget p3, v3, Lqt7;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    sub-long/2addr p4, p2

    .line 17
    iget-object v2, v2, Lqt7;->f:Lqt7;

    move-wide p2, v0

    goto :goto_1

    :cond_3
    :goto_3
    return-object p0
.end method

.method public e0()Lbt7;
    .locals 2

    .line 1
    iget-wide v0, p0, Lxs7;->f:J

    .line 2
    invoke-virtual {p0, v0, v1}, Lxs7;->s(J)Lbt7;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 1
    :cond_1
    instance-of v4, v1, Lxs7;

    if-nez v4, :cond_2

    goto/16 :goto_3

    .line 2
    :cond_2
    iget-wide v4, v0, Lxs7;->f:J

    .line 3
    check-cast v1, Lxs7;

    .line 4
    iget-wide v6, v1, Lxs7;->f:J

    cmp-long v8, v4, v6

    if-eqz v8, :cond_3

    goto :goto_3

    :cond_3
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_4

    goto :goto_0

    .line 5
    :cond_4
    iget-object v4, v0, Lxs7;->e:Lqt7;

    invoke-static {v4}, Lim7;->c(Ljava/lang/Object;)V

    .line 6
    iget-object v1, v1, Lxs7;->e:Lqt7;

    invoke-static {v1}, Lim7;->c(Ljava/lang/Object;)V

    .line 7
    iget v5, v4, Lqt7;->b:I

    .line 8
    iget v8, v1, Lqt7;->b:I

    move-wide v9, v6

    .line 9
    :goto_1
    iget-wide v11, v0, Lxs7;->f:J

    cmp-long v13, v9, v11

    if-gez v13, :cond_0

    .line 10
    iget v11, v4, Lqt7;->c:I

    sub-int/2addr v11, v5

    iget v12, v1, Lqt7;->c:I

    sub-int/2addr v12, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    int-to-long v11, v11

    move-wide v13, v6

    :goto_2
    cmp-long v15, v13, v11

    if-gez v15, :cond_6

    .line 11
    iget-object v15, v4, Lqt7;->a:[B

    add-int/lit8 v16, v5, 0x1

    aget-byte v5, v15, v5

    iget-object v15, v1, Lqt7;->a:[B

    add-int/lit8 v17, v8, 0x1

    aget-byte v8, v15, v8

    if-eq v5, v8, :cond_5

    goto :goto_3

    :cond_5
    const-wide/16 v18, 0x1

    add-long v13, v13, v18

    move/from16 v5, v16

    move/from16 v8, v17

    goto :goto_2

    .line 12
    :cond_6
    iget v13, v4, Lqt7;->c:I

    if-ne v5, v13, :cond_7

    .line 13
    iget-object v4, v4, Lqt7;->f:Lqt7;

    invoke-static {v4}, Lim7;->c(Ljava/lang/Object;)V

    .line 14
    iget v5, v4, Lqt7;->b:I

    .line 15
    :cond_7
    iget v13, v1, Lqt7;->c:I

    if-ne v8, v13, :cond_8

    .line 16
    iget-object v1, v1, Lqt7;->f:Lqt7;

    invoke-static {v1}, Lim7;->c(Ljava/lang/Object;)V

    .line 17
    iget v8, v1, Lqt7;->b:I

    :cond_8
    add-long/2addr v9, v11

    goto :goto_1

    :goto_3
    return v2
.end method

.method public final f(J)B
    .locals 6

    .line 1
    iget-wide v0, p0, Lxs7;->f:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    .line 2
    invoke-static/range {v0 .. v5}, Ln56;->u(JJJ)V

    .line 3
    iget-object v0, p0, Lxs7;->e:Lqt7;

    if-eqz v0, :cond_3

    .line 4
    iget-wide v1, p0, Lxs7;->f:J

    sub-long v3, v1, p1

    cmp-long v5, v3, p1

    if-gez v5, :cond_1

    :goto_0
    cmp-long v3, v1, p1

    if-lez v3, :cond_0

    .line 5
    iget-object v0, v0, Lqt7;->g:Lqt7;

    invoke-static {v0}, Lim7;->c(Ljava/lang/Object;)V

    .line 6
    iget v3, v0, Lqt7;->c:I

    iget v4, v0, Lqt7;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long/2addr v1, v3

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0}, Lim7;->c(Ljava/lang/Object;)V

    iget-object v3, v0, Lqt7;->a:[B

    iget v0, v0, Lqt7;->b:I

    int-to-long v4, v0

    add-long/2addr v4, p1

    sub-long/2addr v4, v1

    long-to-int p1, v4

    aget-byte p1, v3, p1

    goto :goto_2

    :cond_1
    const-wide/16 v1, 0x0

    .line 8
    :goto_1
    iget v3, v0, Lqt7;->c:I

    iget v4, v0, Lqt7;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v3, v1

    cmp-long v5, v3, p1

    if-lez v5, :cond_2

    .line 9
    invoke-static {v0}, Lim7;->c(Ljava/lang/Object;)V

    iget-object v3, v0, Lqt7;->a:[B

    iget v0, v0, Lqt7;->b:I

    int-to-long v4, v0

    add-long/2addr v4, p1

    sub-long/2addr v4, v1

    long-to-int p1, v4

    aget-byte p1, v3, p1

    goto :goto_2

    .line 10
    :cond_2
    iget-object v0, v0, Lqt7;->f:Lqt7;

    invoke-static {v0}, Lim7;->c(Ljava/lang/Object;)V

    move-wide v1, v3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    .line 11
    invoke-static {v0}, Lim7;->c(Ljava/lang/Object;)V

    iget-object v3, v0, Lqt7;->a:[B

    iget v0, v0, Lqt7;->b:I

    int-to-long v4, v0

    add-long/2addr v4, p1

    sub-long/2addr v4, v1

    long-to-int p1, v4

    aget-byte p1, v3, p1

    :goto_2
    return p1
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public g(BJJ)J
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, v0, p2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v2, p4, p2

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_c

    .line 1
    iget-wide v2, p0, Lxs7;->f:J

    cmp-long v4, p4, v2

    if-lez v4, :cond_2

    move-wide p4, v2

    :cond_2
    cmp-long v4, p2, p4

    if-nez v4, :cond_3

    goto/16 :goto_8

    .line 2
    :cond_3
    iget-object v4, p0, Lxs7;->e:Lqt7;

    if-eqz v4, :cond_b

    sub-long v5, v2, p2

    cmp-long v7, v5, p2

    if-gez v7, :cond_7

    :goto_2
    cmp-long v0, v2, p2

    if-lez v0, :cond_4

    .line 3
    iget-object v4, v4, Lqt7;->g:Lqt7;

    invoke-static {v4}, Lim7;->c(Ljava/lang/Object;)V

    .line 4
    iget v0, v4, Lqt7;->c:I

    iget v1, v4, Lqt7;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr v2, v0

    goto :goto_2

    :cond_4
    :goto_3
    cmp-long v0, v2, p4

    if-gez v0, :cond_b

    .line 5
    iget-object v0, v4, Lqt7;->a:[B

    .line 6
    iget v1, v4, Lqt7;->c:I

    int-to-long v5, v1

    iget v1, v4, Lqt7;->b:I

    int-to-long v7, v1

    add-long/2addr v7, p4

    sub-long/2addr v7, v2

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v1, v5

    .line 7
    iget v5, v4, Lqt7;->b:I

    int-to-long v5, v5

    add-long/2addr v5, p2

    sub-long/2addr v5, v2

    long-to-int p2, v5

    :goto_4
    if-ge p2, v1, :cond_6

    .line 8
    aget-byte p3, v0, p2

    if-ne p3, p1, :cond_5

    .line 9
    iget p1, v4, Lqt7;->b:I

    sub-int/2addr p2, p1

    int-to-long p1, p2

    add-long/2addr p1, v2

    goto :goto_9

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 10
    :cond_6
    iget p2, v4, Lqt7;->c:I

    iget p3, v4, Lqt7;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v2, p2

    .line 11
    iget-object v4, v4, Lqt7;->f:Lqt7;

    invoke-static {v4}, Lim7;->c(Ljava/lang/Object;)V

    move-wide p2, v2

    goto :goto_3

    .line 12
    :cond_7
    :goto_5
    iget v2, v4, Lqt7;->c:I

    iget v3, v4, Lqt7;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v2, v0

    cmp-long v5, v2, p2

    if-lez v5, :cond_a

    :goto_6
    cmp-long v2, v0, p4

    if-gez v2, :cond_b

    .line 13
    iget-object v2, v4, Lqt7;->a:[B

    .line 14
    iget v3, v4, Lqt7;->c:I

    int-to-long v5, v3

    iget v3, v4, Lqt7;->b:I

    int-to-long v7, v3

    add-long/2addr v7, p4

    sub-long/2addr v7, v0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v3, v5

    .line 15
    iget v5, v4, Lqt7;->b:I

    int-to-long v5, v5

    add-long/2addr v5, p2

    sub-long/2addr v5, v0

    long-to-int p2, v5

    :goto_7
    if-ge p2, v3, :cond_9

    .line 16
    aget-byte p3, v2, p2

    if-ne p3, p1, :cond_8

    .line 17
    iget p1, v4, Lqt7;->b:I

    sub-int/2addr p2, p1

    int-to-long p1, p2

    add-long/2addr p1, v0

    goto :goto_9

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    .line 18
    :cond_9
    iget p2, v4, Lqt7;->c:I

    iget p3, v4, Lqt7;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    .line 19
    iget-object v4, v4, Lqt7;->f:Lqt7;

    invoke-static {v4}, Lim7;->c(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_6

    .line 20
    :cond_a
    iget-object v4, v4, Lqt7;->f:Lqt7;

    invoke-static {v4}, Lim7;->c(Ljava/lang/Object;)V

    move-wide v0, v2

    goto :goto_5

    :cond_b
    :goto_8
    const-wide/16 p1, -0x1

    :goto_9
    return-wide p1

    :cond_c
    const-string p1, "size="

    .line 21
    invoke-static {p1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 22
    iget-wide v0, p0, Lxs7;->f:J

    .line 23
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " fromIndex="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " toIndex="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public g0(J)Lxs7;
    .locals 9

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lxs7;->E(I)Lqt7;

    move-result-object v1

    .line 2
    iget-object v2, v1, Lqt7;->a:[B

    .line 3
    iget v3, v1, Lqt7;->c:I

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x38

    ushr-long v5, p1, v5

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 4
    aput-byte v5, v2, v3

    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0x30

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 5
    aput-byte v5, v2, v4

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x28

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 6
    aput-byte v5, v2, v3

    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0x20

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 7
    aput-byte v5, v2, v4

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x18

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 8
    aput-byte v5, v2, v3

    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0x10

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 9
    aput-byte v5, v2, v4

    add-int/lit8 v4, v3, 0x1

    ushr-long v5, p1, v0

    and-long/2addr v5, v7

    long-to-int v0, v5

    int-to-byte v0, v0

    .line 10
    aput-byte v0, v2, v3

    add-int/lit8 v0, v4, 0x1

    and-long/2addr p1, v7

    long-to-int p2, p1

    int-to-byte p1, p2

    .line 11
    aput-byte p1, v2, v4

    .line 12
    iput v0, v1, Lqt7;->c:I

    .line 13
    iget-wide p1, p0, Lxs7;->f:J

    const-wide/16 v0, 0x8

    add-long/2addr p1, v0

    .line 14
    iput-wide p1, p0, Lxs7;->f:J

    return-object p0
.end method

.method public h()Lxs7;
    .locals 0

    return-object p0
.end method

.method public h0(I)Lxs7;
    .locals 5

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Lxs7;->E(I)Lqt7;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lqt7;->a:[B

    .line 3
    iget v2, v0, Lqt7;->c:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 4
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 5
    aput-byte p1, v1, v3

    .line 6
    iput v2, v0, Lqt7;->c:I

    .line 7
    iget-wide v0, p0, Lxs7;->f:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    .line 8
    iput-wide v0, p0, Lxs7;->f:J

    return-object p0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lxs7;->e:Lqt7;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 2
    :cond_0
    iget v2, v0, Lqt7;->b:I

    .line 3
    iget v3, v0, Lqt7;->c:I

    :goto_0
    if-ge v2, v3, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget-object v4, v0, Lqt7;->a:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, v0, Lqt7;->f:Lqt7;

    invoke-static {v0}, Lim7;->c(Ljava/lang/Object;)V

    .line 6
    iget-object v2, p0, Lxs7;->e:Lqt7;

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public i(Lbt7;)J
    .locals 13

    const-string v0, "targetBytes"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lxs7;->e:Lqt7;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_10

    .line 3
    iget-wide v3, p0, Lxs7;->f:J

    const-wide/16 v5, 0x0

    sub-long v7, v3, v5

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    cmp-long v12, v7, v5

    if-gez v12, :cond_8

    :goto_0
    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    .line 4
    iget-object v0, v0, Lqt7;->g:Lqt7;

    invoke-static {v0}, Lim7;->c(Ljava/lang/Object;)V

    .line 5
    iget v7, v0, Lqt7;->c:I

    iget v8, v0, Lqt7;->b:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    sub-long/2addr v3, v7

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lbt7;->t()I

    move-result v7

    if-ne v7, v9, :cond_4

    .line 7
    invoke-virtual {p1, v10}, Lbt7;->y(I)B

    move-result v7

    .line 8
    invoke-virtual {p1, v11}, Lbt7;->y(I)B

    move-result p1

    .line 9
    :goto_1
    iget-wide v8, p0, Lxs7;->f:J

    cmp-long v10, v3, v8

    if-gez v10, :cond_10

    .line 10
    iget-object v8, v0, Lqt7;->a:[B

    .line 11
    iget v9, v0, Lqt7;->b:I

    int-to-long v9, v9

    add-long/2addr v9, v5

    sub-long/2addr v9, v3

    long-to-int v5, v9

    .line 12
    iget v6, v0, Lqt7;->c:I

    :goto_2
    if-ge v5, v6, :cond_3

    .line 13
    aget-byte v9, v8, v5

    if-eq v9, v7, :cond_2

    if-ne v9, p1, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 14
    :cond_2
    :goto_3
    iget p1, v0, Lqt7;->b:I

    goto :goto_8

    .line 15
    :cond_3
    iget v5, v0, Lqt7;->c:I

    iget v6, v0, Lqt7;->b:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v5, v3

    .line 16
    iget-object v0, v0, Lqt7;->f:Lqt7;

    invoke-static {v0}, Lim7;->c(Ljava/lang/Object;)V

    move-wide v3, v5

    goto :goto_1

    .line 17
    :cond_4
    invoke-virtual {p1}, Lbt7;->x()[B

    move-result-object p1

    .line 18
    :goto_4
    iget-wide v7, p0, Lxs7;->f:J

    cmp-long v9, v3, v7

    if-gez v9, :cond_10

    .line 19
    iget-object v7, v0, Lqt7;->a:[B

    .line 20
    iget v8, v0, Lqt7;->b:I

    int-to-long v8, v8

    add-long/2addr v8, v5

    sub-long/2addr v8, v3

    long-to-int v5, v8

    .line 21
    iget v6, v0, Lqt7;->c:I

    :goto_5
    if-ge v5, v6, :cond_7

    .line 22
    aget-byte v8, v7, v5

    .line 23
    array-length v9, p1

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v9, :cond_6

    aget-byte v12, p1, v11

    if-ne v8, v12, :cond_5

    .line 24
    :goto_7
    iget p1, v0, Lqt7;->b:I

    :goto_8
    sub-int/2addr v5, p1

    int-to-long v0, v5

    add-long v1, v0, v3

    goto/16 :goto_f

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 25
    :cond_7
    iget v5, v0, Lqt7;->c:I

    iget v6, v0, Lqt7;->b:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v5, v3

    .line 26
    iget-object v0, v0, Lqt7;->f:Lqt7;

    invoke-static {v0}, Lim7;->c(Ljava/lang/Object;)V

    move-wide v3, v5

    goto :goto_4

    :cond_8
    move-wide v3, v5

    .line 27
    :goto_9
    iget v7, v0, Lqt7;->c:I

    iget v8, v0, Lqt7;->b:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    add-long/2addr v7, v3

    cmp-long v12, v7, v5

    if-lez v12, :cond_f

    .line 28
    invoke-virtual {p1}, Lbt7;->t()I

    move-result v7

    if-ne v7, v9, :cond_b

    .line 29
    invoke-virtual {p1, v10}, Lbt7;->y(I)B

    move-result v7

    .line 30
    invoke-virtual {p1, v11}, Lbt7;->y(I)B

    move-result p1

    .line 31
    :goto_a
    iget-wide v8, p0, Lxs7;->f:J

    cmp-long v10, v3, v8

    if-gez v10, :cond_10

    .line 32
    iget-object v8, v0, Lqt7;->a:[B

    .line 33
    iget v9, v0, Lqt7;->b:I

    int-to-long v9, v9

    add-long/2addr v9, v5

    sub-long/2addr v9, v3

    long-to-int v5, v9

    .line 34
    iget v6, v0, Lqt7;->c:I

    :goto_b
    if-ge v5, v6, :cond_a

    .line 35
    aget-byte v9, v8, v5

    if-eq v9, v7, :cond_2

    if-ne v9, p1, :cond_9

    goto :goto_3

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 36
    :cond_a
    iget v5, v0, Lqt7;->c:I

    iget v6, v0, Lqt7;->b:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v5, v3

    .line 37
    iget-object v0, v0, Lqt7;->f:Lqt7;

    invoke-static {v0}, Lim7;->c(Ljava/lang/Object;)V

    move-wide v3, v5

    goto :goto_a

    .line 38
    :cond_b
    invoke-virtual {p1}, Lbt7;->x()[B

    move-result-object p1

    .line 39
    :goto_c
    iget-wide v7, p0, Lxs7;->f:J

    cmp-long v9, v3, v7

    if-gez v9, :cond_10

    .line 40
    iget-object v7, v0, Lqt7;->a:[B

    .line 41
    iget v8, v0, Lqt7;->b:I

    int-to-long v8, v8

    add-long/2addr v8, v5

    sub-long/2addr v8, v3

    long-to-int v5, v8

    .line 42
    iget v6, v0, Lqt7;->c:I

    :goto_d
    if-ge v5, v6, :cond_e

    .line 43
    aget-byte v8, v7, v5

    .line 44
    array-length v9, p1

    const/4 v11, 0x0

    :goto_e
    if-ge v11, v9, :cond_d

    aget-byte v12, p1, v11

    if-ne v8, v12, :cond_c

    goto/16 :goto_7

    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 45
    :cond_e
    iget v5, v0, Lqt7;->c:I

    iget v6, v0, Lqt7;->b:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v5, v3

    .line 46
    iget-object v0, v0, Lqt7;->f:Lqt7;

    invoke-static {v0}, Lim7;->c(Ljava/lang/Object;)V

    move-wide v3, v5

    goto :goto_c

    .line 47
    :cond_f
    iget-object v0, v0, Lqt7;->f:Lqt7;

    invoke-static {v0}, Lim7;->c(Ljava/lang/Object;)V

    move-wide v3, v7

    goto :goto_9

    :cond_10
    :goto_f
    return-wide v1
.end method

.method public i0()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, v0, v1}, Lxs7;->R(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public inputStream()Ljava/io/InputStream;
    .locals 1

    .line 1
    new-instance v0, Lxs7$b;

    invoke-direct {v0, p0}, Lxs7$b;-><init>(Lxs7;)V

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic j([BII)Lzs7;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lxs7;->L([BII)Lxs7;

    return-object p0
.end method

.method public j0(Ljava/lang/String;IILjava/nio/charset/Charset;)Lxs7;
    .locals 3

    const-string v0, "string"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p4, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_6

    if-lt p3, p2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p3, v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    .line 2
    sget-object v0, Lwn7;->a:Ljava/nio/charset/Charset;

    invoke-static {p4, v0}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, p2, p3}, Lxs7;->m0(Ljava/lang/String;II)Lxs7;

    return-object p0

    .line 3
    :cond_3
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, p2}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string p2, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, p2}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    array-length p2, p1

    invoke-virtual {p0, p1, v1, p2}, Lxs7;->L([BII)Lxs7;

    return-object p0

    :cond_4
    const-string p2, "endIndex > string.length: "

    const-string p4, " > "

    .line 5
    invoke-static {p2, p3, p4}, Ljo;->A(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    const-string p1, "endIndex < beginIndex: "

    const-string p4, " < "

    .line 6
    invoke-static {p1, p3, p4, p2}, Ljo;->i(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6
    const-string p1, "beginIndex < 0: "

    .line 7
    invoke-static {p1, p2}, Ljo;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final k(Lxs7$a;)Lxs7$a;
    .locals 2

    const-string v0, "unsafeCursor"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lxs7$a;->e:Lxs7;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iput-object p0, p1, Lxs7$a;->e:Lxs7;

    .line 3
    iput-boolean v1, p1, Lxs7$a;->f:Z

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "already attached to a buffer"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k0(Ljava/lang/String;)Lxs7;
    .locals 2

    const-string v0, "string"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lxs7;->m0(Ljava/lang/String;II)Lxs7;

    return-object p0
.end method

.method public l(J)Z
    .locals 3

    .line 1
    iget-wide v0, p0, Lxs7;->f:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public l0(J)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const v0, 0x7fffffff

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 1
    iget-wide v0, p0, Lxs7;->f:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_1

    long-to-int p2, p1

    .line 2
    new-array p1, p2, [B

    .line 3
    invoke-virtual {p0, p1}, Lxs7;->readFully([B)V

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_2
    const-string v0, "byteCount: "

    .line 5
    invoke-static {v0, p1, p2}, Ljo;->j(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public m()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lxs7;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    const v1, 0xff00

    and-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public m0(Ljava/lang/String;II)Lxs7;
    .locals 10

    const-string v0, "string"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ltz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_f

    if-lt p3, p2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_e

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt p3, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_d

    :goto_3
    if-ge p2, p3, :cond_c

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x80

    if-ge v1, v2, :cond_5

    .line 3
    invoke-virtual {p0, v0}, Lxs7;->E(I)Lqt7;

    move-result-object v3

    .line 4
    iget-object v4, v3, Lqt7;->a:[B

    .line 5
    iget v5, v3, Lqt7;->c:I

    sub-int/2addr v5, p2

    rsub-int v6, v5, 0x2000

    .line 6
    invoke-static {p3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/lit8 v7, p2, 0x1

    add-int/2addr p2, v5

    int-to-byte v1, v1

    .line 7
    aput-byte v1, v4, p2

    :goto_4
    move p2, v7

    if-ge p2, v6, :cond_4

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v2, :cond_3

    goto :goto_5

    :cond_3
    add-int/lit8 v7, p2, 0x1

    add-int/2addr p2, v5

    int-to-byte v1, v1

    .line 9
    aput-byte v1, v4, p2

    goto :goto_4

    :cond_4
    :goto_5
    add-int/2addr v5, p2

    .line 10
    iget v1, v3, Lqt7;->c:I

    sub-int/2addr v5, v1

    add-int/2addr v1, v5

    .line 11
    iput v1, v3, Lqt7;->c:I

    .line 12
    iget-wide v1, p0, Lxs7;->f:J

    int-to-long v3, v5

    add-long/2addr v1, v3

    .line 13
    iput-wide v1, p0, Lxs7;->f:J

    goto :goto_3

    :cond_5
    const/16 v3, 0x800

    if-ge v1, v3, :cond_6

    const/4 v3, 0x2

    .line 14
    invoke-virtual {p0, v3}, Lxs7;->E(I)Lqt7;

    move-result-object v4

    .line 15
    iget-object v5, v4, Lqt7;->a:[B

    iget v6, v4, Lqt7;->c:I

    shr-int/lit8 v7, v1, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    add-int/lit8 v7, v6, 0x1

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 16
    aput-byte v1, v5, v7

    add-int/2addr v6, v3

    .line 17
    iput v6, v4, Lqt7;->c:I

    .line 18
    iget-wide v1, p0, Lxs7;->f:J

    const-wide/16 v3, 0x2

    add-long/2addr v1, v3

    .line 19
    iput-wide v1, p0, Lxs7;->f:J

    goto/16 :goto_9

    :cond_6
    const v3, 0xd800

    const/16 v4, 0x3f

    if-lt v1, v3, :cond_b

    const v3, 0xdfff

    if-le v1, v3, :cond_7

    goto :goto_8

    :cond_7
    add-int/lit8 v5, p2, 0x1

    if-ge v5, p3, :cond_8

    .line 20
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_6

    :cond_8
    const/4 v6, 0x0

    :goto_6
    const v7, 0xdbff

    if-gt v1, v7, :cond_a

    const v7, 0xdc00

    if-gt v7, v6, :cond_a

    if-ge v3, v6, :cond_9

    goto :goto_7

    :cond_9
    const/high16 v3, 0x10000

    and-int/lit16 v1, v1, 0x3ff

    shl-int/lit8 v1, v1, 0xa

    and-int/lit16 v5, v6, 0x3ff

    or-int/2addr v1, v5

    add-int/2addr v1, v3

    const/4 v3, 0x4

    .line 21
    invoke-virtual {p0, v3}, Lxs7;->E(I)Lqt7;

    move-result-object v5

    .line 22
    iget-object v6, v5, Lqt7;->a:[B

    iget v7, v5, Lqt7;->c:I

    shr-int/lit8 v8, v1, 0x12

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    add-int/lit8 v8, v7, 0x1

    shr-int/lit8 v9, v1, 0xc

    and-int/2addr v9, v4

    or-int/2addr v9, v2

    int-to-byte v9, v9

    .line 23
    aput-byte v9, v6, v8

    add-int/lit8 v8, v7, 0x2

    shr-int/lit8 v9, v1, 0x6

    and-int/2addr v9, v4

    or-int/2addr v9, v2

    int-to-byte v9, v9

    .line 24
    aput-byte v9, v6, v8

    add-int/lit8 v8, v7, 0x3

    and-int/2addr v1, v4

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 25
    aput-byte v1, v6, v8

    add-int/2addr v7, v3

    .line 26
    iput v7, v5, Lqt7;->c:I

    .line 27
    iget-wide v1, p0, Lxs7;->f:J

    const-wide/16 v3, 0x4

    add-long/2addr v1, v3

    .line 28
    iput-wide v1, p0, Lxs7;->f:J

    add-int/lit8 p2, p2, 0x2

    goto/16 :goto_3

    .line 29
    :cond_a
    :goto_7
    invoke-virtual {p0, v4}, Lxs7;->Q(I)Lxs7;

    move p2, v5

    goto/16 :goto_3

    :cond_b
    :goto_8
    const/4 v3, 0x3

    .line 30
    invoke-virtual {p0, v3}, Lxs7;->E(I)Lqt7;

    move-result-object v5

    .line 31
    iget-object v6, v5, Lqt7;->a:[B

    iget v7, v5, Lqt7;->c:I

    shr-int/lit8 v8, v1, 0xc

    or-int/lit16 v8, v8, 0xe0

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    add-int/lit8 v8, v7, 0x1

    shr-int/lit8 v9, v1, 0x6

    and-int/2addr v4, v9

    or-int/2addr v4, v2

    int-to-byte v4, v4

    .line 32
    aput-byte v4, v6, v8

    add-int/lit8 v4, v7, 0x2

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 33
    aput-byte v1, v6, v4

    add-int/2addr v7, v3

    .line 34
    iput v7, v5, Lqt7;->c:I

    .line 35
    iget-wide v1, p0, Lxs7;->f:J

    const-wide/16 v3, 0x3

    add-long/2addr v1, v3

    .line 36
    iput-wide v1, p0, Lxs7;->f:J

    :goto_9
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_3

    :cond_c
    return-object p0

    :cond_d
    const-string p2, "endIndex > string.length: "

    const-string v0, " > "

    .line 37
    invoke-static {p2, p3, v0}, Ljo;->A(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_e
    const-string p1, "endIndex < beginIndex: "

    const-string v0, " < "

    .line 38
    invoke-static {p1, p3, v0, p2}, Ljo;->i(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_f
    const-string p1, "beginIndex < 0: "

    .line 39
    invoke-static {p1, p2}, Ljo;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public bridge synthetic o0([B)Lzs7;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lxs7;->I([B)Lxs7;

    return-object p0
.end method

.method public p0(I)Lxs7;
    .locals 11

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lxs7;->Q(I)Lxs7;

    goto/16 :goto_1

    :cond_0
    const/16 v1, 0x800

    const/4 v2, 0x2

    const/16 v3, 0x3f

    if-ge p1, v1, :cond_1

    .line 2
    invoke-virtual {p0, v2}, Lxs7;->E(I)Lqt7;

    move-result-object v1

    .line 3
    iget-object v4, v1, Lqt7;->a:[B

    iget v5, v1, Lqt7;->c:I

    shr-int/lit8 v6, p1, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v6, v5, 0x1

    and-int/2addr p1, v3

    or-int/2addr p1, v0

    int-to-byte p1, p1

    .line 4
    aput-byte p1, v4, v6

    add-int/2addr v5, v2

    .line 5
    iput v5, v1, Lqt7;->c:I

    .line 6
    iget-wide v0, p0, Lxs7;->f:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    .line 7
    iput-wide v0, p0, Lxs7;->f:J

    goto/16 :goto_1

    :cond_1
    const v1, 0xdfff

    const v4, 0xd800

    if-le v4, p1, :cond_2

    goto :goto_0

    :cond_2
    if-lt v1, p1, :cond_3

    .line 8
    invoke-virtual {p0, v3}, Lxs7;->Q(I)Lxs7;

    goto :goto_1

    :cond_3
    :goto_0
    const/high16 v1, 0x10000

    const/4 v4, 0x3

    if-ge p1, v1, :cond_4

    .line 9
    invoke-virtual {p0, v4}, Lxs7;->E(I)Lqt7;

    move-result-object v1

    .line 10
    iget-object v2, v1, Lqt7;->a:[B

    iget v5, v1, Lqt7;->c:I

    shr-int/lit8 v6, p1, 0xc

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v7, p1, 0x6

    and-int/2addr v7, v3

    or-int/2addr v7, v0

    int-to-byte v7, v7

    .line 11
    aput-byte v7, v2, v6

    add-int/lit8 v6, v5, 0x2

    and-int/2addr p1, v3

    or-int/2addr p1, v0

    int-to-byte p1, p1

    .line 12
    aput-byte p1, v2, v6

    add-int/2addr v5, v4

    .line 13
    iput v5, v1, Lqt7;->c:I

    .line 14
    iget-wide v0, p0, Lxs7;->f:J

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    .line 15
    iput-wide v0, p0, Lxs7;->f:J

    goto :goto_1

    :cond_4
    const v1, 0x10ffff

    const/4 v5, 0x4

    if-gt p1, v1, :cond_5

    .line 16
    invoke-virtual {p0, v5}, Lxs7;->E(I)Lqt7;

    move-result-object v1

    .line 17
    iget-object v2, v1, Lqt7;->a:[B

    iget v4, v1, Lqt7;->c:I

    shr-int/lit8 v6, p1, 0x12

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    aput-byte v6, v2, v4

    add-int/lit8 v6, v4, 0x1

    shr-int/lit8 v7, p1, 0xc

    and-int/2addr v7, v3

    or-int/2addr v7, v0

    int-to-byte v7, v7

    .line 18
    aput-byte v7, v2, v6

    add-int/lit8 v6, v4, 0x2

    shr-int/lit8 v7, p1, 0x6

    and-int/2addr v7, v3

    or-int/2addr v7, v0

    int-to-byte v7, v7

    .line 19
    aput-byte v7, v2, v6

    add-int/lit8 v6, v4, 0x3

    and-int/2addr p1, v3

    or-int/2addr p1, v0

    int-to-byte p1, p1

    .line 20
    aput-byte p1, v2, v6

    add-int/2addr v4, v5

    .line 21
    iput v4, v1, Lqt7;->c:I

    .line 22
    iget-wide v0, p0, Lxs7;->f:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    .line 23
    iput-wide v0, p0, Lxs7;->f:J

    :goto_1
    return-object p0

    .line 24
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected code point: 0x"

    invoke-static {v1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_7

    const/16 v3, 0x8

    new-array v6, v3, [C

    .line 25
    sget-object v7, Lyt7;->a:[C

    shr-int/lit8 v8, p1, 0x1c

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v7, v8

    const/4 v9, 0x0

    aput-char v8, v6, v9

    shr-int/lit8 v8, p1, 0x18

    and-int/lit8 v8, v8, 0xf

    .line 26
    aget-char v8, v7, v8

    const/4 v10, 0x1

    aput-char v8, v6, v10

    shr-int/lit8 v8, p1, 0x14

    and-int/lit8 v8, v8, 0xf

    .line 27
    aget-char v8, v7, v8

    aput-char v8, v6, v2

    shr-int/lit8 v2, p1, 0x10

    and-int/lit8 v2, v2, 0xf

    .line 28
    aget-char v2, v7, v2

    aput-char v2, v6, v4

    shr-int/lit8 v2, p1, 0xc

    and-int/lit8 v2, v2, 0xf

    .line 29
    aget-char v2, v7, v2

    aput-char v2, v6, v5

    const/4 v2, 0x5

    shr-int/lit8 v4, p1, 0x8

    and-int/lit8 v4, v4, 0xf

    .line 30
    aget-char v4, v7, v4

    aput-char v4, v6, v2

    shr-int/lit8 v2, p1, 0x4

    and-int/lit8 v2, v2, 0xf

    .line 31
    aget-char v2, v7, v2

    const/4 v4, 0x6

    aput-char v2, v6, v4

    const/4 v2, 0x7

    and-int/lit8 p1, p1, 0xf

    .line 32
    aget-char p1, v7, p1

    aput-char p1, v6, v2

    :goto_2
    if-ge v9, v3, :cond_6

    .line 33
    aget-char p1, v6, v9

    const/16 v2, 0x30

    if-ne p1, v2, :cond_6

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    rsub-int/lit8 p1, v9, 0x8

    .line 34
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v6, v9, p1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3

    :cond_7
    const-string v2, "0"

    .line 35
    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public peek()Lat7;
    .locals 1

    .line 1
    new-instance v0, Lnt7;

    invoke-direct {v0, p0}, Lnt7;-><init>(Lat7;)V

    invoke-static {v0}, Ln56;->p(Lvt7;)Lat7;

    move-result-object v0

    return-object v0
.end method

.method public q(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-string v0, "charset"

    invoke-static {p3, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const v0, 0x7fffffff

    int-to-long v0, v0

    cmp-long v3, p1, v0

    if-gtz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 1
    iget-wide v0, p0, Lxs7;->f:J

    cmp-long v3, v0, p1

    if-ltz v3, :cond_4

    if-nez v2, :cond_1

    const-string p1, ""

    return-object p1

    .line 2
    :cond_1
    iget-object v0, p0, Lxs7;->e:Lqt7;

    invoke-static {v0}, Lim7;->c(Ljava/lang/Object;)V

    .line 3
    iget v1, v0, Lqt7;->b:I

    int-to-long v2, v1

    add-long/2addr v2, p1

    iget v4, v0, Lqt7;->c:I

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    .line 4
    invoke-virtual {p0, p1, p2}, Lxs7;->l0(J)[B

    move-result-object p1

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p2

    .line 5
    :cond_2
    iget-object v2, v0, Lqt7;->a:[B

    long-to-int v3, p1

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2, v1, v3, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 6
    iget p3, v0, Lqt7;->b:I

    add-int/2addr p3, v3

    iput p3, v0, Lqt7;->b:I

    .line 7
    iget-wide v1, p0, Lxs7;->f:J

    sub-long/2addr v1, p1

    iput-wide v1, p0, Lxs7;->f:J

    .line 8
    iget p1, v0, Lqt7;->c:I

    if-ne p3, p1, :cond_3

    .line 9
    invoke-virtual {v0}, Lqt7;->a()Lqt7;

    move-result-object p1

    iput-object p1, p0, Lxs7;->e:Lqt7;

    .line 10
    invoke-static {v0}, Lrt7;->a(Lqt7;)V

    :cond_3
    return-object v4

    .line 11
    :cond_4
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_5
    const-string p3, "byteCount: "

    .line 12
    invoke-static {p3, p1, p2}, Ljo;->j(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public bridge synthetic q0(Lbt7;)Lzs7;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lxs7;->F(Lbt7;)Lxs7;

    return-object p0
.end method

.method public r()Lxs7;
    .locals 0

    return-object p0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lxs7;->e:Lqt7;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget v2, v0, Lqt7;->c:I

    iget v3, v0, Lqt7;->b:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 6
    iget-object v2, v0, Lqt7;->a:[B

    iget v3, v0, Lqt7;->b:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 7
    iget p1, v0, Lqt7;->b:I

    add-int/2addr p1, v1

    iput p1, v0, Lqt7;->b:I

    .line 8
    iget-wide v2, p0, Lxs7;->f:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lxs7;->f:J

    .line 9
    iget v2, v0, Lqt7;->c:I

    if-ne p1, v2, :cond_0

    .line 10
    invoke-virtual {v0}, Lqt7;->a()Lqt7;

    move-result-object p1

    iput-object p1, p0, Lxs7;->e:Lqt7;

    .line 11
    invoke-static {v0}, Lrt7;->a(Lqt7;)V

    :cond_0
    return v1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public read([BII)I
    .locals 7

    const-string v0, "sink"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Ln56;->u(JJJ)V

    .line 13
    iget-object v0, p0, Lxs7;->e:Lqt7;

    if-eqz v0, :cond_0

    .line 14
    iget v1, v0, Lqt7;->c:I

    iget v2, v0, Lqt7;->b:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 15
    iget-object v1, v0, Lqt7;->a:[B

    .line 16
    iget v2, v0, Lqt7;->b:I

    add-int v3, v2, p3

    .line 17
    invoke-static {v1, p1, p2, v2, v3}, Lek7;->b([B[BIII)[B

    .line 18
    iget p1, v0, Lqt7;->b:I

    add-int/2addr p1, p3

    iput p1, v0, Lqt7;->b:I

    .line 19
    iget-wide v1, p0, Lxs7;->f:J

    int-to-long v3, p3

    sub-long/2addr v1, v3

    .line 20
    iput-wide v1, p0, Lxs7;->f:J

    .line 21
    iget p2, v0, Lqt7;->c:I

    if-ne p1, p2, :cond_1

    .line 22
    invoke-virtual {v0}, Lqt7;->a()Lqt7;

    move-result-object p1

    iput-object p1, p0, Lxs7;->e:Lqt7;

    .line 23
    invoke-static {v0}, Lrt7;->a(Lqt7;)V

    goto :goto_0

    :cond_0
    const/4 p3, -0x1

    :cond_1
    :goto_0
    return p3
.end method

.method public read(Lxs7;J)J
    .locals 5

    const-string v0, "sink"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 1
    iget-wide v2, p0, Lxs7;->f:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    const-wide/16 p1, -0x1

    goto :goto_1

    :cond_1
    cmp-long v0, p2, v2

    if-lez v0, :cond_2

    move-wide p2, v2

    .line 2
    :cond_2
    invoke-virtual {p1, p0, p2, p3}, Lxs7;->write(Lxs7;J)V

    move-wide p1, p2

    :goto_1
    return-wide p1

    :cond_3
    const-string p1, "byteCount < 0: "

    .line 3
    invoke-static {p1, p2, p3}, Ljo;->j(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public readByte()B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lxs7;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2
    iget-object v0, p0, Lxs7;->e:Lqt7;

    invoke-static {v0}, Lim7;->c(Ljava/lang/Object;)V

    .line 3
    iget v1, v0, Lqt7;->b:I

    .line 4
    iget v2, v0, Lqt7;->c:I

    .line 5
    iget-object v3, v0, Lqt7;->a:[B

    add-int/lit8 v4, v1, 0x1

    .line 6
    aget-byte v1, v3, v1

    .line 7
    iget-wide v5, p0, Lxs7;->f:J

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    .line 8
    iput-wide v5, p0, Lxs7;->f:J

    if-ne v4, v2, :cond_0

    .line 9
    invoke-virtual {v0}, Lqt7;->a()Lqt7;

    move-result-object v2

    iput-object v2, p0, Lxs7;->e:Lqt7;

    .line 10
    invoke-static {v0}, Lrt7;->a(Lqt7;)V

    goto :goto_0

    .line 11
    :cond_0
    iput v4, v0, Lqt7;->b:I

    :goto_0
    return v1

    .line 12
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readFully([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 2
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lxs7;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return-void
.end method

.method public readInt()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lxs7;->f:J

    const-wide/16 v2, 0x4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 2
    iget-object v0, p0, Lxs7;->e:Lqt7;

    invoke-static {v0}, Lim7;->c(Ljava/lang/Object;)V

    .line 3
    iget v1, v0, Lqt7;->b:I

    .line 4
    iget v4, v0, Lqt7;->c:I

    sub-int v5, v4, v1

    int-to-long v5, v5

    cmp-long v7, v5, v2

    if-gez v7, :cond_0

    .line 5
    invoke-virtual {p0}, Lxs7;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 6
    invoke-virtual {p0}, Lxs7;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 7
    invoke-virtual {p0}, Lxs7;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 8
    invoke-virtual {p0}, Lxs7;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    goto :goto_1

    .line 9
    :cond_0
    iget-object v5, v0, Lqt7;->a:[B

    add-int/lit8 v6, v1, 0x1

    .line 10
    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v7, v6, 0x1

    .line 11
    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v1, v6

    add-int/lit8 v6, v7, 0x1

    .line 12
    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v1, v7

    add-int/lit8 v7, v6, 0x1

    .line 13
    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    .line 14
    iget-wide v5, p0, Lxs7;->f:J

    sub-long/2addr v5, v2

    .line 15
    iput-wide v5, p0, Lxs7;->f:J

    if-ne v7, v4, :cond_1

    .line 16
    invoke-virtual {v0}, Lqt7;->a()Lqt7;

    move-result-object v2

    iput-object v2, p0, Lxs7;->e:Lqt7;

    .line 17
    invoke-static {v0}, Lrt7;->a(Lqt7;)V

    goto :goto_0

    .line 18
    :cond_1
    iput v7, v0, Lqt7;->b:I

    :goto_0
    move v0, v1

    :goto_1
    return v0

    .line 19
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readLong()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lxs7;->f:J

    const-wide/16 v2, 0x8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 2
    iget-object v0, p0, Lxs7;->e:Lqt7;

    invoke-static {v0}, Lim7;->c(Ljava/lang/Object;)V

    .line 3
    iget v1, v0, Lqt7;->b:I

    .line 4
    iget v4, v0, Lqt7;->c:I

    sub-int v5, v4, v1

    int-to-long v5, v5

    const/16 v7, 0x20

    cmp-long v8, v5, v2

    if-gez v8, :cond_0

    .line 5
    invoke-virtual {p0}, Lxs7;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    shl-long/2addr v0, v7

    .line 6
    invoke-virtual {p0}, Lxs7;->readInt()I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    goto :goto_1

    .line 7
    :cond_0
    iget-object v5, v0, Lqt7;->a:[B

    add-int/lit8 v6, v1, 0x1

    .line 8
    aget-byte v1, v5, v1

    int-to-long v8, v1

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    const/16 v1, 0x38

    shl-long/2addr v8, v1

    add-int/lit8 v1, v6, 0x1

    .line 9
    aget-byte v6, v5, v6

    int-to-long v12, v6

    and-long/2addr v12, v10

    const/16 v6, 0x30

    shl-long/2addr v12, v6

    or-long/2addr v8, v12

    add-int/lit8 v6, v1, 0x1

    .line 10
    aget-byte v1, v5, v1

    int-to-long v12, v1

    and-long/2addr v12, v10

    const/16 v1, 0x28

    shl-long/2addr v12, v1

    or-long/2addr v8, v12

    add-int/lit8 v1, v6, 0x1

    .line 11
    aget-byte v6, v5, v6

    int-to-long v12, v6

    and-long/2addr v12, v10

    shl-long v6, v12, v7

    or-long/2addr v6, v8

    add-int/lit8 v8, v1, 0x1

    .line 12
    aget-byte v1, v5, v1

    int-to-long v12, v1

    and-long/2addr v12, v10

    const/16 v1, 0x18

    shl-long/2addr v12, v1

    or-long/2addr v6, v12

    add-int/lit8 v1, v8, 0x1

    .line 13
    aget-byte v8, v5, v8

    int-to-long v8, v8

    and-long/2addr v8, v10

    const/16 v12, 0x10

    shl-long/2addr v8, v12

    or-long/2addr v6, v8

    add-int/lit8 v8, v1, 0x1

    .line 14
    aget-byte v1, v5, v1

    int-to-long v12, v1

    and-long/2addr v12, v10

    const/16 v1, 0x8

    shl-long/2addr v12, v1

    or-long/2addr v6, v12

    add-int/lit8 v1, v8, 0x1

    .line 15
    aget-byte v5, v5, v8

    int-to-long v8, v5

    and-long/2addr v8, v10

    or-long v5, v6, v8

    .line 16
    iget-wide v7, p0, Lxs7;->f:J

    sub-long/2addr v7, v2

    .line 17
    iput-wide v7, p0, Lxs7;->f:J

    if-ne v1, v4, :cond_1

    .line 18
    invoke-virtual {v0}, Lqt7;->a()Lqt7;

    move-result-object v1

    iput-object v1, p0, Lxs7;->e:Lqt7;

    .line 19
    invoke-static {v0}, Lrt7;->a(Lqt7;)V

    goto :goto_0

    .line 20
    :cond_1
    iput v1, v0, Lqt7;->b:I

    :goto_0
    move-wide v0, v5

    :goto_1
    return-wide v0

    .line 21
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readShort()S
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lxs7;->f:J

    const-wide/16 v2, 0x2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 2
    iget-object v0, p0, Lxs7;->e:Lqt7;

    invoke-static {v0}, Lim7;->c(Ljava/lang/Object;)V

    .line 3
    iget v1, v0, Lqt7;->b:I

    .line 4
    iget v4, v0, Lqt7;->c:I

    sub-int v5, v4, v1

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 5
    invoke-virtual {p0}, Lxs7;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lxs7;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    goto :goto_1

    .line 6
    :cond_0
    iget-object v5, v0, Lqt7;->a:[B

    add-int/lit8 v6, v1, 0x1

    .line 7
    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v7, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    .line 8
    iget-wide v5, p0, Lxs7;->f:J

    sub-long/2addr v5, v2

    .line 9
    iput-wide v5, p0, Lxs7;->f:J

    if-ne v7, v4, :cond_1

    .line 10
    invoke-virtual {v0}, Lqt7;->a()Lqt7;

    move-result-object v2

    iput-object v2, p0, Lxs7;->e:Lqt7;

    .line 11
    invoke-static {v0}, Lrt7;->a(Lqt7;)V

    goto :goto_0

    .line 12
    :cond_1
    iput v7, v0, Lqt7;->b:I

    :goto_0
    int-to-short v0, v1

    :goto_1
    return v0

    .line 13
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public s(J)Lbt7;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const v0, 0x7fffffff

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 1
    iget-wide v0, p0, Lxs7;->f:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_2

    const/16 v0, 0x1000

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    long-to-int v0, p1

    .line 2
    invoke-virtual {p0, v0}, Lxs7;->D(I)Lbt7;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lxs7;->skip(J)V

    goto :goto_1

    .line 3
    :cond_1
    new-instance v0, Lbt7;

    invoke-virtual {p0, p1, p2}, Lxs7;->l0(J)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lbt7;-><init>([B)V

    :goto_1
    return-object v0

    .line 4
    :cond_2
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_3
    const-string v0, "byteCount: "

    .line 5
    invoke-static {v0, p1, p2}, Ljo;->j(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public skip(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 1
    iget-object v0, p0, Lxs7;->e:Lqt7;

    if-eqz v0, :cond_1

    .line 2
    iget v1, v0, Lqt7;->c:I

    iget v2, v0, Lqt7;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 3
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 4
    iget-wide v3, p0, Lxs7;->f:J

    int-to-long v5, v2

    sub-long/2addr v3, v5

    .line 5
    iput-wide v3, p0, Lxs7;->f:J

    sub-long/2addr p1, v5

    .line 6
    iget v1, v0, Lqt7;->b:I

    add-int/2addr v1, v2

    iput v1, v0, Lqt7;->b:I

    .line 7
    iget v2, v0, Lqt7;->c:I

    if-ne v1, v2, :cond_0

    .line 8
    invoke-virtual {v0}, Lqt7;->a()Lqt7;

    move-result-object v1

    iput-object v1, p0, Lxs7;->e:Lqt7;

    .line 9
    invoke-static {v0}, Lrt7;->a(Lqt7;)V

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_2
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 3

    .line 1
    iget-wide v0, p0, Lxs7;->f:J

    sget-object v2, Lwn7;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lxs7;->q(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public timeout()Lwt7;
    .locals 1

    .line 1
    sget-object v0, Lwt7;->NONE:Lwt7;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lxs7;->y()Lbt7;

    move-result-object v0

    invoke-virtual {v0}, Lbt7;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lzs7;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic v(I)Lzs7;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lxs7;->h0(I)Lxs7;

    return-object p0
.end method

.method public w(J)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    sget-object v0, Lwn7;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lxs7;->q(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public w0(Ltt7;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v0, p0, Lxs7;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    check-cast p1, Lxs7;

    invoke-virtual {p1, p0, v0, v1}, Lxs7;->write(Lxs7;J)V

    :cond_0
    return-wide v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_0

    const/4 v2, 0x1

    .line 44
    invoke-virtual {p0, v2}, Lxs7;->E(I)Lqt7;

    move-result-object v2

    .line 45
    iget v3, v2, Lqt7;->c:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 46
    iget-object v4, v2, Lqt7;->a:[B

    iget v5, v2, Lqt7;->c:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v1, v3

    .line 47
    iget v4, v2, Lqt7;->c:I

    add-int/2addr v4, v3

    iput v4, v2, Lqt7;->c:I

    goto :goto_0

    .line 48
    :cond_0
    iget-wide v1, p0, Lxs7;->f:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lxs7;->f:J

    return v0
.end method

.method public write(Lxs7;J)V
    .locals 12

    const-string v0, "source"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_f

    .line 1
    iget-wide v3, p1, Lxs7;->f:J

    const-wide/16 v5, 0x0

    move-wide v7, p2

    .line 2
    invoke-static/range {v3 .. v8}, Ln56;->u(JJJ)V

    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-lez v4, :cond_e

    .line 3
    iget-object v2, p1, Lxs7;->e:Lqt7;

    invoke-static {v2}, Lim7;->c(Ljava/lang/Object;)V

    iget v2, v2, Lqt7;->c:I

    iget-object v3, p1, Lxs7;->e:Lqt7;

    invoke-static {v3}, Lim7;->c(Ljava/lang/Object;)V

    iget v3, v3, Lqt7;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    const/16 v4, 0x2000

    cmp-long v5, p2, v2

    if-gez v5, :cond_7

    .line 4
    iget-object v2, p0, Lxs7;->e:Lqt7;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lim7;->c(Ljava/lang/Object;)V

    iget-object v2, v2, Lqt7;->g:Lqt7;

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_3

    .line 5
    iget-boolean v3, v2, Lqt7;->e:Z

    if-eqz v3, :cond_3

    iget v3, v2, Lqt7;->c:I

    int-to-long v5, v3

    add-long/2addr v5, p2

    iget-boolean v3, v2, Lqt7;->d:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_3

    :cond_2
    iget v3, v2, Lqt7;->b:I

    :goto_3
    int-to-long v7, v3

    sub-long/2addr v5, v7

    int-to-long v7, v4

    cmp-long v3, v5, v7

    if-gtz v3, :cond_3

    .line 6
    iget-object v0, p1, Lxs7;->e:Lqt7;

    invoke-static {v0}, Lim7;->c(Ljava/lang/Object;)V

    long-to-int v1, p2

    invoke-virtual {v0, v2, v1}, Lqt7;->d(Lqt7;I)V

    .line 7
    iget-wide v0, p1, Lxs7;->f:J

    sub-long/2addr v0, p2

    .line 8
    iput-wide v0, p1, Lxs7;->f:J

    .line 9
    iget-wide v0, p0, Lxs7;->f:J

    add-long/2addr v0, p2

    .line 10
    iput-wide v0, p0, Lxs7;->f:J

    goto/16 :goto_a

    .line 11
    :cond_3
    iget-object v2, p1, Lxs7;->e:Lqt7;

    invoke-static {v2}, Lim7;->c(Ljava/lang/Object;)V

    long-to-int v3, p2

    if-lez v3, :cond_4

    .line 12
    iget v5, v2, Lqt7;->c:I

    iget v6, v2, Lqt7;->b:I

    sub-int/2addr v5, v6

    if-gt v3, v5, :cond_4

    const/4 v5, 0x1

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_6

    const/16 v5, 0x400

    if-lt v3, v5, :cond_5

    .line 13
    invoke-virtual {v2}, Lqt7;->c()Lqt7;

    move-result-object v5

    goto :goto_5

    .line 14
    :cond_5
    invoke-static {}, Lrt7;->b()Lqt7;

    move-result-object v5

    .line 15
    iget-object v6, v2, Lqt7;->a:[B

    iget-object v7, v5, Lqt7;->a:[B

    const/4 v8, 0x0

    iget v9, v2, Lqt7;->b:I

    add-int v10, v9, v3

    const/4 v11, 0x2

    invoke-static/range {v6 .. v11}, Lek7;->c([B[BIIII)[B

    .line 16
    :goto_5
    iget v6, v5, Lqt7;->b:I

    add-int/2addr v6, v3

    iput v6, v5, Lqt7;->c:I

    .line 17
    iget v6, v2, Lqt7;->b:I

    add-int/2addr v6, v3

    iput v6, v2, Lqt7;->b:I

    .line 18
    iget-object v2, v2, Lqt7;->g:Lqt7;

    invoke-static {v2}, Lim7;->c(Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Lqt7;->b(Lqt7;)Lqt7;

    .line 19
    iput-object v5, p1, Lxs7;->e:Lqt7;

    goto :goto_6

    .line 20
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "byteCount out of range"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_7
    :goto_6
    iget-object v2, p1, Lxs7;->e:Lqt7;

    .line 22
    invoke-static {v2}, Lim7;->c(Ljava/lang/Object;)V

    iget v3, v2, Lqt7;->c:I

    iget v5, v2, Lqt7;->b:I

    sub-int/2addr v3, v5

    int-to-long v5, v3

    .line 23
    invoke-virtual {v2}, Lqt7;->a()Lqt7;

    move-result-object v3

    iput-object v3, p1, Lxs7;->e:Lqt7;

    .line 24
    iget-object v3, p0, Lxs7;->e:Lqt7;

    if-nez v3, :cond_8

    .line 25
    iput-object v2, p0, Lxs7;->e:Lqt7;

    .line 26
    iput-object v2, v2, Lqt7;->g:Lqt7;

    .line 27
    iput-object v2, v2, Lqt7;->f:Lqt7;

    goto :goto_9

    .line 28
    :cond_8
    invoke-static {v3}, Lim7;->c(Ljava/lang/Object;)V

    iget-object v3, v3, Lqt7;->g:Lqt7;

    .line 29
    invoke-static {v3}, Lim7;->c(Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Lqt7;->b(Lqt7;)Lqt7;

    .line 30
    iget-object v3, v2, Lqt7;->g:Lqt7;

    if-eq v3, v2, :cond_9

    const/4 v7, 0x1

    goto :goto_7

    :cond_9
    const/4 v7, 0x0

    :goto_7
    if-eqz v7, :cond_d

    .line 31
    invoke-static {v3}, Lim7;->c(Ljava/lang/Object;)V

    iget-boolean v3, v3, Lqt7;->e:Z

    if-nez v3, :cond_a

    goto :goto_9

    .line 32
    :cond_a
    iget v3, v2, Lqt7;->c:I

    iget v7, v2, Lqt7;->b:I

    sub-int/2addr v3, v7

    .line 33
    iget-object v7, v2, Lqt7;->g:Lqt7;

    invoke-static {v7}, Lim7;->c(Ljava/lang/Object;)V

    iget v7, v7, Lqt7;->c:I

    sub-int/2addr v4, v7

    iget-object v7, v2, Lqt7;->g:Lqt7;

    invoke-static {v7}, Lim7;->c(Ljava/lang/Object;)V

    iget-boolean v7, v7, Lqt7;->d:Z

    if-eqz v7, :cond_b

    const/4 v7, 0x0

    goto :goto_8

    :cond_b
    iget-object v7, v2, Lqt7;->g:Lqt7;

    invoke-static {v7}, Lim7;->c(Ljava/lang/Object;)V

    iget v7, v7, Lqt7;->b:I

    :goto_8
    add-int/2addr v4, v7

    if-le v3, v4, :cond_c

    goto :goto_9

    .line 34
    :cond_c
    iget-object v4, v2, Lqt7;->g:Lqt7;

    invoke-static {v4}, Lim7;->c(Ljava/lang/Object;)V

    invoke-virtual {v2, v4, v3}, Lqt7;->d(Lqt7;I)V

    .line 35
    invoke-virtual {v2}, Lqt7;->a()Lqt7;

    .line 36
    invoke-static {v2}, Lrt7;->a(Lqt7;)V

    .line 37
    :goto_9
    iget-wide v2, p1, Lxs7;->f:J

    sub-long/2addr v2, v5

    .line 38
    iput-wide v2, p1, Lxs7;->f:J

    .line 39
    iget-wide v2, p0, Lxs7;->f:J

    add-long/2addr v2, v5

    .line 40
    iput-wide v2, p0, Lxs7;->f:J

    sub-long/2addr p2, v5

    goto/16 :goto_1

    .line 41
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "cannot compact"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    :goto_a
    return-void

    .line 42
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == this"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public x()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lxs7;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_b

    .line 2
    invoke-virtual {p0, v2, v3}, Lxs7;->f(J)B

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x1

    const/16 v3, 0x80

    const v4, 0xfffd

    if-nez v1, :cond_0

    and-int/lit8 v1, v0, 0x7f

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    and-int/lit16 v1, v0, 0xe0

    const/16 v5, 0xc0

    if-ne v1, v5, :cond_1

    and-int/lit8 v1, v0, 0x1f

    const/4 v5, 0x2

    const/16 v6, 0x80

    goto :goto_0

    :cond_1
    and-int/lit16 v1, v0, 0xf0

    const/16 v5, 0xe0

    if-ne v1, v5, :cond_2

    and-int/lit8 v1, v0, 0xf

    const/4 v5, 0x3

    const/16 v6, 0x800

    goto :goto_0

    :cond_2
    and-int/lit16 v1, v0, 0xf8

    const/16 v5, 0xf0

    if-ne v1, v5, :cond_a

    and-int/lit8 v1, v0, 0x7

    const/4 v5, 0x4

    const/high16 v6, 0x10000

    .line 3
    :goto_0
    iget-wide v7, p0, Lxs7;->f:J

    int-to-long v9, v5

    cmp-long v11, v7, v9

    if-ltz v11, :cond_9

    :goto_1
    if-ge v2, v5, :cond_4

    int-to-long v7, v2

    .line 4
    invoke-virtual {p0, v7, v8}, Lxs7;->f(J)B

    move-result v0

    and-int/lit16 v11, v0, 0xc0

    if-ne v11, v3, :cond_3

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5
    :cond_3
    invoke-virtual {p0, v7, v8}, Lxs7;->skip(J)V

    goto :goto_3

    .line 6
    :cond_4
    invoke-virtual {p0, v9, v10}, Lxs7;->skip(J)V

    const v0, 0x10ffff

    if-le v1, v0, :cond_5

    goto :goto_3

    :cond_5
    const v0, 0xdfff

    const v2, 0xd800

    if-le v2, v1, :cond_6

    goto :goto_2

    :cond_6
    if-lt v0, v1, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    if-ge v1, v6, :cond_8

    goto :goto_3

    :cond_8
    move v4, v1

    goto :goto_3

    .line 7
    :cond_9
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "size < "

    const-string v3, ": "

    invoke-static {v2, v5, v3}, Ljo;->A(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8
    iget-wide v3, p0, Lxs7;->f:J

    .line 9
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " (to read code point prefixed 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ln56;->t2(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    const-wide/16 v0, 0x1

    .line 10
    invoke-virtual {p0, v0, v1}, Lxs7;->skip(J)V

    :goto_3
    return v4

    .line 11
    :cond_b
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public final y()Lbt7;
    .locals 5

    .line 1
    iget-wide v0, p0, Lxs7;->f:J

    const v2, 0x7fffffff

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    long-to-int v1, v0

    .line 2
    invoke-virtual {p0, v1}, Lxs7;->D(I)Lbt7;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "size > Int.MAX_VALUE: "

    .line 3
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    iget-wide v1, p0, Lxs7;->f:J

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic z(I)Lzs7;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lxs7;->a0(I)Lxs7;

    return-object p0
.end method
