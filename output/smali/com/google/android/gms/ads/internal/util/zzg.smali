.class public final Lcom/google/android/gms/ads/internal/util/zzg;
.super Lms2;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lms2;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Message;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lms2;->a(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lor0;->e:Landroid/content/Context;

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzj;->zza(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 5
    throw p1
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lor0;->e:Landroid/content/Context;

    iget-object v0, v0, Lor0;->f:Lcom/google/android/gms/internal/ads/zzbar;

    invoke-static {v1, v0}, Lxl0;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)Lbm0;

    move-result-object v0

    const-string v1, "AdMobHandler.handleMessage"

    .line 4
    invoke-interface {v0, p1, v1}, Lbm0;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
