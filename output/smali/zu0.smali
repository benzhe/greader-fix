.class public final Lzu0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lek3;


# instance fields
.field public final a:Lsk3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsk3<",
            "Lek3;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/Context;

.field public final c:Lek3;

.field public final d:Lnv0;

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:Z

.field public h:Ljava/io/InputStream;

.field public i:Z

.field public j:Landroid/net/Uri;

.field public volatile k:Lcom/google/android/gms/internal/ads/zzti;

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:J

.field public q:Law2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Law2<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lek3;Ljava/lang/String;ILsk3;Lnv0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lek3;",
            "Ljava/lang/String;",
            "I",
            "Lsk3<",
            "Lek3;",
            ">;",
            "Lnv0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzu0;->b:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lzu0;->c:Lek3;

    .line 4
    iput-object p5, p0, Lzu0;->a:Lsk3;

    .line 5
    iput-object p6, p0, Lzu0;->d:Lnv0;

    .line 6
    iput-object p3, p0, Lzu0;->e:Ljava/lang/String;

    .line 7
    iput p4, p0, Lzu0;->f:I

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lzu0;->l:Z

    .line 9
    iput-boolean p1, p0, Lzu0;->m:Z

    .line 10
    iput-boolean p1, p0, Lzu0;->n:Z

    .line 11
    iput-boolean p1, p0, Lzu0;->o:Z

    const-wide/16 p1, 0x0

    .line 12
    iput-wide p1, p0, Lzu0;->p:J

    .line 13
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p2, -0x1

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lzu0;->r:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lzu0;->q:Law2;

    .line 15
    sget-object p1, Ly40;->l1:Lo40;

    .line 16
    sget-object p2, Los3;->j:Los3;

    iget-object p2, p2, Los3;->f:Lu40;

    .line 17
    invoke-virtual {p2, p1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p1

    .line 18
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lzu0;->g:Z

    return-void
.end method


# virtual methods
.method public final b(Ljk3;)J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    iget-boolean v2, v1, Lzu0;->i:Z

    if-nez v2, :cond_9

    const/4 v2, 0x1

    .line 2
    iput-boolean v2, v1, Lzu0;->i:Z

    .line 3
    iget-object v3, v0, Ljk3;->a:Landroid/net/Uri;

    iput-object v3, v1, Lzu0;->j:Landroid/net/Uri;

    .line 4
    iget-boolean v3, v1, Lzu0;->g:Z

    if-nez v3, :cond_0

    .line 5
    iget-object v3, v1, Lzu0;->a:Lsk3;

    if-eqz v3, :cond_0

    .line 6
    invoke-interface {v3, v1, v0}, Lsk3;->f(Ljava/lang/Object;Ljk3;)V

    .line 7
    :cond_0
    iget-object v3, v0, Ljk3;->a:Landroid/net/Uri;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzti;->n(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzti;

    move-result-object v3

    iput-object v3, v1, Lzu0;->k:Lcom/google/android/gms/internal/ads/zzti;

    .line 8
    sget-object v3, Ly40;->o2:Lo40;

    .line 9
    sget-object v4, Los3;->j:Los3;

    iget-object v4, v4, Los3;->f:Lu40;

    .line 10
    invoke-virtual {v4, v3}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v3

    .line 11
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 12
    iget-object v3, v1, Lzu0;->k:Lcom/google/android/gms/internal/ads/zzti;

    if-eqz v3, :cond_4

    .line 13
    iget-object v3, v1, Lzu0;->k:Lcom/google/android/gms/internal/ads/zzti;

    iget-wide v7, v0, Ljk3;->d:J

    iput-wide v7, v3, Lcom/google/android/gms/internal/ads/zzti;->l:J

    .line 14
    iget-object v3, v1, Lzu0;->k:Lcom/google/android/gms/internal/ads/zzti;

    iget-object v7, v1, Lzu0;->e:Ljava/lang/String;

    invoke-static {v7}, Lc50;->n4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/google/android/gms/internal/ads/zzti;->m:Ljava/lang/String;

    .line 15
    iget-object v3, v1, Lzu0;->k:Lcom/google/android/gms/internal/ads/zzti;

    iget v7, v1, Lzu0;->f:I

    iput v7, v3, Lcom/google/android/gms/internal/ads/zzti;->n:I

    .line 16
    iget-object v3, v1, Lzu0;->k:Lcom/google/android/gms/internal/ads/zzti;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzti;->k:Z

    if-eqz v3, :cond_1

    .line 17
    sget-object v3, Ly40;->q2:Lo40;

    .line 18
    sget-object v7, Los3;->j:Los3;

    iget-object v7, v7, Los3;->f:Lu40;

    .line 19
    invoke-virtual {v7, v3}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v3

    .line 20
    check-cast v3, Ljava/lang/Long;

    goto :goto_0

    .line 21
    :cond_1
    sget-object v3, Ly40;->p2:Lo40;

    .line 22
    sget-object v7, Los3;->j:Los3;

    iget-object v7, v7, Los3;->f:Lu40;

    .line 23
    invoke-virtual {v7, v3}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v3

    .line 24
    check-cast v3, Ljava/lang/Long;

    .line 25
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v3

    invoke-interface {v3}, Lb20;->b()J

    move-result-wide v9

    .line 27
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlp()Lcp3;

    iget-object v3, v1, Lzu0;->b:Landroid/content/Context;

    iget-object v11, v1, Lzu0;->k:Lcom/google/android/gms/internal/ads/zzti;

    .line 28
    new-instance v12, Lto3;

    invoke-direct {v12, v3}, Lto3;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v3, Lwo3;

    invoke-direct {v3, v12}, Lwo3;-><init>(Lto3;)V

    .line 30
    new-instance v13, Lvo3;

    invoke-direct {v13, v12, v11, v3}, Lvo3;-><init>(Lto3;Lcom/google/android/gms/internal/ads/zzti;Lxs0;)V

    .line 31
    new-instance v11, Lzo3;

    invoke-direct {v11, v12, v3}, Lzo3;-><init>(Lto3;Lxs0;)V

    .line 32
    iget-object v14, v12, Lto3;->d:Ljava/lang/Object;

    monitor-enter v14

    .line 33
    :try_start_0
    new-instance v15, Loo3;

    iget-object v6, v12, Lto3;->c:Landroid/content/Context;

    .line 34
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlj()Lcom/google/android/gms/ads/internal/util/zzbl;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/ads/internal/util/zzbl;->zzaai()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v15, v6, v4, v13, v11}, Loo3;-><init>(Landroid/content/Context;Landroid/os/Looper;Li00$a;Li00$b;)V

    .line 35
    iput-object v15, v12, Lto3;->a:Loo3;

    .line 36
    invoke-virtual {v15}, Li00;->checkAvailabilityAndConnect()V

    .line 37
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/16 v4, 0x2c

    .line 38
    :try_start_1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v7, v8, v5}, Lxs0;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbp3;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    :try_start_2
    iget-boolean v6, v5, Lbp3;->b:Z

    .line 40
    iput-boolean v6, v1, Lzu0;->l:Z

    .line 41
    iget-boolean v6, v5, Lbp3;->c:Z

    .line 42
    iput-boolean v6, v1, Lzu0;->n:Z

    .line 43
    iget-boolean v6, v5, Lbp3;->e:Z

    .line 44
    iput-boolean v6, v1, Lzu0;->o:Z

    .line 45
    iget-wide v6, v5, Lbp3;->d:J

    .line 46
    iput-wide v6, v1, Lzu0;->p:J

    .line 47
    invoke-virtual/range {p0 .. p0}, Lzu0;->c()Z

    move-result v6

    if-nez v6, :cond_3

    .line 48
    iget-object v5, v5, Lbp3;->a:Ljava/io/InputStream;

    .line 49
    iput-object v5, v1, Lzu0;->h:Ljava/io/InputStream;

    .line 50
    iget-boolean v5, v1, Lzu0;->g:Z

    if-eqz v5, :cond_2

    .line 51
    iget-object v5, v1, Lzu0;->a:Lsk3;

    if-eqz v5, :cond_2

    .line 52
    invoke-interface {v5, v1, v0}, Lsk3;->f(Ljava/lang/Object;Ljk3;)V
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v0

    invoke-interface {v0}, Lb20;->b()J

    move-result-wide v5

    sub-long/2addr v5, v9

    .line 54
    iget-object v0, v1, Lzu0;->d:Lnv0;

    invoke-virtual {v0, v2, v5, v6}, Lnv0;->a(ZJ)V

    .line 55
    iput-boolean v2, v1, Lzu0;->m:Z

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Cache connection took "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    const-wide/16 v2, -0x1

    return-wide v2

    .line 57
    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v3

    invoke-interface {v3}, Lb20;->b()J

    move-result-wide v5

    sub-long/2addr v5, v9

    .line 58
    iget-object v3, v1, Lzu0;->d:Lnv0;

    invoke-virtual {v3, v2, v5, v6}, Lnv0;->a(ZJ)V

    .line 59
    iput-boolean v2, v1, Lzu0;->m:Z

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Cache connection took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    const/4 v5, 0x1

    goto :goto_1

    :catch_1
    const/4 v5, 0x1

    goto :goto_2

    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    goto :goto_3

    :catch_2
    const/4 v5, 0x0

    .line 61
    :goto_1
    :try_start_3
    invoke-virtual {v3, v2}, Lwo3;->cancel(Z)Z

    .line 62
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 63
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v2

    invoke-interface {v2}, Lb20;->b()J

    move-result-wide v2

    sub-long/2addr v2, v9

    .line 64
    iget-object v6, v1, Lzu0;->d:Lnv0;

    invoke-virtual {v6, v5, v2, v3}, Lnv0;->a(ZJ)V

    .line 65
    iput-boolean v5, v1, Lzu0;->m:Z

    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Cache connection took "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    goto :goto_4

    :catch_3
    const/4 v5, 0x0

    .line 67
    :goto_2
    :try_start_4
    invoke-virtual {v3, v2}, Lwo3;->cancel(Z)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 68
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v2

    invoke-interface {v2}, Lb20;->b()J

    move-result-wide v2

    sub-long/2addr v2, v9

    .line 69
    iget-object v6, v1, Lzu0;->d:Lnv0;

    invoke-virtual {v6, v5, v2, v3}, Lnv0;->a(ZJ)V

    .line 70
    iput-boolean v5, v1, Lzu0;->m:Z

    .line 71
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Cache connection took "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    goto :goto_4

    :catchall_2
    move-exception v0

    move v2, v5

    .line 72
    :goto_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v3

    invoke-interface {v3}, Lb20;->b()J

    move-result-wide v5

    sub-long/2addr v5, v9

    .line 73
    iget-object v3, v1, Lzu0;->d:Lnv0;

    invoke-virtual {v3, v2, v5, v6}, Lnv0;->a(ZJ)V

    .line 74
    iput-boolean v2, v1, Lzu0;->m:Z

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Cache connection took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    .line 76
    throw v0

    :catchall_3
    move-exception v0

    .line 77
    :try_start_5
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :cond_4
    :goto_4
    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    .line 78
    iget-object v4, v1, Lzu0;->k:Lcom/google/android/gms/internal/ads/zzti;

    if-eqz v4, :cond_6

    .line 79
    iget-object v3, v1, Lzu0;->k:Lcom/google/android/gms/internal/ads/zzti;

    iget-wide v4, v0, Ljk3;->d:J

    iput-wide v4, v3, Lcom/google/android/gms/internal/ads/zzti;->l:J

    .line 80
    iget-object v3, v1, Lzu0;->k:Lcom/google/android/gms/internal/ads/zzti;

    iget-object v4, v1, Lzu0;->e:Ljava/lang/String;

    invoke-static {v4}, Lc50;->n4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/internal/ads/zzti;->m:Ljava/lang/String;

    .line 81
    iget-object v3, v1, Lzu0;->k:Lcom/google/android/gms/internal/ads/zzti;

    iget v4, v1, Lzu0;->f:I

    iput v4, v3, Lcom/google/android/gms/internal/ads/zzti;->n:I

    .line 82
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlb()Lio3;

    move-result-object v3

    iget-object v4, v1, Lzu0;->k:Lcom/google/android/gms/internal/ads/zzti;

    invoke-virtual {v3, v4}, Lio3;->c(Lcom/google/android/gms/internal/ads/zzti;)Lcom/google/android/gms/internal/ads/zzth;

    move-result-object v3

    :cond_6
    if-eqz v3, :cond_4

    .line 83
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzth;->n()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 84
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzth;->K0()Z

    move-result v4

    iput-boolean v4, v1, Lzu0;->l:Z

    .line 85
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzth;->N0()Z

    move-result v4

    iput-boolean v4, v1, Lzu0;->n:Z

    .line 86
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzth;->L0()Z

    move-result v4

    iput-boolean v4, v1, Lzu0;->o:Z

    .line 87
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzth;->M0()J

    move-result-wide v4

    iput-wide v4, v1, Lzu0;->p:J

    .line 88
    iput-boolean v2, v1, Lzu0;->m:Z

    .line 89
    invoke-virtual/range {p0 .. p0}, Lzu0;->c()Z

    move-result v2

    if-nez v2, :cond_4

    .line 90
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzth;->C()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, v1, Lzu0;->h:Ljava/io/InputStream;

    .line 91
    iget-boolean v2, v1, Lzu0;->g:Z

    if-eqz v2, :cond_7

    .line 92
    iget-object v2, v1, Lzu0;->a:Lsk3;

    if-eqz v2, :cond_7

    .line 93
    invoke-interface {v2, v1, v0}, Lsk3;->f(Ljava/lang/Object;Ljk3;)V

    :cond_7
    const-wide/16 v2, -0x1

    return-wide v2

    .line 94
    :goto_5
    iput-boolean v2, v1, Lzu0;->m:Z

    .line 95
    iget-object v2, v1, Lzu0;->k:Lcom/google/android/gms/internal/ads/zzti;

    if-eqz v2, :cond_8

    .line 96
    new-instance v2, Ljk3;

    iget-object v3, v1, Lzu0;->k:Lcom/google/android/gms/internal/ads/zzti;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzti;->e:Ljava/lang/String;

    .line 97
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, v0, Ljk3;->b:[B

    iget-wide v6, v0, Ljk3;->c:J

    iget-wide v8, v0, Ljk3;->d:J

    iget-wide v10, v0, Ljk3;->e:J

    iget-object v12, v0, Ljk3;->f:Ljava/lang/String;

    iget v13, v0, Ljk3;->g:I

    move-object v3, v2

    invoke-direct/range {v3 .. v13}, Ljk3;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    move-object v0, v2

    .line 98
    :cond_8
    iget-object v2, v1, Lzu0;->c:Lek3;

    invoke-interface {v2, v0}, Lek3;->b(Ljk3;)J

    move-result-wide v2

    return-wide v2

    .line 99
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Attempt to open an already open CacheDataSource."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lzu0;->g:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v0, Ly40;->r2:Lo40;

    .line 3
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 4
    invoke-virtual {v2, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lzu0;->n:Z

    if-nez v0, :cond_1

    return v2

    .line 6
    :cond_1
    sget-object v0, Ly40;->s2:Lo40;

    .line 7
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->f:Lu40;

    .line 8
    invoke-virtual {v3, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lzu0;->o:Z

    if-nez v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public final close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lzu0;->i:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lzu0;->i:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lzu0;->j:Landroid/net/Uri;

    .line 4
    iget-boolean v2, p0, Lzu0;->g:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lzu0;->h:Ljava/io/InputStream;

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 5
    :cond_1
    iget-object v2, p0, Lzu0;->h:Ljava/io/InputStream;

    if-eqz v2, :cond_3

    if-eqz v2, :cond_2

    .line 6
    :try_start_0
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    :cond_2
    iput-object v1, p0, Lzu0;->h:Ljava/io/InputStream;

    goto :goto_0

    .line 8
    :cond_3
    iget-object v1, p0, Lzu0;->c:Lek3;

    invoke-interface {v1}, Lek3;->close()V

    :goto_0
    if-eqz v0, :cond_4

    .line 9
    iget-object v0, p0, Lzu0;->a:Lsk3;

    if-eqz v0, :cond_4

    .line 10
    invoke-interface {v0, p0}, Lsk3;->e(Ljava/lang/Object;)V

    :cond_4
    return-void

    .line 11
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempt to close an already closed CacheDataSource."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i0()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lzu0;->j:Landroid/net/Uri;

    return-object v0
.end method

.method public final read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lzu0;->i:Z

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lzu0;->h:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lzu0;->c:Lek3;

    invoke-interface {v0, p1, p2, p3}, Lek3;->read([BII)I

    move-result p1

    .line 5
    :goto_0
    iget-boolean p2, p0, Lzu0;->g:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lzu0;->h:Ljava/io/InputStream;

    if-eqz p2, :cond_2

    .line 6
    :cond_1
    iget-object p2, p0, Lzu0;->a:Lsk3;

    if-eqz p2, :cond_2

    .line 7
    invoke-interface {p2, p0, p1}, Lsk3;->h(Ljava/lang/Object;I)V

    :cond_2
    return p1

    .line 8
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attempt to read closed CacheDataSource."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
