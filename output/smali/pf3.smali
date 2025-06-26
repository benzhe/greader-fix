.class public final Lpf3;
.super Luh3;
.source "SourceFile"

# interfaces
.implements Lxk3;


# instance fields
.field public final T:Lye3;

.field public final U:Lhf3;

.field public V:Z

.field public W:I

.field public X:I

.field public Y:J

.field public Z:Z


# direct methods
.method public constructor <init>(Lwh3;Landroid/os/Handler;Lze3;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Lxe3;

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v1, p1, v1}, Luh3;-><init>(ILwh3;Z)V

    .line 2
    new-instance p1, Lhf3;

    new-instance v1, Lqf3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lqf3;-><init>(Lpf3;Lrf3;)V

    invoke-direct {p1, v0, v1}, Lhf3;-><init>([Lxe3;Lqf3;)V

    iput-object p1, p0, Lpf3;->U:Lhf3;

    .line 3
    new-instance p1, Lye3;

    invoke-direct {p1, p2, p3}, Lye3;-><init>(Landroid/os/Handler;Lze3;)V

    iput-object p1, p0, Lpf3;->T:Lye3;

    return-void
.end method


# virtual methods
.method public final A(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyd3;
        }
    .end annotation

    const-string v1, "audio/raw"

    const-string p1, "channel-count"

    .line 1
    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const-string p1, "sample-rate"

    .line 2
    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 3
    iget-boolean p1, p0, Lpf3;->V:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    if-ne v2, p1, :cond_0

    iget p2, p0, Lpf3;->X:I

    if-ge p2, p1, :cond_0

    .line 4
    new-array p1, p2, [I

    const/4 p2, 0x0

    .line 5
    :goto_0
    iget v0, p0, Lpf3;->X:I

    if-ge p2, v0, :cond_1

    .line 6
    aput p2, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    move-object v5, p1

    .line 7
    :try_start_0
    iget-object v0, p0, Lpf3;->U:Lhf3;

    iget v4, p0, Lpf3;->W:I

    invoke-virtual/range {v0 .. v5}, Lhf3;->d(Ljava/lang/String;III[I)V
    :try_end_0
    .catch Llf3; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8
    iget p2, p0, Lxd3;->c:I

    .line 9
    invoke-static {p1, p2}, Lyd3;->b(Ljava/lang/Exception;I)Lyd3;

    move-result-object p1

    throw p1
.end method

.method public final B(Lwh3;Lcom/google/android/gms/internal/ads/zzht;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ldi3;
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzht;->j:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lc50;->l3(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 3
    :cond_0
    sget v1, Lel3;->a:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    const/16 v4, 0x10

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 4
    :goto_0
    invoke-interface {p1, v0, v2}, Lwh3;->a(Ljava/lang/String;Z)Lvh3;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_2

    return v0

    :cond_2
    if-lt v1, v3, :cond_a

    .line 5
    iget v1, p2, Lcom/google/android/gms/internal/ads/zzht;->w:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_6

    .line 6
    iget-object v5, p1, Lvh3;->f:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v5, :cond_3

    const-string v1, "sampleRate.caps"

    .line 7
    invoke-virtual {p1, v1}, Lvh3;->c(Ljava/lang/String;)V

    :goto_1
    const/4 v1, 0x0

    goto :goto_2

    .line 8
    :cond_3
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v5

    if-nez v5, :cond_4

    const-string v1, "sampleRate.aCaps"

    .line 9
    invoke-virtual {p1, v1}, Lvh3;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_4
    invoke-virtual {v5, v1}, Landroid/media/MediaCodecInfo$AudioCapabilities;->isSampleRateSupported(I)Z

    move-result v5

    if-nez v5, :cond_5

    const/16 v5, 0x1f

    .line 11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "sampleRate.support, "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lvh3;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_b

    .line 12
    :cond_6
    iget p2, p2, Lcom/google/android/gms/internal/ads/zzht;->v:I

    if-eq p2, v3, :cond_a

    .line 13
    iget-object v1, p1, Lvh3;->f:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v1, :cond_7

    const-string p2, "channelCount.caps"

    .line 14
    invoke-virtual {p1, p2}, Lvh3;->c(Ljava/lang/String;)V

    :goto_3
    const/4 p1, 0x0

    goto :goto_4

    .line 15
    :cond_7
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v1

    if-nez v1, :cond_8

    const-string p2, "channelCount.aCaps"

    .line 16
    invoke-virtual {p1, p2}, Lvh3;->c(Ljava/lang/String;)V

    goto :goto_3

    .line 17
    :cond_8
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    move-result v1

    if-ge v1, p2, :cond_9

    const/16 v1, 0x21

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "channelCount.support, "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lvh3;->c(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    const/4 p1, 0x1

    :goto_4
    if-eqz p1, :cond_b

    :cond_a
    const/4 v2, 0x1

    :cond_b
    if-eqz v2, :cond_c

    const/4 p1, 0x3

    goto :goto_5

    :cond_c
    const/4 p1, 0x2

    :goto_5
    or-int/lit8 p2, v4, 0x4

    or-int/2addr p1, p2

    return p1
.end method

.method public final C(Lwh3;Lcom/google/android/gms/internal/ads/zzht;Z)Lvh3;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ldi3;
        }
    .end annotation

    .line 1
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzht;->j:Ljava/lang/String;

    .line 2
    invoke-interface {p1, p2, p3}, Lwh3;->a(Ljava/lang/String;Z)Lvh3;

    move-result-object p1

    return-object p1
.end method

.method public final E(Lvh3;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzht;Landroid/media/MediaCrypto;)V
    .locals 2

    .line 1
    iget-object p1, p1, Lvh3;->a:Ljava/lang/String;

    .line 2
    sget p4, Lel3;->a:I

    const/4 v0, 0x0

    const/16 v1, 0x18

    if-ge p4, v1, :cond_1

    const-string p4, "OMX.SEC.aac.dec"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lel3;->c:Ljava/lang/String;

    const-string p4, "samsung"

    .line 3
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lel3;->b:Ljava/lang/String;

    const-string p4, "zeroflte"

    .line 4
    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_0

    const-string p4, "herolte"

    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_0

    const-string p4, "heroqlte"

    .line 5
    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 6
    :goto_0
    iput-boolean p1, p0, Lpf3;->V:Z

    .line 7
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzht;->i()Landroid/media/MediaFormat;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, p3, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-void
.end method

.method public final F(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyd3;
        }
    .end annotation

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-eqz p11, :cond_1

    .line 1
    invoke-virtual {p5, p7, p1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 2
    iget-object p1, p0, Luh3;->R:Lxf3;

    iget p3, p1, Lxf3;->e:I

    add-int/2addr p3, p2

    iput p3, p1, Lxf3;->e:I

    .line 3
    iget-object p1, p0, Lpf3;->U:Lhf3;

    .line 4
    iget p3, p1, Lhf3;->J:I

    if-ne p3, p2, :cond_0

    const/4 p3, 0x2

    .line 5
    iput p3, p1, Lhf3;->J:I

    :cond_0
    return p2

    .line 6
    :cond_1
    :try_start_0
    iget-object p3, p0, Lpf3;->U:Lhf3;

    invoke-virtual {p3, p6, p9, p10}, Lhf3;->f(Ljava/nio/ByteBuffer;J)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 7
    invoke-virtual {p5, p7, p1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 8
    iget-object p1, p0, Luh3;->R:Lxf3;

    iget p3, p1, Lxf3;->d:I

    add-int/2addr p3, p2

    iput p3, p1, Lxf3;->d:I
    :try_end_0
    .catch Lkf3; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lof3; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :cond_2
    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 9
    :goto_0
    iget p2, p0, Lxd3;->c:I

    .line 10
    invoke-static {p1, p2}, Lyd3;->b(Ljava/lang/Exception;I)Lyd3;

    move-result-object p1

    throw p1
.end method

.method public final I(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    iget-object v1, p0, Lpf3;->T:Lye3;

    .line 2
    iget-object v0, v1, Lye3;->b:Lze3;

    if-eqz v0, :cond_0

    .line 3
    iget-object v7, v1, Lye3;->a:Landroid/os/Handler;

    new-instance v8, Laf3;

    move-object v0, v8

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Laf3;-><init>(Lye3;Ljava/lang/String;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final J(Lcom/google/android/gms/internal/ads/zzht;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyd3;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Luh3;->J(Lcom/google/android/gms/internal/ads/zzht;)V

    .line 2
    iget-object v0, p0, Lpf3;->T:Lye3;

    .line 3
    iget-object v1, v0, Lye3;->b:Lze3;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, v0, Lye3;->a:Landroid/os/Handler;

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, p1}, Ldf3;-><init>(Lye3;Lcom/google/android/gms/internal/ads/zzht;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzht;->j:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzht;->x:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 6
    :goto_0
    iput v0, p0, Lpf3;->W:I

    .line 7
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzht;->v:I

    iput p1, p0, Lpf3;->X:I

    return-void
.end method

.method public final K()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyd3;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lpf3;->U:Lhf3;

    .line 2
    iget-boolean v1, v0, Lhf3;->V:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lhf3;->a()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lhf3;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, v0, Lhf3;->g:Ljf3;

    invoke-virtual {v0}, Lhf3;->o()J

    move-result-wide v2

    .line 5
    invoke-virtual {v1}, Ljf3;->e()J

    move-result-wide v4

    iput-wide v4, v1, Ljf3;->h:J

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    iput-wide v4, v1, Ljf3;->g:J

    .line 7
    iput-wide v2, v1, Ljf3;->i:J

    .line 8
    iget-object v1, v1, Ljf3;->a:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Lhf3;->V:Z
    :try_end_0
    .catch Lof3; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 10
    iget v1, p0, Lxd3;->c:I

    .line 11
    invoke-static {v0, v1}, Lyd3;->b(Ljava/lang/Exception;I)Lyd3;

    move-result-object v0

    throw v0
.end method

.method public final a()Lpe3;
    .locals 1

    .line 1
    iget-object v0, p0, Lpf3;->U:Lhf3;

    .line 2
    iget-object v0, v0, Lhf3;->s:Lpe3;

    return-object v0
.end method

.method public final b(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyd3;
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return-void

    .line 1
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    iget-object p2, p0, Lpf3;->U:Lhf3;

    .line 3
    iget v0, p2, Lhf3;->n:I

    if-ne v0, p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iput p1, p2, Lhf3;->n:I

    .line 5
    invoke-virtual {p2}, Lhf3;->c()V

    const/4 p1, 0x0

    .line 6
    iput p1, p2, Lhf3;->X:I

    :goto_0
    return-void

    .line 7
    :cond_2
    iget-object p1, p0, Lpf3;->U:Lhf3;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 8
    iget v0, p1, Lhf3;->N:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_3

    .line 9
    iput p2, p1, Lhf3;->N:F

    .line 10
    invoke-virtual {p1}, Lhf3;->n()V

    :cond_3
    return-void
.end method

.method public final c()J
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lpf3;->U:Lhf3;

    invoke-virtual/range {p0 .. p0}, Lpf3;->j()Z

    move-result v2

    .line 2
    invoke-virtual {v1}, Lhf3;->a()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iget v3, v1, Lhf3;->J:I

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    const-wide/high16 v6, -0x8000000000000000L

    goto/16 :goto_9

    .line 3
    :cond_1
    iget-object v3, v1, Lhf3;->i:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v3

    const/4 v8, 0x3

    const-wide/32 v9, 0xf4240

    const-wide/16 v11, 0x3e8

    if-ne v3, v8, :cond_9

    .line 4
    iget-object v3, v1, Lhf3;->g:Ljf3;

    .line 5
    invoke-virtual {v3}, Ljf3;->e()J

    move-result-wide v13

    mul-long v13, v13, v9

    iget v3, v3, Ljf3;->c:I

    int-to-long v6, v3

    div-long/2addr v13, v6

    const-wide/16 v6, 0x0

    cmp-long v3, v13, v6

    if-eqz v3, :cond_9

    .line 6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    div-long v9, v15, v11

    .line 7
    iget-wide v11, v1, Lhf3;->y:J

    sub-long v11, v9, v11

    const-wide/16 v17, 0x7530

    cmp-long v3, v11, v17

    if-ltz v3, :cond_3

    .line 8
    iget-object v3, v1, Lhf3;->f:[J

    iget v8, v1, Lhf3;->v:I

    sub-long v11, v13, v9

    aput-wide v11, v3, v8

    add-int/2addr v8, v4

    const/16 v3, 0xa

    .line 9
    rem-int/2addr v8, v3

    iput v8, v1, Lhf3;->v:I

    .line 10
    iget v8, v1, Lhf3;->w:I

    if-ge v8, v3, :cond_2

    add-int/2addr v8, v4

    .line 11
    iput v8, v1, Lhf3;->w:I

    .line 12
    :cond_2
    iput-wide v9, v1, Lhf3;->y:J

    .line 13
    iput-wide v6, v1, Lhf3;->x:J

    const/4 v3, 0x0

    .line 14
    :goto_1
    iget v4, v1, Lhf3;->w:I

    if-ge v3, v4, :cond_3

    .line 15
    iget-wide v11, v1, Lhf3;->x:J

    iget-object v8, v1, Lhf3;->f:[J

    aget-wide v17, v8, v3

    int-to-long v6, v4

    div-long v17, v17, v6

    add-long v6, v17, v11

    iput-wide v6, v1, Lhf3;->x:J

    add-int/lit8 v3, v3, 0x1

    const-wide/16 v6, 0x0

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual {v1}, Lhf3;->p()Z

    move-result v3

    if-nez v3, :cond_9

    .line 17
    iget-wide v3, v1, Lhf3;->A:J

    sub-long v3, v9, v3

    const-wide/32 v6, 0x7a120

    cmp-long v8, v3, v6

    if-ltz v8, :cond_9

    .line 18
    iget-object v3, v1, Lhf3;->g:Ljf3;

    invoke-virtual {v3}, Ljf3;->b()Z

    move-result v3

    iput-boolean v3, v1, Lhf3;->z:Z

    const-string v4, "AudioTrack"

    if-eqz v3, :cond_6

    .line 19
    iget-object v3, v1, Lhf3;->g:Ljf3;

    invoke-virtual {v3}, Ljf3;->c()J

    move-result-wide v11

    const-wide/16 v15, 0x3e8

    div-long/2addr v11, v15

    .line 20
    iget-object v3, v1, Lhf3;->g:Ljf3;

    invoke-virtual {v3}, Ljf3;->d()J

    move-result-wide v6

    move-wide/from16 v19, v6

    .line 21
    iget-wide v5, v1, Lhf3;->L:J

    cmp-long v7, v11, v5

    if-gez v7, :cond_4

    const/4 v3, 0x0

    .line 22
    iput-boolean v3, v1, Lhf3;->z:Z

    goto/16 :goto_2

    :cond_4
    sub-long v5, v11, v9

    .line 23
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-string v7, ", "

    const-wide/32 v17, 0x4c4b40

    cmp-long v8, v5, v17

    if-lez v8, :cond_5

    const/16 v5, 0x88

    .line 24
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Spurious audio timestamp (system clock mismatch): "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v5, v4

    move-wide/from16 v3, v19

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 26
    iput-boolean v3, v1, Lhf3;->z:Z

    goto :goto_3

    :cond_5
    move-object v5, v4

    move-wide/from16 v3, v19

    .line 27
    invoke-virtual {v1, v3, v4}, Lhf3;->i(J)J

    move-result-wide v19

    sub-long v19, v19, v13

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(J)J

    move-result-wide v19

    const-wide/32 v17, 0x4c4b40

    cmp-long v8, v19, v17

    if-lez v8, :cond_7

    const/16 v8, 0x8a

    .line 28
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Spurious audio timestamp (frame position mismatch): "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 29
    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 30
    iput-boolean v3, v1, Lhf3;->z:Z

    goto :goto_3

    :cond_6
    :goto_2
    move-object v5, v4

    .line 31
    :cond_7
    :goto_3
    iget-object v4, v1, Lhf3;->B:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_8

    iget-boolean v6, v1, Lhf3;->o:Z

    if-nez v6, :cond_8

    const/4 v6, 0x0

    .line 32
    :try_start_0
    iget-object v7, v1, Lhf3;->i:Landroid/media/AudioTrack;

    invoke-virtual {v4, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v7, v4

    const-wide/16 v11, 0x3e8

    mul-long v7, v7, v11

    iget-wide v11, v1, Lhf3;->q:J

    sub-long/2addr v7, v11

    iput-wide v7, v1, Lhf3;->M:J

    const-wide/16 v11, 0x0

    .line 33
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v1, Lhf3;->M:J

    const-wide/32 v11, 0x4c4b40

    cmp-long v4, v7, v11

    if-lez v4, :cond_8

    const/16 v4, 0x3d

    .line 34
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Ignoring impossibly large audio latency: "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x0

    .line 35
    iput-wide v4, v1, Lhf3;->M:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 36
    :catch_0
    iput-object v6, v1, Lhf3;->B:Ljava/lang/reflect/Method;

    .line 37
    :cond_8
    :goto_4
    iput-wide v9, v1, Lhf3;->A:J

    .line 38
    :cond_9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 39
    iget-boolean v8, v1, Lhf3;->z:Z

    if-eqz v8, :cond_a

    .line 40
    iget-object v2, v1, Lhf3;->g:Ljf3;

    invoke-virtual {v2}, Ljf3;->c()J

    move-result-wide v8

    div-long/2addr v8, v6

    sub-long/2addr v4, v8

    .line 41
    invoke-virtual {v1, v4, v5}, Lhf3;->j(J)J

    move-result-wide v4

    .line 42
    iget-object v2, v1, Lhf3;->g:Ljf3;

    invoke-virtual {v2}, Ljf3;->d()J

    move-result-wide v6

    add-long/2addr v6, v4

    .line 43
    invoke-virtual {v1, v6, v7}, Lhf3;->i(J)J

    move-result-wide v4

    goto :goto_6

    .line 44
    :cond_a
    iget v6, v1, Lhf3;->w:I

    if-nez v6, :cond_b

    .line 45
    iget-object v4, v1, Lhf3;->g:Ljf3;

    .line 46
    invoke-virtual {v4}, Ljf3;->e()J

    move-result-wide v5

    const-wide/32 v7, 0xf4240

    mul-long v5, v5, v7

    iget v4, v4, Ljf3;->c:I

    int-to-long v7, v4

    div-long/2addr v5, v7

    move-wide v4, v5

    goto :goto_5

    .line 47
    :cond_b
    iget-wide v6, v1, Lhf3;->x:J

    add-long/2addr v4, v6

    :goto_5
    if-nez v2, :cond_c

    .line 48
    iget-wide v6, v1, Lhf3;->M:J

    sub-long/2addr v4, v6

    .line 49
    :cond_c
    :goto_6
    iget-wide v6, v1, Lhf3;->K:J

    .line 50
    :goto_7
    iget-object v2, v1, Lhf3;->h:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, v1, Lhf3;->h:Ljava/util/LinkedList;

    .line 51
    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf3;

    .line 52
    iget-wide v8, v2, Lmf3;->c:J

    cmp-long v2, v4, v8

    if-ltz v2, :cond_d

    .line 53
    iget-object v2, v1, Lhf3;->h:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf3;

    .line 54
    iget-object v8, v2, Lmf3;->a:Lpe3;

    .line 55
    iput-object v8, v1, Lhf3;->s:Lpe3;

    .line 56
    iget-wide v8, v2, Lmf3;->c:J

    .line 57
    iput-wide v8, v1, Lhf3;->u:J

    .line 58
    iget-wide v8, v2, Lmf3;->b:J

    .line 59
    iget-wide v10, v1, Lhf3;->K:J

    sub-long/2addr v8, v10

    iput-wide v8, v1, Lhf3;->t:J

    goto :goto_7

    .line 60
    :cond_d
    iget-object v2, v1, Lhf3;->s:Lpe3;

    iget v2, v2, Lpe3;->a:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v8

    if-nez v2, :cond_e

    .line 61
    iget-wide v8, v1, Lhf3;->t:J

    add-long/2addr v4, v8

    iget-wide v1, v1, Lhf3;->u:J

    sub-long/2addr v4, v1

    goto :goto_8

    .line 62
    :cond_e
    iget-object v2, v1, Lhf3;->h:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v1, Lhf3;->b:Luf3;

    .line 63
    iget-wide v12, v2, Luf3;->k:J

    const-wide/16 v8, 0x400

    cmp-long v10, v12, v8

    if-ltz v10, :cond_f

    .line 64
    iget-wide v10, v1, Lhf3;->t:J

    iget-wide v8, v1, Lhf3;->u:J

    sub-long v8, v4, v8

    .line 65
    iget-wide v1, v2, Luf3;->j:J

    move-wide v4, v10

    move-wide v10, v1

    .line 66
    invoke-static/range {v8 .. v13}, Lel3;->b(JJJ)J

    move-result-wide v1

    add-long/2addr v4, v1

    goto :goto_8

    .line 67
    :cond_f
    iget-wide v8, v1, Lhf3;->t:J

    iget-object v2, v1, Lhf3;->s:Lpe3;

    iget v2, v2, Lpe3;->a:F

    float-to-double v10, v2

    iget-wide v1, v1, Lhf3;->u:J

    sub-long/2addr v4, v1

    long-to-double v1, v4

    mul-double v10, v10, v1

    double-to-long v1, v10

    add-long v4, v1, v8

    :goto_8
    add-long/2addr v6, v4

    :goto_9
    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v4, v6, v1

    if-eqz v4, :cond_11

    .line 68
    iget-boolean v1, v0, Lpf3;->Z:Z

    if-eqz v1, :cond_10

    goto :goto_a

    .line 69
    :cond_10
    iget-wide v1, v0, Lpf3;->Y:J

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    :goto_a
    iput-wide v6, v0, Lpf3;->Y:J

    const/4 v1, 0x0

    .line 70
    iput-boolean v1, v0, Lpf3;->Z:Z

    .line 71
    :cond_11
    iget-wide v1, v0, Lpf3;->Y:J

    return-wide v1
.end method

.method public final d(Lpe3;)Lpe3;
    .locals 1

    .line 1
    iget-object v0, p0, Lpf3;->U:Lhf3;

    invoke-virtual {v0, p1}, Lhf3;->e(Lpe3;)Lpe3;

    move-result-object p1

    return-object p1
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lpf3;->U:Lhf3;

    invoke-virtual {v0}, Lhf3;->b()V

    return-void
.end method

.method public final f()V
    .locals 6

    .line 1
    iget-object v0, p0, Lpf3;->U:Lhf3;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lhf3;->W:Z

    .line 3
    invoke-virtual {v0}, Lhf3;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    .line 4
    iput-wide v2, v0, Lhf3;->x:J

    .line 5
    iput v1, v0, Lhf3;->w:I

    .line 6
    iput v1, v0, Lhf3;->v:I

    .line 7
    iput-wide v2, v0, Lhf3;->y:J

    .line 8
    iput-boolean v1, v0, Lhf3;->z:Z

    .line 9
    iput-wide v2, v0, Lhf3;->A:J

    .line 10
    iget-object v0, v0, Lhf3;->g:Ljf3;

    .line 11
    iget-wide v1, v0, Ljf3;->g:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, v0, Ljf3;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final h(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyd3;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Luh3;->h(JZ)V

    .line 2
    iget-object p3, p0, Lpf3;->U:Lhf3;

    invoke-virtual {p3}, Lhf3;->c()V

    .line 3
    iput-wide p1, p0, Lpf3;->Y:J

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lpf3;->Z:Z

    return-void
.end method

.method public final isReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lpf3;->U:Lhf3;

    invoke-virtual {v0}, Lhf3;->m()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Luh3;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final j()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Luh3;->O:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lpf3;->U:Lhf3;

    .line 3
    invoke-virtual {v0}, Lhf3;->a()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lhf3;->V:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lhf3;->m()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return v3

    :cond_2
    return v1
.end method

.method public final m()Lxk3;
    .locals 0

    return-object p0
.end method

.method public final y()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lpf3;->U:Lhf3;

    .line 2
    invoke-virtual {v0}, Lhf3;->c()V

    .line 3
    iget-object v1, v0, Lhf3;->c:[Lxe3;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 4
    invoke-interface {v5}, Lxe3;->g()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 5
    :cond_0
    iput v3, v0, Lhf3;->X:I

    .line 6
    iput-boolean v3, v0, Lhf3;->W:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    invoke-super {p0}, Luh3;->y()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8
    iget-object v0, p0, Luh3;->R:Lxf3;

    .line 9
    monitor-enter v0

    .line 10
    monitor-exit v0

    .line 11
    iget-object v0, p0, Lpf3;->T:Lye3;

    iget-object v1, p0, Luh3;->R:Lxf3;

    invoke-virtual {v0, v1}, Lye3;->a(Lxf3;)V

    return-void

    :catchall_1
    move-exception v0

    .line 12
    iget-object v1, p0, Luh3;->R:Lxf3;

    .line 13
    monitor-enter v1

    .line 14
    monitor-exit v1

    .line 15
    iget-object v1, p0, Lpf3;->T:Lye3;

    iget-object v2, p0, Luh3;->R:Lxf3;

    invoke-virtual {v1, v2}, Lye3;->a(Lxf3;)V

    .line 16
    throw v0

    .line 17
    :goto_1
    :try_start_2
    invoke-super {p0}, Luh3;->y()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 18
    iget-object v1, p0, Luh3;->R:Lxf3;

    .line 19
    monitor-enter v1

    .line 20
    monitor-exit v1

    .line 21
    iget-object v1, p0, Lpf3;->T:Lye3;

    iget-object v2, p0, Luh3;->R:Lxf3;

    invoke-virtual {v1, v2}, Lye3;->a(Lxf3;)V

    .line 22
    throw v0

    :catchall_2
    move-exception v0

    .line 23
    iget-object v1, p0, Luh3;->R:Lxf3;

    .line 24
    monitor-enter v1

    .line 25
    monitor-exit v1

    .line 26
    iget-object v1, p0, Lpf3;->T:Lye3;

    iget-object v2, p0, Luh3;->R:Lxf3;

    invoke-virtual {v1, v2}, Lye3;->a(Lxf3;)V

    .line 27
    throw v0
.end method

.method public final z(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyd3;
        }
    .end annotation

    .line 1
    new-instance p1, Lxf3;

    invoke-direct {p1}, Lxf3;-><init>()V

    iput-object p1, p0, Luh3;->R:Lxf3;

    .line 2
    iget-object v0, p0, Lpf3;->T:Lye3;

    .line 3
    iget-object v1, v0, Lye3;->b:Lze3;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, v0, Lye3;->a:Landroid/os/Handler;

    new-instance v2, Lbf3;

    invoke-direct {v2, v0, p1}, Lbf3;-><init>(Lye3;Lxf3;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5
    :cond_0
    iget-object p1, p0, Lxd3;->b:Lqe3;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lpf3;->U:Lhf3;

    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
