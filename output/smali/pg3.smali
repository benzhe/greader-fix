.class public final Lpg3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public final b:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lrg3;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lxg3;

.field public d:Lwg3;

.field public e:I

.field public f:I

.field public g:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lpg3;->a:[B

    .line 3
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lpg3;->b:Ljava/util/Stack;

    .line 4
    new-instance v0, Lxg3;

    invoke-direct {v0}, Lxg3;-><init>()V

    iput-object v0, p0, Lpg3;->c:Lxg3;

    return-void
.end method


# virtual methods
.method public final a(Lgg3;I)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpg3;->a:[B

    check-cast p1, Leg3;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1, p2, v1}, Leg3;->c([BIIZ)Z

    const-wide/16 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    const/16 p1, 0x8

    shl-long/2addr v2, p1

    .line 3
    iget-object p1, p0, Lpg3;->a:[B

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-long v4, p1

    or-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public final b(Lgg3;)Z
    .locals 57
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lpg3;->d:Lwg3;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lc50;->D(Z)V

    .line 2
    :goto_1
    iget-object v2, v0, Lpg3;->b:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    const v3, 0x1654ae6b

    const v4, 0x1549a966

    const v5, 0x1c53bb6b

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    if-nez v2, :cond_5b

    .line 3
    move-object v2, v1

    check-cast v2, Leg3;

    .line 4
    iget-wide v10, v2, Leg3;->c:J

    .line 5
    iget-object v2, v0, Lpg3;->b:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrg3;

    .line 6
    iget-wide v12, v2, Lrg3;->b:J

    cmp-long v2, v10, v12

    if-ltz v2, :cond_5b

    .line 7
    iget-object v1, v0, Lpg3;->d:Lwg3;

    iget-object v2, v0, Lpg3;->b:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrg3;

    .line 8
    iget v2, v2, Lrg3;->a:I

    .line 9
    iget-object v1, v1, Lwg3;->a:Lug3;

    .line 10
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v10, 0xa0

    if-eq v2, v10, :cond_57

    const/16 v10, 0xae

    if-eq v2, v10, :cond_10

    const/16 v10, 0x4dbb

    if-eq v2, v10, :cond_e

    const/16 v9, 0x6240

    if-eq v2, v9, :cond_c

    const/16 v9, 0x6d80

    if-eq v2, v9, :cond_a

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v2, v4, :cond_8

    if-eq v2, v3, :cond_6

    if-eq v2, v5, :cond_1

    goto/16 :goto_29

    .line 11
    :cond_1
    iget-boolean v2, v1, Lug3;->u:Z

    if-nez v2, :cond_5a

    .line 12
    iget-object v2, v1, Lug3;->Y:Lkg3;

    .line 13
    iget-wide v3, v1, Lug3;->p:J

    cmp-long v5, v3, v6

    if-eqz v5, :cond_5

    iget-wide v3, v1, Lug3;->s:J

    cmp-long v5, v3, v9

    if-eqz v5, :cond_5

    iget-object v3, v1, Lug3;->B:Lvk3;

    if-eqz v3, :cond_5

    .line 14
    iget v3, v3, Lvk3;->a:I

    if-eqz v3, :cond_5

    .line 15
    iget-object v4, v1, Lug3;->C:Lvk3;

    if-eqz v4, :cond_5

    .line 16
    iget v4, v4, Lvk3;->a:I

    if-eq v4, v3, :cond_2

    goto :goto_4

    .line 17
    :cond_2
    new-array v4, v3, [I

    .line 18
    new-array v5, v3, [J

    .line 19
    new-array v6, v3, [J

    .line 20
    new-array v7, v3, [J

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v3, :cond_3

    .line 21
    iget-object v10, v1, Lug3;->B:Lvk3;

    invoke-virtual {v10, v9}, Lvk3;->b(I)J

    move-result-wide v10

    aput-wide v10, v7, v9

    .line 22
    iget-wide v10, v1, Lug3;->p:J

    iget-object v12, v1, Lug3;->C:Lvk3;

    invoke-virtual {v12, v9}, Lvk3;->b(I)J

    move-result-wide v12

    add-long/2addr v12, v10

    aput-wide v12, v5, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_3
    add-int/lit8 v10, v3, -0x1

    if-ge v9, v10, :cond_4

    add-int/lit8 v10, v9, 0x1

    .line 23
    aget-wide v11, v5, v10

    aget-wide v13, v5, v9

    sub-long/2addr v11, v13

    long-to-int v12, v11

    aput v12, v4, v9

    .line 24
    aget-wide v11, v7, v10

    aget-wide v13, v7, v9

    sub-long/2addr v11, v13

    aput-wide v11, v6, v9

    move v9, v10

    goto :goto_3

    .line 25
    :cond_4
    iget-wide v11, v1, Lug3;->p:J

    iget-wide v13, v1, Lug3;->o:J

    add-long/2addr v11, v13

    aget-wide v13, v5, v10

    sub-long/2addr v11, v13

    long-to-int v3, v11

    aput v3, v4, v10

    .line 26
    iget-wide v11, v1, Lug3;->s:J

    aget-wide v13, v7, v10

    sub-long/2addr v11, v13

    aput-wide v11, v6, v10

    .line 27
    iput-object v8, v1, Lug3;->B:Lvk3;

    .line 28
    iput-object v8, v1, Lug3;->C:Lvk3;

    .line 29
    new-instance v3, Lfg3;

    invoke-direct {v3, v4, v5, v6, v7}, Lfg3;-><init>([I[J[J[J)V

    goto :goto_5

    .line 30
    :cond_5
    :goto_4
    iput-object v8, v1, Lug3;->B:Lvk3;

    .line 31
    iput-object v8, v1, Lug3;->C:Lvk3;

    .line 32
    new-instance v3, Log3;

    iget-wide v4, v1, Lug3;->s:J

    invoke-direct {v3, v4, v5}, Log3;-><init>(J)V

    .line 33
    :goto_5
    check-cast v2, Lmi3;

    .line 34
    iput-object v3, v2, Lmi3;->u:Lmg3;

    .line 35
    iget-object v3, v2, Lmi3;->r:Landroid/os/Handler;

    iget-object v2, v2, Lmi3;->p:Ljava/lang/Runnable;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x1

    .line 36
    iput-boolean v2, v1, Lug3;->u:Z

    goto/16 :goto_29

    .line 37
    :cond_6
    iget-object v2, v1, Lug3;->c:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eqz v2, :cond_7

    .line 38
    iget-object v1, v1, Lug3;->Y:Lkg3;

    check-cast v1, Lmi3;

    invoke-virtual {v1}, Lmi3;->p()V

    goto/16 :goto_29

    .line 39
    :cond_7
    new-instance v1, Lne3;

    const-string v2, "No valid tracks were found"

    invoke-direct {v1, v2}, Lne3;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_8
    iget-wide v2, v1, Lug3;->q:J

    cmp-long v4, v2, v9

    if-nez v4, :cond_9

    const-wide/32 v2, 0xf4240

    .line 41
    iput-wide v2, v1, Lug3;->q:J

    .line 42
    :cond_9
    iget-wide v2, v1, Lug3;->r:J

    cmp-long v4, v2, v9

    if-eqz v4, :cond_5a

    .line 43
    invoke-virtual {v1, v2, v3}, Lug3;->j(J)J

    move-result-wide v2

    iput-wide v2, v1, Lug3;->s:J

    goto/16 :goto_29

    .line 44
    :cond_a
    iget-object v1, v1, Lug3;->t:Lvg3;

    iget-boolean v2, v1, Lvg3;->e:Z

    if-eqz v2, :cond_5a

    iget-object v1, v1, Lvg3;->f:[B

    if-nez v1, :cond_b

    goto/16 :goto_29

    .line 45
    :cond_b
    new-instance v1, Lne3;

    const-string v2, "Combining encryption and compression is not supported"

    invoke-direct {v1, v2}, Lne3;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_c
    iget-object v1, v1, Lug3;->t:Lvg3;

    iget-boolean v2, v1, Lvg3;->e:Z

    if-eqz v2, :cond_5a

    .line 47
    iget-object v2, v1, Lvg3;->g:Lqg3;

    if-eqz v2, :cond_d

    .line 48
    new-instance v3, Lcom/google/android/gms/internal/ads/zzjo;

    const/4 v4, 0x1

    new-array v5, v4, [Lcom/google/android/gms/internal/ads/zzjo$zza;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzjo$zza;

    sget-object v7, Lzd3;->b:Ljava/util/UUID;

    iget-object v2, v2, Lqg3;->a:[B

    const-string v8, "video/webm"

    invoke-direct {v6, v7, v8, v2}, Lcom/google/android/gms/internal/ads/zzjo$zza;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    const/4 v2, 0x0

    aput-object v6, v5, v2

    .line 49
    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzjo;-><init>(Z[Lcom/google/android/gms/internal/ads/zzjo$zza;)V

    .line 50
    iput-object v3, v1, Lvg3;->i:Lcom/google/android/gms/internal/ads/zzjo;

    goto/16 :goto_29

    .line 51
    :cond_d
    new-instance v1, Lne3;

    const-string v2, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-direct {v1, v2}, Lne3;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_e
    iget v2, v1, Lug3;->v:I

    if-eq v2, v9, :cond_f

    iget-wide v3, v1, Lug3;->w:J

    cmp-long v8, v3, v6

    if-eqz v8, :cond_f

    if-ne v2, v5, :cond_5a

    .line 53
    iput-wide v3, v1, Lug3;->y:J

    goto/16 :goto_29

    .line 54
    :cond_f
    new-instance v1, Lne3;

    const-string v2, "Mandatory element SeekID or SeekPosition not found"

    invoke-direct {v1, v2}, Lne3;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_10
    iget-object v2, v1, Lug3;->t:Lvg3;

    iget-object v2, v2, Lvg3;->a:Ljava/lang/String;

    const-string v3, "V_VP8"

    .line 56
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "A_MS/ACM"

    const-string v6, "V_MPEG4/ISO/SP"

    const-string v7, "V_MPEG4/ISO/AP"

    const-string v8, "V_MPEG2"

    const-string v9, "V_VP9"

    const-string v10, "A_AAC"

    const-string v11, "A_DTS/LOSSLESS"

    const-string v12, "S_VOBSUB"

    const-string v13, "V_MPEG4/ISO/AVC"

    const-string v14, "V_MPEG4/ISO/ASP"

    const-string v15, "S_DVBSUB"

    const-string v0, "V_MS/VFW/FOURCC"

    move-object/from16 p1, v3

    const-string v3, "A_MPEG/L3"

    move-object/from16 v16, v1

    const-string v1, "A_MPEG/L2"

    move-object/from16 v17, v15

    const-string v15, "A_VORBIS"

    move-object/from16 v18, v12

    const-string v12, "A_TRUEHD"

    move-object/from16 v19, v5

    const-string v5, "A_PCM/INT/LIT"

    move-object/from16 v20, v5

    const-string v5, "A_DTS/EXPRESS"

    move-object/from16 v21, v11

    const-string v11, "V_THEORA"

    move-object/from16 v22, v5

    const-string v5, "S_HDMV/PGS"

    move-object/from16 v23, v5

    const-string v5, "A_DTS"

    move-object/from16 v24, v5

    const-string v5, "A_AC3"

    if-nez v4, :cond_13

    .line 57
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 58
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 59
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 60
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 61
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 62
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "V_MPEGH/ISO/HEVC"

    .line 63
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 65
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "A_OPUS"

    .line 66
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 67
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 68
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 70
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 71
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "A_EAC3"

    .line 72
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 73
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    move-object/from16 v4, v24

    .line 74
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_14

    move-object/from16 v24, v7

    move-object/from16 v7, v22

    .line 75
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_15

    move-object/from16 v22, v6

    move-object/from16 v6, v21

    .line 76
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_16

    move-object/from16 v21, v12

    const-string v12, "A_FLAC"

    .line 77
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_17

    move-object/from16 v12, v19

    .line 78
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_12

    move-object/from16 v19, v12

    move-object/from16 v12, v20

    .line 79
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_18

    move-object/from16 v20, v15

    const-string v15, "S_TEXT/UTF8"

    .line 80
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_19

    move-object/from16 v15, v18

    .line 81
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1a

    move-object/from16 v18, v1

    move-object/from16 v1, v23

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_1b

    move-object/from16 v23, v3

    move-object/from16 v3, v17

    .line 83
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_7

    :cond_11
    const/4 v2, 0x0

    goto :goto_8

    :cond_12
    move-object/from16 v19, v12

    goto :goto_6

    :cond_13
    move-object/from16 v4, v24

    :cond_14
    move-object/from16 v24, v7

    move-object/from16 v7, v22

    :cond_15
    move-object/from16 v22, v6

    move-object/from16 v6, v21

    :cond_16
    move-object/from16 v21, v12

    :cond_17
    :goto_6
    move-object/from16 v12, v20

    :cond_18
    move-object/from16 v20, v15

    :cond_19
    move-object/from16 v15, v18

    :cond_1a
    move-object/from16 v18, v1

    move-object/from16 v1, v23

    :cond_1b
    move-object/from16 v23, v3

    move-object/from16 v3, v17

    :goto_7
    const/4 v2, 0x1

    :goto_8
    if-eqz v2, :cond_56

    move-object/from16 v2, v16

    move-object/from16 v16, v0

    .line 84
    iget-object v0, v2, Lug3;->t:Lvg3;

    move-object/from16 v17, v3

    iget-object v3, v2, Lug3;->Y:Lkg3;

    move-object/from16 v25, v2

    iget v2, v0, Lvg3;->b:I

    move-object/from16 v26, v3

    .line 85
    iget-object v3, v0, Lvg3;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v27

    move/from16 v28, v2

    const/16 v2, 0x10

    sparse-switch v27, :sswitch_data_0

    goto/16 :goto_9

    :sswitch_0
    const-string v1, "A_OPUS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto/16 :goto_9

    :cond_1c
    const/16 v1, 0x1b

    goto/16 :goto_a

    :sswitch_1
    const-string v1, "A_FLAC"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto/16 :goto_9

    :cond_1d
    const/16 v1, 0x1a

    goto/16 :goto_a

    :sswitch_2
    const-string v1, "A_EAC3"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto/16 :goto_9

    :cond_1e
    const/16 v1, 0x19

    goto/16 :goto_a

    :sswitch_3
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    goto/16 :goto_9

    :cond_1f
    const/16 v1, 0x18

    goto/16 :goto_a

    :sswitch_4
    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto/16 :goto_9

    :cond_20
    const/16 v1, 0x17

    goto/16 :goto_a

    :sswitch_5
    const-string v1, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto/16 :goto_9

    :cond_21
    const/16 v1, 0x16

    goto/16 :goto_a

    :sswitch_6
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    goto/16 :goto_9

    :cond_22
    const/16 v1, 0x15

    goto/16 :goto_a

    :sswitch_7
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    goto/16 :goto_9

    :cond_23
    const/16 v1, 0x14

    goto/16 :goto_a

    :sswitch_8
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    goto/16 :goto_9

    :cond_24
    const/16 v1, 0x13

    goto/16 :goto_a

    :sswitch_9
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    goto/16 :goto_9

    :cond_25
    const/16 v1, 0x12

    goto/16 :goto_a

    :sswitch_a
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    goto/16 :goto_9

    :cond_26
    const/16 v1, 0x11

    goto/16 :goto_a

    :sswitch_b
    move-object/from16 v1, p1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    goto/16 :goto_9

    :cond_27
    const/16 v1, 0x10

    goto/16 :goto_a

    :sswitch_c
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    goto/16 :goto_9

    :cond_28
    const/16 v1, 0xf

    goto/16 :goto_a

    :sswitch_d
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    goto/16 :goto_9

    :cond_29
    const/16 v1, 0xe

    goto/16 :goto_a

    :sswitch_e
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    goto/16 :goto_9

    :cond_2a
    const/16 v1, 0xd

    goto/16 :goto_a

    :sswitch_f
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    goto/16 :goto_9

    :cond_2b
    const/16 v1, 0xc

    goto/16 :goto_a

    :sswitch_10
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    goto/16 :goto_9

    :cond_2c
    const/16 v1, 0xb

    goto/16 :goto_a

    :sswitch_11
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    goto/16 :goto_9

    :cond_2d
    const/16 v1, 0xa

    goto/16 :goto_a

    :sswitch_12
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    goto/16 :goto_9

    :cond_2e
    const/16 v1, 0x9

    goto/16 :goto_a

    :sswitch_13
    move-object/from16 v1, v17

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    goto/16 :goto_9

    :cond_2f
    const/16 v1, 0x8

    goto/16 :goto_a

    :sswitch_14
    move-object/from16 v1, v16

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    goto :goto_9

    :cond_30
    const/4 v1, 0x7

    goto :goto_a

    :sswitch_15
    move-object/from16 v1, v23

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    goto :goto_9

    :cond_31
    const/4 v1, 0x6

    goto :goto_a

    :sswitch_16
    move-object/from16 v1, v18

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    goto :goto_9

    :cond_32
    const/4 v1, 0x5

    goto :goto_a

    :sswitch_17
    move-object/from16 v1, v20

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    goto :goto_9

    :cond_33
    const/4 v1, 0x4

    goto :goto_a

    :sswitch_18
    move-object/from16 v1, v21

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    goto :goto_9

    :cond_34
    const/4 v1, 0x3

    goto :goto_a

    :sswitch_19
    move-object/from16 v1, v19

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    goto :goto_9

    :cond_35
    const/4 v1, 0x2

    goto :goto_a

    :sswitch_1a
    move-object/from16 v1, v22

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    goto :goto_9

    :cond_36
    const/4 v1, 0x1

    goto :goto_a

    :sswitch_1b
    move-object/from16 v1, v24

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    goto :goto_9

    :cond_37
    const/4 v1, 0x0

    goto :goto_a

    :goto_9
    const/4 v1, -0x1

    :goto_a
    const-string v3, "video/x-unknown"

    const-string v4, "audio/x-unknown"

    const-string v5, "MatroskaExtractor"

    packed-switch v1, :pswitch_data_0

    .line 86
    new-instance v0, Lne3;

    const-string v1, "Unrecognized codec identifier."

    invoke-direct {v0, v1}, Lne3;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :pswitch_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 88
    iget-object v2, v0, Lvg3;->h:[B

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x8

    .line 89
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-wide v4, v0, Lvg3;->J:J

    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 90
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-wide v3, v0, Lvg3;->K:J

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 92
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x1680

    const-string v3, "audio/opus"

    goto/16 :goto_15

    .line 93
    :pswitch_1
    iget-object v1, v0, Lvg3;->h:[B

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "audio/x-flac"

    goto/16 :goto_c

    :pswitch_2
    const-string v3, "audio/eac3"

    goto/16 :goto_1a

    :pswitch_3
    const-string v3, "video/mpeg2"

    goto/16 :goto_1a

    :pswitch_4
    const-string v3, "application/x-subrip"

    goto/16 :goto_1a

    .line 94
    :pswitch_5
    new-instance v1, Lal3;

    iget-object v2, v0, Lvg3;->h:[B

    invoke-direct {v1, v2}, Lal3;-><init>([B)V

    invoke-static {v1}, Lkl3;->a(Lal3;)Lkl3;

    move-result-object v1

    .line 95
    iget-object v2, v1, Lkl3;->a:Ljava/util/List;

    .line 96
    iget v1, v1, Lkl3;->b:I

    iput v1, v0, Lvg3;->P:I

    const-string v1, "video/hevc"

    goto :goto_b

    .line 97
    :pswitch_6
    iget v1, v0, Lvg3;->H:I

    invoke-static {v1}, Lel3;->g(I)I

    move-result v1

    if-nez v1, :cond_38

    .line 98
    iget v1, v0, Lvg3;->H:I

    const/16 v2, 0x4b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unsupported PCM bit depth: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Setting mimeType to "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    :cond_38
    const-string v2, "audio/raw"

    goto/16 :goto_18

    :pswitch_7
    const-string v3, "application/pgs"

    goto/16 :goto_1a

    :pswitch_8
    const-string v3, "video/x-vnd.on2.vp9"

    goto/16 :goto_1a

    :pswitch_9
    const-string v3, "video/x-vnd.on2.vp8"

    goto/16 :goto_1a

    :pswitch_a
    const-string v3, "audio/vnd.dts"

    goto/16 :goto_1a

    :pswitch_b
    const-string v3, "audio/ac3"

    goto/16 :goto_1a

    .line 99
    :pswitch_c
    iget-object v1, v0, Lvg3;->h:[B

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "audio/mp4a-latm"

    goto :goto_c

    :pswitch_d
    const-string v3, "audio/vnd.dts.hd"

    goto/16 :goto_1a

    .line 100
    :pswitch_e
    iget-object v1, v0, Lvg3;->h:[B

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "application/vobsub"

    goto :goto_c

    .line 101
    :pswitch_f
    new-instance v1, Lal3;

    iget-object v2, v0, Lvg3;->h:[B

    invoke-direct {v1, v2}, Lal3;-><init>([B)V

    invoke-static {v1}, Lfl3;->a(Lal3;)Lfl3;

    move-result-object v1

    .line 102
    iget-object v2, v1, Lfl3;->a:Ljava/util/List;

    .line 103
    iget v1, v1, Lfl3;->b:I

    iput v1, v0, Lvg3;->P:I

    const-string v1, "video/avc"

    :goto_b
    move-object v3, v1

    goto/16 :goto_1c

    :pswitch_10
    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 104
    iget-object v2, v0, Lvg3;->h:[B

    const/4 v3, 0x0

    aget-byte v4, v2, v3

    aput-byte v4, v1, v3

    const/4 v3, 0x1

    aget-byte v4, v2, v3

    aput-byte v4, v1, v3

    const/4 v3, 0x2

    aget-byte v4, v2, v3

    aput-byte v4, v1, v3

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    aput-byte v2, v1, v3

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "application/dvbsubs"

    :goto_c
    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_1c

    .line 105
    :pswitch_11
    iget-object v1, v0, Lvg3;->h:[B

    .line 106
    array-length v4, v1

    if-gt v2, v4, :cond_39

    const/4 v4, 0x1

    goto :goto_d

    :cond_39
    const/4 v4, 0x0

    .line 107
    :goto_d
    :try_start_0
    invoke-static {v4}, Lc50;->j(Z)V

    const/16 v4, 0x11

    .line 108
    aget-byte v6, v1, v2

    int-to-long v6, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    const/16 v10, 0x12

    aget-byte v4, v1, v4

    int-to-long v11, v4

    and-long/2addr v11, v8

    const/16 v4, 0x8

    shl-long/2addr v11, v4

    or-long/2addr v6, v11

    const/16 v4, 0x13

    aget-byte v10, v1, v10

    int-to-long v10, v10

    and-long/2addr v10, v8

    shl-long/2addr v10, v2

    or-long/2addr v6, v10

    aget-byte v2, v1, v4

    int-to-long v10, v2

    and-long/2addr v8, v10

    const/16 v2, 0x18

    shl-long/2addr v8, v2

    or-long/2addr v6, v8

    const-wide/32 v8, 0x31435657

    cmp-long v2, v6, v8

    if-eqz v2, :cond_3a

    const/4 v1, 0x0

    :goto_e
    move-object v2, v1

    goto :goto_10

    :cond_3a
    const/16 v2, 0x28

    .line 109
    :goto_f
    array-length v4, v1

    add-int/lit8 v4, v4, -0x4

    if-ge v2, v4, :cond_3d

    .line 110
    aget-byte v4, v1, v2

    if-nez v4, :cond_3c

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, v1, v4

    if-nez v4, :cond_3c

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, v1, v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3c

    add-int/lit8 v4, v2, 0x3

    aget-byte v4, v1, v4

    const/16 v6, 0xf

    if-ne v4, v6, :cond_3c

    .line 111
    array-length v4, v1

    invoke-static {v1, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 112
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_e

    :goto_10
    if-eqz v2, :cond_3b

    const-string v3, "video/wvc1"

    goto/16 :goto_1c

    :cond_3b
    const-string v1, "Unsupported FourCC. Setting mimeType to video/x-unknown"

    .line 113
    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 114
    :cond_3d
    :try_start_1
    new-instance v0, Lne3;

    const-string v1, "Failed to find FourCC VC1 initialization data"

    invoke-direct {v0, v1}, Lne3;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 115
    :catch_0
    new-instance v0, Lne3;

    const-string v1, "Error parsing FourCC VC1 codec private"

    invoke-direct {v0, v1}, Lne3;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_12
    const-string v1, "audio/mpeg"

    goto :goto_11

    :pswitch_13
    const-string v1, "audio/mpeg-L2"

    :goto_11
    const/16 v2, 0x1000

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object/from16 v54, v4

    const/16 v7, 0x1000

    :goto_12
    const/4 v10, -0x1

    goto/16 :goto_1e

    .line 116
    :pswitch_14
    iget-object v1, v0, Lvg3;->h:[B

    const-string v2, "Error parsing vorbis codec private"

    const/4 v3, 0x0

    .line 117
    :try_start_2
    aget-byte v3, v1, v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_43

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 118
    :goto_13
    aget-byte v5, v1, v4

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3e

    add-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_3e
    add-int/lit8 v5, v4, 0x1

    .line 119
    aget-byte v4, v1, v4

    add-int/2addr v3, v4

    const/4 v4, 0x0

    .line 120
    :goto_14
    aget-byte v6, v1, v5

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3f

    add-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_3f
    add-int/lit8 v6, v5, 0x1

    .line 121
    aget-byte v5, v1, v5

    add-int/2addr v4, v5

    .line 122
    aget-byte v5, v1, v6

    const/4 v7, 0x1

    if-ne v5, v7, :cond_42

    .line 123
    new-array v5, v3, [B

    const/4 v7, 0x0

    .line 124
    invoke-static {v1, v6, v5, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v6, v3

    .line 125
    aget-byte v3, v1, v6

    const/4 v7, 0x3

    if-ne v3, v7, :cond_41

    add-int/2addr v6, v4

    .line 126
    aget-byte v3, v1, v6

    const/4 v4, 0x5

    if-ne v3, v4, :cond_40

    .line 127
    array-length v3, v1

    sub-int/2addr v3, v6

    new-array v3, v3, [B

    .line 128
    array-length v4, v1

    sub-int/2addr v4, v6

    const/4 v7, 0x0

    invoke-static {v1, v6, v3, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 130
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    const/16 v2, 0x2000

    const-string v3, "audio/vorbis"

    :goto_15
    const/4 v4, -0x1

    move-object/from16 v54, v1

    move v7, v2

    move-object v1, v3

    goto :goto_12

    .line 132
    :cond_40
    :try_start_3
    new-instance v0, Lne3;

    invoke-direct {v0, v2}, Lne3;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_41
    new-instance v0, Lne3;

    invoke-direct {v0, v2}, Lne3;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_42
    new-instance v0, Lne3;

    invoke-direct {v0, v2}, Lne3;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_43
    new-instance v0, Lne3;

    invoke-direct {v0, v2}, Lne3;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    .line 136
    :catch_1
    new-instance v0, Lne3;

    invoke-direct {v0, v2}, Lne3;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_15
    const-string v3, "audio/true-hd"

    goto/16 :goto_1a

    .line 137
    :pswitch_16
    new-instance v1, Lal3;

    iget-object v2, v0, Lvg3;->h:[B

    invoke-direct {v1, v2}, Lal3;-><init>([B)V

    .line 138
    :try_start_4
    iget-object v2, v1, Lal3;->a:[B

    iget v3, v1, Lal3;->b:I

    add-int/lit8 v6, v3, 0x1

    iput v6, v1, Lal3;->b:I

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v7, v6, 0x1

    iput v7, v1, Lal3;->b:I

    aget-byte v2, v2, v6

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_44

    goto :goto_16

    :cond_44
    const v3, 0xfffe

    if-ne v2, v3, :cond_45

    const/16 v2, 0x18

    .line 139
    invoke-virtual {v1, v2}, Lal3;->h(I)V

    .line 140
    invoke-virtual {v1}, Lal3;->c()J

    move-result-wide v2

    .line 141
    sget-object v6, Lug3;->b0:Ljava/util/UUID;

    .line 142
    invoke-virtual {v6}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v7

    cmp-long v9, v2, v7

    if-nez v9, :cond_45

    .line 143
    invoke-virtual {v1}, Lal3;->c()J

    move-result-wide v1

    invoke-virtual {v6}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2

    cmp-long v3, v1, v6

    if-nez v3, :cond_45

    :goto_16
    const/4 v1, 0x1

    goto :goto_17

    :cond_45
    const/4 v1, 0x0

    :goto_17
    if-eqz v1, :cond_47

    .line 144
    iget v1, v0, Lvg3;->H:I

    invoke-static {v1}, Lel3;->g(I)I

    move-result v1

    if-nez v1, :cond_46

    .line 145
    iget v1, v0, Lvg3;->H:I

    const/16 v2, 0x4b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unsupported PCM bit depth: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Setting mimeType to "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    :cond_46
    const-string v2, "audio/raw"

    :goto_18
    const/4 v3, 0x0

    move-object v4, v3

    move v3, v1

    move-object v1, v2

    goto :goto_1d

    :cond_47
    const-string v1, "Non-PCM MS/ACM is unsupported. Setting mimeType to "

    .line 146
    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_19
    move-object v3, v4

    :goto_1a
    :pswitch_17
    const/4 v2, 0x0

    goto :goto_1c

    .line 147
    :catch_2
    new-instance v0, Lne3;

    const-string v1, "Error parsing MS/ACM codec private"

    invoke-direct {v0, v1}, Lne3;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :pswitch_18
    iget-object v1, v0, Lvg3;->h:[B

    if-nez v1, :cond_48

    const/4 v1, 0x0

    goto :goto_1b

    :cond_48
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_1b
    move-object v2, v1

    const-string v3, "video/mp4v-es"

    :goto_1c
    const/4 v1, -0x1

    move-object v4, v2

    move-object v1, v3

    const/4 v3, -0x1

    :goto_1d
    const/4 v2, -0x1

    move v10, v3

    move-object/from16 v54, v4

    const/4 v7, -0x1

    .line 149
    :goto_1e
    iget-boolean v2, v0, Lvg3;->M:Z

    or-int/lit8 v2, v2, 0x0

    .line 150
    iget-boolean v3, v0, Lvg3;->L:Z

    if-eqz v3, :cond_49

    const/4 v3, 0x2

    goto :goto_1f

    :cond_49
    const/4 v3, 0x0

    :goto_1f
    or-int v13, v2, v3

    .line 151
    invoke-static {v1}, Lc50;->l3(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 152
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iget v8, v0, Lvg3;->G:I

    iget v9, v0, Lvg3;->I:I

    iget-object v12, v0, Lvg3;->i:Lcom/google/android/gms/internal/ads/zzjo;

    iget-object v14, v0, Lvg3;->N:Ljava/lang/String;

    move-object v6, v1

    move-object/from16 v11, v54

    invoke-static/range {v5 .. v14}, Lcom/google/android/gms/internal/ads/zzht;->a(Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/gms/internal/ads/zzjo;ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzht;

    move-result-object v1

    const/4 v2, 0x1

    goto/16 :goto_27

    .line 153
    :cond_4a
    invoke-static {v1}, Lc50;->m3(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 154
    iget v2, v0, Lvg3;->n:I

    if-nez v2, :cond_4d

    .line 155
    iget v2, v0, Lvg3;->l:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4b

    iget v2, v0, Lvg3;->j:I

    :cond_4b
    iput v2, v0, Lvg3;->l:I

    .line 156
    iget v2, v0, Lvg3;->m:I

    if-ne v2, v3, :cond_4c

    iget v2, v0, Lvg3;->k:I

    :cond_4c
    iput v2, v0, Lvg3;->m:I

    goto :goto_20

    :cond_4d
    const/4 v3, -0x1

    .line 157
    :goto_20
    iget v2, v0, Lvg3;->l:I

    const/high16 v4, -0x40800000    # -1.0f

    if-eq v2, v3, :cond_4e

    iget v5, v0, Lvg3;->m:I

    if-eq v5, v3, :cond_4e

    .line 158
    iget v3, v0, Lvg3;->k:I

    mul-int v3, v3, v2

    int-to-float v2, v3

    iget v3, v0, Lvg3;->j:I

    mul-int v3, v3, v5

    int-to-float v3, v3

    div-float/2addr v2, v3

    move v12, v2

    goto :goto_21

    :cond_4e
    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v12, -0x40800000    # -1.0f

    .line 159
    :goto_21
    iget-boolean v2, v0, Lvg3;->q:Z

    if-eqz v2, :cond_51

    .line 160
    iget v2, v0, Lvg3;->w:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_50

    iget v2, v0, Lvg3;->x:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_50

    iget v2, v0, Lvg3;->y:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_50

    iget v2, v0, Lvg3;->z:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_50

    iget v2, v0, Lvg3;->A:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_50

    iget v2, v0, Lvg3;->B:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_50

    iget v2, v0, Lvg3;->C:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_50

    iget v2, v0, Lvg3;->D:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_50

    iget v2, v0, Lvg3;->E:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_50

    iget v2, v0, Lvg3;->F:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_4f

    goto/16 :goto_22

    :cond_4f
    const/16 v2, 0x19

    new-array v2, v2, [B

    .line 161
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v4, 0x0

    .line 162
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 163
    iget v4, v0, Lvg3;->w:F

    const v5, 0x47435000    # 50000.0f

    mul-float v4, v4, v5

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v4, v6

    float-to-int v4, v4

    int-to-short v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 164
    iget v4, v0, Lvg3;->x:F

    mul-float v4, v4, v5

    add-float/2addr v4, v6

    float-to-int v4, v4

    int-to-short v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 165
    iget v4, v0, Lvg3;->y:F

    mul-float v4, v4, v5

    add-float/2addr v4, v6

    float-to-int v4, v4

    int-to-short v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 166
    iget v4, v0, Lvg3;->z:F

    mul-float v4, v4, v5

    add-float/2addr v4, v6

    float-to-int v4, v4

    int-to-short v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 167
    iget v4, v0, Lvg3;->A:F

    mul-float v4, v4, v5

    add-float/2addr v4, v6

    float-to-int v4, v4

    int-to-short v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 168
    iget v4, v0, Lvg3;->B:F

    mul-float v4, v4, v5

    add-float/2addr v4, v6

    float-to-int v4, v4

    int-to-short v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 169
    iget v4, v0, Lvg3;->C:F

    mul-float v4, v4, v5

    add-float/2addr v4, v6

    float-to-int v4, v4

    int-to-short v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 170
    iget v4, v0, Lvg3;->D:F

    mul-float v4, v4, v5

    add-float/2addr v4, v6

    float-to-int v4, v4

    int-to-short v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 171
    iget v4, v0, Lvg3;->E:F

    add-float/2addr v4, v6

    float-to-int v4, v4

    int-to-short v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 172
    iget v4, v0, Lvg3;->F:F

    add-float/2addr v4, v6

    float-to-int v4, v4

    int-to-short v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 173
    iget v4, v0, Lvg3;->u:I

    int-to-short v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 174
    iget v4, v0, Lvg3;->v:I

    int-to-short v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_23

    :cond_50
    :goto_22
    const/4 v2, 0x0

    .line 175
    :goto_23
    new-instance v3, Lcom/google/android/gms/internal/ads/zzpy;

    iget v4, v0, Lvg3;->r:I

    iget v5, v0, Lvg3;->t:I

    iget v6, v0, Lvg3;->s:I

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/google/android/gms/internal/ads/zzpy;-><init>(III[B)V

    move-object v15, v3

    goto :goto_24

    :cond_51
    const/4 v2, 0x0

    move-object v15, v2

    .line 176
    :goto_24
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iget v8, v0, Lvg3;->j:I

    iget v9, v0, Lvg3;->k:I

    const/4 v11, -0x1

    iget-object v13, v0, Lvg3;->o:[B

    iget v14, v0, Lvg3;->p:I

    iget-object v2, v0, Lvg3;->i:Lcom/google/android/gms/internal/ads/zzjo;

    move-object v6, v1

    move-object/from16 v10, v54

    move-object/from16 v16, v2

    invoke-static/range {v5 .. v16}, Lcom/google/android/gms/internal/ads/zzht;->b(Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;IF[BILcom/google/android/gms/internal/ads/zzpy;Lcom/google/android/gms/internal/ads/zzjo;)Lcom/google/android/gms/internal/ads/zzht;

    move-result-object v1

    const/4 v2, 0x2

    goto/16 :goto_27

    :cond_52
    const-string v2, "application/x-subrip"

    .line 177
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 178
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lvg3;->N:Ljava/lang/String;

    iget-object v4, v0, Lvg3;->i:Lcom/google/android/gms/internal/ads/zzjo;

    invoke-static {v2, v1, v13, v3, v4}, Lcom/google/android/gms/internal/ads/zzht;->d(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzjo;)Lcom/google/android/gms/internal/ads/zzht;

    move-result-object v1

    goto :goto_26

    :cond_53
    const-string v2, "application/vobsub"

    .line 179
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    const-string v2, "application/pgs"

    .line 180
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    const-string v2, "application/dvbsubs"

    .line 181
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    goto :goto_25

    .line 182
    :cond_54
    new-instance v0, Lne3;

    const-string v1, "Unexpected MIME type."

    invoke-direct {v0, v1}, Lne3;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_55
    :goto_25
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v30

    iget-object v2, v0, Lvg3;->N:Ljava/lang/String;

    move-object/from16 v50, v2

    iget-object v2, v0, Lvg3;->i:Lcom/google/android/gms/internal/ads/zzjo;

    move-object/from16 v55, v2

    .line 184
    new-instance v2, Lcom/google/android/gms/internal/ads/zzht;

    move-object/from16 v29, v2

    const/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, -0x1

    const/16 v35, -0x1

    const/16 v36, -0x1

    const/16 v37, -0x1

    const/high16 v38, -0x40800000    # -1.0f

    const/16 v39, -0x1

    const/high16 v40, -0x40800000    # -1.0f

    const/16 v41, 0x0

    const/16 v42, -0x1

    const/16 v43, 0x0

    const/16 v44, -0x1

    const/16 v45, -0x1

    const/16 v46, -0x1

    const/16 v47, -0x1

    const/16 v48, -0x1

    const/16 v49, 0x0

    const/16 v51, -0x1

    const-wide v52, 0x7fffffffffffffffL

    const/16 v56, 0x0

    move-object/from16 v32, v1

    invoke-direct/range {v29 .. v56}, Lcom/google/android/gms/internal/ads/zzht;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzpy;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzjo;Lcom/google/android/gms/internal/ads/zzmh;)V

    move-object v1, v2

    :goto_26
    const/4 v2, 0x3

    .line 185
    :goto_27
    iget v3, v0, Lvg3;->b:I

    move-object/from16 v4, v26

    check-cast v4, Lmi3;

    invoke-virtual {v4, v3, v2}, Lmi3;->o(II)Lhj3;

    move-result-object v2

    iput-object v2, v0, Lvg3;->O:Lhj3;

    .line 186
    invoke-virtual {v2, v1}, Lhj3;->g(Lcom/google/android/gms/internal/ads/zzht;)V

    move-object/from16 v0, v25

    .line 187
    iget-object v1, v0, Lug3;->c:Landroid/util/SparseArray;

    iget-object v2, v0, Lug3;->t:Lvg3;

    iget v3, v2, Lvg3;->b:I

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_28

    :cond_56
    move-object/from16 v0, v16

    :goto_28
    const/4 v1, 0x0

    .line 188
    iput-object v1, v0, Lug3;->t:Lvg3;

    goto :goto_29

    :cond_57
    move-object v0, v1

    .line 189
    iget v1, v0, Lug3;->E:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_58

    goto :goto_29

    .line 190
    :cond_58
    iget-boolean v1, v0, Lug3;->X:Z

    if-nez v1, :cond_59

    .line 191
    iget v1, v0, Lug3;->M:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lug3;->M:I

    .line 192
    :cond_59
    iget-object v1, v0, Lug3;->c:Landroid/util/SparseArray;

    iget v2, v0, Lug3;->K:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvg3;

    iget-wide v2, v0, Lug3;->F:J

    invoke-virtual {v0, v1, v2, v3}, Lug3;->g(Lvg3;J)V

    const/4 v1, 0x0

    .line 193
    iput v1, v0, Lug3;->E:I

    :cond_5a
    :goto_29
    const/4 v0, 0x1

    return v0

    :cond_5b
    const/4 v0, 0x1

    const/4 v2, 0x0

    move-object/from16 v8, p0

    .line 194
    iget v9, v8, Lpg3;->e:I

    if-nez v9, :cond_61

    .line 195
    iget-object v9, v8, Lpg3;->c:Lxg3;

    const/4 v10, 0x4

    invoke-virtual {v9, v1, v0, v2, v10}, Lxg3;->a(Lgg3;ZZI)J

    move-result-wide v9

    const-wide/16 v11, -0x2

    cmp-long v0, v9, v11

    if-nez v0, :cond_5f

    .line 196
    move-object v0, v1

    check-cast v0, Leg3;

    .line 197
    iput v2, v0, Leg3;->e:I

    .line 198
    :goto_2a
    iget-object v0, v8, Lpg3;->a:[B

    move-object v9, v1

    check-cast v9, Leg3;

    const/4 v10, 0x4

    invoke-virtual {v9, v0, v2, v10}, Leg3;->b([BII)V

    .line 199
    iget-object v0, v8, Lpg3;->a:[B

    aget-byte v0, v0, v2

    invoke-static {v0}, Lxg3;->c(I)I

    move-result v0

    const/4 v11, -0x1

    if-eq v0, v11, :cond_5e

    if-gt v0, v10, :cond_5e

    .line 200
    iget-object v10, v8, Lpg3;->a:[B

    invoke-static {v10, v0, v2}, Lxg3;->b([BIZ)J

    move-result-wide v10

    long-to-int v2, v10

    .line 201
    iget-object v10, v8, Lpg3;->d:Lwg3;

    .line 202
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v2, v4, :cond_5d

    const v10, 0x1f43b675

    if-eq v2, v10, :cond_5d

    if-eq v2, v5, :cond_5d

    if-ne v2, v3, :cond_5c

    goto :goto_2b

    :cond_5c
    const/4 v10, 0x0

    goto :goto_2c

    :cond_5d
    :goto_2b
    const/4 v10, 0x1

    :goto_2c
    if-eqz v10, :cond_5e

    .line 203
    invoke-virtual {v9, v0}, Leg3;->d(I)V

    int-to-long v9, v2

    goto :goto_2d

    :cond_5e
    const/4 v0, 0x1

    .line 204
    invoke-virtual {v9, v0}, Leg3;->d(I)V

    const/4 v2, 0x0

    goto :goto_2a

    :cond_5f
    :goto_2d
    const/4 v0, 0x1

    cmp-long v2, v9, v6

    if-nez v2, :cond_60

    const/4 v0, 0x0

    return v0

    :cond_60
    const/4 v2, 0x0

    long-to-int v3, v9

    .line 205
    iput v3, v8, Lpg3;->f:I

    .line 206
    iput v0, v8, Lpg3;->e:I

    .line 207
    :cond_61
    iget v3, v8, Lpg3;->e:I

    if-ne v3, v0, :cond_62

    .line 208
    iget-object v3, v8, Lpg3;->c:Lxg3;

    const/16 v4, 0x8

    invoke-virtual {v3, v1, v2, v0, v4}, Lxg3;->a(Lgg3;ZZI)J

    move-result-wide v2

    iput-wide v2, v8, Lpg3;->g:J

    const/4 v0, 0x2

    .line 209
    iput v0, v8, Lpg3;->e:I

    .line 210
    :cond_62
    iget-object v0, v8, Lpg3;->d:Lwg3;

    iget v2, v8, Lpg3;->f:I

    .line 211
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sparse-switch v2, :sswitch_data_1

    const/4 v0, 0x0

    goto :goto_2e

    :sswitch_1c
    const/4 v0, 0x5

    goto :goto_2e

    :sswitch_1d
    const/4 v0, 0x4

    goto :goto_2e

    :sswitch_1e
    const/4 v0, 0x1

    goto :goto_2e

    :sswitch_1f
    const/4 v0, 0x3

    goto :goto_2e

    :sswitch_20
    const/4 v0, 0x2

    :goto_2e
    if-eqz v0, :cond_73

    const/4 v2, 0x1

    if-eq v0, v2, :cond_72

    const/4 v2, 0x2

    if-eq v0, v2, :cond_70

    const/4 v2, 0x3

    if-eq v0, v2, :cond_68

    const/4 v2, 0x4

    if-eq v0, v2, :cond_67

    const/4 v2, 0x5

    if-ne v0, v2, :cond_66

    .line 212
    iget-wide v2, v8, Lpg3;->g:J

    const-wide/16 v4, 0x4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_64

    const-wide/16 v4, 0x8

    cmp-long v0, v2, v4

    if-nez v0, :cond_63

    goto :goto_2f

    .line 213
    :cond_63
    new-instance v0, Lne3;

    iget-wide v1, v8, Lpg3;->g:J

    const/16 v3, 0x28

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid float size: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lne3;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_64
    :goto_2f
    iget-object v0, v8, Lpg3;->d:Lwg3;

    iget v4, v8, Lpg3;->f:I

    long-to-int v3, v2

    .line 215
    invoke-virtual {v8, v1, v3}, Lpg3;->a(Lgg3;I)J

    move-result-wide v1

    const/4 v5, 0x4

    if-ne v3, v5, :cond_65

    long-to-int v2, v1

    .line 216
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    float-to-double v1, v1

    goto :goto_30

    .line 217
    :cond_65
    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    .line 218
    :goto_30
    invoke-virtual {v0, v4, v1, v2}, Lwg3;->a(ID)V

    const/4 v0, 0x0

    .line 219
    iput v0, v8, Lpg3;->e:I

    goto/16 :goto_33

    .line 220
    :cond_66
    new-instance v1, Lne3;

    const/16 v2, 0x20

    const-string v3, "Invalid element type "

    invoke-static {v2, v3, v0}, Ljo;->M(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lne3;-><init>(Ljava/lang/String;)V

    throw v1

    .line 221
    :cond_67
    iget-object v0, v8, Lpg3;->d:Lwg3;

    iget v2, v8, Lpg3;->f:I

    iget-wide v3, v8, Lpg3;->g:J

    long-to-int v4, v3

    invoke-virtual {v0, v2, v4, v1}, Lwg3;->b(IILgg3;)V

    const/4 v0, 0x0

    .line 222
    iput v0, v8, Lpg3;->e:I

    goto/16 :goto_33

    .line 223
    :cond_68
    iget-wide v2, v8, Lpg3;->g:J

    const-wide/32 v4, 0x7fffffff

    cmp-long v0, v2, v4

    if-gtz v0, :cond_6f

    .line 224
    iget-object v0, v8, Lpg3;->d:Lwg3;

    iget v4, v8, Lpg3;->f:I

    long-to-int v3, v2

    if-nez v3, :cond_69

    const-string v1, ""

    goto :goto_31

    .line 225
    :cond_69
    new-array v2, v3, [B

    .line 226
    check-cast v1, Leg3;

    const/4 v5, 0x0

    .line 227
    invoke-virtual {v1, v2, v5, v3, v5}, Leg3;->c([BIIZ)Z

    .line 228
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 229
    :goto_31
    iget-object v0, v0, Lwg3;->a:Lug3;

    .line 230
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x86

    if-eq v4, v2, :cond_6d

    const/16 v2, 0x4282

    if-eq v4, v2, :cond_6b

    const v2, 0x22b59c

    if-eq v4, v2, :cond_6a

    goto :goto_32

    .line 231
    :cond_6a
    iget-object v0, v0, Lug3;->t:Lvg3;

    .line 232
    iput-object v1, v0, Lvg3;->N:Ljava/lang/String;

    goto :goto_32

    :cond_6b
    const-string v0, "webm"

    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    const-string v0, "matroska"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    goto :goto_32

    .line 234
    :cond_6c
    new-instance v0, Lne3;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x16

    const-string v3, "DocType "

    const-string v4, " not supported"

    invoke-static {v2, v3, v1, v4}, Ljo;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lne3;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_6d
    iget-object v0, v0, Lug3;->t:Lvg3;

    iput-object v1, v0, Lvg3;->a:Ljava/lang/String;

    :cond_6e
    :goto_32
    const/4 v0, 0x0

    .line 236
    iput v0, v8, Lpg3;->e:I

    goto :goto_33

    .line 237
    :cond_6f
    new-instance v0, Lne3;

    iget-wide v1, v8, Lpg3;->g:J

    const/16 v3, 0x29

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "String element size: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lne3;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_70
    iget-wide v2, v8, Lpg3;->g:J

    const-wide/16 v4, 0x8

    cmp-long v0, v2, v4

    if-gtz v0, :cond_71

    .line 239
    iget-object v0, v8, Lpg3;->d:Lwg3;

    iget v4, v8, Lpg3;->f:I

    long-to-int v3, v2

    invoke-virtual {v8, v1, v3}, Lpg3;->a(Lgg3;I)J

    move-result-wide v1

    invoke-virtual {v0, v4, v1, v2}, Lwg3;->c(IJ)V

    const/4 v0, 0x0

    .line 240
    iput v0, v8, Lpg3;->e:I

    :goto_33
    const/4 v0, 0x1

    return v0

    .line 241
    :cond_71
    new-instance v0, Lne3;

    iget-wide v1, v8, Lpg3;->g:J

    const/16 v3, 0x2a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid integer size: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lne3;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_72
    move-object v0, v1

    check-cast v0, Leg3;

    .line 243
    iget-wide v3, v0, Leg3;->c:J

    .line 244
    iget-wide v0, v8, Lpg3;->g:J

    add-long/2addr v0, v3

    .line 245
    iget-object v2, v8, Lpg3;->b:Ljava/util/Stack;

    new-instance v5, Lrg3;

    iget v6, v8, Lpg3;->f:I

    const/4 v7, 0x0

    invoke-direct {v5, v6, v0, v1, v7}, Lrg3;-><init>(IJLsg3;)V

    invoke-virtual {v2, v5}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v1, v8, Lpg3;->d:Lwg3;

    iget v2, v8, Lpg3;->f:I

    iget-wide v5, v8, Lpg3;->g:J

    invoke-virtual/range {v1 .. v6}, Lwg3;->d(IJJ)V

    const/4 v0, 0x0

    .line 247
    iput v0, v8, Lpg3;->e:I

    const/4 v0, 0x1

    return v0

    :cond_73
    const/4 v0, 0x0

    .line 248
    iget-wide v2, v8, Lpg3;->g:J

    long-to-int v3, v2

    move-object v2, v1

    check-cast v2, Leg3;

    invoke-virtual {v2, v3}, Leg3;->d(I)V

    .line 249
    iput v0, v8, Lpg3;->e:I

    move-object v0, v8

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_1b
        -0x7ce7f3b0 -> :sswitch_1a
        -0x76567dc0 -> :sswitch_19
        -0x6a615338 -> :sswitch_18
        -0x672350af -> :sswitch_17
        -0x585f4fce -> :sswitch_16
        -0x585f4fcd -> :sswitch_15
        -0x51dc40b2 -> :sswitch_14
        -0x37a9c464 -> :sswitch_13
        -0x2016c535 -> :sswitch_12
        -0x2016c4e5 -> :sswitch_11
        -0x19552dbd -> :sswitch_10
        -0x1538b2ba -> :sswitch_f
        0x3c02325 -> :sswitch_e
        0x3c02353 -> :sswitch_d
        0x3c030c5 -> :sswitch_c
        0x4e86155 -> :sswitch_b
        0x4e86156 -> :sswitch_a
        0x5e8da3e -> :sswitch_9
        0x1a8350d6 -> :sswitch_8
        0x2056f406 -> :sswitch_7
        0x2b453ce4 -> :sswitch_6
        0x32fdf009 -> :sswitch_5
        0x54c61e47 -> :sswitch_4
        0x6bd6c624 -> :sswitch_3
        0x7446132a -> :sswitch_2
        0x7446b0a6 -> :sswitch_1
        0x744ad97d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_18
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_18
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_17
        :pswitch_a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x83 -> :sswitch_20
        0x86 -> :sswitch_1f
        0x88 -> :sswitch_20
        0x9b -> :sswitch_20
        0x9f -> :sswitch_20
        0xa0 -> :sswitch_1e
        0xa1 -> :sswitch_1d
        0xa3 -> :sswitch_1d
        0xae -> :sswitch_1e
        0xb0 -> :sswitch_20
        0xb3 -> :sswitch_20
        0xb5 -> :sswitch_1c
        0xb7 -> :sswitch_1e
        0xba -> :sswitch_20
        0xbb -> :sswitch_1e
        0xd7 -> :sswitch_20
        0xe0 -> :sswitch_1e
        0xe1 -> :sswitch_1e
        0xe7 -> :sswitch_20
        0xf1 -> :sswitch_20
        0xfb -> :sswitch_20
        0x4254 -> :sswitch_20
        0x4255 -> :sswitch_1d
        0x4282 -> :sswitch_1f
        0x4285 -> :sswitch_20
        0x42f7 -> :sswitch_20
        0x4489 -> :sswitch_1c
        0x47e1 -> :sswitch_20
        0x47e2 -> :sswitch_1d
        0x47e7 -> :sswitch_1e
        0x47e8 -> :sswitch_20
        0x4dbb -> :sswitch_1e
        0x5031 -> :sswitch_20
        0x5032 -> :sswitch_20
        0x5034 -> :sswitch_1e
        0x5035 -> :sswitch_1e
        0x53ab -> :sswitch_1d
        0x53ac -> :sswitch_20
        0x53b8 -> :sswitch_20
        0x54b0 -> :sswitch_20
        0x54b2 -> :sswitch_20
        0x54ba -> :sswitch_20
        0x55aa -> :sswitch_20
        0x55b0 -> :sswitch_1e
        0x55b9 -> :sswitch_20
        0x55ba -> :sswitch_20
        0x55bb -> :sswitch_20
        0x55bc -> :sswitch_20
        0x55bd -> :sswitch_20
        0x55d0 -> :sswitch_1e
        0x55d1 -> :sswitch_1c
        0x55d2 -> :sswitch_1c
        0x55d3 -> :sswitch_1c
        0x55d4 -> :sswitch_1c
        0x55d5 -> :sswitch_1c
        0x55d6 -> :sswitch_1c
        0x55d7 -> :sswitch_1c
        0x55d8 -> :sswitch_1c
        0x55d9 -> :sswitch_1c
        0x55da -> :sswitch_1c
        0x56aa -> :sswitch_20
        0x56bb -> :sswitch_20
        0x6240 -> :sswitch_1e
        0x6264 -> :sswitch_20
        0x63a2 -> :sswitch_1d
        0x6d80 -> :sswitch_1e
        0x7670 -> :sswitch_1e
        0x7672 -> :sswitch_1d
        0x22b59c -> :sswitch_1f
        0x23e383 -> :sswitch_20
        0x2ad7b1 -> :sswitch_20
        0x114d9b74 -> :sswitch_1e
        0x1549a966 -> :sswitch_1e
        0x1654ae6b -> :sswitch_1e
        0x18538067 -> :sswitch_1e
        0x1a45dfa3 -> :sswitch_1e
        0x1c53bb6b -> :sswitch_1e
        0x1f43b675 -> :sswitch_1e
    .end sparse-switch
.end method
