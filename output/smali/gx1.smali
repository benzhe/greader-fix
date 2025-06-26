.class public final Lgx1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha1;
.implements Lva1;
.implements Lid1;
.implements Ler3;


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Lvl2;

.field public final g:Lhl2;

.field public final h:Lsk2;

.field public final i:Lsy1;

.field public j:Ljava/lang/Boolean;

.field public final k:Z

.field public final l:Lpp2;

.field public final m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lvl2;Lhl2;Lsk2;Lsy1;Lpp2;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lgx1;->e:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lgx1;->f:Lvl2;

    .line 4
    iput-object p3, p0, Lgx1;->g:Lhl2;

    .line 5
    iput-object p4, p0, Lgx1;->h:Lsk2;

    .line 6
    iput-object p5, p0, Lgx1;->i:Lsy1;

    .line 7
    sget-object p1, Ly40;->n4:Lo40;

    .line 8
    sget-object p2, Los3;->j:Los3;

    iget-object p2, p2, Los3;->f:Lu40;

    .line 9
    invoke-virtual {p2, p1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lgx1;->k:Z

    .line 11
    iput-object p6, p0, Lgx1;->l:Lpp2;

    .line 12
    iput-object p7, p0, Lgx1;->m:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final B0()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lgx1;->k:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lgx1;->l:Lpp2;

    const-string v1, "ifts"

    .line 3
    invoke-virtual {p0, v1}, Lgx1;->x(Ljava/lang/String;)Lqp2;

    move-result-object v1

    .line 4
    iget-object v2, v1, Lqp2;->a:Ljava/util/HashMap;

    const-string v3, "reason"

    const-string v4, "blocked"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {v0, v1}, Lpp2;->b(Lqp2;)V

    return-void
.end method

.method public final V(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lgx1;->k:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzvh;->e:I

    .line 3
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzvh;->f:Ljava/lang/String;

    .line 4
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzvh;->g:Ljava/lang/String;

    const-string v3, "com.google.android.gms.ads"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzvh;->h:Lcom/google/android/gms/internal/ads/zzvh;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzvh;->g:Ljava/lang/String;

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzvh;->h:Lcom/google/android/gms/internal/ads/zzvh;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzvh;->e:I

    .line 7
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzvh;->f:Ljava/lang/String;

    .line 8
    :cond_1
    iget-object p1, p0, Lgx1;->f:Lvl2;

    invoke-virtual {p1, v1}, Lvl2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ifts"

    .line 9
    invoke-virtual {p0, v1}, Lgx1;->x(Ljava/lang/String;)Lqp2;

    move-result-object v1

    .line 10
    iget-object v2, v1, Lqp2;->a:Ljava/util/HashMap;

    const-string v3, "reason"

    const-string v4, "adapter"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz v0, :cond_2

    .line 11
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 12
    iget-object v2, v1, Lqp2;->a:Ljava/util/HashMap;

    const-string v3, "arec"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p1, :cond_3

    .line 13
    iget-object v0, v1, Lqp2;->a:Ljava/util/HashMap;

    const-string v2, "areec"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_3
    iget-object p1, p0, Lgx1;->l:Lpp2;

    invoke-interface {p1, v1}, Lpp2;->b(Lqp2;)V

    return-void
.end method

.method public final a0(Lvh1;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lgx1;->k:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ifts"

    .line 2
    invoke-virtual {p0, v0}, Lgx1;->x(Ljava/lang/String;)Lqp2;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lqp2;->a:Ljava/util/HashMap;

    const-string v2, "reason"

    const-string v3, "exception"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v1, v0, Lqp2;->a:Ljava/util/HashMap;

    const-string v2, "msg"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_1
    iget-object p1, p0, Lgx1;->l:Lpp2;

    invoke-interface {p1, v0}, Lpp2;->b(Lqp2;)V

    return-void
.end method

.method public final d(Lqp2;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lgx1;->h:Lsk2;

    iget-boolean v0, v0, Lsk2;->d0:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lgx1;->l:Lpp2;

    invoke-interface {v0, p1}, Lpp2;->a(Lqp2;)Ljava/lang/String;

    move-result-object v5

    .line 3
    new-instance p1, Lzy1;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v0

    invoke-interface {v0}, Lb20;->a()J

    move-result-wide v2

    iget-object v0, p0, Lgx1;->g:Lhl2;

    iget-object v0, v0, Lhl2;->b:Lfl2;

    iget-object v0, v0, Lfl2;->b:Lwk2;

    iget-object v4, v0, Lwk2;->b:Ljava/lang/String;

    const/4 v6, 0x2

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lzy1;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    .line 5
    iget-object v0, p0, Lgx1;->i:Lsy1;

    .line 6
    new-instance v1, Lyy1;

    invoke-direct {v1, v0, p1}, Lyy1;-><init>(Lsy1;Lzy1;)V

    invoke-virtual {v0, v1}, Lsy1;->c(Ljo2;)V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lgx1;->l:Lpp2;

    invoke-interface {v0, p1}, Lpp2;->b(Lqp2;)V

    return-void
.end method

.method public final onAdClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgx1;->h:Lsk2;

    iget-boolean v0, v0, Lsk2;->d0:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "click"

    .line 2
    invoke-virtual {p0, v0}, Lgx1;->x(Ljava/lang/String;)Lqp2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgx1;->d(Lqp2;)V

    return-void
.end method

.method public final onAdImpression()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lgx1;->t()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgx1;->h:Lsk2;

    iget-boolean v0, v0, Lsk2;->d0:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "impression"

    .line 2
    invoke-virtual {p0, v0}, Lgx1;->x(Ljava/lang/String;)Lqp2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgx1;->d(Lqp2;)V

    return-void
.end method

.method public final r()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lgx1;->t()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lgx1;->l:Lpp2;

    const-string v1, "adapter_impression"

    invoke-virtual {p0, v1}, Lgx1;->x(Ljava/lang/String;)Lqp2;

    move-result-object v1

    invoke-interface {v0, v1}, Lpp2;->b(Lqp2;)V

    return-void
.end method

.method public final s()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lgx1;->t()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lgx1;->l:Lpp2;

    const-string v1, "adapter_shown"

    invoke-virtual {p0, v1}, Lgx1;->x(Ljava/lang/String;)Lqp2;

    move-result-object v1

    invoke-interface {v0, v1}, Lpp2;->b(Lqp2;)V

    return-void
.end method

.method public final t()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lgx1;->j:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lgx1;->j:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 4
    sget-object v0, Ly40;->Z0:Lo40;

    .line 5
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 6
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v1, p0, Lgx1;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzj;->zzbb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    :try_start_1
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v1

    .line 11
    iget-object v3, v1, Lor0;->e:Landroid/content/Context;

    iget-object v1, v1, Lor0;->f:Lcom/google/android/gms/internal/ads/zzbar;

    invoke-static {v3, v1}, Lxl0;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)Lbm0;

    move-result-object v1

    const-string v3, "CsiActionsListener.isPatternMatched"

    .line 12
    invoke-interface {v1, v0, v3}, Lbm0;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 13
    :cond_1
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lgx1;->j:Ljava/lang/Boolean;

    .line 14
    :cond_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 15
    :cond_3
    :goto_1
    iget-object v0, p0, Lgx1;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final x(Ljava/lang/String;)Lqp2;
    .locals 3

    .line 1
    invoke-static {p1}, Lqp2;->c(Ljava/lang/String;)Lqp2;

    move-result-object p1

    iget-object v0, p0, Lgx1;->g:Lhl2;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Lqp2;->a(Lhl2;Lxr0;)Lqp2;

    .line 3
    iget-object v0, p0, Lgx1;->h:Lsk2;

    .line 4
    iget-object v1, p1, Lqp2;->a:Ljava/util/HashMap;

    iget-object v0, v0, Lsk2;->v:Ljava/lang/String;

    const-string v2, "aai"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lgx1;->m:Ljava/lang/String;

    .line 6
    iget-object v1, p1, Lqp2;->a:Ljava/util/HashMap;

    const-string v2, "request_id"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lgx1;->h:Lsk2;

    iget-object v0, v0, Lsk2;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lgx1;->h:Lsk2;

    iget-object v0, v0, Lsk2;->s:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 9
    iget-object v1, p1, Lqp2;->a:Ljava/util/HashMap;

    const-string v2, "ancn"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_0
    iget-object v0, p0, Lgx1;->h:Lsk2;

    iget-boolean v0, v0, Lsk2;->d0:Z

    if-eqz v0, :cond_2

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v0, p0, Lgx1;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzbd(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "online"

    goto :goto_0

    :cond_1
    const-string v0, "offline"

    .line 12
    :goto_0
    iget-object v1, p1, Lqp2;->a:Ljava/util/HashMap;

    const-string v2, "device_connectivity"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v0

    invoke-interface {v0}, Lb20;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 14
    iget-object v1, p1, Lqp2;->a:Ljava/util/HashMap;

    const-string v2, "event_timestamp"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p1, Lqp2;->a:Ljava/util/HashMap;

    const-string v1, "offline_ad"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p1
.end method
