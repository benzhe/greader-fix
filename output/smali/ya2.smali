.class public final synthetic Lya2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# direct methods
.method public constructor <init>(Lza2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v0

    invoke-virtual {v0}, Lor0;->f()Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzf;->zzza()Lzm3;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v2

    invoke-virtual {v2}, Lor0;->f()Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzb()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v2

    invoke-virtual {v2}, Lor0;->f()Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzd()Z

    move-result v2

    if-nez v2, :cond_d

    .line 5
    :cond_0
    iget-boolean v2, v0, Lzm3;->f:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 6
    iget-object v2, v0, Lzm3;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 7
    :try_start_0
    iput-boolean v3, v0, Lzm3;->f:Z

    .line 8
    iget-object v4, v0, Lzm3;->g:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    const-string v4, "ContentFetchThread: wakeup"

    .line 9
    invoke-static {v4}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 10
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 11
    :cond_1
    :goto_0
    iget-object v2, v0, Lzm3;->h:Lwm3;

    iget-boolean v0, v0, Lzm3;->t:Z

    .line 12
    iget-object v4, v2, Lwm3;->a:Ljava/lang/Object;

    monitor-enter v4

    .line 13
    :try_start_1
    iget-object v5, v2, Lwm3;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_2

    const-string v0, "Queue empty"

    .line 14
    invoke-static {v0}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 15
    monitor-exit v4

    move-object v8, v1

    goto :goto_3

    .line 16
    :cond_2
    iget-object v5, v2, Lwm3;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x2

    if-lt v5, v7, :cond_5

    const/high16 v0, -0x80000000

    .line 17
    iget-object v5, v2, Lwm3;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v8, v1

    const/4 v7, 0x0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ltm3;

    .line 18
    iget v10, v9, Ltm3;->n:I

    if-le v10, v0, :cond_3

    move v3, v7

    move-object v8, v9

    move v0, v10

    :cond_3
    add-int/2addr v7, v6

    goto :goto_1

    .line 19
    :cond_4
    iget-object v0, v2, Lwm3;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 20
    monitor-exit v4

    goto :goto_3

    .line 21
    :cond_5
    iget-object v5, v2, Lwm3;->c:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Ltm3;

    if-eqz v0, :cond_6

    .line 22
    iget-object v0, v2, Lwm3;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 23
    :cond_6
    iget-object v0, v8, Ltm3;->g:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 24
    :try_start_2
    iget v2, v8, Ltm3;->n:I

    add-int/lit8 v2, v2, -0x64

    iput v2, v8, Ltm3;->n:I

    .line 25
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 26
    :goto_2
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_3
    if-eqz v8, :cond_8

    .line 27
    iget-object v0, v8, Ltm3;->o:Ljava/lang/String;

    .line 28
    iget-object v2, v8, Ltm3;->p:Ljava/lang/String;

    .line 29
    iget-object v3, v8, Ltm3;->q:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 30
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v4

    invoke-virtual {v4}, Lor0;->f()Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/google/android/gms/ads/internal/util/zzf;->zzee(Ljava/lang/String;)V

    :cond_7
    if-eqz v3, :cond_9

    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v4

    .line 32
    invoke-virtual {v4}, Lor0;->f()Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object v4

    .line 33
    invoke-interface {v4, v3}, Lcom/google/android/gms/ads/internal/util/zzf;->zzef(Ljava/lang/String;)V

    goto :goto_4

    .line 34
    :cond_8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v0

    invoke-virtual {v0}, Lor0;->f()Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzc()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v2

    invoke-virtual {v2}, Lor0;->f()Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/ads/internal/util/zzf;->zzze()Ljava/lang/String;

    move-result-object v3

    move-object v2, v1

    .line 36
    :cond_9
    :goto_4
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4, v6}, Landroid/os/Bundle;-><init>(I)V

    .line 37
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v5

    invoke-virtual {v5}, Lor0;->f()Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzd()Z

    move-result v5

    if-nez v5, :cond_b

    if-eqz v3, :cond_a

    .line 38
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "v_fp_vertical"

    .line 39
    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    const-string v3, "v_fp_vertical"

    const-string v5, "no_hash"

    .line 40
    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_5
    if-eqz v0, :cond_c

    .line 41
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v3

    invoke-virtual {v3}, Lor0;->f()Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzb()Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "fingerprint"

    .line 42
    invoke-virtual {v4, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "v_fp"

    .line 44
    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_c
    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    move-object v1, v4

    goto :goto_6

    :catchall_1
    move-exception v1

    .line 46
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1

    :catchall_2
    move-exception v0

    .line 47
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 48
    :cond_d
    :goto_6
    new-instance v0, Lwa2;

    invoke-direct {v0, v1}, Lwa2;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method
