.class public final synthetic Lw92;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnd2;


# instance fields
.field public final a:Lt92;

.field public final b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lt92;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw92;->a:Lt92;

    iput-object p2, p0, Lw92;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lw92;->a:Lt92;

    iget-object v1, p0, Lw92;->b:Landroid/os/Bundle;

    check-cast p1, Landroid/os/Bundle;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v2, Ly40;->k3:Lo40;

    .line 3
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->f:Lu40;

    .line 4
    invoke-virtual {v3, v2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "quality_signals"

    .line 6
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 7
    :cond_0
    sget-object v1, Ly40;->j3:Lo40;

    .line 8
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 9
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    sget-object v1, Lt92;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v2, v0, Lt92;->c:Lt71;

    iget-object v3, v0, Lt92;->e:Lll2;

    iget-object v3, v3, Lll2;->d:Lcom/google/android/gms/internal/ads/zzvq;

    invoke-virtual {v2, v3}, Lt71;->d(Lcom/google/android/gms/internal/ads/zzvq;)V

    const-string v2, "quality_signals"

    .line 13
    iget-object v3, v0, Lt92;->d:Lgm2;

    invoke-virtual {v3}, Lgm2;->a()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 14
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 15
    :cond_1
    iget-object v1, v0, Lt92;->c:Lt71;

    iget-object v2, v0, Lt92;->e:Lll2;

    iget-object v2, v2, Lll2;->d:Lcom/google/android/gms/internal/ads/zzvq;

    invoke-virtual {v1, v2}, Lt71;->d(Lcom/google/android/gms/internal/ads/zzvq;)V

    const-string v1, "quality_signals"

    .line 16
    iget-object v2, v0, Lt92;->d:Lgm2;

    invoke-virtual {v2}, Lgm2;->a()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    const-string v1, "seq_num"

    .line 17
    iget-object v2, v0, Lt92;->a:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v1, v0, Lt92;->f:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzn()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, ""

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lt92;->b:Ljava/lang/String;

    :goto_1
    const-string v1, "session_id"

    .line 19
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
