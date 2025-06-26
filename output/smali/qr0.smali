.class public final Lqr0;
.super Lcom/google/android/gms/ads/internal/util/zza;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lor0;


# direct methods
.method public constructor <init>(Lor0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqr0;->b:Lor0;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzwp()V
    .locals 3

    .line 1
    new-instance v0, Lb50;

    iget-object v1, p0, Lqr0;->b:Lor0;

    .line 2
    iget-object v2, v1, Lor0;->e:Landroid/content/Context;

    .line 3
    iget-object v1, v1, Lor0;->f:Lcom/google/android/gms/internal/ads/zzbar;

    .line 4
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbar;->e:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lb50;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lqr0;->b:Lor0;

    .line 6
    iget-object v1, v1, Lor0;->a:Ljava/lang/Object;

    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzle()Lf50;

    iget-object v2, p0, Lqr0;->b:Lor0;

    .line 9
    iget-object v2, v2, Lor0;->g:Le50;

    .line 10
    invoke-static {v2, v0}, Lf50;->a(Le50;Lb50;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "Cannot config CSI reporter."

    .line 11
    invoke-static {v2, v0}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
