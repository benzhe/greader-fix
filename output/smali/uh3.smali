.class public abstract Luh3;
.super Lxd3;
.source "SourceFile"


# static fields
.field public static final S:[B


# instance fields
.field public A:Z

.field public B:Z

.field public C:[Ljava/nio/ByteBuffer;

.field public D:[Ljava/nio/ByteBuffer;

.field public E:J

.field public F:I

.field public G:I

.field public H:Z

.field public I:Z

.field public J:I

.field public K:I

.field public L:Z

.field public M:Z

.field public N:Z

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:Lxf3;

.field public final i:Lwh3;

.field public final j:Z

.field public final k:Lzf3;

.field public final l:Lzf3;

.field public final m:Lme3;

.field public final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Landroid/media/MediaCodec$BufferInfo;

.field public p:Lcom/google/android/gms/internal/ads/zzht;

.field public q:Lbg3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbg3<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public r:Landroid/media/MediaCodec;

.field public s:Lvh3;

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    sget v0, Lel3;->a:I

    const/16 v0, 0x26

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    shl-int/lit8 v3, v2, 0x1

    const-string v4, "0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78"

    .line 2
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v3, v3, 0x1

    .line 3
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    add-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    sput-object v1, Luh3;->S:[B

    return-void
.end method

.method public constructor <init>(ILwh3;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lwh3;",
            "Ljava/lang/Object<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lxd3;-><init>(I)V

    .line 2
    sget p1, Lel3;->a:I

    const/4 v0, 0x0

    const/16 v1, 0x10

    if-lt p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lc50;->D(Z)V

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Luh3;->i:Lwh3;

    .line 5
    iput-boolean p3, p0, Luh3;->j:Z

    .line 6
    new-instance p1, Lzf3;

    invoke-direct {p1}, Lzf3;-><init>()V

    iput-object p1, p0, Luh3;->k:Lzf3;

    .line 7
    new-instance p1, Lzf3;

    invoke-direct {p1}, Lzf3;-><init>()V

    .line 8
    iput-object p1, p0, Luh3;->l:Lzf3;

    .line 9
    new-instance p1, Lme3;

    invoke-direct {p1}, Lme3;-><init>()V

    iput-object p1, p0, Luh3;->m:Lme3;

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Luh3;->n:Ljava/util/List;

    .line 11
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Luh3;->o:Landroid/media/MediaCodec$BufferInfo;

    .line 12
    iput v0, p0, Luh3;->J:I

    .line 13
    iput v0, p0, Luh3;->K:I

    return-void
.end method


# virtual methods
.method public abstract A(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyd3;
        }
    .end annotation
.end method

.method public abstract B(Lwh3;Lcom/google/android/gms/internal/ads/zzht;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ldi3;
        }
    .end annotation
.end method

.method public C(Lwh3;Lcom/google/android/gms/internal/ads/zzht;Z)Lvh3;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ldi3;
        }
    .end annotation

    .line 1
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzht;->j:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lwh3;->a(Ljava/lang/String;Z)Lvh3;

    move-result-object p1

    return-object p1
.end method

.method public D(Lzf3;)V
    .locals 0

    return-void
.end method

.method public abstract E(Lvh3;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzht;Landroid/media/MediaCrypto;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ldi3;
        }
    .end annotation
.end method

.method public abstract F(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyd3;
        }
    .end annotation
.end method

.method public G(Landroid/media/MediaCodec;ZLcom/google/android/gms/internal/ads/zzht;Lcom/google/android/gms/internal/ads/zzht;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public H(Lvh3;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public abstract I(Ljava/lang/String;JJ)V
.end method

.method public J(Lcom/google/android/gms/internal/ads/zzht;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyd3;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Luh3;->p:Lcom/google/android/gms/internal/ads/zzht;

    .line 2
    iput-object p1, p0, Luh3;->p:Lcom/google/android/gms/internal/ads/zzht;

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzht;->m:Lcom/google/android/gms/internal/ads/zzjo;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzht;->m:Lcom/google/android/gms/internal/ads/zzjo;

    .line 5
    :goto_0
    invoke-static {p1, v1}, Lel3;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Luh3;->p:Lcom/google/android/gms/internal/ads/zzht;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzht;->m:Lcom/google/android/gms/internal/ads/zzjo;

    if-nez p1, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Media requires a DrmSessionManager"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 8
    iget v0, p0, Lxd3;->c:I

    .line 9
    invoke-static {p1, v0}, Lyd3;->b(Ljava/lang/Exception;I)Lyd3;

    move-result-object p1

    throw p1

    .line 10
    :cond_2
    :goto_1
    iget-object p1, p0, Luh3;->q:Lbg3;

    if-nez p1, :cond_4

    iget-object p1, p0, Luh3;->r:Landroid/media/MediaCodec;

    if-eqz p1, :cond_4

    iget-object v2, p0, Luh3;->s:Lvh3;

    iget-boolean v2, v2, Lvh3;->b:Z

    iget-object v3, p0, Luh3;->p:Lcom/google/android/gms/internal/ads/zzht;

    .line 11
    invoke-virtual {p0, p1, v2, v0, v3}, Luh3;->G(Landroid/media/MediaCodec;ZLcom/google/android/gms/internal/ads/zzht;Lcom/google/android/gms/internal/ads/zzht;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    iput-boolean v1, p0, Luh3;->I:Z

    .line 13
    iput v1, p0, Luh3;->J:I

    .line 14
    iget-boolean p1, p0, Luh3;->v:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Luh3;->p:Lcom/google/android/gms/internal/ads/zzht;

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzht;->n:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzht;->n:I

    if-ne v2, v3, :cond_3

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzht;->o:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzht;->o:I

    if-ne p1, v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Luh3;->A:Z

    return-void

    .line 15
    :cond_4
    iget-boolean p1, p0, Luh3;->L:Z

    if-eqz p1, :cond_5

    .line 16
    iput v1, p0, Luh3;->K:I

    return-void

    .line 17
    :cond_5
    invoke-virtual {p0}, Luh3;->M()V

    .line 18
    invoke-virtual {p0}, Luh3;->L()V

    return-void
.end method

.method public K()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyd3;
        }
    .end annotation

    return-void
.end method

.method public final L()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyd3;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Luh3;->r:Landroid/media/MediaCodec;

    if-nez v0, :cond_14

    iget-object v0, p0, Luh3;->p:Lcom/google/android/gms/internal/ads/zzht;

    if-nez v0, :cond_0

    goto/16 :goto_a

    :cond_0
    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Luh3;->q:Lbg3;

    .line 3
    iget-object v2, p0, Luh3;->s:Lvh3;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 4
    :try_start_0
    iget-object v2, p0, Luh3;->i:Lwh3;

    invoke-virtual {p0, v2, v0, v3}, Luh3;->C(Lwh3;Lcom/google/android/gms/internal/ads/zzht;Z)Lvh3;

    move-result-object v0

    iput-object v0, p0, Luh3;->s:Lvh3;
    :try_end_0
    .catch Ldi3; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Lxh3;

    iget-object v2, p0, Luh3;->p:Lcom/google/android/gms/internal/ads/zzht;

    const v3, -0xc34f

    invoke-direct {v0, v2, v1, v3}, Lxh3;-><init>(Lcom/google/android/gms/internal/ads/zzht;Ljava/lang/Throwable;I)V

    .line 6
    iget v1, p0, Lxd3;->c:I

    .line 7
    invoke-static {v0, v1}, Lyd3;->b(Ljava/lang/Exception;I)Lyd3;

    move-result-object v0

    throw v0

    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Lxh3;

    iget-object v2, p0, Luh3;->p:Lcom/google/android/gms/internal/ads/zzht;

    const v3, -0xc34e

    invoke-direct {v1, v2, v0, v3}, Lxh3;-><init>(Lcom/google/android/gms/internal/ads/zzht;Ljava/lang/Throwable;I)V

    .line 9
    iget v0, p0, Lxd3;->c:I

    .line 10
    invoke-static {v1, v0}, Lyd3;->b(Ljava/lang/Exception;I)Lyd3;

    move-result-object v0

    throw v0

    .line 11
    :cond_2
    :goto_0
    iget-object v0, p0, Luh3;->s:Lvh3;

    invoke-virtual {p0, v0}, Luh3;->H(Lvh3;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Luh3;->s:Lvh3;

    iget-object v0, v0, Lvh3;->a:Ljava/lang/String;

    .line 13
    iget-object v2, p0, Luh3;->p:Lcom/google/android/gms/internal/ads/zzht;

    .line 14
    sget v4, Lel3;->a:I

    const/16 v5, 0x15

    const/4 v10, 0x1

    if-ge v4, v5, :cond_4

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzht;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "OMX.MTK.VIDEO.DECODER.AVC"

    .line 15
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    .line 16
    :goto_1
    iput-boolean v2, p0, Luh3;->t:Z

    const/16 v2, 0x13

    const/16 v6, 0x12

    if-lt v4, v6, :cond_7

    if-ne v4, v6, :cond_5

    const-string v7, "OMX.SEC.avc.dec"

    .line 17
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_5
    if-ne v4, v2, :cond_6

    sget-object v7, Lel3;->d:Ljava/lang/String;

    const-string v8, "SM-G800"

    .line 18
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "OMX.Exynos.avc.dec"

    .line 19
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v7, 0x1

    .line 20
    :goto_3
    iput-boolean v7, p0, Luh3;->u:Z

    const/16 v7, 0x18

    if-ge v4, v7, :cond_a

    const-string v7, "OMX.Nvidia.h264.decode"

    .line 21
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_8
    sget-object v7, Lel3;->b:Ljava/lang/String;

    const-string v8, "flounder"

    .line 22
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "flounder_lte"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "grouper"

    .line 23
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "tilapia"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_9
    const/4 v7, 0x1

    goto :goto_4

    :cond_a
    const/4 v7, 0x0

    .line 24
    :goto_4
    iput-boolean v7, p0, Luh3;->v:Z

    const/16 v7, 0x11

    if-gt v4, v7, :cond_c

    const-string v7, "OMX.rk.video_decoder.avc"

    .line 25
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "OMX.allwinner.video.decoder.avc"

    .line 26
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_b
    const/4 v7, 0x1

    goto :goto_5

    :cond_c
    const/4 v7, 0x0

    .line 27
    :goto_5
    iput-boolean v7, p0, Luh3;->w:Z

    const/16 v7, 0x17

    if-gt v4, v7, :cond_d

    const-string v7, "OMX.google.vorbis.decoder"

    .line 28
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    :cond_d
    if-gt v4, v2, :cond_f

    sget-object v2, Lel3;->b:Ljava/lang/String;

    const-string v7, "hb2000"

    .line 29
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "OMX.amlogic.avc.decoder.awesome"

    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "OMX.amlogic.avc.decoder.awesome.secure"

    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_e
    const/4 v2, 0x1

    goto :goto_6

    :cond_f
    const/4 v2, 0x0

    .line 32
    :goto_6
    iput-boolean v2, p0, Luh3;->x:Z

    if-ne v4, v5, :cond_10

    const-string v2, "OMX.google.aac.decoder"

    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    goto :goto_7

    :cond_10
    const/4 v2, 0x0

    .line 34
    :goto_7
    iput-boolean v2, p0, Luh3;->y:Z

    .line 35
    iget-object v2, p0, Luh3;->p:Lcom/google/android/gms/internal/ads/zzht;

    if-gt v4, v6, :cond_11

    .line 36
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzht;->v:I

    if-ne v2, v10, :cond_11

    const-string v2, "OMX.MTK.AUDIO.DECODER.MP3"

    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v3, 0x1

    .line 38
    :cond_11
    iput-boolean v3, p0, Luh3;->z:Z

    .line 39
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string v4, "createCodec:"

    .line 40
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_12

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_12
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_8
    invoke-static {v4}, Lc50;->g(Ljava/lang/String;)V

    .line 41
    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    iput-object v4, p0, Luh3;->r:Landroid/media/MediaCodec;

    .line 42
    invoke-static {}, Lc50;->R()V

    const-string v4, "configureCodec"

    .line 43
    invoke-static {v4}, Lc50;->g(Ljava/lang/String;)V

    .line 44
    iget-object v4, p0, Luh3;->s:Lvh3;

    iget-object v5, p0, Luh3;->r:Landroid/media/MediaCodec;

    iget-object v6, p0, Luh3;->p:Lcom/google/android/gms/internal/ads/zzht;

    invoke-virtual {p0, v4, v5, v6, v1}, Luh3;->E(Lvh3;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzht;Landroid/media/MediaCrypto;)V

    .line 45
    invoke-static {}, Lc50;->R()V

    const-string v1, "startCodec"

    .line 46
    invoke-static {v1}, Lc50;->g(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Luh3;->r:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 48
    invoke-static {}, Lc50;->R()V

    .line 49
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v8, v6, v2

    move-object v4, p0

    move-object v5, v0

    .line 50
    invoke-virtual/range {v4 .. v9}, Luh3;->I(Ljava/lang/String;JJ)V

    .line 51
    iget-object v1, p0, Luh3;->r:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Luh3;->C:[Ljava/nio/ByteBuffer;

    .line 52
    iget-object v1, p0, Luh3;->r:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Luh3;->D:[Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 53
    iget v0, p0, Lxd3;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    .line 54
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    goto :goto_9

    :cond_13
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_9
    iput-wide v0, p0, Luh3;->E:J

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Luh3;->F:I

    .line 56
    iput v0, p0, Luh3;->G:I

    .line 57
    iput-boolean v10, p0, Luh3;->Q:Z

    .line 58
    iget-object v0, p0, Luh3;->R:Lxf3;

    iget v1, v0, Lxf3;->a:I

    add-int/2addr v1, v10

    iput v1, v0, Lxf3;->a:I

    return-void

    :catch_1
    move-exception v1

    .line 59
    new-instance v2, Lxh3;

    iget-object v3, p0, Luh3;->p:Lcom/google/android/gms/internal/ads/zzht;

    invoke-direct {v2, v3, v1, v0}, Lxh3;-><init>(Lcom/google/android/gms/internal/ads/zzht;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 60
    iget v0, p0, Lxd3;->c:I

    .line 61
    invoke-static {v2, v0}, Lyd3;->b(Ljava/lang/Exception;I)Lyd3;

    move-result-object v0

    throw v0

    :cond_14
    :goto_a
    return-void
.end method

.method public M()V
    .locals 4

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    iput-wide v0, p0, Luh3;->E:J

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Luh3;->F:I

    .line 3
    iput v0, p0, Luh3;->G:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Luh3;->P:Z

    .line 5
    iput-boolean v0, p0, Luh3;->H:Z

    .line 6
    iget-object v1, p0, Luh3;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Luh3;->C:[Ljava/nio/ByteBuffer;

    .line 8
    iput-object v1, p0, Luh3;->D:[Ljava/nio/ByteBuffer;

    .line 9
    iput-object v1, p0, Luh3;->s:Lvh3;

    .line 10
    iput-boolean v0, p0, Luh3;->I:Z

    .line 11
    iput-boolean v0, p0, Luh3;->L:Z

    .line 12
    iput-boolean v0, p0, Luh3;->t:Z

    .line 13
    iput-boolean v0, p0, Luh3;->u:Z

    .line 14
    iput-boolean v0, p0, Luh3;->v:Z

    .line 15
    iput-boolean v0, p0, Luh3;->w:Z

    .line 16
    iput-boolean v0, p0, Luh3;->x:Z

    .line 17
    iput-boolean v0, p0, Luh3;->z:Z

    .line 18
    iput-boolean v0, p0, Luh3;->A:Z

    .line 19
    iput-boolean v0, p0, Luh3;->B:Z

    .line 20
    iput-boolean v0, p0, Luh3;->M:Z

    .line 21
    iput v0, p0, Luh3;->J:I

    .line 22
    iput v0, p0, Luh3;->K:I

    .line 23
    iget-object v0, p0, Luh3;->k:Lzf3;

    iput-object v1, v0, Lzf3;->c:Ljava/nio/ByteBuffer;

    .line 24
    iget-object v0, p0, Luh3;->r:Landroid/media/MediaCodec;

    if-eqz v0, :cond_4

    .line 25
    iget-object v2, p0, Luh3;->R:Lxf3;

    iget v3, v2, Lxf3;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lxf3;->b:I

    .line 26
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 27
    :try_start_1
    iget-object v0, p0, Luh3;->r:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    iput-object v1, p0, Luh3;->r:Landroid/media/MediaCodec;

    .line 29
    iget-object v0, p0, Luh3;->q:Lbg3;

    if-eqz v0, :cond_0

    .line 30
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    .line 31
    iput-object v1, p0, Luh3;->q:Lbg3;

    .line 32
    throw v0

    :cond_0
    return-void

    :catchall_1
    move-exception v0

    .line 33
    iput-object v1, p0, Luh3;->r:Landroid/media/MediaCodec;

    .line 34
    iget-object v2, p0, Luh3;->q:Lbg3;

    if-eqz v2, :cond_1

    .line 35
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    .line 36
    iput-object v1, p0, Luh3;->q:Lbg3;

    .line 37
    throw v0

    .line 38
    :cond_1
    throw v0

    :catchall_3
    move-exception v0

    .line 39
    :try_start_4
    iget-object v2, p0, Luh3;->r:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 40
    iput-object v1, p0, Luh3;->r:Landroid/media/MediaCodec;

    .line 41
    iget-object v2, p0, Luh3;->q:Lbg3;

    if-eqz v2, :cond_2

    .line 42
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    move-exception v0

    .line 43
    iput-object v1, p0, Luh3;->q:Lbg3;

    .line 44
    throw v0

    .line 45
    :cond_2
    throw v0

    :catchall_5
    move-exception v0

    .line 46
    iput-object v1, p0, Luh3;->r:Landroid/media/MediaCodec;

    .line 47
    iget-object v2, p0, Luh3;->q:Lbg3;

    if-eqz v2, :cond_3

    .line 48
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :catchall_6
    move-exception v0

    .line 49
    iput-object v1, p0, Luh3;->q:Lbg3;

    .line 50
    throw v0

    .line 51
    :cond_3
    throw v0

    :cond_4
    return-void
.end method

.method public final N()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyd3;
        }
    .end annotation

    .line 1
    iget v0, p0, Luh3;->K:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Luh3;->M()V

    .line 3
    invoke-virtual {p0}, Luh3;->L()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Luh3;->O:Z

    .line 5
    invoke-virtual {p0}, Luh3;->K()V

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public h(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyd3;
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Luh3;->N:Z

    .line 2
    iput-boolean p1, p0, Luh3;->O:Z

    .line 3
    iget-object p2, p0, Luh3;->r:Landroid/media/MediaCodec;

    if-eqz p2, :cond_3

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide p2, p0, Luh3;->E:J

    const/4 p2, -0x1

    .line 5
    iput p2, p0, Luh3;->F:I

    .line 6
    iput p2, p0, Luh3;->G:I

    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p0, Luh3;->Q:Z

    .line 8
    iput-boolean p1, p0, Luh3;->P:Z

    .line 9
    iput-boolean p1, p0, Luh3;->H:Z

    .line 10
    iget-object p3, p0, Luh3;->n:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 11
    iput-boolean p1, p0, Luh3;->A:Z

    .line 12
    iput-boolean p1, p0, Luh3;->B:Z

    .line 13
    iget-boolean p3, p0, Luh3;->u:Z

    if-nez p3, :cond_2

    iget-boolean p3, p0, Luh3;->x:Z

    if-eqz p3, :cond_0

    iget-boolean p3, p0, Luh3;->M:Z

    if-eqz p3, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    iget p3, p0, Luh3;->K:I

    if-eqz p3, :cond_1

    .line 15
    invoke-virtual {p0}, Luh3;->M()V

    .line 16
    invoke-virtual {p0}, Luh3;->L()V

    goto :goto_1

    .line 17
    :cond_1
    iget-object p3, p0, Luh3;->r:Landroid/media/MediaCodec;

    invoke-virtual {p3}, Landroid/media/MediaCodec;->flush()V

    .line 18
    iput-boolean p1, p0, Luh3;->L:Z

    goto :goto_1

    .line 19
    :cond_2
    :goto_0
    invoke-virtual {p0}, Luh3;->M()V

    .line 20
    invoke-virtual {p0}, Luh3;->L()V

    .line 21
    :goto_1
    iget-boolean p1, p0, Luh3;->I:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Luh3;->p:Lcom/google/android/gms/internal/ads/zzht;

    if-eqz p1, :cond_3

    .line 22
    iput p2, p0, Luh3;->J:I

    :cond_3
    return-void
.end method

.method public isReady()Z
    .locals 7

    .line 1
    iget-object v0, p0, Luh3;->p:Lcom/google/android/gms/internal/ads/zzht;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Luh3;->P:Z

    if-nez v0, :cond_4

    .line 2
    iget-boolean v0, p0, Lxd3;->g:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lxd3;->h:Z

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lxd3;->e:Lri3;

    .line 3
    iget-object v3, v0, Lri3;->b:Lmi3;

    iget v0, v0, Lri3;->a:I

    .line 4
    iget-boolean v4, v3, Lmi3;->J:Z

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lmi3;->s()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v3, v3, Lmi3;->s:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhj3;

    .line 5
    iget-object v0, v0, Lhj3;->c:Lfj3;

    invoke-virtual {v0}, Lfj3;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    .line 6
    iget v0, p0, Luh3;->G:I

    if-gez v0, :cond_3

    iget-wide v3, p0, Luh3;->E:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_4

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Luh3;->E:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_4

    :cond_3
    return v2

    :cond_4
    return v1
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Luh3;->O:Z

    return v0
.end method

.method public final n(JJ)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyd3;
        }
    .end annotation

    move-object/from16 v13, p0

    .line 1
    iget-boolean v0, v13, Luh3;->O:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p0}, Luh3;->K()V

    return-void

    .line 3
    :cond_0
    iget-object v0, v13, Luh3;->p:Lcom/google/android/gms/internal/ads/zzht;

    const/4 v14, -0x4

    const/4 v15, -0x5

    const/4 v12, 0x1

    if-nez v0, :cond_3

    .line 4
    iget-object v0, v13, Luh3;->l:Lzf3;

    invoke-virtual {v0}, Lzf3;->a()V

    .line 5
    iget-object v0, v13, Luh3;->m:Lme3;

    iget-object v1, v13, Luh3;->l:Lzf3;

    invoke-virtual {v13, v0, v1, v12}, Lxd3;->g(Lme3;Lzf3;Z)I

    move-result v0

    if-ne v0, v15, :cond_1

    .line 6
    iget-object v0, v13, Luh3;->m:Lme3;

    iget-object v0, v0, Lme3;->a:Lcom/google/android/gms/internal/ads/zzht;

    invoke-virtual {v13, v0}, Luh3;->J(Lcom/google/android/gms/internal/ads/zzht;)V

    goto :goto_0

    :cond_1
    if-ne v0, v14, :cond_2

    .line 7
    iget-object v0, v13, Luh3;->l:Lzf3;

    invoke-virtual {v0}, Lzf3;->d()Z

    move-result v0

    invoke-static {v0}, Lc50;->D(Z)V

    .line 8
    iput-boolean v12, v13, Luh3;->N:Z

    .line 9
    invoke-virtual/range {p0 .. p0}, Luh3;->N()V

    :cond_2
    return-void

    .line 10
    :cond_3
    :goto_0
    invoke-virtual/range {p0 .. p0}, Luh3;->L()V

    .line 11
    iget-object v0, v13, Luh3;->r:Landroid/media/MediaCodec;

    const/4 v10, 0x0

    if-eqz v0, :cond_38

    const-string v0, "drainAndFeed"

    .line 12
    invoke-static {v0}, Lc50;->g(Ljava/lang/String;)V

    .line 13
    :goto_1
    iget v0, v13, Luh3;->G:I

    const/4 v11, 0x2

    const/4 v9, 0x4

    const/4 v8, -0x3

    const-wide/16 v6, 0x0

    const/4 v4, -0x1

    if-gez v0, :cond_11

    .line 14
    iget-boolean v0, v13, Luh3;->y:Z

    if-eqz v0, :cond_4

    iget-boolean v0, v13, Luh3;->M:Z

    if-eqz v0, :cond_4

    .line 15
    :try_start_0
    iget-object v0, v13, Luh3;->r:Landroid/media/MediaCodec;

    iget-object v1, v13, Luh3;->o:Landroid/media/MediaCodec$BufferInfo;

    .line 16
    invoke-virtual {v0, v1, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    iput v0, v13, Luh3;->G:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    .line 17
    invoke-virtual/range {p0 .. p0}, Luh3;->N()V

    .line 18
    iget-boolean v0, v13, Luh3;->O:Z

    if-eqz v0, :cond_6

    .line 19
    invoke-virtual/range {p0 .. p0}, Luh3;->M()V

    goto :goto_5

    .line 20
    :cond_4
    iget-object v0, v13, Luh3;->r:Landroid/media/MediaCodec;

    iget-object v1, v13, Luh3;->o:Landroid/media/MediaCodec$BufferInfo;

    .line 21
    invoke-virtual {v0, v1, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    iput v0, v13, Luh3;->G:I

    .line 22
    :goto_2
    iget v0, v13, Luh3;->G:I

    if-ltz v0, :cond_b

    .line 23
    iget-boolean v1, v13, Luh3;->B:Z

    if-eqz v1, :cond_5

    .line 24
    iput-boolean v10, v13, Luh3;->B:Z

    .line 25
    iget-object v1, v13, Luh3;->r:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v10}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 26
    iput v4, v13, Luh3;->G:I

    :goto_3
    const/4 v0, 0x2

    :goto_4
    const/4 v14, -0x1

    const/4 v15, 0x1

    goto/16 :goto_c

    .line 27
    :cond_5
    iget-object v1, v13, Luh3;->o:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v2, v9

    if-eqz v2, :cond_7

    .line 28
    invoke-virtual/range {p0 .. p0}, Luh3;->N()V

    .line 29
    iput v4, v13, Luh3;->G:I

    :cond_6
    :goto_5
    const/4 v0, 0x2

    const/4 v12, 0x0

    goto :goto_4

    .line 30
    :cond_7
    iget-object v2, v13, Luh3;->D:[Ljava/nio/ByteBuffer;

    aget-object v0, v2, v0

    if-eqz v0, :cond_8

    .line 31
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 32
    iget-object v1, v13, Luh3;->o:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 33
    :cond_8
    iget-object v0, v13, Luh3;->o:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 34
    iget-object v2, v13, Luh3;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_a

    .line 35
    iget-object v5, v13, Luh3;->n:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v5, v16, v0

    if-nez v5, :cond_9

    .line 36
    iget-object v0, v13, Luh3;->n:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_7

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_a
    const/4 v0, 0x0

    .line 37
    :goto_7
    iput-boolean v0, v13, Luh3;->H:Z

    goto :goto_8

    :cond_b
    const/4 v1, -0x2

    if-ne v0, v1, :cond_e

    .line 38
    iget-object v0, v13, Luh3;->r:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 39
    iget-boolean v1, v13, Luh3;->v:Z

    if-eqz v1, :cond_c

    const-string v1, "width"

    .line 40
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_c

    const-string v1, "height"

    .line 41
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_c

    .line 42
    iput-boolean v12, v13, Luh3;->B:Z

    goto :goto_3

    .line 43
    :cond_c
    iget-boolean v1, v13, Luh3;->z:Z

    if-eqz v1, :cond_d

    const-string v1, "channel-count"

    .line 44
    invoke-virtual {v0, v1, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 45
    :cond_d
    iget-object v1, v13, Luh3;->r:Landroid/media/MediaCodec;

    invoke-virtual {v13, v1, v0}, Luh3;->A(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    goto/16 :goto_3

    :cond_e
    if-ne v0, v8, :cond_f

    .line 46
    iget-object v0, v13, Luh3;->r:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v13, Luh3;->D:[Ljava/nio/ByteBuffer;

    goto/16 :goto_3

    .line 47
    :cond_f
    iget-boolean v0, v13, Luh3;->w:Z

    if-eqz v0, :cond_6

    iget-boolean v0, v13, Luh3;->N:Z

    if-nez v0, :cond_10

    iget v0, v13, Luh3;->K:I

    if-ne v0, v11, :cond_6

    .line 48
    :cond_10
    invoke-virtual/range {p0 .. p0}, Luh3;->N()V

    goto/16 :goto_5

    .line 49
    :cond_11
    :goto_8
    iget-boolean v0, v13, Luh3;->y:Z

    if-eqz v0, :cond_12

    iget-boolean v0, v13, Luh3;->M:Z

    if-eqz v0, :cond_12

    .line 50
    :try_start_1
    iget-object v0, v13, Luh3;->r:Landroid/media/MediaCodec;

    iget-object v1, v13, Luh3;->D:[Ljava/nio/ByteBuffer;

    iget v5, v13, Luh3;->G:I

    aget-object v16, v1, v5

    iget-object v1, v13, Luh3;->o:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v10, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v3, v13, Luh3;->H:Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v1, p0

    move/from16 v18, v2

    move/from16 v19, v3

    move-wide/from16 v2, p1

    move/from16 v20, v5

    const/4 v14, -0x1

    move-wide/from16 v4, p3

    move-object v6, v0

    move-object/from16 v7, v16

    const/4 v0, -0x3

    move/from16 v8, v20

    move/from16 v9, v18

    const/4 v0, 0x2

    const/4 v15, 0x0

    const/4 v15, 0x1

    move/from16 v12, v19

    :try_start_2
    invoke-virtual/range {v1 .. v12}, Luh3;->F(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_a

    :catch_1
    nop

    goto :goto_9

    :catch_2
    const/4 v0, 0x2

    const/4 v14, -0x1

    const/4 v15, 0x1

    .line 51
    :goto_9
    invoke-virtual/range {p0 .. p0}, Luh3;->N()V

    .line 52
    iget-boolean v1, v13, Luh3;->O:Z

    if-eqz v1, :cond_13

    .line 53
    invoke-virtual/range {p0 .. p0}, Luh3;->M()V

    goto :goto_b

    :cond_12
    const/4 v0, 0x2

    const/4 v14, -0x1

    const/4 v15, 0x1

    .line 54
    iget-object v6, v13, Luh3;->r:Landroid/media/MediaCodec;

    iget-object v1, v13, Luh3;->D:[Ljava/nio/ByteBuffer;

    iget v8, v13, Luh3;->G:I

    aget-object v7, v1, v8

    iget-object v1, v13, Luh3;->o:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v10, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, v13, Luh3;->H:Z

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    invoke-virtual/range {v1 .. v12}, Luh3;->F(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z

    move-result v1

    :goto_a
    if-eqz v1, :cond_13

    .line 55
    iget-object v1, v13, Luh3;->o:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 56
    iput v14, v13, Luh3;->G:I

    const/4 v12, 0x1

    goto :goto_c

    :cond_13
    :goto_b
    const/4 v12, 0x0

    :goto_c
    if-nez v12, :cond_37

    .line 57
    :goto_d
    iget-object v1, v13, Luh3;->r:Landroid/media/MediaCodec;

    if-eqz v1, :cond_35

    iget v2, v13, Luh3;->K:I

    if-eq v2, v0, :cond_35

    iget-boolean v2, v13, Luh3;->N:Z

    if-eqz v2, :cond_14

    goto/16 :goto_1a

    .line 58
    :cond_14
    iget v2, v13, Luh3;->F:I

    if-gez v2, :cond_17

    const-wide/16 v2, 0x0

    .line 59
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    iput v1, v13, Luh3;->F:I

    if-gez v1, :cond_16

    :goto_e
    const/4 v4, -0x3

    :cond_15
    :goto_f
    const/4 v6, 0x4

    goto/16 :goto_1b

    .line 60
    :cond_16
    iget-object v4, v13, Luh3;->k:Lzf3;

    iget-object v5, v13, Luh3;->C:[Ljava/nio/ByteBuffer;

    aget-object v1, v5, v1

    iput-object v1, v4, Lzf3;->c:Ljava/nio/ByteBuffer;

    .line 61
    invoke-virtual {v4}, Lzf3;->a()V

    goto :goto_10

    :cond_17
    const-wide/16 v2, 0x0

    .line 62
    :goto_10
    iget v1, v13, Luh3;->K:I

    if-ne v1, v15, :cond_19

    .line 63
    iget-boolean v1, v13, Luh3;->w:Z

    if-nez v1, :cond_18

    .line 64
    iput-boolean v15, v13, Luh3;->M:Z

    .line 65
    iget-object v4, v13, Luh3;->r:Landroid/media/MediaCodec;

    iget v5, v13, Luh3;->F:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 66
    iput v14, v13, Luh3;->F:I

    .line 67
    :cond_18
    iput v0, v13, Luh3;->K:I

    goto :goto_e

    .line 68
    :cond_19
    iget-boolean v1, v13, Luh3;->A:Z

    if-eqz v1, :cond_1b

    const/4 v1, 0x0

    .line 69
    iput-boolean v1, v13, Luh3;->A:Z

    .line 70
    iget-object v1, v13, Luh3;->k:Lzf3;

    iget-object v1, v1, Lzf3;->c:Ljava/nio/ByteBuffer;

    sget-object v4, Luh3;->S:[B

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 71
    iget-object v5, v13, Luh3;->r:Landroid/media/MediaCodec;

    iget v6, v13, Luh3;->F:I

    const/4 v7, 0x0

    array-length v8, v4

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 72
    iput v14, v13, Luh3;->F:I

    .line 73
    iput-boolean v15, v13, Luh3;->L:Z

    const/4 v4, -0x3

    :cond_1a
    :goto_11
    const/4 v6, 0x4

    :goto_12
    const/4 v12, 0x1

    goto/16 :goto_1c

    .line 74
    :cond_1b
    iget-boolean v1, v13, Luh3;->P:Z

    if-eqz v1, :cond_1c

    const/4 v1, -0x4

    const/4 v4, -0x3

    const/4 v10, 0x0

    goto :goto_14

    .line 75
    :cond_1c
    iget v1, v13, Luh3;->J:I

    if-ne v1, v15, :cond_1e

    const/4 v10, 0x0

    .line 76
    :goto_13
    iget-object v1, v13, Luh3;->p:Lcom/google/android/gms/internal/ads/zzht;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzht;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_1d

    .line 77
    iget-object v1, v13, Luh3;->p:Lcom/google/android/gms/internal/ads/zzht;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzht;->l:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 78
    iget-object v4, v13, Luh3;->k:Lzf3;

    iget-object v4, v4, Lzf3;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    .line 79
    :cond_1d
    iput v0, v13, Luh3;->J:I

    .line 80
    :cond_1e
    iget-object v1, v13, Luh3;->k:Lzf3;

    iget-object v1, v1, Lzf3;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    .line 81
    iget-object v1, v13, Luh3;->m:Lme3;

    iget-object v4, v13, Luh3;->k:Lzf3;

    const/4 v5, 0x0

    invoke-virtual {v13, v1, v4, v5}, Lxd3;->g(Lme3;Lzf3;Z)I

    move-result v1

    const/4 v4, -0x3

    :goto_14
    if-ne v1, v4, :cond_1f

    goto/16 :goto_f

    :cond_1f
    const/4 v5, -0x5

    if-ne v1, v5, :cond_21

    .line 82
    iget v1, v13, Luh3;->J:I

    if-ne v1, v0, :cond_20

    .line 83
    iget-object v1, v13, Luh3;->k:Lzf3;

    invoke-virtual {v1}, Lzf3;->a()V

    .line 84
    iput v15, v13, Luh3;->J:I

    .line 85
    :cond_20
    iget-object v1, v13, Luh3;->m:Lme3;

    iget-object v1, v1, Lme3;->a:Lcom/google/android/gms/internal/ads/zzht;

    invoke-virtual {v13, v1}, Luh3;->J(Lcom/google/android/gms/internal/ads/zzht;)V

    goto :goto_11

    .line 86
    :cond_21
    iget-object v1, v13, Luh3;->k:Lzf3;

    invoke-virtual {v1}, Lzf3;->d()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 87
    iget v1, v13, Luh3;->J:I

    if-ne v1, v0, :cond_22

    .line 88
    iget-object v1, v13, Luh3;->k:Lzf3;

    invoke-virtual {v1}, Lzf3;->a()V

    .line 89
    iput v15, v13, Luh3;->J:I

    .line 90
    :cond_22
    iput-boolean v15, v13, Luh3;->N:Z

    .line 91
    iget-boolean v1, v13, Luh3;->L:Z

    if-nez v1, :cond_23

    .line 92
    invoke-virtual/range {p0 .. p0}, Luh3;->N()V

    goto/16 :goto_f

    .line 93
    :cond_23
    :try_start_3
    iget-boolean v1, v13, Luh3;->w:Z

    if-nez v1, :cond_15

    .line 94
    iput-boolean v15, v13, Luh3;->M:Z

    .line 95
    iget-object v5, v13, Luh3;->r:Landroid/media/MediaCodec;

    iget v6, v13, Luh3;->F:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x4

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 96
    iput v14, v13, Luh3;->F:I
    :try_end_3
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_f

    :catch_3
    move-exception v0

    .line 97
    iget v1, v13, Lxd3;->c:I

    .line 98
    invoke-static {v0, v1}, Lyd3;->b(Ljava/lang/Exception;I)Lyd3;

    move-result-object v0

    throw v0

    .line 99
    :cond_24
    iget-boolean v1, v13, Luh3;->Q:Z

    if-eqz v1, :cond_25

    iget-object v1, v13, Luh3;->k:Lzf3;

    .line 100
    invoke-virtual {v1, v15}, Lzf3;->b(I)Z

    move-result v1

    if-nez v1, :cond_25

    .line 101
    iget-object v1, v13, Luh3;->k:Lzf3;

    invoke-virtual {v1}, Lzf3;->a()V

    .line 102
    iget v1, v13, Luh3;->J:I

    if-ne v1, v0, :cond_1a

    .line 103
    iput v15, v13, Luh3;->J:I

    goto/16 :goto_11

    :cond_25
    const/4 v1, 0x0

    .line 104
    iput-boolean v1, v13, Luh3;->Q:Z

    .line 105
    iget-object v1, v13, Luh3;->k:Lzf3;

    const/high16 v5, 0x40000000    # 2.0f

    .line 106
    invoke-virtual {v1, v5}, Lzf3;->b(I)Z

    move-result v1

    .line 107
    iget-object v5, v13, Luh3;->q:Lbg3;

    if-eqz v5, :cond_28

    .line 108
    invoke-interface {v5}, Lbg3;->getState()I

    move-result v5

    if-eqz v5, :cond_27

    const/4 v6, 0x4

    if-eq v5, v6, :cond_29

    if-nez v1, :cond_26

    .line 109
    iget-boolean v5, v13, Luh3;->j:Z

    if-nez v5, :cond_29

    :cond_26
    const/4 v12, 0x1

    goto :goto_15

    .line 110
    :cond_27
    iget-object v0, v13, Luh3;->q:Lbg3;

    invoke-interface {v0}, Lbg3;->a()Ldg3;

    move-result-object v0

    .line 111
    iget v1, v13, Lxd3;->c:I

    .line 112
    invoke-static {v0, v1}, Lyd3;->b(Ljava/lang/Exception;I)Lyd3;

    move-result-object v0

    throw v0

    :cond_28
    const/4 v6, 0x4

    :cond_29
    const/4 v12, 0x0

    .line 113
    :goto_15
    iput-boolean v12, v13, Luh3;->P:Z

    if-eqz v12, :cond_2a

    goto/16 :goto_1b

    .line 114
    :cond_2a
    iget-boolean v5, v13, Luh3;->t:Z

    if-eqz v5, :cond_30

    if-nez v1, :cond_30

    .line 115
    iget-object v5, v13, Luh3;->k:Lzf3;

    iget-object v5, v5, Lzf3;->c:Ljava/nio/ByteBuffer;

    .line 116
    sget-object v7, Lzk3;->a:[B

    .line 117
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_16
    add-int/lit8 v11, v8, 0x1

    if-ge v11, v7, :cond_2e

    .line 118
    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    const/4 v0, 0x3

    if-ne v9, v0, :cond_2b

    if-ne v12, v15, :cond_2c

    .line 119
    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2c

    .line 120
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    add-int/lit8 v8, v8, -0x3

    .line 121
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 122
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 v2, 0x0

    .line 123
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 124
    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_17

    :cond_2b
    if-nez v12, :cond_2c

    add-int/lit8 v9, v9, 0x1

    :cond_2c
    if-eqz v12, :cond_2d

    const/4 v9, 0x0

    :cond_2d
    move v8, v11

    const/4 v0, 0x2

    const-wide/16 v2, 0x0

    goto :goto_16

    .line 125
    :cond_2e
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 126
    :goto_17
    iget-object v0, v13, Luh3;->k:Lzf3;

    iget-object v0, v0, Lzf3;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_2f

    goto/16 :goto_12

    :cond_2f
    const/4 v0, 0x0

    .line 127
    iput-boolean v0, v13, Luh3;->t:Z

    .line 128
    :cond_30
    :try_start_4
    iget-object v0, v13, Luh3;->k:Lzf3;

    iget-wide v2, v0, Lzf3;->d:J

    const/high16 v5, -0x80000000

    .line 129
    invoke-virtual {v0, v5}, Lzf3;->b(I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 130
    iget-object v0, v13, Luh3;->n:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_31
    iget-object v0, v13, Luh3;->k:Lzf3;

    .line 132
    iget-object v0, v0, Lzf3;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 133
    iget-object v0, v13, Luh3;->k:Lzf3;

    invoke-virtual {v13, v0}, Luh3;->D(Lzf3;)V

    if-eqz v1, :cond_34

    .line 134
    iget-object v0, v13, Luh3;->k:Lzf3;

    .line 135
    iget-object v0, v0, Lzf3;->b:Lwf3;

    .line 136
    iget-object v0, v0, Lwf3;->g:Landroid/media/MediaCodec$CryptoInfo;

    if-nez v10, :cond_32

    goto :goto_18

    .line 137
    :cond_32
    iget-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v1, :cond_33

    new-array v1, v15, [I

    .line 138
    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 139
    :cond_33
    iget-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    const/4 v5, 0x0

    aget v7, v1, v5

    add-int/2addr v7, v10

    aput v7, v1, v5

    .line 140
    :goto_18
    iget-object v1, v13, Luh3;->r:Landroid/media/MediaCodec;

    iget v5, v13, Luh3;->F:I

    const/16 v23, 0x0

    const/16 v27, 0x0

    move-object/from16 v21, v1

    move/from16 v22, v5

    move-object/from16 v24, v0

    move-wide/from16 v25, v2

    invoke-virtual/range {v21 .. v27}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    goto :goto_19

    .line 141
    :cond_34
    iget-object v0, v13, Luh3;->r:Landroid/media/MediaCodec;

    iget v1, v13, Luh3;->F:I

    const/16 v23, 0x0

    iget-object v5, v13, Luh3;->k:Lzf3;

    iget-object v5, v5, Lzf3;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v24

    const/16 v27, 0x0

    move-object/from16 v21, v0

    move/from16 v22, v1

    move-wide/from16 v25, v2

    invoke-virtual/range {v21 .. v27}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 142
    :goto_19
    iput v14, v13, Luh3;->F:I

    .line 143
    iput-boolean v15, v13, Luh3;->L:Z

    const/4 v0, 0x0

    .line 144
    iput v0, v13, Luh3;->J:I

    .line 145
    iget-object v0, v13, Luh3;->R:Lxf3;

    iget v1, v0, Lxf3;->c:I

    add-int/2addr v1, v15

    iput v1, v0, Lxf3;->c:I
    :try_end_4
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_12

    :catch_4
    move-exception v0

    .line 146
    iget v1, v13, Lxd3;->c:I

    .line 147
    invoke-static {v0, v1}, Lyd3;->b(Ljava/lang/Exception;I)Lyd3;

    move-result-object v0

    throw v0

    :cond_35
    :goto_1a
    const/4 v4, -0x3

    goto/16 :goto_f

    :goto_1b
    const/4 v12, 0x0

    :goto_1c
    if-nez v12, :cond_36

    .line 148
    invoke-static {}, Lc50;->R()V

    goto/16 :goto_1f

    :cond_36
    const/4 v0, 0x2

    goto/16 :goto_d

    :cond_37
    const/4 v10, 0x0

    const/4 v12, 0x1

    const/4 v14, -0x4

    const/4 v15, -0x5

    goto/16 :goto_1

    :cond_38
    const/4 v15, 0x1

    .line 149
    iget-object v0, v13, Lxd3;->e:Lri3;

    iget-wide v1, v13, Lxd3;->f:J

    sub-long v1, p1, v1

    .line 150
    iget-object v3, v0, Lri3;->b:Lmi3;

    iget v0, v0, Lri3;->a:I

    .line 151
    iget-object v4, v3, Lmi3;->s:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhj3;

    .line 152
    iget-boolean v3, v3, Lmi3;->J:Z

    if-eqz v3, :cond_3a

    invoke-virtual {v0}, Lhj3;->j()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_3a

    .line 153
    iget-object v1, v0, Lhj3;->c:Lfj3;

    .line 154
    monitor-enter v1

    .line 155
    :try_start_5
    invoke-virtual {v1}, Lfj3;->b()Z

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-wide/16 v3, -0x1

    if-nez v2, :cond_39

    .line 156
    monitor-exit v1

    move-wide v7, v3

    goto :goto_1d

    .line 157
    :cond_39
    :try_start_6
    iget v2, v1, Lfj3;->k:I

    iget v5, v1, Lfj3;->i:I

    add-int/2addr v2, v5

    add-int/lit8 v6, v2, -0x1

    iget v7, v1, Lfj3;->a:I

    rem-int/2addr v6, v7

    .line 158
    rem-int/2addr v2, v7

    iput v2, v1, Lfj3;->k:I

    .line 159
    iget v2, v1, Lfj3;->j:I

    add-int/2addr v2, v5

    iput v2, v1, Lfj3;->j:I

    const/4 v2, 0x0

    .line 160
    iput v2, v1, Lfj3;->i:I

    .line 161
    iget-object v2, v1, Lfj3;->c:[J

    aget-wide v7, v2, v6

    iget-object v2, v1, Lfj3;->d:[I

    aget v2, v2, v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    int-to-long v5, v2

    add-long/2addr v7, v5

    monitor-exit v1

    :goto_1d
    cmp-long v1, v7, v3

    if-eqz v1, :cond_3b

    .line 162
    invoke-virtual {v0, v7, v8}, Lhj3;->i(J)V

    goto :goto_1e

    :catchall_0
    move-exception v0

    .line 163
    monitor-exit v1

    throw v0

    .line 164
    :cond_3a
    invoke-virtual {v0, v1, v2, v15}, Lhj3;->h(JZ)Z

    .line 165
    :cond_3b
    :goto_1e
    iget-object v0, v13, Luh3;->l:Lzf3;

    invoke-virtual {v0}, Lzf3;->a()V

    .line 166
    iget-object v0, v13, Luh3;->m:Lme3;

    iget-object v1, v13, Luh3;->l:Lzf3;

    const/4 v2, 0x0

    invoke-virtual {v13, v0, v1, v2}, Lxd3;->g(Lme3;Lzf3;Z)I

    move-result v0

    const/4 v1, -0x5

    if-ne v0, v1, :cond_3c

    .line 167
    iget-object v0, v13, Luh3;->m:Lme3;

    iget-object v0, v0, Lme3;->a:Lcom/google/android/gms/internal/ads/zzht;

    invoke-virtual {v13, v0}, Luh3;->J(Lcom/google/android/gms/internal/ads/zzht;)V

    goto :goto_1f

    :cond_3c
    const/4 v1, -0x4

    if-ne v0, v1, :cond_3d

    .line 168
    iget-object v0, v13, Luh3;->l:Lzf3;

    invoke-virtual {v0}, Lzf3;->d()Z

    move-result v0

    invoke-static {v0}, Lc50;->D(Z)V

    .line 169
    iput-boolean v15, v13, Luh3;->N:Z

    .line 170
    invoke-virtual/range {p0 .. p0}, Luh3;->N()V

    .line 171
    :cond_3d
    :goto_1f
    iget-object v0, v13, Luh3;->R:Lxf3;

    .line 172
    monitor-enter v0

    .line 173
    monitor-exit v0

    return-void
.end method

.method public y()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Luh3;->p:Lcom/google/android/gms/internal/ads/zzht;

    .line 2
    :try_start_0
    invoke-virtual {p0}, Luh3;->M()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v1, p0, Luh3;->q:Lbg3;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 4
    iput-object v0, p0, Luh3;->q:Lbg3;

    return-void

    .line 5
    :cond_0
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    .line 6
    iput-object v0, p0, Luh3;->q:Lbg3;

    .line 7
    throw v1

    :catchall_1
    move-exception v1

    .line 8
    :try_start_3
    iget-object v2, p0, Luh3;->q:Lbg3;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v2, :cond_1

    .line 9
    iput-object v0, p0, Luh3;->q:Lbg3;

    .line 10
    throw v1

    .line 11
    :cond_1
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v1

    .line 12
    iput-object v0, p0, Luh3;->q:Lbg3;

    .line 13
    throw v1
.end method

.method public z(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyd3;
        }
    .end annotation

    .line 1
    new-instance p1, Lxf3;

    invoke-direct {p1}, Lxf3;-><init>()V

    iput-object p1, p0, Luh3;->R:Lxf3;

    return-void
.end method
