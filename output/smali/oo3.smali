.class public final Loo3;
.super Lcom/google/android/gms/ads/internal/zzc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/ads/internal/zzc<",
        "Lso3;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Li00$a;Li00$b;)V
    .locals 6

    .line 1
    invoke-static {p1}, Len0;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    const/16 v3, 0x7b

    move-object v0, p0

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/zzc;-><init>(Landroid/content/Context;Landroid/os/Looper;ILi00$a;Li00$b;)V

    return-void
.end method


# virtual methods
.method public final synthetic b(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.cache.ICacheService"

    .line 1
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lso3;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lso3;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lro3;

    invoke-direct {v0, p1}, Lro3;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.cache.ICacheService"

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.ads.service.CACHE"

    return-object v0
.end method

.method public final getApiFeatures()[Lcom/google/android/gms/common/Feature;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/zzb;->zzadq:[Lcom/google/android/gms/common/Feature;

    return-object v0
.end method

.method public final p()Lso3;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Li00;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lso3;

    return-object v0
.end method

.method public final q()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Li00;->getAvailableFeatures()[Lcom/google/android/gms/common/Feature;

    move-result-object v0

    .line 2
    sget-object v1, Ly40;->l1:Lo40;

    .line 3
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 4
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/ads/zzb;->zzadp:Lcom/google/android/gms/common/Feature;

    .line 6
    invoke-static {v0, v1}, Lbi;->n([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
