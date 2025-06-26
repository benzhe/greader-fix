.class public final Lsv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkb0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkb0<",
        "Liu0;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    sget-object v0, Los3;->j:Los3;

    iget-object v0, v0, Los3;->a:Lzr0;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p0, v0}, Lzr0;->a(Landroid/util/DisplayMetrics;I)I

    move-result p3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x22

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Could not parse "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " in a video GMSG: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lis0;->zzez(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return p3
.end method

.method public static c(Lcom/google/android/gms/internal/ads/zzbcb;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbcb;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "minBufferMs"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "maxBufferMs"

    .line 2
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "bufferForPlaybackMs"

    .line 3
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "bufferForPlaybackAfterRebufferMs"

    .line 4
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "socketReceiveBufferSize"

    .line 5
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 6
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 7
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbcb;->j:Lcom/google/android/gms/internal/ads/zzbbz;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbbz;->q(I)V

    :cond_0
    if-eqz v1, :cond_1

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 9
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbcb;->j:Lcom/google/android/gms/internal/ads/zzbbz;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbbz;->r(I)V

    :cond_1
    if-eqz v2, :cond_2

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 11
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbcb;->j:Lcom/google/android/gms/internal/ads/zzbbz;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzbbz;->s(I)V

    :cond_2
    if-eqz v3, :cond_3

    .line 12
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 13
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbcb;->j:Lcom/google/android/gms/internal/ads/zzbbz;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbbz;->t(I)V

    :cond_3
    if-eqz p1, :cond_4

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 15
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->j:Lcom/google/android/gms/internal/ads/zzbbz;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbz;->u(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    aput-object v0, p0, p1

    const/4 p1, 0x1

    aput-object v1, p0, p1

    const-string p1, "Could not parse buffer parameters in loadControl video GMSG: (%s, %s)"

    .line 16
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 17
    invoke-static {p0}, Lis0;->zzez(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 1
    move-object/from16 v2, p1

    check-cast v2, Liu0;

    const-string v3, "action"

    .line 2
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v0, "Action missing from video GMSG."

    .line 3
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v4, 0x3

    .line 4
    invoke-static {v4}, Lis0;->isLoggable(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v6, "google.afma.Notify_dt"

    .line 6
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0xd

    invoke-static {v5, v6}, Ljo;->x(Ljava/lang/String;I)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Video GMSG: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lis0;->zzdz(Ljava/lang/String;)V

    :cond_1
    const-string v5, "background"

    .line 8
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v3, "color"

    .line 9
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "Color parameter missing from color video GMSG."

    .line 11
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_2
    :try_start_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 13
    invoke-interface {v2, v0}, Liu0;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "Invalid color parameter in video GMSG."

    .line 14
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v5, "decoderProps"

    .line 15
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_6

    const-string v3, "mimeTypes"

    .line 16
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, "No MIME types specified for decoder properties inspection."

    .line 17
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    const-string v0, "missingMimeTypes"

    .line 18
    sget v3, Lcom/google/android/gms/internal/ads/zzbcb;->v:I

    const-string v3, "event"

    const-string v4, "decoderProps"

    const-string v5, "error"

    .line 19
    invoke-static {v3, v4, v5, v0}, Ljo;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "onVideoEvent"

    .line 20
    invoke-interface {v2, v3, v0}, Lod0;->x(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 21
    :cond_4
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, ","

    .line 22
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    :goto_0
    if-ge v6, v4, :cond_5

    aget-object v5, v0, v6

    .line 23
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/ads/internal/util/zzbx;->zzer(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 24
    :cond_5
    sget v0, Lcom/google/android/gms/internal/ads/zzbcb;->v:I

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v4, "event"

    const-string v5, "decoderProps"

    .line 26
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "mimeTypes"

    .line 27
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "onVideoEvent"

    .line 28
    invoke-interface {v2, v3, v0}, Lod0;->x(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 29
    :cond_6
    invoke-interface {v2}, Liu0;->A()Lxt0;

    move-result-object v5

    if-nez v5, :cond_7

    const-string v0, "Could not get underlay container for a video GMSG."

    .line 30
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    return-void

    :cond_7
    const-string v7, "new"

    .line 31
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "position"

    .line 32
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v7, :cond_30

    if-eqz v8, :cond_8

    goto/16 :goto_10

    .line 33
    :cond_8
    invoke-interface {v2}, Liu0;->f()Lrx0;

    move-result-object v7

    if-eqz v7, :cond_c

    const-string v8, "timeupdate"

    .line 34
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v2, "currentTime"

    .line 35
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_9

    const-string v0, "currentTime parameter missing from timeupdate video GMSG."

    .line 36
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    return-void

    .line 37
    :cond_9
    :try_start_1
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 38
    iget-object v3, v7, Lrx0;->f:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 39
    :try_start_2
    iput v0, v7, Lrx0;->n:F

    .line 40
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    nop

    const-string v0, "Could not parse currentTime parameter from timeupdate video GMSG: "

    .line 41
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_a
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_1
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    return-void

    :cond_b
    const-string v8, "skip"

    .line 42
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 43
    iget-object v8, v7, Lrx0;->f:Ljava/lang/Object;

    monitor-enter v8

    .line 44
    :try_start_4
    iget-boolean v0, v7, Lrx0;->l:Z

    .line 45
    iget v2, v7, Lrx0;->i:I

    .line 46
    iput v4, v7, Lrx0;->i:I

    .line 47
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 48
    invoke-virtual {v7, v2, v4, v0, v0}, Lrx0;->Y6(IIZZ)V

    return-void

    :catchall_1
    move-exception v0

    .line 49
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 50
    :cond_c
    invoke-virtual {v5}, Lxt0;->a()Lcom/google/android/gms/internal/ads/zzbcb;

    move-result-object v4

    if-nez v4, :cond_d

    .line 51
    sget v0, Lcom/google/android/gms/internal/ads/zzbcb;->v:I

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "event"

    const-string v4, "no_video_view"

    .line 53
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "onVideoEvent"

    .line 54
    invoke-interface {v2, v3, v0}, Lod0;->x(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_d
    const-string v5, "click"

    .line 55
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 56
    invoke-interface {v2}, Liu0;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "x"

    .line 57
    invoke-static {v2, v0, v3, v6}, Lsv0;->b(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v3

    const-string v5, "y"

    .line 58
    invoke-static {v2, v0, v5, v6}, Lsv0;->b(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v0

    .line 59
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v9, 0x0

    int-to-float v10, v3

    int-to-float v11, v0

    const/4 v12, 0x0

    move-wide v5, v7

    .line 60
    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 61
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzbcb;->j:Lcom/google/android/gms/internal/ads/zzbbz;

    if-nez v2, :cond_e

    goto :goto_2

    .line 62
    :cond_e
    invoke-virtual {v2, v0}, Landroid/view/TextureView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 63
    :goto_2
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void

    :cond_f
    const-string v5, "currentTime"

    .line 64
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    const-string v2, "time"

    .line 65
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_10

    const-string v0, "Time parameter missing from currentTime video GMSG."

    .line 66
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    return-void

    .line 67
    :cond_10
    :try_start_6
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 68
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzbcb;->j:Lcom/google/android/gms/internal/ads/zzbbz;

    if-nez v3, :cond_11

    goto :goto_3

    .line 69
    :cond_11
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbbz;->h(I)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2

    :goto_3
    return-void

    :catch_2
    nop

    const-string v2, "Could not parse time parameter from currentTime video GMSG: "

    .line 70
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_12
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    return-void

    :cond_13
    const-string v5, "hide"

    .line 71
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    const/4 v0, 0x4

    .line 72
    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :cond_14
    const-string v5, "load"

    .line 73
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 74
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzbcb;->j:Lcom/google/android/gms/internal/ads/zzbbz;

    if-nez v0, :cond_15

    goto :goto_5

    .line 75
    :cond_15
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzbcb;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 76
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzbcb;->j:Lcom/google/android/gms/internal/ads/zzbbz;

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzbcb;->q:Ljava/lang/String;

    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzbcb;->r:[Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzbbz;->p(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_5

    :cond_16
    new-array v0, v6, [Ljava/lang/String;

    const-string v2, "no_src"

    .line 77
    invoke-virtual {v4, v2, v0}, Lcom/google/android/gms/internal/ads/zzbcb;->h(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_5
    return-void

    :cond_17
    const-string v5, "loadControl"

    .line 78
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 79
    invoke-static {v4, v0}, Lsv0;->c(Lcom/google/android/gms/internal/ads/zzbcb;Ljava/util/Map;)V

    return-void

    :cond_18
    const-string v5, "muted"

    .line 80
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_1c

    const-string v2, "muted"

    .line 81
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 82
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzbcb;->j:Lcom/google/android/gms/internal/ads/zzbbz;

    if-nez v0, :cond_19

    goto :goto_6

    .line 83
    :cond_19
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbbz;->f:Lju0;

    .line 84
    iput-boolean v7, v2, Lju0;->e:Z

    .line 85
    invoke-virtual {v2}, Lju0;->b()V

    .line 86
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbz;->a()V

    :goto_6
    return-void

    .line 87
    :cond_1a
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzbcb;->j:Lcom/google/android/gms/internal/ads/zzbbz;

    if-nez v0, :cond_1b

    goto :goto_7

    .line 88
    :cond_1b
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbbz;->f:Lju0;

    .line 89
    iput-boolean v6, v2, Lju0;->e:Z

    .line 90
    invoke-virtual {v2}, Lju0;->b()V

    .line 91
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbz;->a()V

    :goto_7
    return-void

    :cond_1c
    const-string v5, "pause"

    .line 92
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 93
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzbcb;->j:Lcom/google/android/gms/internal/ads/zzbbz;

    if-nez v0, :cond_1d

    goto :goto_8

    .line 94
    :cond_1d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbz;->e()V

    :goto_8
    return-void

    :cond_1e
    const-string v5, "play"

    .line 95
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 96
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzbcb;->j:Lcom/google/android/gms/internal/ads/zzbbz;

    if-nez v0, :cond_1f

    goto :goto_9

    .line 97
    :cond_1f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbz;->f()V

    :goto_9
    return-void

    :cond_20
    const-string v5, "show"

    .line 98
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 99
    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :cond_21
    const-string v5, "src"

    .line 100
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    const-string v3, "src"

    .line 101
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "periodicReportIntervalMs"

    .line 102
    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_22

    goto :goto_a

    .line 103
    :cond_22
    :try_start_7
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_a

    .line 104
    :catch_3
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/16 v10, 0x41

    invoke-static {v8, v10}, Ljo;->x(Ljava/lang/String;I)I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "Video gmsg invalid numeric parameter \'"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\': "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lis0;->zzez(Ljava/lang/String;)V

    :goto_a
    new-array v5, v7, [Ljava/lang/String;

    aput-object v3, v5, v6

    const-string v8, "demuxed"

    .line 105
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_25

    .line 106
    :try_start_8
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    const/4 v10, 0x0

    .line 108
    :goto_b
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_23

    .line 109
    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_4

    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    :cond_23
    move-object v5, v8

    goto :goto_d

    :catch_4
    nop

    const-string v5, "Malformed demuxed URL list for playback: "

    .line 110
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_24

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_24
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_c
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    new-array v5, v7, [Ljava/lang/String;

    aput-object v3, v5, v6

    :cond_25
    :goto_d
    if-eqz v9, :cond_26

    .line 111
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v0}, Liu0;->r(I)V

    .line 112
    :cond_26
    iput-object v3, v4, Lcom/google/android/gms/internal/ads/zzbcb;->q:Ljava/lang/String;

    .line 113
    iput-object v5, v4, Lcom/google/android/gms/internal/ads/zzbcb;->r:[Ljava/lang/String;

    return-void

    :cond_27
    const-string v5, "touchMove"

    .line 114
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 115
    invoke-interface {v2}, Liu0;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "dx"

    .line 116
    invoke-static {v3, v0, v5, v6}, Lsv0;->b(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v5

    const-string v8, "dy"

    .line 117
    invoke-static {v3, v0, v8, v6}, Lsv0;->b(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v0

    int-to-float v3, v5

    int-to-float v0, v0

    .line 118
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzbcb;->j:Lcom/google/android/gms/internal/ads/zzbbz;

    if-eqz v4, :cond_28

    .line 119
    invoke-virtual {v4, v3, v0}, Lcom/google/android/gms/internal/ads/zzbbz;->k(FF)V

    .line 120
    :cond_28
    iget-boolean v0, v1, Lsv0;->a:Z

    if-nez v0, :cond_29

    .line 121
    invoke-interface {v2}, Liu0;->Q()V

    .line 122
    iput-boolean v7, v1, Lsv0;->a:Z

    :cond_29
    return-void

    :cond_2a
    const-string v2, "volume"

    .line 123
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const-string v2, "volume"

    .line 124
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2b

    const-string v0, "Level parameter missing from volume video GMSG."

    .line 125
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    return-void

    .line 126
    :cond_2b
    :try_start_9
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 127
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzbcb;->setVolume(F)V
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_5

    return-void

    :catch_5
    nop

    const-string v2, "Could not parse volume parameter from volume video GMSG: "

    .line 128
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2c

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_2c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_e
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    return-void

    :cond_2d
    const-string v0, "watermark"

    .line 129
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 130
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbcb;->d()V

    return-void

    :cond_2e
    const-string v0, "Unknown video action: "

    .line 131
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_2f
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_f
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    return-void

    .line 132
    :cond_30
    :goto_10
    invoke-interface {v2}, Liu0;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "x"

    .line 133
    invoke-static {v3, v0, v4, v6}, Lsv0;->b(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v4

    const-string v8, "y"

    .line 134
    invoke-static {v3, v0, v8, v6}, Lsv0;->b(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v8

    const-string v9, "w"

    const/4 v10, -0x1

    .line 135
    invoke-static {v3, v0, v9, v10}, Lsv0;->b(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v9

    const-string v11, "h"

    .line 136
    invoke-static {v3, v0, v11, v10}, Lsv0;->b(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v3

    .line 137
    invoke-interface {v2}, Liu0;->D0()I

    move-result v11

    sub-int/2addr v11, v4

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 138
    invoke-interface {v2}, Liu0;->s0()I

    move-result v2

    sub-int/2addr v2, v8

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :try_start_a
    const-string v3, "player"

    .line 139
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_6

    move v14, v3

    goto :goto_11

    :catch_6
    const/4 v3, 0x0

    const/4 v14, 0x0

    :goto_11
    const-string v3, "spherical"

    .line 140
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    if-eqz v7, :cond_33

    .line 141
    invoke-virtual {v5}, Lxt0;->a()Lcom/google/android/gms/internal/ads/zzbcb;

    move-result-object v3

    if-nez v3, :cond_33

    .line 142
    new-instance v3, Lfu0;

    const-string v7, "flags"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v3, v7}, Lfu0;-><init>(Ljava/lang/String;)V

    .line 143
    iget-object v7, v5, Lxt0;->d:Lcom/google/android/gms/internal/ads/zzbcb;

    if-eqz v7, :cond_31

    goto :goto_12

    .line 144
    :cond_31
    iget-object v7, v5, Lxt0;->b:Liu0;

    .line 145
    invoke-interface {v7}, Liu0;->i()Ll50;

    move-result-object v7

    .line 146
    iget-object v7, v7, Ll50;->b:Lo50;

    .line 147
    iget-object v11, v5, Lxt0;->b:Liu0;

    .line 148
    invoke-interface {v11}, Liu0;->U()Lm50;

    move-result-object v11

    const-string v12, "vpr2"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    .line 149
    invoke-static {v7, v11, v12}, Lc50;->w2(Lo50;Lm50;[Ljava/lang/String;)Z

    .line 150
    new-instance v7, Lcom/google/android/gms/internal/ads/zzbcb;

    iget-object v12, v5, Lxt0;->a:Landroid/content/Context;

    iget-object v13, v5, Lxt0;->b:Liu0;

    .line 151
    invoke-interface {v13}, Liu0;->i()Ll50;

    move-result-object v11

    .line 152
    iget-object v11, v11, Ll50;->b:Lo50;

    move-object/from16 v16, v11

    move-object v11, v7

    move-object/from16 v17, v3

    .line 153
    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzbcb;-><init>(Landroid/content/Context;Liu0;IZLo50;Lfu0;)V

    iput-object v7, v5, Lxt0;->d:Lcom/google/android/gms/internal/ads/zzbcb;

    .line 154
    iget-object v3, v5, Lxt0;->c:Landroid/view/ViewGroup;

    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v11, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v7, v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 155
    iget-object v3, v5, Lxt0;->d:Lcom/google/android/gms/internal/ads/zzbcb;

    invoke-virtual {v3, v4, v8, v9, v2}, Lcom/google/android/gms/internal/ads/zzbcb;->g(IIII)V

    .line 156
    iget-object v2, v5, Lxt0;->b:Liu0;

    invoke-interface {v2, v6}, Liu0;->l0(Z)V

    .line 157
    :goto_12
    invoke-virtual {v5}, Lxt0;->a()Lcom/google/android/gms/internal/ads/zzbcb;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 158
    invoke-static {v2, v0}, Lsv0;->c(Lcom/google/android/gms/internal/ads/zzbcb;Ljava/util/Map;)V

    :cond_32
    return-void

    :cond_33
    const-string v0, "The underlay may only be modified from the UI thread."

    .line 159
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 160
    iget-object v0, v5, Lxt0;->d:Lcom/google/android/gms/internal/ads/zzbcb;

    if-eqz v0, :cond_34

    .line 161
    invoke-virtual {v0, v4, v8, v9, v2}, Lcom/google/android/gms/internal/ads/zzbcb;->g(IIII)V

    :cond_34
    return-void
.end method
