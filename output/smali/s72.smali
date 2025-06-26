.class public final synthetic Ls72;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# instance fields
.field public final a:Ll72;

.field public final b:[Lio1;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ll72;[Lio1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls72;->a:Ll72;

    iput-object p2, p0, Ls72;->b:[Lio1;

    iput-object p3, p0, Ls72;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 8

    iget-object v0, p0, Ls72;->a:Ll72;

    iget-object v1, p0, Ls72;->b:[Lio1;

    iget-object v2, p0, Ls72;->c:Ljava/lang/String;

    check-cast p1, Lio1;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    .line 2
    aput-object p1, v1, v3

    .line 3
    iget-object v1, v0, Ll72;->g:Landroid/content/Context;

    iget-object v3, v0, Ll72;->m:Lcom/google/android/gms/internal/ads/zzatj;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzatj;->f:Ljava/util/Map;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzatj;->e:Landroid/view/View;

    .line 4
    invoke-static {v1, v4, v4, v3}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v1

    .line 5
    iget-object v3, v0, Ll72;->g:Landroid/content/Context;

    iget-object v4, v0, Ll72;->m:Lcom/google/android/gms/internal/ads/zzatj;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzatj;->e:Landroid/view/View;

    invoke-static {v3, v4}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    .line 6
    iget-object v4, v0, Ll72;->m:Lcom/google/android/gms/internal/ads/zzatj;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzatj;->e:Landroid/view/View;

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/zzbn;->zzt(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v4

    .line 7
    iget-object v5, v0, Ll72;->g:Landroid/content/Context;

    iget-object v6, v0, Ll72;->m:Lcom/google/android/gms/internal/ads/zzatj;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzatj;->e:Landroid/view/View;

    .line 8
    invoke-static {v5, v6}, Lcom/google/android/gms/ads/internal/util/zzbn;->zzb(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v5

    .line 9
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "asset_view_signal"

    .line 10
    invoke-virtual {v6, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ad_view_signal"

    .line 11
    invoke-virtual {v6, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "scroll_view_signal"

    .line 12
    invoke-virtual {v6, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "lock_screen_signal"

    .line 13
    invoke-virtual {v6, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "google.afma.nativeAds.getPublisherCustomRenderedClickSignals"

    if-ne v2, v1, :cond_0

    const/4 v1, 0x0

    .line 14
    iget-object v3, v0, Ll72;->g:Landroid/content/Context;

    iget-object v4, v0, Ll72;->o:Landroid/graphics/Point;

    iget-object v0, v0, Ll72;->n:Landroid/graphics/Point;

    .line 15
    invoke-static {v1, v3, v4, v0}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Ljava/lang/String;Landroid/content/Context;Landroid/graphics/Point;Landroid/graphics/Point;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "click_signal"

    .line 16
    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    :cond_0
    invoke-virtual {p1, v2, v6}, Lio1;->e(Ljava/lang/String;Lorg/json/JSONObject;)Law2;

    move-result-object p1

    return-object p1
.end method
