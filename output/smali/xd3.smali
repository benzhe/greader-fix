.class public abstract Lxd3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loe3;


# instance fields
.field public final a:I

.field public b:Lqe3;

.field public c:I

.field public d:I

.field public e:Lri3;

.field public f:J

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lxd3;->a:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lxd3;->g:Z

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyd3;
        }
    .end annotation

    return-void
.end method

.method public abstract e()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyd3;
        }
    .end annotation
.end method

.method public abstract f()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyd3;
        }
    .end annotation
.end method

.method public final g(Lme3;Lzf3;Z)I
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v1, Lxd3;->e:Lri3;

    .line 2
    iget-object v4, v3, Lri3;->b:Lmi3;

    iget v3, v3, Lri3;->a:I

    .line 3
    iget-boolean v5, v4, Lmi3;->y:Z

    if-nez v5, :cond_1f

    invoke-virtual {v4}, Lmi3;->s()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_c

    .line 4
    :cond_0
    iget-object v5, v4, Lmi3;->s:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhj3;

    iget-boolean v5, v4, Lmi3;->J:Z

    iget-wide v10, v4, Lmi3;->G:J

    .line 5
    iget-object v4, v3, Lhj3;->c:Lfj3;

    iget-object v12, v3, Lhj3;->i:Lcom/google/android/gms/internal/ads/zzht;

    iget-object v13, v3, Lhj3;->d:Lej3;

    .line 6
    monitor-enter v4

    .line 7
    :try_start_0
    invoke-virtual {v4}, Lfj3;->b()Z

    move-result v14

    const/4 v15, 0x0

    if-nez v14, :cond_4

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    .line 8
    iput v5, v2, Lzf3;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit v4

    goto/16 :goto_3

    .line 10
    :cond_1
    :try_start_1
    iget-object v5, v4, Lfj3;->q:Lcom/google/android/gms/internal/ads/zzht;

    if-eqz v5, :cond_3

    if-nez p3, :cond_2

    if-eq v5, v12, :cond_3

    .line 11
    :cond_2
    iput-object v5, v0, Lme3;->a:Lcom/google/android/gms/internal/ads/zzht;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    monitor-exit v4

    goto/16 :goto_5

    .line 13
    :cond_3
    monitor-exit v4

    goto :goto_1

    :cond_4
    if-nez p3, :cond_a

    .line 14
    :try_start_2
    iget-object v5, v4, Lfj3;->h:[Lcom/google/android/gms/internal/ads/zzht;

    iget v14, v4, Lfj3;->k:I

    aget-object v5, v5, v14

    if-eq v5, v12, :cond_5

    goto :goto_4

    .line 15
    :cond_5
    iget-object v5, v2, Lzf3;->c:Ljava/nio/ByteBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_6

    const/4 v5, 0x1

    goto :goto_0

    :cond_6
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_7

    .line 16
    monitor-exit v4

    :goto_1
    const/4 v4, -0x5

    const/4 v7, -0x3

    goto :goto_6

    .line 17
    :cond_7
    :try_start_3
    iget-object v5, v4, Lfj3;->f:[J

    aget-wide v6, v5, v14

    iput-wide v6, v2, Lzf3;->d:J

    .line 18
    iget-object v5, v4, Lfj3;->e:[I

    aget v5, v5, v14

    .line 19
    iput v5, v2, Lzf3;->a:I

    .line 20
    iget-object v5, v4, Lfj3;->d:[I

    aget v5, v5, v14

    iput v5, v13, Lej3;->a:I

    .line 21
    iget-object v5, v4, Lfj3;->c:[J

    aget-wide v8, v5, v14

    iput-wide v8, v13, Lej3;->b:J

    .line 22
    iget-object v5, v4, Lfj3;->g:[Lqg3;

    aget-object v5, v5, v14

    iput-object v5, v13, Lej3;->d:Lqg3;

    .line 23
    iget-wide v8, v4, Lfj3;->m:J

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v4, Lfj3;->m:J

    .line 24
    iget v5, v4, Lfj3;->i:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    iput v5, v4, Lfj3;->i:I

    .line 25
    iget v7, v4, Lfj3;->k:I

    add-int/2addr v7, v6

    iput v7, v4, Lfj3;->k:I

    .line 26
    iget v8, v4, Lfj3;->j:I

    add-int/2addr v8, v6

    iput v8, v4, Lfj3;->j:I

    .line 27
    iget v6, v4, Lfj3;->a:I

    if-ne v7, v6, :cond_8

    .line 28
    iput v15, v4, Lfj3;->k:I

    :cond_8
    if-lez v5, :cond_9

    .line 29
    iget-object v5, v4, Lfj3;->c:[J

    iget v6, v4, Lfj3;->k:I

    aget-wide v6, v5, v6

    goto :goto_2

    .line 30
    :cond_9
    iget-wide v5, v13, Lej3;->b:J

    iget v7, v13, Lej3;->a:I

    int-to-long v7, v7

    add-long v6, v5, v7

    :goto_2
    iput-wide v6, v13, Lej3;->c:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 31
    monitor-exit v4

    :goto_3
    const/4 v4, -0x5

    const/4 v7, -0x4

    goto :goto_6

    .line 32
    :cond_a
    :goto_4
    :try_start_4
    iget-object v5, v4, Lfj3;->h:[Lcom/google/android/gms/internal/ads/zzht;

    iget v6, v4, Lfj3;->k:I

    aget-object v5, v5, v6

    iput-object v5, v0, Lme3;->a:Lcom/google/android/gms/internal/ads/zzht;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 33
    monitor-exit v4

    :goto_5
    const/4 v4, -0x5

    const/4 v7, -0x5

    :goto_6
    if-eq v7, v4, :cond_1e

    const/4 v4, -0x4

    if-eq v7, v4, :cond_c

    const/4 v4, -0x3

    if-ne v7, v4, :cond_b

    goto/16 :goto_c

    .line 34
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 35
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lzf3;->d()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 36
    iget-wide v4, v2, Lzf3;->d:J

    cmp-long v6, v4, v10

    if-gez v6, :cond_d

    .line 37
    iget v4, v2, Lzf3;->a:I

    const/high16 v5, -0x80000000

    or-int/2addr v4, v5

    iput v4, v2, Lzf3;->a:I

    :cond_d
    const/high16 v4, 0x40000000    # 2.0f

    .line 38
    invoke-virtual {v2, v4}, Lzf3;->b(I)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 39
    iget-object v4, v3, Lhj3;->d:Lej3;

    .line 40
    iget-wide v5, v4, Lej3;->b:J

    .line 41
    iget-object v7, v3, Lhj3;->e:Lal3;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lal3;->f(I)V

    .line 42
    iget-object v7, v3, Lhj3;->e:Lal3;

    iget-object v7, v7, Lal3;->a:[B

    invoke-virtual {v3, v5, v6, v7, v8}, Lhj3;->d(J[BI)V

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    .line 43
    iget-object v7, v3, Lhj3;->e:Lal3;

    iget-object v7, v7, Lal3;->a:[B

    aget-byte v7, v7, v15

    and-int/lit16 v8, v7, 0x80

    if-eqz v8, :cond_e

    const/4 v8, 0x1

    goto :goto_7

    :cond_e
    const/4 v8, 0x0

    :goto_7
    and-int/lit8 v7, v7, 0x7f

    .line 44
    iget-object v9, v2, Lzf3;->b:Lwf3;

    iget-object v10, v9, Lwf3;->a:[B

    const/16 v11, 0x10

    if-nez v10, :cond_f

    new-array v10, v11, [B

    .line 45
    iput-object v10, v9, Lwf3;->a:[B

    .line 46
    :cond_f
    iget-object v9, v9, Lwf3;->a:[B

    invoke-virtual {v3, v5, v6, v9, v7}, Lhj3;->d(J[BI)V

    int-to-long v9, v7

    add-long/2addr v5, v9

    if-eqz v8, :cond_10

    .line 47
    iget-object v7, v3, Lhj3;->e:Lal3;

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Lal3;->f(I)V

    .line 48
    iget-object v7, v3, Lhj3;->e:Lal3;

    iget-object v7, v7, Lal3;->a:[B

    invoke-virtual {v3, v5, v6, v7, v9}, Lhj3;->d(J[BI)V

    const-wide/16 v9, 0x2

    add-long/2addr v5, v9

    .line 49
    iget-object v7, v3, Lhj3;->e:Lal3;

    invoke-virtual {v7}, Lal3;->e()I

    move-result v7

    goto :goto_8

    :cond_10
    const/4 v7, 0x1

    .line 50
    :goto_8
    iget-object v9, v2, Lzf3;->b:Lwf3;

    iget-object v10, v9, Lwf3;->d:[I

    if-eqz v10, :cond_11

    .line 51
    array-length v13, v10

    if-ge v13, v7, :cond_12

    .line 52
    :cond_11
    new-array v10, v7, [I

    .line 53
    :cond_12
    iget-object v9, v9, Lwf3;->e:[I

    if-eqz v9, :cond_13

    .line 54
    array-length v13, v9

    if-ge v13, v7, :cond_14

    .line 55
    :cond_13
    new-array v9, v7, [I

    :cond_14
    if-eqz v8, :cond_15

    mul-int/lit8 v8, v7, 0x6

    .line 56
    iget-object v13, v3, Lhj3;->e:Lal3;

    invoke-virtual {v13, v8}, Lal3;->f(I)V

    .line 57
    iget-object v13, v3, Lhj3;->e:Lal3;

    iget-object v13, v13, Lal3;->a:[B

    invoke-virtual {v3, v5, v6, v13, v8}, Lhj3;->d(J[BI)V

    int-to-long v13, v8

    add-long/2addr v5, v13

    .line 58
    iget-object v8, v3, Lhj3;->e:Lal3;

    invoke-virtual {v8, v15}, Lal3;->h(I)V

    const/4 v8, 0x0

    :goto_9
    if-ge v8, v7, :cond_16

    .line 59
    iget-object v13, v3, Lhj3;->e:Lal3;

    invoke-virtual {v13}, Lal3;->e()I

    move-result v13

    aput v13, v10, v8

    .line 60
    iget-object v13, v3, Lhj3;->e:Lal3;

    invoke-virtual {v13}, Lal3;->o()I

    move-result v13

    aput v13, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 61
    :cond_15
    aput v15, v10, v15

    .line 62
    iget v8, v4, Lej3;->a:I

    iget-wide v13, v4, Lej3;->b:J

    sub-long v13, v5, v13

    long-to-int v14, v13

    sub-int/2addr v8, v14

    aput v8, v9, v15

    .line 63
    :cond_16
    iget-object v8, v4, Lej3;->d:Lqg3;

    .line 64
    iget-object v13, v2, Lzf3;->b:Lwf3;

    iget-object v8, v8, Lqg3;->a:[B

    iget-object v14, v13, Lwf3;->a:[B

    .line 65
    iput v7, v13, Lwf3;->f:I

    .line 66
    iput-object v10, v13, Lwf3;->d:[I

    .line 67
    iput-object v9, v13, Lwf3;->e:[I

    .line 68
    iput-object v8, v13, Lwf3;->b:[B

    .line 69
    iput-object v14, v13, Lwf3;->a:[B

    const/4 v12, 0x1

    .line 70
    iput v12, v13, Lwf3;->c:I

    .line 71
    sget v15, Lel3;->a:I

    if-lt v15, v11, :cond_17

    .line 72
    iget-object v11, v13, Lwf3;->g:Landroid/media/MediaCodec$CryptoInfo;

    iput v7, v11, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 73
    iput-object v10, v11, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 74
    iput-object v9, v11, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 75
    iput-object v8, v11, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 76
    iput-object v14, v11, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 77
    iput v12, v11, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    const/16 v7, 0x18

    if-lt v15, v7, :cond_17

    .line 78
    iget-object v7, v13, Lwf3;->h:Lyf3;

    .line 79
    iget-object v8, v7, Lyf3;->b:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v9}, Landroid/media/MediaCodec$CryptoInfo$Pattern;->set(II)V

    .line 80
    iget-object v8, v7, Lyf3;->a:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v7, v7, Lyf3;->b:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-virtual {v8, v7}, Landroid/media/MediaCodec$CryptoInfo;->setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    .line 81
    :cond_17
    iget-wide v7, v4, Lej3;->b:J

    sub-long/2addr v5, v7

    long-to-int v6, v5

    int-to-long v9, v6

    add-long/2addr v7, v9

    .line 82
    iput-wide v7, v4, Lej3;->b:J

    .line 83
    iget v5, v4, Lej3;->a:I

    sub-int/2addr v5, v6

    iput v5, v4, Lej3;->a:I

    .line 84
    :cond_18
    iget-object v4, v3, Lhj3;->d:Lej3;

    iget v4, v4, Lej3;->a:I

    .line 85
    iget-object v5, v2, Lzf3;->c:Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    if-eqz v5, :cond_1c

    .line 86
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    .line 87
    iget-object v7, v2, Lzf3;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v4

    if-lt v5, v7, :cond_1b

    .line 88
    iget-object v4, v3, Lhj3;->d:Lej3;

    iget-wide v5, v4, Lej3;->b:J

    iget-object v7, v2, Lzf3;->c:Ljava/nio/ByteBuffer;

    iget v4, v4, Lej3;->a:I

    .line 89
    invoke-virtual {v3, v5, v6}, Lhj3;->i(J)V

    :cond_19
    :goto_a
    if-lez v4, :cond_1a

    .line 90
    iget-object v8, v3, Lhj3;->g:Lgj3;

    iget-wide v8, v8, Lgj3;->a:J

    sub-long v8, v5, v8

    long-to-int v9, v8

    .line 91
    iget v8, v3, Lhj3;->b:I

    sub-int/2addr v8, v9

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 92
    iget-object v10, v3, Lhj3;->g:Lgj3;

    iget-object v10, v10, Lgj3;->d:Ldk3;

    .line 93
    iget-object v11, v10, Ldk3;->a:[B

    const/4 v12, 0x0

    add-int/2addr v9, v12

    .line 94
    invoke-virtual {v7, v11, v9, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    int-to-long v13, v8

    add-long/2addr v5, v13

    sub-int/2addr v4, v8

    .line 95
    iget-object v8, v3, Lhj3;->g:Lgj3;

    iget-wide v8, v8, Lgj3;->b:J

    cmp-long v11, v5, v8

    if-nez v11, :cond_19

    .line 96
    iget-object v8, v3, Lhj3;->a:Lik3;

    invoke-virtual {v8, v10}, Lik3;->a(Ldk3;)V

    .line 97
    iget-object v8, v3, Lhj3;->g:Lgj3;

    invoke-virtual {v8}, Lgj3;->a()Lgj3;

    move-result-object v8

    iput-object v8, v3, Lhj3;->g:Lgj3;

    goto :goto_a

    .line 98
    :cond_1a
    iget-object v4, v3, Lhj3;->d:Lej3;

    iget-wide v4, v4, Lej3;->c:J

    invoke-virtual {v3, v4, v5}, Lhj3;->i(J)V

    goto :goto_b

    .line 99
    :cond_1b
    invoke-virtual {v2, v7}, Lzf3;->c(I)Ljava/nio/ByteBuffer;

    throw v6

    .line 100
    :cond_1c
    invoke-virtual {v2, v4}, Lzf3;->c(I)Ljava/nio/ByteBuffer;

    throw v6

    :cond_1d
    :goto_b
    const/4 v3, -0x4

    const/4 v4, -0x4

    goto :goto_d

    .line 101
    :cond_1e
    iget-object v4, v0, Lme3;->a:Lcom/google/android/gms/internal/ads/zzht;

    iput-object v4, v3, Lhj3;->i:Lcom/google/android/gms/internal/ads/zzht;

    const/4 v3, -0x4

    const/4 v4, -0x5

    goto :goto_d

    :catchall_0
    move-exception v0

    .line 102
    monitor-exit v4

    throw v0

    :cond_1f
    :goto_c
    const/4 v3, -0x4

    const/4 v4, -0x3

    :goto_d
    if-ne v4, v3, :cond_22

    .line 103
    invoke-virtual/range {p2 .. p2}, Lzf3;->d()Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, v1, Lxd3;->g:Z

    .line 105
    iget-boolean v0, v1, Lxd3;->h:Z

    if-eqz v0, :cond_20

    return v3

    :cond_20
    const/4 v0, -0x3

    return v0

    .line 106
    :cond_21
    iget-wide v5, v2, Lzf3;->d:J

    iget-wide v7, v1, Lxd3;->f:J

    add-long/2addr v5, v7

    iput-wide v5, v2, Lzf3;->d:J

    goto :goto_e

    :cond_22
    const/4 v2, -0x5

    if-ne v4, v2, :cond_23

    .line 107
    iget-object v2, v0, Lme3;->a:Lcom/google/android/gms/internal/ads/zzht;

    .line 108
    iget-wide v5, v2, Lcom/google/android/gms/internal/ads/zzht;->A:J

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v3, v5, v7

    if-eqz v3, :cond_23

    .line 109
    iget-wide v7, v1, Lxd3;->f:J

    add-long/2addr v5, v7

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzht;->g(J)Lcom/google/android/gms/internal/ads/zzht;

    move-result-object v2

    .line 110
    iput-object v2, v0, Lme3;->a:Lcom/google/android/gms/internal/ads/zzht;

    :cond_23
    :goto_e
    return v4
.end method

.method public final getState()I
    .locals 1

    .line 1
    iget v0, p0, Lxd3;->d:I

    return v0
.end method

.method public abstract h(JZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyd3;
        }
    .end annotation
.end method

.method public final i(I)V
    .locals 0

    .line 1
    iput p1, p0, Lxd3;->c:I

    return-void
.end method

.method public final k()Lxd3;
    .locals 0

    return-object p0
.end method

.method public final l(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyd3;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lxd3;->h:Z

    .line 2
    iput-boolean v0, p0, Lxd3;->g:Z

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lxd3;->h(JZ)V

    return-void
.end method

.method public m()Lxk3;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final o([Lcom/google/android/gms/internal/ads/zzht;Lri3;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyd3;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lxd3;->h:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lc50;->D(Z)V

    .line 2
    iput-object p2, p0, Lxd3;->e:Lri3;

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lxd3;->g:Z

    .line 4
    iput-wide p3, p0, Lxd3;->f:J

    .line 5
    invoke-virtual {p0, p1, p3, p4}, Lxd3;->x([Lcom/google/android/gms/internal/ads/zzht;J)V

    return-void
.end method

.method public final p()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lxd3;->e:Lri3;

    .line 2
    iget-object v0, v0, Lri3;->b:Lmi3;

    .line 3
    iget-object v0, v0, Lmi3;->m:Lqk3;

    .line 4
    invoke-virtual {v0}, Lqk3;->b()V

    return-void
.end method

.method public final q()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lxd3;->h:Z

    return-void
.end method

.method public final r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lxd3;->h:Z

    return v0
.end method

.method public final s()V
    .locals 3

    .line 1
    iget v0, p0, Lxd3;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lc50;->D(Z)V

    .line 2
    iput v2, p0, Lxd3;->d:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lxd3;->e:Lri3;

    .line 4
    iput-boolean v2, p0, Lxd3;->h:Z

    .line 5
    invoke-virtual {p0}, Lxd3;->y()V

    return-void
.end method

.method public final start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyd3;
        }
    .end annotation

    .line 1
    iget v0, p0, Lxd3;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lc50;->D(Z)V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lxd3;->d:I

    .line 3
    invoke-virtual {p0}, Lxd3;->e()V

    return-void
.end method

.method public final stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyd3;
        }
    .end annotation

    .line 1
    iget v0, p0, Lxd3;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lc50;->D(Z)V

    .line 2
    iput v1, p0, Lxd3;->d:I

    .line 3
    invoke-virtual {p0}, Lxd3;->f()V

    return-void
.end method

.method public final t(Lqe3;[Lcom/google/android/gms/internal/ads/zzht;Lri3;JZJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyd3;
        }
    .end annotation

    .line 1
    iget v0, p0, Lxd3;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lc50;->D(Z)V

    .line 2
    iput-object p1, p0, Lxd3;->b:Lqe3;

    .line 3
    iput v1, p0, Lxd3;->d:I

    .line 4
    invoke-virtual {p0, p6}, Lxd3;->z(Z)V

    .line 5
    iget-boolean p1, p0, Lxd3;->h:Z

    xor-int/2addr p1, v1

    invoke-static {p1}, Lc50;->D(Z)V

    .line 6
    iput-object p3, p0, Lxd3;->e:Lri3;

    .line 7
    iput-boolean v2, p0, Lxd3;->g:Z

    .line 8
    iput-wide p7, p0, Lxd3;->f:J

    .line 9
    invoke-virtual {p0, p2, p7, p8}, Lxd3;->x([Lcom/google/android/gms/internal/ads/zzht;J)V

    .line 10
    invoke-virtual {p0, p4, p5, p6}, Lxd3;->h(JZ)V

    return-void
.end method

.method public final u()Lri3;
    .locals 1

    .line 1
    iget-object v0, p0, Lxd3;->e:Lri3;

    return-object v0
.end method

.method public final v()I
    .locals 1

    .line 1
    iget v0, p0, Lxd3;->a:I

    return v0
.end method

.method public final w()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lxd3;->g:Z

    return v0
.end method

.method public x([Lcom/google/android/gms/internal/ads/zzht;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyd3;
        }
    .end annotation

    return-void
.end method

.method public abstract y()V
.end method

.method public abstract z(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyd3;
        }
    .end annotation
.end method
