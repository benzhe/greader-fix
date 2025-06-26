.class public final Lkx1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldf1;


# instance fields
.field public e:Z

.field public f:Z

.field public final g:Ljava/lang/String;

.field public final h:Lpp2;

.field public final i:Lcom/google/android/gms/ads/internal/util/zzf;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lpp2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lkx1;->e:Z

    .line 3
    iput-boolean v0, p0, Lkx1;->f:Z

    .line 4
    iput-object p1, p0, Lkx1;->g:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lkx1;->h:Lpp2;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object p1

    invoke-virtual {p1}, Lor0;->f()Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object p1

    iput-object p1, p0, Lkx1;->i:Lcom/google/android/gms/ads/internal/util/zzf;

    return-void
.end method


# virtual methods
.method public final declared-synchronized A()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lkx1;->f:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lkx1;->h:Lpp2;

    const-string v1, "init_finished"

    invoke-virtual {p0, v1}, Lkx1;->a(Ljava/lang/String;)Lqp2;

    move-result-object v1

    invoke-interface {v0, v1}, Lpp2;->b(Lqp2;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lkx1;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;)Lqp2;
    .locals 4

    .line 1
    iget-object v0, p0, Lkx1;->i:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzn()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkx1;->g:Ljava/lang/String;

    .line 2
    :goto_0
    invoke-static {p1}, Lqp2;->c(Ljava/lang/String;)Lqp2;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v1

    invoke-interface {v1}, Lb20;->b()J

    move-result-wide v1

    const/16 v3, 0xa

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p1, Lqp2;->a:Ljava/util/HashMap;

    const-string v3, "tms"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p1, Lqp2;->a:Ljava/util/HashMap;

    const-string v2, "tid"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final m0(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lkx1;->h:Lpp2;

    const-string v1, "adapter_init_started"

    .line 2
    invoke-virtual {p0, v1}, Lkx1;->a(Ljava/lang/String;)Lqp2;

    move-result-object v1

    .line 3
    iget-object v2, v1, Lqp2;->a:Ljava/util/HashMap;

    const-string v3, "ancn"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {v0, v1}, Lpp2;->b(Lqp2;)V

    return-void
.end method

.method public final r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lkx1;->h:Lpp2;

    const-string v1, "adapter_init_finished"

    .line 2
    invoke-virtual {p0, v1}, Lkx1;->a(Ljava/lang/String;)Lqp2;

    move-result-object v1

    .line 3
    iget-object v2, v1, Lqp2;->a:Ljava/util/HashMap;

    const-string v3, "ancn"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, v1, Lqp2;->a:Ljava/util/HashMap;

    const-string v2, "rqe"

    invoke-virtual {p1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {v0, v1}, Lpp2;->b(Lqp2;)V

    return-void
.end method

.method public final declared-synchronized s()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lkx1;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lkx1;->h:Lpp2;

    const-string v1, "init_started"

    invoke-virtual {p0, v1}, Lkx1;->a(Ljava/lang/String;)Lqp2;

    move-result-object v1

    invoke-interface {v0, v1}, Lpp2;->b(Lqp2;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lkx1;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final s0(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lkx1;->h:Lpp2;

    const-string v1, "adapter_init_finished"

    .line 2
    invoke-virtual {p0, v1}, Lkx1;->a(Ljava/lang/String;)Lqp2;

    move-result-object v1

    .line 3
    iget-object v2, v1, Lqp2;->a:Ljava/util/HashMap;

    const-string v3, "ancn"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {v0, v1}, Lpp2;->b(Lqp2;)V

    return-void
.end method
