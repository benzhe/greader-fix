.class public final Lwl3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/gms/internal/ads/zzht;

.field public final synthetic f:Lrl3;


# direct methods
.method public constructor <init>(Lrl3;Lcom/google/android/gms/internal/ads/zzht;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwl3;->f:Lrl3;

    iput-object p2, p0, Lwl3;->e:Lcom/google/android/gms/internal/ads/zzht;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lwl3;->f:Lrl3;

    .line 2
    iget-object v0, v0, Lrl3;->b:Lsl3;

    .line 3
    iget-object v1, p0, Lwl3;->e:Lcom/google/android/gms/internal/ads/zzht;

    check-cast v0, Lcv0;

    .line 4
    iget-object v0, v0, Lcv0;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liu0;

    .line 5
    sget-object v2, Ly40;->l1:Lo40;

    .line 6
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->f:Lu40;

    .line 7
    invoke-virtual {v3, v2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 9
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 10
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzht;->p:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const-string v4, "frameRate"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzht;->f:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "bitRate"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzht;->n:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzht;->o:I

    const/16 v5, 0x17

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "resolution"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzht;->i:Ljava/lang/String;

    const-string v4, "videoMime"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzht;->j:Ljava/lang/String;

    const-string v4, "videoSampleMime"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzht;->g:Ljava/lang/String;

    const-string v3, "videoCodec"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onMetadataEvent"

    .line 16
    invoke-interface {v0, v1, v2}, Lod0;->x(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
