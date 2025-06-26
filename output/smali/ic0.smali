.class public final Lic0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfp3;


# instance fields
.field public volatile a:Lbc0;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lic0;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza(Lj40;)Lpu3;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj40<",
            "*>;)",
            "Lpu3;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Luh0;
        }
    .end annotation

    const-string v0, "ms"

    const-string v1, "Http assets remote cache took "

    .line 1
    invoke-virtual {p1}, Lj40;->getHeaders()Ljava/util/Map;

    move-result-object v2

    .line 2
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    .line 3
    new-array v4, v3, [Ljava/lang/String;

    .line 4
    new-array v3, v3, [Ljava/lang/String;

    .line 5
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v4, v6

    .line 7
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 8
    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/ads/zzaiy;

    invoke-virtual {p1}, Lj40;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v4, v3}, Lcom/google/android/gms/internal/ads/zzaiy;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object p1

    invoke-interface {p1}, Lb20;->b()J

    move-result-wide v3

    const/4 p1, 0x0

    const/16 v6, 0x34

    .line 10
    :try_start_0
    new-instance v7, Lxs0;

    invoke-direct {v7}, Lxs0;-><init>()V

    .line 11
    new-instance v8, Lmc0;

    invoke-direct {v8, p0, v7}, Lmc0;-><init>(Lic0;Lxs0;)V

    .line 12
    new-instance v9, Loc0;

    invoke-direct {v9, v7}, Loc0;-><init>(Lxs0;)V

    .line 13
    new-instance v10, Lbc0;

    iget-object v11, p0, Lic0;->b:Landroid/content/Context;

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlj()Lcom/google/android/gms/ads/internal/util/zzbl;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/ads/internal/util/zzbl;->zzaai()Landroid/os/Looper;

    move-result-object v12

    invoke-direct {v10, v11, v12, v8, v9}, Lbc0;-><init>(Landroid/content/Context;Landroid/os/Looper;Li00$a;Li00$b;)V

    .line 15
    iput-object v10, p0, Lic0;->a:Lbc0;

    .line 16
    iget-object v8, p0, Lic0;->a:Lbc0;

    invoke-virtual {v8}, Li00;->checkAvailabilityAndConnect()V

    .line 17
    new-instance v8, Llc0;

    invoke-direct {v8, v2}, Llc0;-><init>(Lcom/google/android/gms/internal/ads/zzaiy;)V

    sget-object v2, Lms0;->a:Lzv2;

    .line 18
    invoke-static {v7, v8, v2}, Lvt2;->m(Law2;Lcv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v7

    .line 19
    sget-object v8, Ly40;->v2:Lo40;

    .line 20
    sget-object v9, Los3;->j:Los3;

    iget-object v9, v9, Los3;->f:Lu40;

    .line 21
    invoke-virtual {v9, v8}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v8

    .line 22
    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v8, v8

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v11, Lms0;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 23
    invoke-static {v7, v8, v9, v10, v11}, Lvt2;->d(Law2;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Law2;

    move-result-object v7

    .line 24
    new-instance v8, Lnc0;

    invoke-direct {v8, p0}, Lnc0;-><init>(Lic0;)V

    invoke-interface {v7, v8, v2}, Law2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 25
    invoke-interface {v7}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v7

    invoke-interface {v7}, Lb20;->b()J

    move-result-wide v7

    sub-long/2addr v7, v3

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaue;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzaue;-><init>(Landroid/os/ParcelFileDescriptor;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzaja;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 29
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaue;->n(Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaja;

    if-nez v0, :cond_1

    return-object p1

    .line 30
    :cond_1
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzaja;->e:Z

    if-nez v1, :cond_4

    .line 31
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaja;->i:[Ljava/lang/String;

    array-length v1, v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaja;->j:[Ljava/lang/String;

    array-length v2, v2

    if-eq v1, v2, :cond_2

    return-object p1

    .line 32
    :cond_2
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 33
    :goto_1
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzaja;->i:[Ljava/lang/String;

    array-length v1, p1

    if-ge v5, v1, :cond_3

    .line 34
    aget-object p1, p1, v5

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaja;->j:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v9, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 35
    :cond_3
    new-instance p1, Lpu3;

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzaja;->g:I

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaja;->h:[B

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzaja;->k:Z

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzaja;->l:J

    move-object v6, p1

    invoke-direct/range {v6 .. v12}, Lpu3;-><init>(I[BLjava/util/Map;ZJ)V

    return-object p1

    .line 36
    :cond_4
    new-instance p1, Luh0;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaja;->f:Ljava/lang/String;

    invoke-direct {p1, v0}, Luh0;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 37
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v2

    invoke-interface {v2}, Lb20;->b()J

    move-result-wide v7

    sub-long/2addr v7, v3

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    .line 39
    throw p1

    .line 40
    :catch_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v2

    invoke-interface {v2}, Lb20;->b()J

    move-result-wide v7

    sub-long/2addr v7, v3

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    return-object p1
.end method
