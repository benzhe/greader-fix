.class public final Lkt0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroid/media/MediaPlayer;

.field public final synthetic f:Lcom/google/android/gms/internal/ads/zzbbq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbbq;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkt0;->f:Lcom/google/android/gms/internal/ads/zzbbq;

    iput-object p2, p0, Lkt0;->e:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lkt0;->f:Lcom/google/android/gms/internal/ads/zzbbq;

    iget-object v1, p0, Lkt0;->e:Landroid/media/MediaPlayer;

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbq;->v:Ljava/util/Map;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "frameRate"

    .line 4
    sget-object v3, Ly40;->l1:Lo40;

    .line 5
    sget-object v4, Los3;->j:Los3;

    iget-object v4, v4, Los3;->f:Lu40;

    .line 6
    invoke-virtual {v4, v3}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v3

    .line 7
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbbq;->g:Liu0;

    if-eqz v3, :cond_a

    if-eqz v1, :cond_a

    .line 8
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 9
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 10
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_9

    aget-object v6, v1, v5

    if-eqz v6, :cond_8

    .line 11
    invoke-virtual {v6}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v7

    const/16 v8, 0x1e

    const-string v9, "codecs-string"

    const-string v10, "mime"

    const/4 v11, 0x1

    if-eq v7, v11, :cond_3

    const/4 v11, 0x2

    if-eq v7, v11, :cond_1

    goto/16 :goto_2

    .line 12
    :cond_1
    invoke-virtual {v6}, Landroid/media/MediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 13
    invoke-virtual {v6, v10}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 14
    invoke-virtual {v6, v10}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "audioMime"

    .line 15
    invoke-virtual {v3, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_2
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v8, :cond_8

    .line 17
    invoke-virtual {v6, v9}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 18
    invoke-virtual {v6, v9}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "audioCodec"

    .line 19
    invoke-virtual {v3, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 20
    :cond_3
    invoke-virtual {v6}, Landroid/media/MediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object v6

    if-eqz v6, :cond_8

    const-string v7, "frame-rate"

    .line 21
    invoke-virtual {v6, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 22
    :try_start_0
    invoke-virtual {v6, v7}, Landroid/media/MediaFormat;->getFloat(Ljava/lang/String;)F

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v11

    .line 23
    invoke-virtual {v3, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 24
    :catch_0
    invoke-virtual {v6, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 25
    invoke-virtual {v3, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    const-string v7, "bitrate"

    .line 26
    invoke-virtual {v6, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 27
    invoke-virtual {v6, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzbbq;->u:Ljava/lang/Integer;

    .line 28
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v11, "bitRate"

    invoke-virtual {v3, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v7, "width"

    .line 29
    invoke-virtual {v6, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "height"

    .line 30
    invoke-virtual {v6, v11}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 31
    invoke-virtual {v6, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    .line 32
    invoke-virtual {v6, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v11

    const/16 v12, 0x17

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "x"

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v11, "resolution"

    .line 33
    invoke-virtual {v3, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_6
    invoke-virtual {v6, v10}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 35
    invoke-virtual {v6, v10}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "videoMime"

    .line 36
    invoke-virtual {v3, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_7
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v8, :cond_8

    .line 38
    invoke-virtual {v6, v9}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 39
    invoke-virtual {v6, v9}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "videoCodec"

    .line 40
    invoke-virtual {v3, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 41
    :cond_9
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 42
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbbq;->g:Liu0;

    const-string v1, "onMetadataEvent"

    invoke-interface {v0, v1, v3}, Lod0;->x(Ljava/lang/String;Ljava/util/Map;)V

    .line 43
    :cond_a
    :goto_3
    iget-object v0, p0, Lkt0;->f:Lcom/google/android/gms/internal/ads/zzbbq;

    .line 44
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbbq;->t:Lrt0;

    if-eqz v0, :cond_b

    .line 45
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbcb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbcb;->i()V

    :cond_b
    return-void
.end method
