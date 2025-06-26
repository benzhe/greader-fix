.class public final synthetic Lc11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:La11;

.field public final f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(La11;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc11;->e:La11;

    iput-object p2, p0, Lc11;->f:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lc11;->e:La11;

    iget-object v1, p0, Lc11;->f:Ljava/lang/Runnable;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Adapters must be initialized on the main thread."

    .line 2
    invoke-static {v2}, Lbi;->f(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v2

    invoke-virtual {v2}, Lor0;->f()Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzg()Lpr0;

    move-result-object v2

    .line 4
    iget-object v2, v2, Lpr0;->c:Ljava/util/Map;

    if-eqz v2, :cond_c

    .line 5
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_5

    :cond_0
    if-eqz v1, :cond_1

    .line 6
    :try_start_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "Could not initialize rewarded ads."

    .line 7
    invoke-static {v1, v0}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 8
    :cond_1
    :goto_0
    iget-object v1, v0, La11;->g:Lnq1;

    .line 9
    iget-object v1, v1, Lnq1;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_c

    .line 10
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcg0;

    .line 12
    iget-object v3, v3, Lcg0;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldg0;

    .line 13
    iget-object v5, v4, Ldg0;->g:Ljava/lang/String;

    .line 14
    iget-object v4, v4, Ldg0;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 15
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 16
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-eqz v5, :cond_5

    .line 17
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    .line 18
    invoke-interface {v6, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 19
    :cond_7
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 20
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 21
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 22
    :try_start_1
    iget-object v5, v0, La11;->h:Llz1;

    invoke-interface {v5, v4, v2}, Llz1;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lmz1;

    move-result-object v5

    if-nez v5, :cond_9

    goto :goto_3

    .line 23
    :cond_9
    iget-object v6, v5, Lmz1;->b:Ljava/lang/Object;

    check-cast v6, Lzl2;

    .line 24
    invoke-virtual {v6}, Lzl2;->a()Z

    move-result v7
    :try_end_1
    .catch Lpl2; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v7, :cond_8

    .line 25
    :try_start_2
    iget-object v7, v6, Lzl2;->a:Lig0;

    invoke-interface {v7}, Lig0;->v4()Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v7, :cond_a

    goto :goto_3

    .line 26
    :cond_a
    :try_start_3
    iget-object v5, v5, Lmz1;->c:Llb1;

    check-cast v5, Lf12;

    .line 27
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 28
    iget-object v7, v0, La11;->e:Landroid/content/Context;
    :try_end_3
    .catch Lpl2; {:try_start_3 .. :try_end_3} :catch_0

    .line 29
    :try_start_4
    iget-object v6, v6, Lzl2;->a:Lig0;

    .line 30
    new-instance v8, Ly20;

    invoke-direct {v8, v7}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 31
    invoke-interface {v6, v8, v5, v3}, Lig0;->R6(Lx20;Lvn0;Ljava/util/List;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    const-string v3, "Initialized rewarded video mediation adapter "

    .line 32
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_b
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    :goto_4
    invoke-static {v3}, Lis0;->zzdz(Ljava/lang/String;)V

    goto :goto_3

    :catchall_1
    move-exception v3

    .line 33
    new-instance v5, Lpl2;

    invoke-direct {v5, v3}, Lpl2;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :catchall_2
    move-exception v3

    .line 34
    new-instance v5, Lpl2;

    invoke-direct {v5, v3}, Lpl2;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_5
    .catch Lpl2; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v3

    .line 35
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x38

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Failed to initialize rewarded video mediation adapter \""

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_c
    :goto_5
    return-void
.end method
