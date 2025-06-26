.class public final Ltp0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/ads/internal/util/zzf;

.field public final b:Lcq0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/util/zzf;Lcq0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ltp0;->a:Lcom/google/android/gms/ads/internal/util/zzf;

    .line 3
    iput-object p2, p0, Ltp0;->b:Lcq0;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 1
    sget-object v0, Ly40;->i0:Lo40;

    .line 2
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 3
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    sget-object v0, Ly40;->j0:Lo40;

    .line 6
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 7
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object p1, p0, Ltp0;->a:Lcom/google/android/gms/ads/internal/util/zzf;

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/internal/util/zzf;->zzdk(I)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Ltp0;->a:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzf;->zzdk(I)V

    .line 11
    :goto_0
    invoke-virtual {p0}, Ltp0;->b()V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    sget-object v0, Ly40;->j0:Lo40;

    .line 2
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 3
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Ltp0;->b:Lcq0;

    .line 6
    iget-object v0, v0, Lcq0;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
