.class public final Lcf0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public c:Lhf0;

.field public d:Lhf0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcf0;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcf0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)Lhf0;
    .locals 3

    .line 1
    iget-object v0, p0, Lcf0;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcf0;->d:Lhf0;

    if-nez v1, :cond_1

    .line 3
    new-instance v1, Lhf0;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v2

    .line 5
    :goto_0
    sget-object v2, Lz60;->a:Le60;

    .line 6
    invoke-virtual {v2}, Le60;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lhf0;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;Ljava/lang/String;)V

    iput-object v1, p0, Lcf0;->d:Lhf0;

    .line 7
    :cond_1
    iget-object p1, p0, Lcf0;->d:Lhf0;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)Lhf0;
    .locals 4

    .line 1
    iget-object v0, p0, Lcf0;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcf0;->c:Lhf0;

    if-nez v1, :cond_1

    .line 3
    new-instance v1, Lhf0;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v2

    .line 5
    :goto_0
    sget-object v2, Ly40;->a:Lo40;

    .line 6
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->f:Lu40;

    .line 7
    invoke-virtual {v3, v2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lhf0;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;Ljava/lang/String;)V

    iput-object v1, p0, Lcf0;->c:Lhf0;

    .line 9
    :cond_1
    iget-object p1, p0, Lcf0;->c:Lhf0;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
