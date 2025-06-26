.class public final Lyw;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/util/zzj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    sget-object p2, Lds0;->b:Ljava/lang/Object;

    monitor-enter p2

    const/4 v0, 0x0

    .line 2
    :try_start_0
    sput-boolean v0, Lds0;->c:Z

    .line 3
    sput-boolean v0, Lds0;->d:Z

    const-string v0, "Ad debug logging enablement is out of date."

    .line 4
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    .line 5
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzb;->zzam(Landroid/content/Context;)V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
