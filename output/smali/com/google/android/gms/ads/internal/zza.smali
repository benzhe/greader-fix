.class public final Lcom/google/android/gms/ads/internal/zza;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Z

.field public c:Lnp0;

.field public d:Lcom/google/android/gms/internal/ads/zzatu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnp0;Lcom/google/android/gms/internal/ads/zzatu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zza;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zza;->c:Lnp0;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zza;->d:Lcom/google/android/gms/internal/ads/zzatu;

    if-nez p1, :cond_0

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzatu;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzatu;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zza;->d:Lcom/google/android/gms/internal/ads/zzatu;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->c:Lnp0;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lnp0;->g()Lcom/google/android/gms/internal/ads/zzaxn;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzaxn;->j:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->d:Lcom/google/android/gms/internal/ads/zzatu;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzatu;->e:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final recordClick()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zza;->b:Z

    return-void
.end method

.method public final zzbk(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zza;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, ""

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->c:Lnp0;

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    const/4 v2, 0x3

    .line 3
    invoke-interface {v1, p1, v0, v2}, Lnp0;->c(Ljava/lang/String;Ljava/util/Map;I)V

    return-void

    .line 4
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->d:Lcom/google/android/gms/internal/ads/zzatu;

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzatu;->e:Z

    if-eqz v2, :cond_4

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzatu;->f:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 7
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "{NAVIGATION_URL}"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zza;->a:Landroid/content/Context;

    invoke-static {v3, v0, v2}, Lcom/google/android/gms/ads/internal/util/zzj;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final zzkc()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zza;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zza;->b:Z

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
