.class public final Lyd0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/google/android/gms/internal/ads/zzbar;

.field public e:Lcom/google/android/gms/ads/internal/util/zzar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/util/zzar<",
            "Lpd0;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lcom/google/android/gms/ads/internal/util/zzar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/util/zzar<",
            "Lpd0;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lse0;

.field public h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/zzar;Lcom/google/android/gms/ads/internal/util/zzar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzbar;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/util/zzar<",
            "Lpd0;",
            ">;",
            "Lcom/google/android/gms/ads/internal/util/zzar<",
            "Lpd0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyd0;->a:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lyd0;->h:I

    .line 4
    iput-object p3, p0, Lyd0;->c:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lyd0;->b:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lyd0;->d:Lcom/google/android/gms/internal/ads/zzbar;

    .line 7
    new-instance p1, Lme0;

    invoke-direct {p1}, Lme0;-><init>()V

    iput-object p1, p0, Lyd0;->e:Lcom/google/android/gms/ads/internal/util/zzar;

    .line 8
    new-instance p1, Lme0;

    invoke-direct {p1}, Lme0;-><init>()V

    iput-object p1, p0, Lyd0;->f:Lcom/google/android/gms/ads/internal/util/zzar;

    .line 9
    iput-object p4, p0, Lyd0;->e:Lcom/google/android/gms/ads/internal/util/zzar;

    .line 10
    iput-object p5, p0, Lyd0;->f:Lcom/google/android/gms/ads/internal/util/zzar;

    return-void
.end method


# virtual methods
.method public final a(Ld23;)Lse0;
    .locals 3

    .line 1
    new-instance v0, Lse0;

    iget-object v1, p0, Lyd0;->f:Lcom/google/android/gms/ads/internal/util/zzar;

    invoke-direct {v0, v1}, Lse0;-><init>(Lcom/google/android/gms/ads/internal/util/zzar;)V

    .line 2
    sget-object v1, Lms0;->e:Lzv2;

    new-instance v2, Lbe0;

    invoke-direct {v2, p0, p1, v0}, Lbe0;-><init>(Lyd0;Ld23;Lse0;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 3
    new-instance p1, Lle0;

    invoke-direct {p1, p0, v0}, Lle0;-><init>(Lyd0;Lse0;)V

    new-instance v1, Lke0;

    invoke-direct {v1, p0, v0}, Lke0;-><init>(Lyd0;Lse0;)V

    invoke-virtual {v0, p1, v1}, Lat0;->c(Lbt0;Lzs0;)V

    return-object v0
.end method

.method public final b()Loe0;
    .locals 5

    .line 1
    iget-object v0, p0, Lyd0;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lyd0;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v2, p0, Lyd0;->g:Lse0;

    if-eqz v2, :cond_0

    iget v3, p0, Lyd0;->h:I

    if-nez v3, :cond_0

    .line 4
    new-instance v3, Lae0;

    invoke-direct {v3, p0}, Lae0;-><init>(Lyd0;)V

    sget-object v4, Lde0;->a:Lzs0;

    invoke-virtual {v2, v3, v4}, Lat0;->c(Lbt0;Lzs0;)V

    .line 5
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    iget-object v1, p0, Lyd0;->g:Lse0;

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v1, :cond_5

    .line 7
    invoke-virtual {v1}, Lat0;->a()I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget v1, p0, Lyd0;->h:I

    if-nez v1, :cond_2

    .line 9
    iget-object v1, p0, Lyd0;->g:Lse0;

    invoke-virtual {v1}, Lse0;->d()Loe0;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_2
    const/4 v4, 0x1

    if-ne v1, v4, :cond_3

    .line 10
    iput v3, p0, Lyd0;->h:I

    .line 11
    invoke-virtual {p0, v2}, Lyd0;->a(Ld23;)Lse0;

    .line 12
    iget-object v1, p0, Lyd0;->g:Lse0;

    invoke-virtual {v1}, Lse0;->d()Loe0;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_3
    if-ne v1, v3, :cond_4

    .line 13
    iget-object v1, p0, Lyd0;->g:Lse0;

    invoke-virtual {v1}, Lse0;->d()Loe0;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 14
    :cond_4
    iget-object v1, p0, Lyd0;->g:Lse0;

    invoke-virtual {v1}, Lse0;->d()Loe0;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 15
    :cond_5
    :goto_0
    iput v3, p0, Lyd0;->h:I

    .line 16
    invoke-virtual {p0, v2}, Lyd0;->a(Ld23;)Lse0;

    move-result-object v1

    iput-object v1, p0, Lyd0;->g:Lse0;

    .line 17
    invoke-virtual {v1}, Lse0;->d()Loe0;

    move-result-object v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v1

    :catchall_0
    move-exception v2

    .line 18
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :catchall_1
    move-exception v1

    .line 19
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
