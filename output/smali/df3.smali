.class public final Ldf3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/gms/internal/ads/zzht;

.field public final synthetic f:Lye3;


# direct methods
.method public constructor <init>(Lye3;Lcom/google/android/gms/internal/ads/zzht;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldf3;->f:Lye3;

    iput-object p2, p0, Ldf3;->e:Lcom/google/android/gms/internal/ads/zzht;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Ldf3;->f:Lye3;

    .line 2
    iget-object v0, v0, Lye3;->b:Lze3;

    .line 3
    iget-object v1, p0, Ldf3;->e:Lcom/google/android/gms/internal/ads/zzht;

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
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzht;->i:Ljava/lang/String;

    const-string v4, "audioMime"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzht;->j:Ljava/lang/String;

    const-string v4, "audioSampleMime"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzht;->g:Ljava/lang/String;

    const-string v3, "audioCodec"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onMetadataEvent"

    .line 13
    invoke-interface {v0, v1, v2}, Lod0;->x(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
