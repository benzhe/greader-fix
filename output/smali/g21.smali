.class public final Lg21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lca1;
.implements Lra1;
.implements Lva1;
.implements Lob1;
.implements Ler3;


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Ljava/util/concurrent/Executor;

.field public final g:Ljava/util/concurrent/ScheduledExecutorService;

.field public final h:Lhl2;

.field public final i:Lsk2;

.field public final j:Lhq2;

.field public final k:Lrl2;

.field public final l:Ld23;

.field public final m:Lb60;

.field public final n:Lc60;

.field public final o:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public p:Z

.field public q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lhl2;Lsk2;Lhq2;Lrl2;Landroid/view/View;Ld23;Lb60;Lc60;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg21;->e:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lg21;->f:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lg21;->g:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    iput-object p4, p0, Lg21;->h:Lhl2;

    .line 6
    iput-object p5, p0, Lg21;->i:Lsk2;

    .line 7
    iput-object p6, p0, Lg21;->j:Lhq2;

    .line 8
    iput-object p7, p0, Lg21;->k:Lrl2;

    .line 9
    iput-object p9, p0, Lg21;->l:Ld23;

    .line 10
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lg21;->o:Ljava/lang/ref/WeakReference;

    .line 11
    iput-object p10, p0, Lg21;->m:Lb60;

    .line 12
    iput-object p11, p0, Lg21;->n:Lc60;

    return-void
.end method


