.class public final Lpa7$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lma7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpa7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final e:Lzs7;

.field public final f:Z

.field public final g:Lxs7;

.field public final h:Loa7$b;

.field public i:I

.field public j:Z


# direct methods
.method public constructor <init>(Lzs7;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lpa7$d;->e:Lzs7;

    .line 3
    iput-boolean p2, p0, Lpa7$d;->f:Z

    .line 4
    new-instance p1, Lxs7;

    invoke-direct {p1}, Lxs7;-><init>()V

    iput-object p1, p0, Lpa7$d;->g:Lxs7;

    .line 5
    new-instance p2, Loa7$b;

    invoke-direct {p2, p1}, Loa7$b;-><init>(Lxs7;)V

    iput-object p2, p0, Lpa7$d;->h:Loa7$b;

    const/16 p1, 0x4000

    .line 6
    iput p1, p0, Lpa7$d;->i:I

    return-void
.end method


# virtual methods
.method public declared-synchronized B0(ZZIILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List<",
            "Lna7;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-nez p2, :cond_1

    .line 1
    :try_start_0
    iget-boolean p2, p0, Lpa7$d;->j:Z

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p0, p1, p3, p5}, Lpa7$d;->b(ZILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized H0(ILka7;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lpa7$d;->j:Z

    if-nez v0, :cond_2

    .line 2
    iget v0, p2, Lka7;->e:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 3
    array-length v0, p3

    add-int/lit8 v0, v0, 0x8

    const/4 v1, 0x7

    .line 4
    invoke-virtual {p0, v2, v0, v1, v2}, Lpa7$d;->a(IIBB)V

    .line 5
    iget-object v0, p0, Lpa7$d;->e:Lzs7;

    invoke-interface {v0, p1}, Lzs7;->z(I)Lzs7;

    .line 6
    iget-object p1, p0, Lpa7$d;->e:Lzs7;

    iget p2, p2, Lka7;->e:I

    invoke-interface {p1, p2}, Lzs7;->z(I)Lzs7;

    .line 7
    array-length p1, p3

    if-lez p1, :cond_0

    .line 8
    iget-object p1, p0, Lpa7$d;->e:Lzs7;

    invoke-interface {p1, p3}, Lzs7;->o0([B)Lzs7;

    .line 9
    :cond_0
    iget-object p1, p0, Lpa7$d;->e:Lzs7;

    invoke-interface {p1}, Lzs7;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string p1, "errorCode.httpCode == -1"

    new-array p2, v2, [Ljava/lang/Object;

    .line 11
    invoke-static {p1, p2}, Lpa7;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    throw p1

    .line 12
    :cond_2
    :try_start_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized I0(ILka7;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lpa7$d;->j:Z

    if-nez v0, :cond_1

    .line 2
    iget v0, p2, Lka7;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, p1, v0, v1, v2}, Lpa7$d;->a(IIBB)V

    .line 4
    iget-object p1, p0, Lpa7$d;->e:Lzs7;

    iget p2, p2, Lka7;->e:I

    invoke-interface {p1, p2}, Lzs7;->z(I)Lzs7;

    .line 5
    iget-object p1, p0, Lpa7$d;->e:Lzs7;

    invoke-interface {p1}, Lzs7;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 8
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized X(Lra7;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lpa7$d;->j:Z

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lpa7$d;->i:I

    .line 3
    iget v1, p1, Lra7;->a:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    iget-object p1, p1, Lra7;->d:[I

    const/4 v0, 0x5

    aget v0, p1, v0

    .line 4
    :cond_0
    iput v0, p0, Lpa7$d;->i:I

    const/4 p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v1, v1, p1, v0}, Lpa7$d;->a(IIBB)V

    .line 6
    iget-object p1, p0, Lpa7$d;->e:Lzs7;

    invoke-interface {p1}, Lzs7;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(IIBB)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lpa7;->a:Ljava/util/logging/Logger;

    .line 2
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v2, p1, p2, p3, p4}, Lpa7$b;->a(ZIIBB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget v0, p0, Lpa7$d;->i:I

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-gt p2, v0, :cond_2

    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lpa7$d;->e:Lzs7;

    ushr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    .line 5
    invoke-interface {v0, v1}, Lzs7;->K(I)Lzs7;

    ushr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 6
    invoke-interface {v0, v1}, Lzs7;->K(I)Lzs7;

    and-int/lit16 p2, p2, 0xff

    .line 7
    invoke-interface {v0, p2}, Lzs7;->K(I)Lzs7;

    .line 8
    iget-object p2, p0, Lpa7$d;->e:Lzs7;

    and-int/lit16 p3, p3, 0xff

    invoke-interface {p2, p3}, Lzs7;->K(I)Lzs7;

    .line 9
    iget-object p2, p0, Lpa7$d;->e:Lzs7;

    and-int/lit16 p3, p4, 0xff

    invoke-interface {p2, p3}, Lzs7;->K(I)Lzs7;

    .line 10
    iget-object p2, p0, Lpa7$d;->e:Lzs7;

    const p3, 0x7fffffff

    and-int/2addr p1, p3

    invoke-interface {p2, p1}, Lzs7;->z(I)Lzs7;

    return-void

    :cond_1
    new-array p2, v3, [Ljava/lang/Object;

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v2

    const-string p1, "reserved bit set: %s"

    invoke-static {p1, p2}, Lpa7;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    throw v1

    :cond_2
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "FRAME_SIZE_ERROR length > %d: %d"

    invoke-static {p2, p1}, Lpa7;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    throw v1
.end method

.method public b(ZILjava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lna7;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1
    iget-boolean v2, v0, Lpa7$d;->j:Z

    if-nez v2, :cond_e

    .line 2
    iget-object v2, v0, Lpa7$d;->h:Loa7$b;

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v3, :cond_9

    move-object/from16 v7, p3

    .line 5
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lna7;

    .line 6
    iget-object v9, v8, Lna7;->a:Lbt7;

    invoke-virtual {v9}, Lbt7;->M()Lbt7;

    move-result-object v9

    .line 7
    iget-object v10, v8, Lna7;->b:Lbt7;

    .line 8
    sget-object v11, Loa7;->c:Ljava/util/Map;

    .line 9
    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    const/4 v12, -0x1

    if-eqz v11, :cond_2

    .line 10
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v11, v6

    const/4 v13, 0x2

    if-lt v11, v13, :cond_1

    const/4 v13, 0x7

    if-gt v11, v13, :cond_1

    .line 11
    sget-object v13, Loa7;->b:[Lna7;

    add-int/lit8 v14, v11, -0x1

    .line 12
    aget-object v14, v13, v14

    iget-object v14, v14, Lna7;->b:Lbt7;

    invoke-virtual {v14, v10}, Lbt7;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    move v13, v11

    goto :goto_1

    .line 13
    :cond_0
    aget-object v13, v13, v11

    iget-object v13, v13, Lna7;->b:Lbt7;

    invoke-virtual {v13, v10}, Lbt7;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    add-int/lit8 v13, v11, 0x1

    move/from16 v16, v13

    move v13, v11

    move/from16 v11, v16

    goto :goto_1

    :cond_1
    move v13, v11

    const/4 v11, -0x1

    goto :goto_1

    :cond_2
    const/4 v11, -0x1

    const/4 v13, -0x1

    :goto_1
    if-ne v11, v12, :cond_5

    .line 14
    iget v14, v2, Loa7$b;->e:I

    :goto_2
    add-int/2addr v14, v6

    iget-object v15, v2, Loa7$b;->c:[Lna7;

    array-length v6, v15

    if-ge v14, v6, :cond_5

    .line 15
    aget-object v6, v15, v14

    iget-object v6, v6, Lna7;->a:Lbt7;

    invoke-virtual {v6, v9}, Lbt7;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 16
    iget-object v6, v2, Loa7$b;->c:[Lna7;

    aget-object v6, v6, v14

    iget-object v6, v6, Lna7;->b:Lbt7;

    invoke-virtual {v6, v10}, Lbt7;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 17
    iget v6, v2, Loa7$b;->e:I

    sub-int/2addr v14, v6

    .line 18
    sget-object v6, Loa7;->b:[Lna7;

    .line 19
    array-length v6, v6

    add-int v11, v6, v14

    goto :goto_3

    :cond_3
    if-ne v13, v12, :cond_4

    .line 20
    iget v6, v2, Loa7$b;->e:I

    sub-int v6, v14, v6

    .line 21
    sget-object v13, Loa7;->b:[Lna7;

    .line 22
    array-length v13, v13

    add-int/2addr v6, v13

    move v13, v6

    :cond_4
    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    if-eq v11, v12, :cond_6

    const/16 v6, 0x7f

    const/16 v8, 0x80

    .line 23
    invoke-virtual {v2, v11, v6, v8}, Loa7$b;->c(III)V

    goto :goto_4

    :cond_6
    const/16 v6, 0x40

    if-ne v13, v12, :cond_7

    .line 24
    iget-object v11, v2, Loa7$b;->a:Lxs7;

    invoke-virtual {v11, v6}, Lxs7;->Q(I)Lxs7;

    .line 25
    invoke-virtual {v2, v9}, Loa7$b;->b(Lbt7;)V

    .line 26
    invoke-virtual {v2, v10}, Loa7$b;->b(Lbt7;)V

    .line 27
    invoke-virtual {v2, v8}, Loa7$b;->a(Lna7;)V

    goto :goto_4

    .line 28
    :cond_7
    sget-object v11, Loa7;->a:Lbt7;

    .line 29
    invoke-virtual {v9, v11}, Lbt7;->L(Lbt7;)Z

    move-result v11

    if-eqz v11, :cond_8

    sget-object v11, Lna7;->h:Lbt7;

    invoke-virtual {v11, v9}, Lbt7;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    const/16 v6, 0xf

    .line 30
    invoke-virtual {v2, v13, v6, v4}, Loa7$b;->c(III)V

    .line 31
    invoke-virtual {v2, v10}, Loa7$b;->b(Lbt7;)V

    goto :goto_4

    :cond_8
    const/16 v9, 0x3f

    .line 32
    invoke-virtual {v2, v13, v9, v6}, Loa7$b;->c(III)V

    .line 33
    invoke-virtual {v2, v10}, Loa7$b;->b(Lbt7;)V

    .line 34
    invoke-virtual {v2, v8}, Loa7$b;->a(Lna7;)V

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 35
    :cond_9
    iget-object v2, v0, Lpa7$d;->g:Lxs7;

    .line 36
    iget-wide v2, v2, Lxs7;->f:J

    .line 37
    iget v5, v0, Lpa7$d;->i:I

    int-to-long v5, v5

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v6, v5

    int-to-long v7, v6

    const/4 v5, 0x4

    cmp-long v9, v2, v7

    if-nez v9, :cond_a

    const/4 v10, 0x4

    goto :goto_5

    :cond_a
    const/4 v10, 0x0

    :goto_5
    if-eqz p1, :cond_b

    or-int/lit8 v10, v10, 0x1

    int-to-byte v10, v10

    :cond_b
    const/4 v11, 0x1

    .line 38
    invoke-virtual {v0, v1, v6, v11, v10}, Lpa7$d;->a(IIBB)V

    .line 39
    iget-object v6, v0, Lpa7$d;->e:Lzs7;

    iget-object v10, v0, Lpa7$d;->g:Lxs7;

    invoke-interface {v6, v10, v7, v8}, Ltt7;->write(Lxs7;J)V

    if-lez v9, :cond_d

    sub-long/2addr v2, v7

    :goto_6
    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-lez v8, :cond_d

    .line 40
    iget v8, v0, Lpa7$d;->i:I

    int-to-long v8, v8

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v9, v8

    int-to-long v10, v9

    sub-long/2addr v2, v10

    const/16 v8, 0x9

    cmp-long v12, v2, v6

    if-nez v12, :cond_c

    const/4 v6, 0x4

    goto :goto_7

    :cond_c
    const/4 v6, 0x0

    .line 41
    :goto_7
    invoke-virtual {v0, v1, v9, v8, v6}, Lpa7$d;->a(IIBB)V

    .line 42
    iget-object v6, v0, Lpa7$d;->e:Lzs7;

    iget-object v7, v0, Lpa7$d;->g:Lxs7;

    invoke-interface {v6, v7, v10, v11}, Ltt7;->write(Lxs7;J)V

    goto :goto_6

    :cond_d
    return-void

    .line 43
    :cond_e
    new-instance v1, Ljava/io/IOException;

    const-string v2, "closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lpa7$d;->j:Z

    .line 2
    iget-object v0, p0, Lpa7$d;->e:Lzs7;

    invoke-interface {v0}, Ltt7;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connectionPreface()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lpa7$d;->j:Z

    if-nez v0, :cond_2

    .line 2
    iget-boolean v0, p0, Lpa7$d;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    sget-object v0, Lpa7;->a:Ljava/util/logging/Logger;

    .line 4
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ">> CONNECTION %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 5
    sget-object v4, Lpa7;->b:Lbt7;

    .line 6
    invoke-virtual {v4}, Lbt7;->w()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lpa7$d;->e:Lzs7;

    .line 8
    sget-object v1, Lpa7;->b:Lbt7;

    .line 9
    invoke-virtual {v1}, Lbt7;->N()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lzs7;->o0([B)Lzs7;

    .line 10
    iget-object v0, p0, Lpa7$d;->e:Lzs7;

    invoke-interface {v0}, Lzs7;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    .line 12
    :cond_2
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized data(ZILxs7;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lpa7$d;->j:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    int-to-byte p1, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0, p2, p4, v0, p1}, Lpa7$d;->a(IIBB)V

    if-lez p4, :cond_1

    .line 3
    iget-object p1, p0, Lpa7$d;->e:Lzs7;

    int-to-long v0, p4

    invoke-interface {p1, p3, v0, v1}, Ltt7;->write(Lxs7;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_1
    monitor-exit p0

    return-void

    .line 5
    :cond_2
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized f0(Lra7;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lpa7$d;->j:Z

    if-nez v0, :cond_4

    .line 2
    iget v0, p1, Lra7;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 3
    invoke-virtual {p0, v1, v0, v2, v1}, Lpa7$d;->a(IIBB)V

    :goto_0
    const/16 v0, 0xa

    if-ge v1, v0, :cond_3

    .line 4
    invoke-virtual {p1, v1}, Lra7;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    if-ne v1, v2, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :cond_1
    const/4 v0, 0x7

    if-ne v1, v0, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    :cond_2
    move v0, v1

    .line 5
    :goto_1
    iget-object v3, p0, Lpa7$d;->e:Lzs7;

    invoke-interface {v3, v0}, Lzs7;->v(I)Lzs7;

    .line 6
    iget-object v0, p0, Lpa7$d;->e:Lzs7;

    .line 7
    iget-object v3, p1, Lra7;->d:[I

    aget v3, v3, v1

    .line 8
    invoke-interface {v0, v3}, Lzs7;->z(I)Lzs7;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_3
    iget-object p1, p0, Lpa7$d;->e:Lzs7;

    invoke-interface {p1}, Lzs7;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    .line 11
    :cond_4
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lpa7$d;->j:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lpa7$d;->e:Lzs7;

    invoke-interface {v0}, Lzs7;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public maxDataLength()I
    .locals 1

    .line 1
    iget v0, p0, Lpa7$d;->i:I

    return v0
.end method

.method public declared-synchronized ping(ZII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lpa7$d;->j:Z

    if-nez v0, :cond_1

    const/16 v0, 0x8

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0, v2, v0, v1, p1}, Lpa7$d;->a(IIBB)V

    .line 3
    iget-object p1, p0, Lpa7$d;->e:Lzs7;

    invoke-interface {p1, p2}, Lzs7;->z(I)Lzs7;

    .line 4
    iget-object p1, p0, Lpa7$d;->e:Lzs7;

    invoke-interface {p1, p3}, Lzs7;->z(I)Lzs7;

    .line 5
    iget-object p1, p0, Lpa7$d;->e:Lzs7;

    invoke-interface {p1}, Lzs7;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized windowUpdate(IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lpa7$d;->j:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p2, v0

    if-eqz v3, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v3, p2, v0

    if-gtz v3, :cond_0

    const/4 v0, 0x4

    const/16 v1, 0x8

    .line 2
    invoke-virtual {p0, p1, v0, v1, v2}, Lpa7$d;->a(IIBB)V

    .line 3
    iget-object p1, p0, Lpa7$d;->e:Lzs7;

    long-to-int p3, p2

    invoke-interface {p1, p3}, Lzs7;->z(I)Lzs7;

    .line 4
    iget-object p1, p0, Lpa7$d;->e:Lzs7;

    invoke-interface {p1}, Lzs7;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 6
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v2

    .line 7
    invoke-static {p1, v0}, Lpa7;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    throw p1

    .line 8
    :cond_1
    :try_start_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
