.class public final Lml3;
.super Luh3;
.source "SourceFile"


# static fields
.field public static final w0:[I


# instance fields
.field public final T:Landroid/content/Context;

.field public final U:Lql3;

.field public final V:Lrl3;

.field public final W:I

.field public final X:Z

.field public final Y:[J

.field public Z:[Lcom/google/android/gms/internal/ads/zzht;

.field public a0:Lol3;

.field public b0:Landroid/view/Surface;

.field public c0:Landroid/view/Surface;

.field public d0:I

.field public e0:Z

.field public f0:J

.field public g0:J

.field public h0:I

.field public i0:I

.field public j0:I

.field public k0:F

.field public l0:I

.field public m0:I

.field public n0:I

.field public o0:F

.field public p0:I

.field public q0:I

.field public r0:I

.field public s0:F

.field public t0:Lnl3;

.field public u0:J

.field public v0:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lml3;->w0:[I

    return-void

    :array_0
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lwh3;Landroid/os/Handler;Lsl3;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, p2, v1}, Luh3;-><init>(ILwh3;Z)V

    const/4 p2, -0x1

    .line 2
    iput p2, p0, Lml3;->W:I

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lml3;->T:Landroid/content/Context;

    .line 4
    new-instance v0, Lql3;

    invoke-direct {v0, p1}, Lql3;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lml3;->U:Lql3;

    .line 5
    new-instance p1, Lrl3;

    invoke-direct {p1, p3, p4}, Lrl3;-><init>(Landroid/os/Handler;Lsl3;)V

    iput-object p1, p0, Lml3;->V:Lrl3;

    .line 6
    sget p1, Lel3;->a:I

    const/4 p3, 0x1

    const/16 p4, 0x16

    if-gt p1, p4, :cond_0

    sget-object p1, Lel3;->b:Ljava/lang/String;

    const-string p4, "foster"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lel3;->c:Ljava/lang/String;

    const-string p4, "NVIDIA"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 7
    :cond_0
    iput-boolean v1, p0, Lml3;->X:Z

    const/16 p1, 0xa

    new-array p1, p1, [J

    .line 8
    iput-object p1, p0, Lml3;->Y:[J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    iput-wide v0, p0, Lml3;->u0:J

    .line 10
    iput-wide v0, p0, Lml3;->f0:J

    .line 11
    iput p2, p0, Lml3;->l0:I

    .line 12
    iput p2, p0, Lml3;->m0:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 13
    iput p1, p0, Lml3;->o0:F

    .line 14
    iput p1, p0, Lml3;->k0:F

    .line 15
    iput p3, p0, Lml3;->d0:I

    .line 16
    invoke-virtual {p0}, Lml3;->U()V

    return-void
.end method

.method public static O(Ljava/lang/String;II)I
    .locals 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    if-ne p2, v0, :cond_0

    goto/16 :goto_4

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x2

    sparse-switch v1, :sswitch_data_0

    :goto_0
    const/4 p0, -0x1

    goto :goto_1

    :sswitch_0
    const-string v1, "video/x-vnd.on2.vp9"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x5

    goto :goto_1

    :sswitch_1
    const-string v1, "video/x-vnd.on2.vp8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v1, "video/avc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v1, "video/mp4v-es"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x2

    goto :goto_1

    :sswitch_4
    const-string v1, "video/hevc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    goto :goto_1

    :sswitch_5
    const-string v1, "video/3gpp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 p0, 0x0

    :goto_1
    packed-switch p0, :pswitch_data_0

    return v0

    .line 2
    :pswitch_0
    sget-object p0, Lel3;->d:Ljava/lang/String;

    const-string v1, "BRAVIA 4K 2015"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/16 p0, 0x10

    .line 3
    invoke-static {p1, p0}, Lel3;->h(II)I

    move-result p1

    invoke-static {p2, p0}, Lel3;->h(II)I

    move-result p0

    mul-int p0, p0, p1

    shl-int/2addr p0, v3

    shl-int/lit8 p1, p0, 0x4

    goto :goto_2

    :pswitch_1
    mul-int p1, p1, p2

    goto :goto_3

    :pswitch_2
    mul-int p1, p1, p2

    :goto_2
    const/4 v3, 0x2

    :goto_3
    mul-int/lit8 p1, p1, 0x3

    mul-int/lit8 v3, v3, 0x2

    .line 4
    div-int/2addr p1, v3

    return p1

    :cond_8
    :goto_4
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_5
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static P(ZLcom/google/android/gms/internal/ads/zzht;Lcom/google/android/gms/internal/ads/zzht;)Z
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzht;->j:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzht;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzht;->q:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget v3, p2, Lcom/google/android/gms/internal/ads/zzht;->q:I

    if-ne v3, v2, :cond_1

    const/4 v3, 0x0

    :cond_1
    if-ne v0, v3, :cond_3

    if-nez p0, :cond_2

    .line 3
    iget p0, p1, Lcom/google/android/gms/internal/ads/zzht;->n:I

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzht;->n:I

    if-ne p0, v0, :cond_3

    iget p0, p1, Lcom/google/android/gms/internal/ads/zzht;->o:I

    iget p1, p2, Lcom/google/android/gms/internal/ads/zzht;->o:I

    if-ne p0, p1, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method


# virtual methods
.method public final A(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 6

    const-string v0, "crop-right"

    .line 1
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "crop-top"

    const-string v3, "crop-bottom"

    const-string v4, "crop-left"

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v0, v4

    add-int/2addr v0, v5

    goto :goto_1

    :cond_1
    const-string v0, "width"

    .line 5
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_1
    iput v0, p0, Lml3;->l0:I

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr v0, p2

    add-int/2addr v0, v5

    goto :goto_2

    :cond_2
    const-string v0, "height"

    .line 7
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_2
    iput v0, p0, Lml3;->m0:I

    .line 8
    iget p2, p0, Lml3;->k0:F

    iput p2, p0, Lml3;->o0:F

    .line 9
    sget v1, Lel3;->a:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_4

    .line 10
    iget v1, p0, Lml3;->j0:I

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_3

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_5

    .line 11
    :cond_3
    iget v1, p0, Lml3;->l0:I

    .line 12
    iput v0, p0, Lml3;->l0:I

    .line 13
    iput v1, p0, Lml3;->m0:I

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p2

    .line 14
    iput v0, p0, Lml3;->o0:F

    goto :goto_3

    .line 15
    :cond_4
    iget p2, p0, Lml3;->j0:I

    iput p2, p0, Lml3;->n0:I

    .line 16
    :cond_5
    :goto_3
    iget p2, p0, Lml3;->d0:I

    .line 17
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method

.method public final B(Lwh3;Lcom/google/android/gms/internal/ads/zzht;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ldi3;
        }
    .end annotation

    move-object/from16 v0, p2

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzht;->j:Ljava/lang/String;

    .line 2
    invoke-static {v1}, Lc50;->m3(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 3
    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzht;->m:Lcom/google/android/gms/internal/ads/zzjo;

    if-eqz v2, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 4
    :goto_0
    iget v6, v2, Lcom/google/android/gms/internal/ads/zzjo;->g:I

    if-ge v4, v6, :cond_2

    .line 5
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzjo;->e:[Lcom/google/android/gms/internal/ads/zzjo$zza;

    aget-object v6, v6, v4

    .line 6
    iget-boolean v6, v6, Lcom/google/android/gms/internal/ads/zzjo$zza;->i:Z

    or-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :cond_2
    move-object/from16 v2, p1

    .line 7
    invoke-interface {v2, v1, v5}, Lwh3;->a(Ljava/lang/String;Z)Lvh3;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    return v2

    .line 8
    :cond_3
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzht;->g:Ljava/lang/String;

    const/16 v5, 0x10

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eqz v4, :cond_34

    .line 9
    iget-object v9, v1, Lvh3;->e:Ljava/lang/String;

    if-nez v9, :cond_4

    goto/16 :goto_17

    .line 10
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "avc1"

    .line 11
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    const-string v12, "hvc1"

    const-string v13, "hev1"

    if-nez v11, :cond_15

    const-string v11, "avc3"

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    goto/16 :goto_6

    .line 12
    :cond_5
    invoke-virtual {v9, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_14

    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    goto/16 :goto_5

    :cond_6
    const-string v11, "vp9"

    .line 13
    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    const-string v9, "video/x-vnd.on2.vp9"

    goto/16 :goto_7

    :cond_7
    const-string v11, "vp8"

    .line 14
    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    const-string v9, "video/x-vnd.on2.vp8"

    goto/16 :goto_7

    :cond_8
    const-string v11, "mp4a"

    .line 15
    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    const-string v9, "audio/mp4a-latm"

    goto/16 :goto_7

    :cond_9
    const-string v11, "ac-3"

    .line 16
    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_13

    const-string v11, "dac3"

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    goto :goto_4

    :cond_a
    const-string v11, "ec-3"

    .line 17
    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_12

    const-string v11, "dec3"

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    goto :goto_3

    :cond_b
    const-string v11, "dtsc"

    .line 18
    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_11

    const-string v11, "dtse"

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    goto :goto_2

    :cond_c
    const-string v11, "dtsh"

    .line 19
    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_10

    const-string v11, "dtsl"

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    goto :goto_1

    :cond_d
    const-string v11, "opus"

    .line 20
    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    const-string v9, "audio/opus"

    goto :goto_7

    :cond_e
    const-string v11, "vorbis"

    .line 21
    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    const-string v9, "audio/vorbis"

    goto :goto_7

    :cond_f
    const/4 v9, 0x0

    goto :goto_7

    :cond_10
    :goto_1
    const-string v9, "audio/vnd.dts.hd"

    goto :goto_7

    :cond_11
    :goto_2
    const-string v9, "audio/vnd.dts"

    goto :goto_7

    :cond_12
    :goto_3
    const-string v9, "audio/eac3"

    goto :goto_7

    :cond_13
    :goto_4
    const-string v9, "audio/ac3"

    goto :goto_7

    :cond_14
    :goto_5
    const-string v9, "video/hevc"

    goto :goto_7

    :cond_15
    :goto_6
    const-string v9, "video/avc"

    :goto_7
    if-nez v9, :cond_16

    goto/16 :goto_18

    .line 22
    :cond_16
    iget-object v11, v1, Lvh3;->e:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v14, ", "

    if-nez v11, :cond_17

    .line 23
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xd

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    const-string v2, "codec.mime "

    invoke-static {v3, v2, v4, v14, v9}, Ljo;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lvh3;->c(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 24
    :cond_17
    sget-object v11, Lyh3;->a:Lvh3;

    const-string v11, "\\."

    .line 25
    invoke-virtual {v4, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 26
    aget-object v15, v11, v3

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    goto :goto_8

    :sswitch_0
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_18

    goto :goto_8

    :cond_18
    const/4 v10, 0x3

    goto :goto_9

    :sswitch_1
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_19

    goto :goto_8

    :cond_19
    const/4 v10, 0x2

    goto :goto_9

    :sswitch_2
    const-string v10, "avc2"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1a

    goto :goto_8

    :cond_1a
    const/4 v10, 0x1

    goto :goto_9

    :sswitch_3
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1b

    goto :goto_8

    :cond_1b
    const/4 v10, 0x0

    goto :goto_9

    :goto_8
    const/4 v10, -0x1

    :goto_9
    const-string v12, "MediaCodecUtil"

    if-eqz v10, :cond_26

    if-eq v10, v2, :cond_26

    if-eq v10, v8, :cond_1c

    if-eq v10, v7, :cond_1c

    goto/16 :goto_13

    .line 27
    :cond_1c
    array-length v5, v11

    const-string v8, "Ignoring malformed HEVC codec string: "

    if-ge v5, v6, :cond_1e

    .line 28
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1d

    invoke-virtual {v8, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    :cond_1d
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_a
    invoke-static {v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 29
    :cond_1e
    sget-object v5, Lyh3;->b:Ljava/util/regex/Pattern;

    aget-object v10, v11, v2

    invoke-virtual {v5, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 30
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-nez v10, :cond_20

    .line 31
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1f

    invoke-virtual {v8, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    :cond_1f
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_b
    invoke-static {v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 32
    :cond_20
    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "1"

    .line 33
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21

    const/4 v8, 0x1

    goto :goto_c

    :cond_21
    const-string v10, "2"

    .line 34
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_24

    const/4 v8, 0x2

    .line 35
    :goto_c
    sget-object v10, Lyh3;->f:Ljava/util/Map;

    aget-object v11, v11, v7

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-nez v10, :cond_23

    const-string v8, "Unknown HEVC level string: "

    .line 36
    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_22

    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_d

    :cond_22
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_d
    invoke-static {v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 37
    :cond_23
    new-instance v5, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v5, v8, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_14

    :cond_24
    const-string v5, "Unknown HEVC profile string: "

    .line 38
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_25

    invoke-virtual {v5, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_e

    :cond_25
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v5, v8

    :goto_e
    invoke-static {v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 39
    :cond_26
    array-length v10, v11

    const-string v13, "Ignoring malformed AVC codec string: "

    if-ge v10, v8, :cond_28

    .line 40
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_27

    invoke-virtual {v13, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_f

    :cond_27
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_f
    invoke-static {v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 41
    :cond_28
    :try_start_0
    aget-object v10, v11, v2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v15, 0x6

    if-ne v10, v15, :cond_29

    .line 42
    aget-object v10, v11, v2

    invoke-virtual {v10, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 43
    aget-object v10, v11, v2

    invoke-virtual {v10, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_10

    .line 44
    :cond_29
    array-length v5, v11

    if-lt v5, v7, :cond_2c

    .line 45
    aget-object v5, v11, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 46
    aget-object v8, v11, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v17, v8

    move-object v8, v5

    move-object/from16 v5, v17

    .line 47
    :goto_10
    sget-object v10, Lyh3;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    if-nez v10, :cond_2a

    .line 48
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x15

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Unknown AVC profile: "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 49
    :cond_2a
    sget-object v8, Lyh3;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-nez v8, :cond_2b

    .line 50
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x13

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Unknown AVC level: "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 51
    :cond_2b
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v10, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_14

    .line 52
    :cond_2c
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2d

    invoke-virtual {v13, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_11

    :cond_2d
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_11
    invoke-static {v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_13

    :catch_0
    nop

    .line 53
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2e

    invoke-virtual {v13, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_12

    :cond_2e
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_12
    invoke-static {v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_13
    const/4 v5, 0x0

    :goto_14
    if-nez v5, :cond_2f

    goto :goto_18

    .line 54
    :cond_2f
    iget-object v2, v1, Lvh3;->f:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v2, :cond_30

    iget-object v2, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    if-nez v2, :cond_31

    :cond_30
    new-array v2, v3, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 55
    :cond_31
    array-length v3, v2

    const/4 v8, 0x0

    :goto_15
    if-ge v8, v3, :cond_33

    aget-object v10, v2, v8

    .line 56
    iget v11, v10, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    iget-object v12, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v11, v12, :cond_32

    iget v10, v10, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    iget-object v11, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    .line 57
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lt v10, v11, :cond_32

    goto :goto_17

    :cond_32
    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    .line 58
    :cond_33
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x16

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    const-string v2, "codec.profileLevel, "

    invoke-static {v3, v2, v4, v14, v9}, Ljo;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lvh3;->c(Ljava/lang/String;)V

    :goto_16
    const/4 v2, 0x0

    goto :goto_18

    :cond_34
    :goto_17
    const/4 v2, 0x1

    :goto_18
    if-eqz v2, :cond_37

    .line 59
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzht;->n:I

    if-lez v3, :cond_37

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzht;->o:I

    if-lez v4, :cond_37

    .line 60
    sget v2, Lel3;->a:I

    const/16 v5, 0x15

    if-lt v2, v5, :cond_35

    .line 61
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzht;->p:F

    float-to-double v8, v0

    invoke-virtual {v1, v3, v4, v8, v9}, Lvh3;->a(IID)Z

    move-result v2

    goto :goto_1a

    :cond_35
    mul-int v3, v3, v4

    .line 62
    invoke-static {}, Lyh3;->c()I

    move-result v2

    if-gt v3, v2, :cond_36

    const/4 v2, 0x1

    goto :goto_19

    :cond_36
    const/4 v2, 0x0

    :goto_19
    if-nez v2, :cond_37

    .line 63
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzht;->n:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzht;->o:I

    sget-object v4, Lel3;->e:Ljava/lang/String;

    const/16 v5, 0x38

    invoke-static {v4, v5}, Ljo;->x(Ljava/lang/String;I)I

    move-result v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "FalseCheck [legacyFrameSize, "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] ["

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MediaCodecVideoRenderer"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_37
    :goto_1a
    iget-boolean v0, v1, Lvh3;->b:Z

    if-eqz v0, :cond_38

    const/16 v6, 0x8

    .line 65
    :cond_38
    iget-boolean v0, v1, Lvh3;->c:Z

    if-eqz v0, :cond_39

    const/16 v0, 0x10

    goto :goto_1b

    :cond_39
    const/4 v0, 0x0

    :goto_1b
    if-eqz v2, :cond_3a

    goto :goto_1c

    :cond_3a
    const/4 v7, 0x2

    :goto_1c
    or-int/2addr v0, v6

    or-int/2addr v0, v7

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2ddf23 -> :sswitch_3
        0x2ddf24 -> :sswitch_2
        0x30d038 -> :sswitch_1
        0x310dbc -> :sswitch_0
    .end sparse-switch
.end method

.method public final D(Lzf3;)V
    .locals 1

    .line 1
    sget p1, Lel3;->a:I

    const/16 v0, 0x17

    return-void
.end method

.method public final E(Lvh3;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzht;Landroid/media/MediaCrypto;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ldi3;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 1
    iget-object v3, v0, Lml3;->Z:[Lcom/google/android/gms/internal/ads/zzht;

    .line 2
    iget v4, v2, Lcom/google/android/gms/internal/ads/zzht;->n:I

    .line 3
    iget v5, v2, Lcom/google/android/gms/internal/ads/zzht;->o:I

    .line 4
    iget v6, v2, Lcom/google/android/gms/internal/ads/zzht;->k:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzht;->j:Ljava/lang/String;

    invoke-static {v6, v4, v5}, Lml3;->O(Ljava/lang/String;II)I

    move-result v6

    .line 6
    :goto_0
    array-length v8, v3

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 7
    new-instance v3, Lol3;

    invoke-direct {v3, v4, v5, v6}, Lol3;-><init>(III)V

    goto/16 :goto_10

    .line 8
    :cond_1
    array-length v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    if-ge v9, v8, :cond_6

    aget-object v11, v3, v9

    .line 9
    iget-boolean v12, v1, Lvh3;->b:Z

    invoke-static {v12, v2, v11}, Lml3;->P(ZLcom/google/android/gms/internal/ads/zzht;Lcom/google/android/gms/internal/ads/zzht;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 10
    iget v12, v11, Lcom/google/android/gms/internal/ads/zzht;->n:I

    if-eq v12, v7, :cond_3

    iget v13, v11, Lcom/google/android/gms/internal/ads/zzht;->o:I

    if-ne v13, v7, :cond_2

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v13, 0x1

    :goto_3
    or-int/2addr v10, v13

    .line 11
    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 12
    iget v12, v11, Lcom/google/android/gms/internal/ads/zzht;->o:I

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 13
    iget v12, v11, Lcom/google/android/gms/internal/ads/zzht;->k:I

    if-eq v12, v7, :cond_4

    goto :goto_4

    .line 14
    :cond_4
    iget-object v12, v11, Lcom/google/android/gms/internal/ads/zzht;->j:Ljava/lang/String;

    iget v13, v11, Lcom/google/android/gms/internal/ads/zzht;->n:I

    iget v11, v11, Lcom/google/android/gms/internal/ads/zzht;->o:I

    invoke-static {v12, v13, v11}, Lml3;->O(Ljava/lang/String;II)I

    move-result v12

    .line 15
    :goto_4
    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_6
    if-eqz v10, :cond_14

    const/16 v3, 0x42

    const-string v7, "Resolutions unknown. Codec max resolution: "

    const-string v8, "x"

    .line 16
    invoke-static {v3, v7, v4, v8, v5}, Ljo;->N(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v7, "MediaCodecVideoRenderer"

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzht;->o:I

    iget v9, v2, Lcom/google/android/gms/internal/ads/zzht;->n:I

    if-le v3, v9, :cond_7

    const/4 v10, 0x1

    goto :goto_5

    :cond_7
    const/4 v10, 0x0

    :goto_5
    if-eqz v10, :cond_8

    move v11, v3

    goto :goto_6

    :cond_8
    move v11, v9

    :goto_6
    if-eqz v10, :cond_9

    move v3, v9

    :cond_9
    int-to-float v9, v3

    int-to-float v12, v11

    div-float/2addr v9, v12

    .line 18
    sget-object v12, Lml3;->w0:[I

    array-length v13, v12

    const/4 v14, 0x0

    :goto_7
    if-ge v14, v13, :cond_13

    aget v15, v12, v14

    move-object/from16 p4, v12

    int-to-float v12, v15

    mul-float v12, v12, v9

    float-to-int v12, v12

    if-le v15, v11, :cond_13

    if-gt v12, v3, :cond_a

    goto/16 :goto_e

    :cond_a
    move/from16 v16, v3

    .line 19
    sget v3, Lel3;->a:I

    move/from16 v17, v9

    const/16 v9, 0x15

    if-lt v3, v9, :cond_f

    if-eqz v10, :cond_b

    move v3, v12

    goto :goto_8

    :cond_b
    move v3, v15

    :goto_8
    if-eqz v10, :cond_c

    goto :goto_9

    :cond_c
    move v15, v12

    .line 20
    :goto_9
    iget-object v9, v1, Lvh3;->f:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v9, :cond_d

    const-string v3, "align.caps"

    .line 21
    invoke-virtual {v1, v3}, Lvh3;->c(Ljava/lang/String;)V

    goto :goto_a

    .line 22
    :cond_d
    invoke-virtual {v9}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v9

    if-nez v9, :cond_e

    const-string v3, "align.vCaps"

    .line 23
    invoke-virtual {v1, v3}, Lvh3;->c(Ljava/lang/String;)V

    :goto_a
    const/4 v3, 0x0

    move/from16 v18, v11

    goto :goto_b

    .line 24
    :cond_e
    invoke-virtual {v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v12

    .line 25
    invoke-virtual {v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result v9

    move/from16 v18, v11

    .line 26
    new-instance v11, Landroid/graphics/Point;

    invoke-static {v3, v12}, Lel3;->h(II)I

    move-result v3

    mul-int v3, v3, v12

    .line 27
    invoke-static {v15, v9}, Lel3;->h(II)I

    move-result v12

    mul-int v12, v12, v9

    invoke-direct {v11, v3, v12}, Landroid/graphics/Point;-><init>(II)V

    move-object v3, v11

    .line 28
    :goto_b
    iget v9, v2, Lcom/google/android/gms/internal/ads/zzht;->p:F

    .line 29
    iget v11, v3, Landroid/graphics/Point;->x:I

    iget v12, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v20, v7

    move-object/from16 v19, v8

    float-to-double v7, v9

    invoke-virtual {v1, v11, v12, v7, v8}, Lvh3;->a(IID)Z

    move-result v7

    if-eqz v7, :cond_12

    goto :goto_f

    :cond_f
    move-object/from16 v20, v7

    move-object/from16 v19, v8

    move/from16 v18, v11

    const/16 v3, 0x10

    .line 30
    invoke-static {v15, v3}, Lel3;->h(II)I

    move-result v7

    shl-int/lit8 v7, v7, 0x4

    .line 31
    invoke-static {v12, v3}, Lel3;->h(II)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    mul-int v8, v7, v3

    .line 32
    invoke-static {}, Lyh3;->c()I

    move-result v9

    if-gt v8, v9, :cond_12

    .line 33
    new-instance v8, Landroid/graphics/Point;

    if-eqz v10, :cond_10

    move v9, v3

    goto :goto_c

    :cond_10
    move v9, v7

    :goto_c
    if-eqz v10, :cond_11

    goto :goto_d

    :cond_11
    move v7, v3

    .line 34
    :goto_d
    invoke-direct {v8, v9, v7}, Landroid/graphics/Point;-><init>(II)V

    move-object v3, v8

    goto :goto_f

    :cond_12
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v12, p4

    move/from16 v3, v16

    move/from16 v9, v17

    move/from16 v11, v18

    move-object/from16 v8, v19

    move-object/from16 v7, v20

    goto/16 :goto_7

    :cond_13
    :goto_e
    move-object/from16 v20, v7

    move-object/from16 v19, v8

    const/4 v3, 0x0

    :goto_f
    if-eqz v3, :cond_14

    .line 35
    iget v7, v3, Landroid/graphics/Point;->x:I

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 36
    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 37
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzht;->j:Ljava/lang/String;

    .line 38
    invoke-static {v3, v4, v5}, Lml3;->O(Ljava/lang/String;II)I

    move-result v3

    .line 39
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/16 v3, 0x39

    const-string v7, "Codec max resolution adjusted to: "

    move-object/from16 v8, v19

    .line 40
    invoke-static {v3, v7, v4, v8, v5}, Ljo;->N(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v7, v20

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_14
    new-instance v3, Lol3;

    invoke-direct {v3, v4, v5, v6}, Lol3;-><init>(III)V

    .line 42
    :goto_10
    iput-object v3, v0, Lml3;->a0:Lol3;

    .line 43
    iget-boolean v4, v0, Lml3;->X:Z

    .line 44
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzht;->i()Landroid/media/MediaFormat;

    move-result-object v2

    .line 45
    iget v5, v3, Lol3;->a:I

    const-string v6, "max-width"

    invoke-virtual {v2, v6, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 46
    iget v5, v3, Lol3;->b:I

    const-string v6, "max-height"

    invoke-virtual {v2, v6, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 47
    iget v3, v3, Lol3;->c:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_15

    const-string v5, "max-input-size"

    .line 48
    invoke-virtual {v2, v5, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_15
    if-eqz v4, :cond_16

    const-string v3, "auto-frc"

    const/4 v4, 0x0

    .line 49
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 50
    :cond_16
    iget-object v3, v0, Lml3;->b0:Landroid/view/Surface;

    if-nez v3, :cond_18

    .line 51
    iget-boolean v3, v1, Lvh3;->d:Z

    invoke-virtual {v0, v3}, Lml3;->Y(Z)Z

    move-result v3

    invoke-static {v3}, Lc50;->D(Z)V

    .line 52
    iget-object v3, v0, Lml3;->c0:Landroid/view/Surface;

    if-nez v3, :cond_17

    .line 53
    iget-object v3, v0, Lml3;->T:Landroid/content/Context;

    iget-boolean v1, v1, Lvh3;->d:Z

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzqa;->a(Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/zzqa;

    move-result-object v1

    iput-object v1, v0, Lml3;->c0:Landroid/view/Surface;

    .line 54
    :cond_17
    iget-object v1, v0, Lml3;->c0:Landroid/view/Surface;

    iput-object v1, v0, Lml3;->b0:Landroid/view/Surface;

    .line 55
    :cond_18
    iget-object v1, v0, Lml3;->b0:Landroid/view/Surface;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v5, p2

    invoke-virtual {v5, v2, v1, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 56
    sget v1, Lel3;->a:I

    return-void
.end method

.method public final F(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p7

    move-wide/from16 v3, p9

    .line 1
    :goto_0
    iget v5, v0, Lml3;->v0:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    iget-object v8, v0, Lml3;->Y:[J

    aget-wide v9, v8, v7

    cmp-long v11, v3, v9

    if-ltz v11, :cond_0

    .line 2
    aget-wide v9, v8, v7

    iput-wide v9, v0, Lml3;->u0:J

    add-int/lit8 v5, v5, -0x1

    .line 3
    iput v5, v0, Lml3;->v0:I

    .line 4
    invoke-static {v8, v6, v8, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    const-string v5, "skipVideoBuffer"

    if-eqz p11, :cond_1

    .line 5
    invoke-static {v5}, Lc50;->g(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, v2, v7}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 7
    invoke-static {}, Lc50;->R()V

    .line 8
    iget-object v1, v0, Luh3;->R:Lxf3;

    iget v2, v1, Lxf3;->e:I

    add-int/2addr v2, v6

    iput v2, v1, Lxf3;->e:I

    return v6

    :cond_1
    sub-long v8, v3, p1

    .line 9
    iget-object v10, v0, Lml3;->b0:Landroid/view/Surface;

    iget-object v11, v0, Lml3;->c0:Landroid/view/Surface;

    const-wide/16 v12, -0x7530

    if-ne v10, v11, :cond_4

    cmp-long v3, v8, v12

    if-gez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    .line 10
    invoke-static {v5}, Lc50;->g(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, v2, v7}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 12
    invoke-static {}, Lc50;->R()V

    .line 13
    iget-object v1, v0, Luh3;->R:Lxf3;

    iget v2, v1, Lxf3;->e:I

    add-int/2addr v2, v6

    iput v2, v1, Lxf3;->e:I

    return v6

    :cond_3
    return v7

    .line 14
    :cond_4
    iget-boolean v5, v0, Lml3;->e0:Z

    const/16 v10, 0x15

    if-nez v5, :cond_6

    .line 15
    sget v3, Lel3;->a:I

    if-lt v3, v10, :cond_5

    .line 16
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lml3;->Q(Landroid/media/MediaCodec;IJ)V

    goto :goto_2

    .line 17
    :cond_5
    invoke-virtual {v0, v1, v2}, Lml3;->R(Landroid/media/MediaCodec;I)V

    :goto_2
    return v6

    .line 18
    :cond_6
    iget v5, v0, Lxd3;->d:I

    const/4 v11, 0x2

    if-eq v5, v11, :cond_7

    return v7

    .line 19
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    sub-long v14, v14, p3

    sub-long/2addr v8, v14

    .line 20
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    mul-long v8, v8, v16

    add-long/2addr v8, v14

    .line 21
    iget-object v5, v0, Lml3;->U:Lql3;

    mul-long v10, v3, v16

    .line 22
    iget-boolean v12, v5, Lql3;->h:Z

    if-eqz v12, :cond_b

    .line 23
    iget-wide v12, v5, Lql3;->e:J

    cmp-long v18, v3, v12

    if-eqz v18, :cond_8

    .line 24
    iget-wide v12, v5, Lql3;->k:J

    const-wide/16 v18, 0x1

    add-long v12, v12, v18

    iput-wide v12, v5, Lql3;->k:J

    .line 25
    iget-wide v12, v5, Lql3;->g:J

    iput-wide v12, v5, Lql3;->f:J

    .line 26
    :cond_8
    iget-wide v12, v5, Lql3;->k:J

    const-wide/16 v18, 0x6

    cmp-long v20, v12, v18

    if-ltz v20, :cond_a

    .line 27
    iget-wide v6, v5, Lql3;->j:J

    sub-long v6, v10, v6

    div-long/2addr v6, v12

    .line 28
    iget-wide v12, v5, Lql3;->f:J

    add-long/2addr v12, v6

    .line 29
    invoke-virtual {v5, v12, v13, v8, v9}, Lql3;->a(JJ)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x0

    .line 30
    iput-boolean v6, v5, Lql3;->h:Z

    goto :goto_3

    .line 31
    :cond_9
    iget-wide v6, v5, Lql3;->i:J

    add-long/2addr v6, v12

    move-wide/from16 p2, v12

    iget-wide v12, v5, Lql3;->j:J

    sub-long/2addr v6, v12

    move-wide/from16 v12, p2

    goto :goto_4

    .line 32
    :cond_a
    invoke-virtual {v5, v10, v11, v8, v9}, Lql3;->a(JJ)Z

    move-result v6

    if-eqz v6, :cond_b

    const/4 v6, 0x0

    .line 33
    iput-boolean v6, v5, Lql3;->h:Z

    :cond_b
    :goto_3
    move-wide v6, v8

    move-wide v12, v10

    .line 34
    :goto_4
    iget-boolean v0, v5, Lql3;->h:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_c

    .line 35
    iput-wide v10, v5, Lql3;->j:J

    .line 36
    iput-wide v8, v5, Lql3;->i:J

    .line 37
    iput-wide v1, v5, Lql3;->k:J

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, v5, Lql3;->h:Z

    .line 39
    :cond_c
    iput-wide v3, v5, Lql3;->e:J

    .line 40
    iput-wide v12, v5, Lql3;->g:J

    .line 41
    iget-object v0, v5, Lql3;->a:Lpl3;

    if-eqz v0, :cond_10

    iget-wide v3, v0, Lpl3;->e:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_d

    goto :goto_7

    .line 42
    :cond_d
    iget-object v0, v5, Lql3;->a:Lpl3;

    iget-wide v0, v0, Lpl3;->e:J

    iget-wide v2, v5, Lql3;->c:J

    sub-long v8, v6, v0

    .line 43
    div-long/2addr v8, v2

    mul-long v8, v8, v2

    add-long/2addr v8, v0

    cmp-long v0, v6, v8

    if-gtz v0, :cond_e

    sub-long v0, v8, v2

    goto :goto_5

    :cond_e
    add-long/2addr v2, v8

    move-wide v0, v8

    move-wide v8, v2

    :goto_5
    sub-long v2, v8, v6

    sub-long/2addr v6, v0

    cmp-long v4, v2, v6

    if-gez v4, :cond_f

    goto :goto_6

    :cond_f
    move-wide v8, v0

    .line 44
    :goto_6
    iget-wide v0, v5, Lql3;->d:J

    sub-long v6, v8, v0

    :cond_10
    :goto_7
    sub-long v0, v6, v14

    .line 45
    div-long v0, v0, v16

    const-wide/16 v2, -0x7530

    cmp-long v4, v0, v2

    if-gez v4, :cond_11

    const/4 v2, 0x1

    goto :goto_8

    :cond_11
    const/4 v2, 0x0

    :goto_8
    if-eqz v2, :cond_13

    const-string v0, "dropVideoBuffer"

    .line 46
    invoke-static {v0}, Lc50;->g(Ljava/lang/String;)V

    move-object/from16 v2, p5

    move/from16 v3, p7

    const/4 v0, 0x0

    .line 47
    invoke-virtual {v2, v3, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 48
    invoke-static {}, Lc50;->R()V

    move-object/from16 v4, p0

    .line 49
    iget-object v0, v4, Luh3;->R:Lxf3;

    iget v1, v0, Lxf3;->f:I

    const/4 v5, 0x1

    add-int/2addr v1, v5

    iput v1, v0, Lxf3;->f:I

    .line 50
    iget v1, v4, Lml3;->h0:I

    add-int/2addr v1, v5

    iput v1, v4, Lml3;->h0:I

    .line 51
    iget v1, v4, Lml3;->i0:I

    add-int/2addr v1, v5

    iput v1, v4, Lml3;->i0:I

    .line 52
    iget v2, v0, Lxf3;->g:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lxf3;->g:I

    .line 53
    iget v0, v4, Lml3;->h0:I

    iget v1, v4, Lml3;->W:I

    if-ne v0, v1, :cond_12

    .line 54
    invoke-virtual/range {p0 .. p0}, Lml3;->X()V

    :cond_12
    return v5

    :cond_13
    move-object/from16 v4, p0

    move-object/from16 v2, p5

    move/from16 v3, p7

    const/4 v5, 0x1

    .line 55
    sget v8, Lel3;->a:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_14

    const-wide/32 v8, 0xc350

    cmp-long v10, v0, v8

    if-gez v10, :cond_16

    .line 56
    invoke-virtual {v4, v2, v3, v6, v7}, Lml3;->Q(Landroid/media/MediaCodec;IJ)V

    return v5

    :cond_14
    const-wide/16 v5, 0x7530

    cmp-long v7, v0, v5

    if-gez v7, :cond_16

    const-wide/16 v5, 0x2af8

    cmp-long v7, v0, v5

    if-lez v7, :cond_15

    const-wide/16 v5, 0x2710

    sub-long/2addr v0, v5

    .line 57
    :try_start_0
    div-long v0, v0, v16

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    .line 58
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 59
    :cond_15
    :goto_9
    invoke-virtual {v4, v2, v3}, Lml3;->R(Landroid/media/MediaCodec;I)V

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public final G(Landroid/media/MediaCodec;ZLcom/google/android/gms/internal/ads/zzht;Lcom/google/android/gms/internal/ads/zzht;)Z
    .locals 0

    .line 1
    invoke-static {p2, p3, p4}, Lml3;->P(ZLcom/google/android/gms/internal/ads/zzht;Lcom/google/android/gms/internal/ads/zzht;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p4, Lcom/google/android/gms/internal/ads/zzht;->n:I

    iget-object p2, p0, Lml3;->a0:Lol3;

    iget p3, p2, Lol3;->a:I

    if-gt p1, p3, :cond_0

    iget p1, p4, Lcom/google/android/gms/internal/ads/zzht;->o:I

    iget p3, p2, Lol3;->b:I

    if-gt p1, p3, :cond_0

    iget p1, p4, Lcom/google/android/gms/internal/ads/zzht;->k:I

    iget p2, p2, Lol3;->c:I

    if-gt p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final H(Lvh3;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lml3;->b0:Landroid/view/Surface;

    if-nez v0, :cond_1

    iget-boolean p1, p1, Lvh3;->d:Z

    invoke-virtual {p0, p1}, Lml3;->Y(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final I(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    iget-object v1, p0, Lml3;->V:Lrl3;

    .line 2
    iget-object v0, v1, Lrl3;->b:Lsl3;

    if-eqz v0, :cond_0

    .line 3
    iget-object v7, v1, Lrl3;->a:Landroid/os/Handler;

    new-instance v8, Ltl3;

    move-object v0, v8

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Ltl3;-><init>(Lrl3;Ljava/lang/String;JJ)V

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
    iget-object v0, p0, Lml3;->V:Lrl3;

    .line 3
    iget-object v1, v0, Lrl3;->b:Lsl3;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, v0, Lrl3;->a:Landroid/os/Handler;

    new-instance v2, Lwl3;

    invoke-direct {v2, v0, p1}, Lwl3;-><init>(Lrl3;Lcom/google/android/gms/internal/ads/zzht;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5
    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzht;->r:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    :cond_1
    iput v0, p0, Lml3;->k0:F

    .line 7
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzht;->q:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    .line 8
    :cond_2
    iput p1, p0, Lml3;->j0:I

    return-void
.end method

.method public final M()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-super {p0}, Luh3;->M()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v1, p0, Lml3;->c0:Landroid/view/Surface;

    if-eqz v1, :cond_1

    .line 3
    iget-object v2, p0, Lml3;->b0:Landroid/view/Surface;

    if-ne v2, v1, :cond_0

    .line 4
    iput-object v0, p0, Lml3;->b0:Landroid/view/Surface;

    .line 5
    :cond_0
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 6
    iput-object v0, p0, Lml3;->c0:Landroid/view/Surface;

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 7
    iget-object v2, p0, Lml3;->c0:Landroid/view/Surface;

    if-eqz v2, :cond_3

    .line 8
    iget-object v2, p0, Lml3;->b0:Landroid/view/Surface;

    iget-object v3, p0, Lml3;->c0:Landroid/view/Surface;

    if-ne v2, v3, :cond_2

    .line 9
    iput-object v0, p0, Lml3;->b0:Landroid/view/Surface;

    .line 10
    :cond_2
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 11
    iput-object v0, p0, Lml3;->c0:Landroid/view/Surface;

    .line 12
    :cond_3
    throw v1
.end method

.method public final Q(Landroid/media/MediaCodec;IJ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lml3;->V()V

    const-string v0, "releaseOutputBuffer"

    .line 2
    invoke-static {v0}, Lc50;->g(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, p2, p3, p4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    .line 4
    invoke-static {}, Lc50;->R()V

    .line 5
    iget-object p1, p0, Luh3;->R:Lxf3;

    iget p2, p1, Lxf3;->d:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lxf3;->d:I

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lml3;->i0:I

    .line 7
    invoke-virtual {p0}, Lml3;->T()V

    return-void
.end method

.method public final R(Landroid/media/MediaCodec;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lml3;->V()V

    const-string v0, "releaseOutputBuffer"

    .line 2
    invoke-static {v0}, Lc50;->g(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 4
    invoke-static {}, Lc50;->R()V

    .line 5
    iget-object p1, p0, Luh3;->R:Lxf3;

    iget p2, p1, Lxf3;->d:I

    add-int/2addr p2, v0

    iput p2, p1, Lxf3;->d:I

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lml3;->i0:I

    .line 7
    invoke-virtual {p0}, Lml3;->T()V

    return-void
.end method

.method public final S()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lml3;->e0:Z

    .line 2
    sget v0, Lel3;->a:I

    const/16 v1, 0x17

    return-void
.end method

.method public final T()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lml3;->e0:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lml3;->e0:Z

    .line 3
    iget-object v0, p0, Lml3;->V:Lrl3;

    iget-object v1, p0, Lml3;->b0:Landroid/view/Surface;

    .line 4
    iget-object v2, v0, Lrl3;->b:Lsl3;

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, v0, Lrl3;->a:Landroid/os/Handler;

    new-instance v3, Lxl3;

    invoke-direct {v3, v0, v1}, Lxl3;-><init>(Lrl3;Landroid/view/Surface;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final U()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lml3;->p0:I

    .line 2
    iput v0, p0, Lml3;->q0:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 3
    iput v1, p0, Lml3;->s0:F

    .line 4
    iput v0, p0, Lml3;->r0:I

    return-void
.end method

.method public final V()V
    .locals 5

    .line 1
    iget v0, p0, Lml3;->p0:I

    iget v1, p0, Lml3;->l0:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lml3;->q0:I

    iget v2, p0, Lml3;->m0:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lml3;->r0:I

    iget v2, p0, Lml3;->n0:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lml3;->s0:F

    iget v2, p0, Lml3;->o0:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lml3;->V:Lrl3;

    iget v2, p0, Lml3;->m0:I

    iget v3, p0, Lml3;->n0:I

    iget v4, p0, Lml3;->o0:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lrl3;->a(IIIF)V

    .line 3
    iget v0, p0, Lml3;->l0:I

    iput v0, p0, Lml3;->p0:I

    .line 4
    iget v0, p0, Lml3;->m0:I

    iput v0, p0, Lml3;->q0:I

    .line 5
    iget v0, p0, Lml3;->n0:I

    iput v0, p0, Lml3;->r0:I

    .line 6
    iget v0, p0, Lml3;->o0:F

    iput v0, p0, Lml3;->s0:F

    :cond_1
    return-void
.end method

.method public final W()V
    .locals 5

    .line 1
    iget v0, p0, Lml3;->p0:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lml3;->q0:I

    if-eq v0, v1, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lml3;->V:Lrl3;

    iget v1, p0, Lml3;->l0:I

    iget v2, p0, Lml3;->m0:I

    iget v3, p0, Lml3;->n0:I

    iget v4, p0, Lml3;->o0:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lrl3;->a(IIIF)V

    :cond_1
    return-void
.end method

.method public final X()V
    .locals 8

    .line 1
    iget v0, p0, Lml3;->h0:I

    if-lez v0, :cond_1

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Lml3;->g0:J

    sub-long v2, v0, v2

    .line 4
    iget-object v4, p0, Lml3;->V:Lrl3;

    iget v5, p0, Lml3;->h0:I

    .line 5
    iget-object v6, v4, Lrl3;->b:Lsl3;

    if-eqz v6, :cond_0

    .line 6
    iget-object v6, v4, Lrl3;->a:Landroid/os/Handler;

    new-instance v7, Lvl3;

    invoke-direct {v7, v4, v5, v2, v3}, Lvl3;-><init>(Lrl3;IJ)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v2, 0x0

    .line 7
    iput v2, p0, Lml3;->h0:I

    .line 8
    iput-wide v0, p0, Lml3;->g0:J

    :cond_1
    return-void
.end method

.method public final Y(Z)Z
    .locals 2

    .line 1
    sget v0, Lel3;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lml3;->T:Landroid/content/Context;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzqa;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b(ILjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyd3;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    .line 1
    check-cast p2, Landroid/view/Surface;

    if-nez p2, :cond_1

    .line 2
    iget-object p1, p0, Lml3;->c0:Landroid/view/Surface;

    if-eqz p1, :cond_0

    move-object p2, p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Luh3;->s:Lvh3;

    if-eqz p1, :cond_1

    .line 4
    iget-boolean v1, p1, Lvh3;->d:Z

    invoke-virtual {p0, v1}, Lml3;->Y(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object p2, p0, Lml3;->T:Landroid/content/Context;

    iget-boolean p1, p1, Lvh3;->d:Z

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzqa;->a(Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/zzqa;

    move-result-object p2

    iput-object p2, p0, Lml3;->c0:Landroid/view/Surface;

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lml3;->b0:Landroid/view/Surface;

    if-eq p1, p2, :cond_7

    .line 7
    iput-object p2, p0, Lml3;->b0:Landroid/view/Surface;

    .line 8
    iget p1, p0, Lxd3;->d:I

    const/4 v1, 0x2

    if-eq p1, v0, :cond_2

    if-ne p1, v1, :cond_4

    .line 9
    :cond_2
    iget-object v0, p0, Luh3;->r:Landroid/media/MediaCodec;

    .line 10
    sget v2, Lel3;->a:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_3

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 11
    invoke-virtual {v0, p2}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {p0}, Lml3;->M()V

    .line 13
    invoke-virtual {p0}, Luh3;->L()V

    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    .line 14
    iget-object v0, p0, Lml3;->c0:Landroid/view/Surface;

    if-eq p2, v0, :cond_5

    .line 15
    invoke-virtual {p0}, Lml3;->W()V

    .line 16
    invoke-virtual {p0}, Lml3;->S()V

    if-ne p1, v1, :cond_6

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    iput-wide p1, p0, Lml3;->f0:J

    return-void

    .line 18
    :cond_5
    invoke-virtual {p0}, Lml3;->U()V

    .line 19
    invoke-virtual {p0}, Lml3;->S()V

    :cond_6
    return-void

    :cond_7
    if-eqz p2, :cond_8

    .line 20
    iget-object p1, p0, Lml3;->c0:Landroid/view/Surface;

    if-eq p2, p1, :cond_8

    .line 21
    invoke-virtual {p0}, Lml3;->W()V

    .line 22
    iget-boolean p1, p0, Lml3;->e0:Z

    if-eqz p1, :cond_8

    .line 23
    iget-object p1, p0, Lml3;->V:Lrl3;

    iget-object p2, p0, Lml3;->b0:Landroid/view/Surface;

    .line 24
    iget-object v0, p1, Lrl3;->b:Lsl3;

    if-eqz v0, :cond_8

    .line 25
    iget-object v0, p1, Lrl3;->a:Landroid/os/Handler;

    new-instance v1, Lxl3;

    invoke-direct {v1, p1, p2}, Lxl3;-><init>(Lrl3;Landroid/view/Surface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    return-void

    :cond_9
    const/4 v0, 0x4

    if-ne p1, v0, :cond_a

    .line 26
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lml3;->d0:I

    .line 27
    iget-object p2, p0, Luh3;->r:Landroid/media/MediaCodec;

    if-eqz p2, :cond_a

    .line 28
    invoke-virtual {p2, p1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    :cond_a
    return-void
.end method

.method public final e()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lml3;->h0:I

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lml3;->g0:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    iput-wide v0, p0, Lml3;->f0:J

    return-void
.end method

.method public final f()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lml3;->X()V

    return-void
.end method

.method public final h(JZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyd3;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Luh3;->h(JZ)V

    .line 2
    invoke-virtual {p0}, Lml3;->S()V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lml3;->i0:I

    .line 4
    iget p2, p0, Lml3;->v0:I

    if-eqz p2, :cond_0

    .line 5
    iget-object v0, p0, Lml3;->Y:[J

    add-int/lit8 p2, p2, -0x1

    aget-wide v1, v0, p2

    iput-wide v1, p0, Lml3;->u0:J

    .line 6
    iput p1, p0, Lml3;->v0:I

    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p3, :cond_1

    .line 7
    iput-wide p1, p0, Lml3;->f0:J

    return-void

    .line 8
    :cond_1
    iput-wide p1, p0, Lml3;->f0:J

    return-void
.end method

.method public final isReady()Z
    .locals 9

    .line 1
    invoke-super {p0}, Luh3;->isReady()Z

    move-result v0

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lml3;->e0:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lml3;->c0:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lml3;->b0:Landroid/view/Surface;

    if-eq v4, v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Luh3;->r:Landroid/media/MediaCodec;

    if-nez v0, :cond_2

    .line 3
    :cond_1
    iput-wide v2, p0, Lml3;->f0:J

    return v1

    .line 4
    :cond_2
    iget-wide v4, p0, Lml3;->f0:J

    const/4 v0, 0x0

    cmp-long v6, v4, v2

    if-nez v6, :cond_3

    return v0

    .line 5
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lml3;->f0:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_4

    return v1

    .line 6
    :cond_4
    iput-wide v2, p0, Lml3;->f0:J

    return v0
.end method

.method public final x([Lcom/google/android/gms/internal/ads/zzht;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lyd3;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lml3;->Z:[Lcom/google/android/gms/internal/ads/zzht;

    .line 2
    iget-wide v0, p0, Lml3;->u0:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 3
    iput-wide p2, p0, Lml3;->u0:J

    goto :goto_1

    .line 4
    :cond_0
    iget p1, p0, Lml3;->v0:I

    iget-object v0, p0, Lml3;->Y:[J

    array-length v1, v0

    if-ne p1, v1, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 5
    aget-wide v1, v0, p1

    const/16 p1, 0x41

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Too many stream changes, so dropping offset: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaCodecVideoRenderer"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 6
    iput p1, p0, Lml3;->v0:I

    .line 7
    :goto_0
    iget-object p1, p0, Lml3;->Y:[J

    iget v0, p0, Lml3;->v0:I

    add-int/lit8 v0, v0, -0x1

    aput-wide p2, p1, v0

    :goto_1
    return-void
.end method

.method public final y()V
    .locals 5

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lml3;->l0:I

    .line 2
    iput v0, p0, Lml3;->m0:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 3
    iput v0, p0, Lml3;->o0:F

    .line 4
    iput v0, p0, Lml3;->k0:F

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    iput-wide v0, p0, Lml3;->u0:J

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lml3;->v0:I

    .line 7
    invoke-virtual {p0}, Lml3;->U()V

    .line 8
    invoke-virtual {p0}, Lml3;->S()V

    .line 9
    iget-object v0, p0, Lml3;->U:Lql3;

    .line 10
    iget-boolean v1, v0, Lql3;->b:Z

    if-eqz v1, :cond_0

    .line 11
    iget-object v0, v0, Lql3;->a:Lpl3;

    .line 12
    iget-object v0, v0, Lpl3;->f:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lml3;->t0:Lnl3;

    .line 14
    :try_start_0
    invoke-super {p0}, Luh3;->y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object v0, p0, Luh3;->R:Lxf3;

    .line 16
    monitor-enter v0

    .line 17
    monitor-exit v0

    .line 18
    iget-object v0, p0, Lml3;->V:Lrl3;

    iget-object v1, p0, Luh3;->R:Lxf3;

    .line 19
    iget-object v2, v0, Lrl3;->b:Lsl3;

    if-eqz v2, :cond_1

    .line 20
    iget-object v2, v0, Lrl3;->a:Landroid/os/Handler;

    new-instance v3, Lzl3;

    invoke-direct {v3, v0, v1}, Lzl3;-><init>(Lrl3;Lxf3;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 21
    iget-object v1, p0, Luh3;->R:Lxf3;

    .line 22
    monitor-enter v1

    .line 23
    monitor-exit v1

    .line 24
    iget-object v1, p0, Lml3;->V:Lrl3;

    iget-object v2, p0, Luh3;->R:Lxf3;

    .line 25
    iget-object v3, v1, Lrl3;->b:Lsl3;

    if-eqz v3, :cond_2

    .line 26
    iget-object v3, v1, Lrl3;->a:Landroid/os/Handler;

    new-instance v4, Lzl3;

    invoke-direct {v4, v1, v2}, Lzl3;-><init>(Lrl3;Lxf3;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    :cond_2
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
    iget-object p1, p0, Lxd3;->b:Lqe3;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lml3;->V:Lrl3;

    iget-object v0, p0, Luh3;->R:Lxf3;

    .line 5
    iget-object v1, p1, Lrl3;->b:Lsl3;

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p1, Lrl3;->a:Landroid/os/Handler;

    new-instance v2, Lul3;

    invoke-direct {v2, p1, v0}, Lul3;-><init>(Lrl3;Lxf3;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7
    :cond_0
    iget-object p1, p0, Lml3;->U:Lql3;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p1, Lql3;->h:Z

    .line 9
    iget-boolean v0, p1, Lql3;->b:Z

    if-eqz v0, :cond_1

    .line 10
    iget-object p1, p1, Lql3;->a:Lpl3;

    .line 11
    iget-object p1, p1, Lpl3;->f:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method