# virtual methods
.method public final O(Lgn0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object p2, p0, Lg21;->k:Lrl2;

    iget-object p3, p0, Lg21;->j:Lhq2;

    iget-object v0, p0, Lg21;->i:Lsk2;

    iget-object v1, v0, Lsk2;->h:Ljava/util/List;

    .line 2
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v3, p3, Lhq2;->g:Lb20;

    invoke-interface {v3}, Lb20;->a()J

    move-result-wide v3

    .line 5
    :try_start_0
    invoke-interface {p1}, Lgn0;->getType()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-interface {p1}, Lgn0;->getAmount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    iget-object v6, p3, Lhq2;->f:Lgl2;

    const-string v7, ""

    const-string v8, "fakeForAdDebugLog"

    if-nez v6, :cond_0

    move-object v6, v7

    goto :goto_0

    :cond_0
    iget-object v6, v6, Lgl2;->a:Ljava/lang/String;

    .line 8
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {}, Lds0;->a()Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v6, v8

    .line 9
    :cond_1
    :goto_0
    iget-object v9, p3, Lhq2;->f:Lgl2;

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    iget-object v7, v9, Lgl2;->b:Ljava/lang/String;

    .line 10
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {}, Lds0;->a()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v7, v8

    .line 11
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 12
    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "@gw_rwd_userid@"

    invoke-static {v8, v10, v9}, Lhq2;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 13
    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "@gw_rwd_custom_data@"

    invoke-static {v8, v10, v9}, Lhq2;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 14
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    const-string v10, "@gw_tmstmp@"

    invoke-static {v8, v10, v9}, Lhq2;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 15
    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "@gw_rwd_itm@"

    invoke-static {v8, v10, v9}, Lhq2;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "@gw_rwd_amt@"

    .line 16
    invoke-static {v8, v9, p1}, Lhq2;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 17
    iget-object v9, p3, Lhq2;->b:Ljava/lang/String;

    const-string v10, "@gw_sdkver@"

    invoke-static {v8, v10, v9}, Lhq2;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 18
    iget-object v9, p3, Lhq2;->e:Landroid/content/Context;

    iget-boolean v10, v0, Lsk2;->Q:Z

    invoke-static {v8, v9, v10}, Lc50;->A3(Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v8

    .line 19
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p3, "Unable to determine award type and amount."

    .line 20
    invoke-static {p3, p1}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    :cond_4
    invoke-virtual {p2, v2}, Lrl2;->c(Ljava/util/List;)V

    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 5

    .line 1
    sget-object v0, Ly40;->a1:Lo40;

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

    if-eqz v0, :cond_1

    .line 5
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzvh;->e:I

    iget-object v0, p0, Lg21;->i:Lsk2;

    iget-object v0, v0, Lsk2;->n:Ljava/util/List;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x17

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x2

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "@gw_mpe@"

    .line 9
    invoke-static {v2, v4, v3}, Lhq2;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lg21;->k:Lrl2;

    iget-object v0, p0, Lg21;->j:Lhq2;

    iget-object v2, p0, Lg21;->h:Lhl2;

    iget-object v3, p0, Lg21;->i:Lsk2;

    .line 12
    invoke-virtual {v0, v2, v3, v1}, Lhq2;->a(Lhl2;Lsk2;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Lrl2;->c(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public final onAdClicked()V
    .locals 6

    .line 1
    sget-object v0, Ly40;->g0:Lo40;

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

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg21;->h:Lhl2;

    iget-object v0, v0, Lhl2;->b:Lfl2;

    iget-object v0, v0, Lfl2;->b:Lwk2;

    iget-boolean v0, v0, Lwk2;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 5
    sget-object v0, Lo60;->a:Le60;

    .line 6
    invoke-virtual {v0}, Le60;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lg21;->n:Lc60;

    iget-object v1, p0, Lg21;->e:Landroid/content/Context;

    iget-object v2, p0, Lg21;->m:Lb60;

    .line 8
    iget-object v3, v2, Lb60;->a:Landroid/view/MotionEvent;

    .line 9
    iget-object v2, v2, Lb60;->b:Landroid/view/MotionEvent;

    .line 10
    invoke-interface {v0, v1, v3, v2}, Lc60;->b(Landroid/content/Context;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Law2;

    move-result-object v0

    .line 11
    invoke-static {v0}, Lnv2;->A(Law2;)Lnv2;

    move-result-object v0

    sget-object v1, Ly40;->E0:Lo40;

    .line 12
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 13
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 14
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lg21;->g:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1, v2, v3, v4}, Lnv2;->x(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lnv2;

    move-result-object v0

    .line 15
    new-instance v1, Lf21;

    invoke-direct {v1, p0}, Lf21;-><init>(Lg21;)V

    iget-object v2, p0, Lg21;->f:Ljava/util/concurrent/Executor;

    .line 16
    new-instance v3, Lsv2;

    invoke-direct {v3, v0, v1}, Lsv2;-><init>(Ljava/util/concurrent/Future;Lrv2;)V

    invoke-interface {v0, v3, v2}, Law2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    .line 17
    :cond_2
    :goto_1
    iget-object v0, p0, Lg21;->k:Lrl2;

    iget-object v2, p0, Lg21;->j:Lhq2;

    iget-object v3, p0, Lg21;->h:Lhl2;

    iget-object v4, p0, Lg21;->i:Lsk2;

    iget-object v5, v4, Lsk2;->c:Ljava/util/List;

    .line 18
    invoke-virtual {v2, v3, v4, v5}, Lhq2;->a(Lhl2;Lsk2;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v3, p0, Lg21;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzj;->zzbd(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x2

    .line 20
    :cond_3
    invoke-virtual {v0, v2, v1}, Lrl2;->a(Ljava/util/List;I)V

    return-void
.end method

.method public final onAdClosed()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized onAdImpression()V
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lg21;->q:Z

    if-nez v0, :cond_4

    .line 2
    sget-object v0, Ly40;->N1:Lo40;

    .line 3
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 4
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lg21;->l:Ld23;

    .line 7
    iget-object v0, v0, Ld23;->b:Lws2;

    .line 8
    iget-object v2, p0, Lg21;->e:Landroid/content/Context;

    iget-object v3, p0, Lg21;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-interface {v0, v2, v3, v1}, Lws2;->zza(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    move-object v5, v1

    .line 9
    sget-object v0, Ly40;->g0:Lo40;

    .line 10
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 11
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v8, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg21;->h:Lhl2;

    iget-object v0, v0, Lhl2;->b:Lfl2;

    iget-object v0, v0, Lfl2;->b:Lwk2;

    iget-boolean v0, v0, Lwk2;->g:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 13
    sget-object v0, Lo60;->b:Le60;

    .line 14
    invoke-virtual {v0}, Le60;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 15
    :cond_2
    iget-object v0, p0, Lg21;->n:Lc60;

    iget-object v1, p0, Lg21;->e:Landroid/content/Context;

    invoke-interface {v0, v1}, Lc60;->a(Landroid/content/Context;)Law2;

    move-result-object v0

    .line 16
    invoke-static {v0}, Lnv2;->A(Law2;)Lnv2;

    move-result-object v0

    sget-object v1, Ly40;->E0:Lo40;

    .line 17
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 18
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lg21;->g:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1, v2, v3, v4}, Lnv2;->x(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lnv2;

    move-result-object v0

    .line 20
    new-instance v1, Lj21;

    invoke-direct {v1, p0, v5}, Lj21;-><init>(Lg21;Ljava/lang/String;)V

    iget-object v2, p0, Lg21;->f:Ljava/util/concurrent/Executor;

    .line 21
    new-instance v3, Lsv2;

    invoke-direct {v3, v0, v1}, Lsv2;-><init>(Ljava/util/concurrent/Future;Lrv2;)V

    invoke-interface {v0, v3, v2}, Law2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 22
    iput-boolean v8, p0, Lg21;->q:Z

    goto :goto_2

    .line 23
    :cond_3
    :goto_1
    iget-object v0, p0, Lg21;->k:Lrl2;

    iget-object v1, p0, Lg21;->j:Lhq2;

    iget-object v2, p0, Lg21;->h:Lhl2;

    iget-object v3, p0, Lg21;->i:Lsk2;

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-object v7, v3, Lsk2;->d:Ljava/util/List;

    .line 24
    invoke-virtual/range {v1 .. v7}, Lhq2;->b(Lhl2;Lsk2;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lrl2;->c(Ljava/util/List;)V

    .line 26
    iput-boolean v8, p0, Lg21;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    .line 28
    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onAdLeftApplication()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized onAdLoaded()V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lg21;->p:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, p0, Lg21;->i:Lsk2;

    iget-object v0, v0, Lsk2;->d:Ljava/util/List;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    iget-object v0, p0, Lg21;->i:Lsk2;

    iget-object v0, v0, Lsk2;->f:Ljava/util/List;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object v0, p0, Lg21;->k:Lrl2;

    iget-object v1, p0, Lg21;->j:Lhq2;

    iget-object v2, p0, Lg21;->h:Lhl2;

    iget-object v3, p0, Lg21;->i:Lsk2;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 5
    invoke-virtual/range {v1 .. v7}, Lhq2;->b(Lhl2;Lsk2;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Lrl2;->c(Ljava/util/List;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lg21;->k:Lrl2;

    iget-object v1, p0, Lg21;->j:Lhq2;

    iget-object v2, p0, Lg21;->h:Lhl2;

    iget-object v3, p0, Lg21;->i:Lsk2;

    iget-object v4, v3, Lsk2;->m:Ljava/util/List;

    .line 8
    invoke-virtual {v1, v2, v3, v4}, Lhq2;->a(Lhl2;Lsk2;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lrl2;->c(Ljava/util/List;)V

    .line 10
    iget-object v0, p0, Lg21;->k:Lrl2;

    iget-object v1, p0, Lg21;->j:Lhq2;

    iget-object v2, p0, Lg21;->h:Lhl2;

    iget-object v3, p0, Lg21;->i:Lsk2;

    iget-object v4, v3, Lsk2;->f:Ljava/util/List;

    .line 11
    invoke-virtual {v1, v2, v3, v4}, Lhq2;->a(Lhl2;Lsk2;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lrl2;->c(Ljava/util/List;)V

    :goto_0
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lg21;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onAdOpened()V
    .locals 0

    return-void
.end method

.method public final onRewardedVideoCompleted()V
    .locals 5

    .line 1
    iget-object v0, p0, Lg21;->k:Lrl2;

    iget-object v1, p0, Lg21;->j:Lhq2;

    iget-object v2, p0, Lg21;->h:Lhl2;

    iget-object v3, p0, Lg21;->i:Lsk2;

    iget-object v4, v3, Lsk2;->i:Ljava/util/List;

    .line 2
    invoke-virtual {v1, v2, v3, v4}, Lhq2;->a(Lhl2;Lsk2;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lrl2;->c(Ljava/util/List;)V

    return-void
.end method

.method public final onRewardedVideoStarted()V
    .locals 5

    .line 1
    iget-object v0, p0, Lg21;->k:Lrl2;

    iget-object v1, p0, Lg21;->j:Lhq2;

    iget-object v2, p0, Lg21;->h:Lhl2;

    iget-object v3, p0, Lg21;->i:Lsk2;

    iget-object v4, v3, Lsk2;->g:Ljava/util/List;

    .line 2
    invoke-virtual {v1, v2, v3, v4}, Lhq2;->a(Lhl2;Lsk2;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lrl2;->c(Ljava/util/List;)V

    return-void
.end method
