.class public final Lqc3;
.super Lid3;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;I)V
    .locals 7

    const/16 v6, 0x18

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lid3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;II)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lid3;->e:Lxb3;

    .line 2
    iget-boolean v0, v0, Lxb3;->m:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lqc3;->c()V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lid3;->h:Lgl1$b;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lid3;->h:Lgl1$b;

    iget-object v2, p0, Lid3;->i:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lid3;->e:Lxb3;

    .line 6
    iget-object v6, v6, Lxb3;->a:Landroid/content/Context;

    aput-object v6, v4, v5

    .line 7
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8
    invoke-virtual {v1, v2}, Lgl1$b;->q(Ljava/lang/String;)Lgl1$b;

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lid3;->e:Lxb3;

    .line 2
    iget-boolean v1, v0, Lxb3;->p:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-super {p0}, Lid3;->b()Ljava/lang/Void;

    return-object v2

    .line 4
    :cond_0
    iget-boolean v0, v0, Lxb3;->m:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lqc3;->c()V

    :cond_1
    return-object v2
.end method

.method public final c()V
    .locals 7

    .line 1
    iget-object v0, p0, Lid3;->e:Lxb3;

    .line 2
    iget-boolean v1, v0, Lxb3;->g:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v1, v0, Lxb3;->f:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    if-eqz v1, :cond_1

    .line 4
    iget-object v2, v0, Lxb3;->f:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    goto :goto_1

    .line 5
    :cond_1
    iget-object v1, v0, Lxb3;->h:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_2

    const-wide/16 v4, 0x7d0

    .line 6
    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v4, v5, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 7
    iput-object v2, v0, Lxb3;->h:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    iget-object v1, v0, Lxb3;->h:Ljava/util/concurrent/Future;

    invoke-interface {v1, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 9
    :catch_1
    :cond_2
    :goto_0
    iget-object v2, v0, Lxb3;->f:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    :goto_1
    if-nez v2, :cond_3

    return-void

    .line 10
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getInfo()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    .line 12
    sget v2, Lbc3;->a:I

    if-eqz v1, :cond_4

    const-string v2, "^[a-fA-F0-9]{8}-([a-fA-F0-9]{4}-){3}[a-fA-F0-9]{12}$"

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 14
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    const/16 v2, 0x10

    new-array v2, v2, [B

    .line 15
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 16
    invoke-virtual {v1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 17
    invoke-virtual {v1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 18
    invoke-static {v2, v3}, Lc50;->P1([BZ)Ljava/lang/String;

    move-result-object v1

    :cond_4
    if-eqz v1, :cond_7

    .line 19
    iget-object v2, p0, Lid3;->h:Lgl1$b;

    monitor-enter v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 20
    :try_start_2
    iget-object v3, p0, Lid3;->h:Lgl1$b;

    invoke-virtual {v3, v1}, Lgl1$b;->q(Ljava/lang/String;)Lgl1$b;

    .line 21
    iget-object v1, p0, Lid3;->h:Lgl1$b;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    .line 22
    iget-boolean v3, v1, Ls63$b;->g:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 23
    invoke-virtual {v1}, Ls63$b;->o()V

    .line 24
    iput-boolean v4, v1, Ls63$b;->g:Z

    .line 25
    :cond_5
    iget-object v1, v1, Ls63$b;->f:Ls63;

    check-cast v1, Lgl1;

    invoke-static {v1, v0}, Lgl1;->G(Lgl1;Z)V

    .line 26
    iget-object v0, p0, Lid3;->h:Lgl1$b;

    sget-object v1, Lgl1$c;->k:Lgl1$c;

    .line 27
    iget-boolean v3, v0, Ls63$b;->g:Z

    if-eqz v3, :cond_6

    .line 28
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 29
    iput-boolean v4, v0, Ls63$b;->g:Z

    .line 30
    :cond_6
    iget-object v0, v0, Ls63$b;->f:Ls63;

    check-cast v0, Lgl1;

    invoke-static {v0, v1}, Lgl1;->A(Lgl1;Lgl1$c;)V

    .line 31
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :cond_7
    return-void
.end method

.method public final call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lid3;->e:Lxb3;

    .line 2
    iget-boolean v1, v0, Lxb3;->p:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-super {p0}, Lid3;->b()Ljava/lang/Void;

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, v0, Lxb3;->m:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lqc3;->c()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
