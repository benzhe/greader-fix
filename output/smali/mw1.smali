.class public final Lmw1;
.super Lhm0;
.source "SourceFile"


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Ljava/util/concurrent/Executor;

.field public final g:Lzm0;

.field public final h:Lan0;

.field public final i:Lr11;

.field public final j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lxw1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lzm0;Lr11;Lan0;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lzm0;",
            "Lr11;",
            "Lan0;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lxw1;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lhm0;-><init>()V

    .line 2
    invoke-static {p1}, Ly40;->a(Landroid/content/Context;)V

    .line 3
    iput-object p1, p0, Lmw1;->e:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lmw1;->f:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p3, p0, Lmw1;->g:Lzm0;

    .line 6
    iput-object p5, p0, Lmw1;->h:Lan0;

    .line 7
    iput-object p4, p0, Lmw1;->i:Lr11;

    .line 8
    iput-object p6, p0, Lmw1;->j:Ljava/util/HashMap;

    return-void
.end method

.method public static W6(Lcom/google/android/gms/internal/ads/zzauj;Lzo2;Lvz0;)Law2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzauj;",
            "Lzo2;",
            "Lvz0;",
            ")",
            "Law2<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lqw1;

    invoke-direct {v0, p2}, Lqw1;-><init>(Lvz0;)V

    .line 2
    sget-object p2, Lpw1;->a:Ljo2;

    .line 3
    sget-object v1, Lap2;->j:Lap2;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzauj;->e:Landroid/os/Bundle;

    .line 4
    invoke-static {p0}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lko2;->b(Ljava/lang/Object;Law2;)Lqo2;

    move-result-object p0

    .line 5
    iget-object p1, p0, Lqo2;->f:Lko2;

    .line 6
    iget-object p1, p1, Lko2;->a:Lzv2;

    .line 7
    invoke-virtual {p0, v0, p1}, Lqo2;->c(Lcv2;Ljava/util/concurrent/Executor;)Lqo2;

    move-result-object p0

    .line 8
    new-instance p1, Luo2;

    invoke-direct {p1, p2}, Luo2;-><init>(Ljo2;)V

    .line 9
    iget-object p2, p0, Lqo2;->f:Lko2;

    .line 10
    iget-object p2, p2, Lko2;->a:Lzv2;

    .line 11
    invoke-virtual {p0, p1, p2}, Lqo2;->c(Lcv2;Ljava/util/concurrent/Executor;)Lqo2;

    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lqo2;->e()Llo2;

    move-result-object p0

    return-object p0
.end method

.method public static X6(Law2;Lzo2;Lhf0;)Law2;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Law2<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lzo2;",
            "Lhf0;",
            ")",
            "Law2<",
            "Lsm0;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lgf0;->b:Ldf0;

    sget-object v1, Lsw1;->a:Lbf0;

    .line 2
    new-instance v2, Lmf0;

    iget-object p2, p2, Lhf0;->a:Lyd0;

    const-string v3, "AFMA_getAdDictionary"

    invoke-direct {v2, p2, v3, v0, v1}, Lmf0;-><init>(Lyd0;Ljava/lang/String;Lef0;Lbf0;)V

    .line 3
    sget-object p2, Lap2;->l:Lap2;

    .line 4
    invoke-virtual {p1, p2, p0}, Lko2;->b(Ljava/lang/Object;Law2;)Lqo2;

    move-result-object p0

    .line 5
    iget-object p1, p0, Lqo2;->f:Lko2;

    .line 6
    iget-object p1, p1, Lko2;->a:Lzv2;

    .line 7
    invoke-virtual {p0, v2, p1}, Lqo2;->c(Lcv2;Ljava/util/concurrent/Executor;)Lqo2;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lqo2;->e()Llo2;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final W3(Lcom/google/android/gms/internal/ads/zzauj;Llm0;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2
    invoke-virtual {p0, p1, v0}, Lmw1;->a7(Lcom/google/android/gms/internal/ads/zzauj;I)Law2;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1, p2}, Lmw1;->Y6(Law2;Llm0;)V

    return-void
.end method

.method public final Y6(Law2;Llm0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Law2<",
            "Ljava/io/InputStream;",
            ">;",
            "Llm0;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lww1;

    invoke-direct {v0, p0}, Lww1;-><init>(Lmw1;)V

    sget-object v1, Lms0;->a:Lzv2;

    .line 2
    invoke-static {p1, v0, v1}, Lvt2;->m(Law2;Lcv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object p1

    .line 3
    new-instance v0, Lyw1;

    invoke-direct {v0, p2}, Lyw1;-><init>(Llm0;)V

    .line 4
    sget-object p2, Lms0;->f:Lzv2;

    .line 5
    new-instance v1, Lsv2;

    invoke-direct {v1, p1, v0}, Lsv2;-><init>(Ljava/util/concurrent/Future;Lrv2;)V

    check-cast p1, Lsu2;

    invoke-virtual {p1, v1, p2}, Lsu2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final Z6(Lcom/google/android/gms/internal/ads/zzauj;I)Law2;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzauj;",
            "I)",
            "Law2<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    .line 1
    sget-object v2, Lap2;->n:Lap2;

    sget-object v3, Lap2;->m:Lap2;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzli()Lcf0;

    move-result-object v4

    iget-object v5, v0, Lmw1;->e:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbar;->n()Lcom/google/android/gms/internal/ads/zzbar;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcf0;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)Lhf0;

    move-result-object v4

    .line 3
    iget-object v5, v0, Lmw1;->i:Lr11;

    move/from16 v11, p2

    .line 4
    invoke-interface {v5, p1, v11}, Lr11;->a(Lcom/google/android/gms/internal/ads/zzauj;I)Lvz0;

    move-result-object v5

    .line 5
    sget-object v6, Lax1;->d:Lef0;

    sget-object v7, Lgf0;->c:Lbf0;

    .line 6
    new-instance v12, Lmf0;

    iget-object v8, v4, Lhf0;->a:Lyd0;

    const-string v9, "google.afma.response.normalize"

    invoke-direct {v12, v8, v9, v6, v7}, Lmf0;-><init>(Lyd0;Ljava/lang/String;Lef0;Lbf0;)V

    .line 7
    new-instance v13, Lbx1;

    iget-object v7, v0, Lmw1;->e:Landroid/content/Context;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzauj;->f:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzbar;->e:Ljava/lang/String;

    iget-object v9, v0, Lmw1;->g:Lzm0;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzauj;->k:Ljava/lang/String;

    move-object v6, v13

    invoke-direct/range {v6 .. v11}, Lbx1;-><init>(Landroid/content/Context;Ljava/lang/String;Lzm0;Ljava/lang/String;I)V

    .line 8
    invoke-virtual {v5}, Lvz0;->c()Lzo2;

    move-result-object v6

    .line 9
    sget-object v7, Lv60;->a:Le60;

    invoke-virtual {v7}, Le60;->a()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_0

    .line 10
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzauj;->n:Ljava/lang/String;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "Request contained a PoolKey but split request is disabled."

    .line 11
    invoke-static {v7}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzauj;->n:Ljava/lang/String;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 13
    iget-object v7, v0, Lmw1;->j:Ljava/util/HashMap;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzauj;->n:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lxw1;

    if-nez v7, :cond_2

    const-string v8, "Request contained a PoolKey but no matching parameters were found."

    .line 14
    invoke-static {v8}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v7, 0x0

    :cond_2
    :goto_1
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    if-nez v7, :cond_3

    .line 15
    invoke-static {p1, v6, v5}, Lmw1;->W6(Lcom/google/android/gms/internal/ads/zzauj;Lzo2;Lvz0;)Law2;

    move-result-object v1

    .line 16
    invoke-static {v1, v6, v4}, Lmw1;->X6(Law2;Lzo2;Lhf0;)Law2;

    move-result-object v4

    new-array v5, v10, [Law2;

    aput-object v4, v5, v9

    aput-object v1, v5, v8

    .line 17
    invoke-virtual {v6, v3, v5}, Lko2;->a(Ljava/lang/Object;[Law2;)Lmo2;

    move-result-object v3

    new-instance v5, Llw1;

    invoke-direct {v5, v1, v4}, Llw1;-><init>(Law2;Law2;)V

    .line 18
    invoke-virtual {v3, v5}, Lmo2;->a(Ljava/util/concurrent/Callable;)Lqo2;

    move-result-object v3

    .line 19
    new-instance v5, Luo2;

    invoke-direct {v5, v13}, Luo2;-><init>(Ljo2;)V

    .line 20
    iget-object v7, v3, Lqo2;->f:Lko2;

    .line 21
    iget-object v7, v7, Lko2;->a:Lzv2;

    .line 22
    invoke-virtual {v3, v5, v7}, Lqo2;->c(Lcv2;Ljava/util/concurrent/Executor;)Lqo2;

    move-result-object v3

    .line 23
    invoke-virtual {v3}, Lqo2;->e()Llo2;

    move-result-object v3

    const/4 v5, 0x3

    new-array v5, v5, [Law2;

    aput-object v1, v5, v9

    aput-object v4, v5, v8

    aput-object v3, v5, v10

    .line 24
    invoke-virtual {v6, v2, v5}, Lko2;->a(Ljava/lang/Object;[Law2;)Lmo2;

    move-result-object v2

    new-instance v5, Low1;

    invoke-direct {v5, v3, v1, v4}, Low1;-><init>(Law2;Law2;Law2;)V

    .line 25
    invoke-virtual {v2, v5}, Lmo2;->a(Ljava/util/concurrent/Callable;)Lqo2;

    move-result-object v1

    .line 26
    iget-object v2, v1, Lqo2;->f:Lko2;

    .line 27
    iget-object v2, v2, Lko2;->a:Lzv2;

    .line 28
    invoke-virtual {v1, v12, v2}, Lqo2;->c(Lcv2;Ljava/util/concurrent/Executor;)Lqo2;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lqo2;->e()Llo2;

    move-result-object v1

    return-object v1

    .line 30
    :cond_3
    new-instance v1, Lex1;

    iget-object v4, v7, Lxw1;->b:Lorg/json/JSONObject;

    iget-object v5, v7, Lxw1;->a:Lsm0;

    invoke-direct {v1, v4, v5}, Lex1;-><init>(Lorg/json/JSONObject;Lsm0;)V

    .line 31
    invoke-static {v1}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object v1

    invoke-virtual {v6, v3, v1}, Lko2;->b(Ljava/lang/Object;Law2;)Lqo2;

    move-result-object v1

    .line 32
    new-instance v3, Luo2;

    invoke-direct {v3, v13}, Luo2;-><init>(Ljo2;)V

    .line 33
    iget-object v4, v1, Lqo2;->f:Lko2;

    .line 34
    iget-object v4, v4, Lko2;->a:Lzv2;

    .line 35
    invoke-virtual {v1, v3, v4}, Lqo2;->c(Lcv2;Ljava/util/concurrent/Executor;)Lqo2;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lqo2;->e()Llo2;

    move-result-object v1

    .line 37
    invoke-static {v7}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object v3

    new-array v4, v10, [Law2;

    aput-object v1, v4, v9

    aput-object v3, v4, v8

    .line 38
    invoke-virtual {v6, v2, v4}, Lko2;->a(Ljava/lang/Object;[Law2;)Lmo2;

    move-result-object v2

    new-instance v4, Lnw1;

    invoke-direct {v4, v1, v3}, Lnw1;-><init>(Law2;Law2;)V

    .line 39
    invoke-virtual {v2, v4}, Lmo2;->a(Ljava/util/concurrent/Callable;)Lqo2;

    move-result-object v1

    .line 40
    iget-object v2, v1, Lqo2;->f:Lko2;

    .line 41
    iget-object v2, v2, Lko2;->a:Lzv2;

    .line 42
    invoke-virtual {v1, v12, v2}, Lqo2;->c(Lcv2;Ljava/util/concurrent/Executor;)Lqo2;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lqo2;->e()Llo2;

    move-result-object v1

    return-object v1
.end method

.method public final a7(Lcom/google/android/gms/internal/ads/zzauj;I)Law2;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzauj;",
            "I)",
            "Law2<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lv60;->a:Le60;

    invoke-virtual {v0}, Le60;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Split request is disabled."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance p2, Lvv2$a;

    invoke-direct {p2, p1}, Lvv2$a;-><init>(Ljava/lang/Throwable;)V

    return-object p2

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzauj;->m:Lcom/google/android/gms/internal/ads/zzdrc;

    if-nez v0, :cond_1

    .line 5
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Pool configuration missing from request."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance p2, Lvv2$a;

    invoke-direct {p2, p1}, Lvv2$a;-><init>(Ljava/lang/Throwable;)V

    return-object p2

    .line 7
    :cond_1
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzdrc;->k:I

    if-eqz v1, :cond_3

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdrc;->l:I

    if-nez v0, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzli()Lcf0;

    move-result-object v0

    iget-object v1, p0, Lmw1;->e:Landroid/content/Context;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbar;->n()Lcom/google/android/gms/internal/ads/zzbar;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcf0;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)Lhf0;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lmw1;->i:Lr11;

    .line 11
    invoke-interface {v1, p1, p2}, Lr11;->a(Lcom/google/android/gms/internal/ads/zzauj;I)Lvz0;

    move-result-object p2

    .line 12
    invoke-virtual {p2}, Lvz0;->c()Lzo2;

    move-result-object v1

    .line 13
    invoke-static {p1, v1, p2}, Lmw1;->W6(Lcom/google/android/gms/internal/ads/zzauj;Lzo2;Lvz0;)Law2;

    move-result-object p1

    .line 14
    invoke-static {p1, v1, v0}, Lmw1;->X6(Law2;Lzo2;Lhf0;)Law2;

    move-result-object p2

    .line 15
    sget-object v0, Lap2;->B:Lap2;

    const/4 v2, 0x2

    new-array v2, v2, [Law2;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    .line 16
    invoke-virtual {v1, v0, v2}, Lko2;->a(Ljava/lang/Object;[Law2;)Lmo2;

    move-result-object v0

    new-instance v1, Luw1;

    invoke-direct {v1, p0, p2, p1}, Luw1;-><init>(Lmw1;Law2;Law2;)V

    .line 17
    invoke-virtual {v0, v1}, Lmo2;->a(Ljava/util/concurrent/Callable;)Lqo2;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lqo2;->e()Llo2;

    move-result-object p1

    return-object p1

    .line 19
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Caching is disabled."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 20
    new-instance p2, Lvv2$a;

    invoke-direct {p2, p1}, Lvv2$a;-><init>(Ljava/lang/Throwable;)V

    return-object p2
.end method

.method public final b7(Lcom/google/android/gms/internal/ads/zzauj;I)Law2;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzauj;",
            "I)",
            "Law2<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzli()Lcf0;

    move-result-object v0

    iget-object v1, p0, Lmw1;->e:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbar;->n()Lcom/google/android/gms/internal/ads/zzbar;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcf0;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)Lhf0;

    move-result-object v0

    .line 3
    sget-object v1, Lb70;->a:Le60;

    invoke-virtual {v1}, Le60;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Signal collection disabled."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance p2, Lvv2$a;

    invoke-direct {p2, p1}, Lvv2$a;-><init>(Ljava/lang/Throwable;)V

    return-object p2

    .line 6
    :cond_0
    iget-object v1, p0, Lmw1;->i:Lr11;

    .line 7
    invoke-interface {v1, p1, p2}, Lr11;->a(Lcom/google/android/gms/internal/ads/zzauj;I)Lvz0;

    move-result-object p2

    .line 8
    iget-object v1, p2, Lvz0;->u:Lpz0;

    .line 9
    iget-object v1, v1, Lpz0;->o0:Lmb3;

    .line 10
    invoke-interface {v1}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2}, Lvz0;->b()Lje2;

    move-result-object v2

    invoke-virtual {p2}, Lvz0;->a()Lhf2;

    move-result-object v3

    iget-object v4, p2, Lvz0;->c:Lmb3;

    invoke-static {v4}, Ldb3;->b(Lmb3;)Lxa3;

    move-result-object v4

    iget-object v5, p2, Lvz0;->e:Lmb3;

    invoke-static {v5}, Ldb3;->b(Lmb3;)Lxa3;

    move-result-object v5

    iget-object v6, p2, Lvz0;->f:Lmb3;

    invoke-static {v6}, Ldb3;->b(Lmb3;)Lxa3;

    move-result-object v6

    iget-object v7, p2, Lvz0;->g:Lmb3;

    invoke-static {v7}, Ldb3;->b(Lmb3;)Lxa3;

    move-result-object v7

    iget-object v8, p2, Lvz0;->h:Lmb3;

    invoke-static {v8}, Ldb3;->b(Lmb3;)Lxa3;

    iget-object v8, p2, Lvz0;->i:Lmb3;

    invoke-static {v8}, Ldb3;->b(Lmb3;)Lxa3;

    move-result-object v8

    iget-object v9, p2, Lvz0;->j:Lmb3;

    invoke-static {v9}, Ldb3;->b(Lmb3;)Lxa3;

    move-result-object v9

    invoke-static {}, Lyn2;->a()Lzv2;

    move-result-object v10

    iget-object v11, p2, Lvz0;->u:Lpz0;

    .line 11
    iget-object v11, v11, Lpz0;->m:Lmb3;

    .line 12
    invoke-interface {v11}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/concurrent/ScheduledExecutorService;

    .line 13
    check-cast v1, Lze2;

    .line 14
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 15
    invoke-virtual {v11, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v11, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {v11, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v1, Ly40;->q3:Lo40;

    .line 19
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 20
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 22
    invoke-interface {v4}, Lxa3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqd2;

    invoke-virtual {v11, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_1
    sget-object v1, Ly40;->r3:Lo40;

    .line 24
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 25
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 27
    invoke-interface {v5}, Lxa3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqd2;

    invoke-virtual {v11, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_2
    sget-object v1, Ly40;->s3:Lo40;

    .line 29
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 30
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 32
    invoke-interface {v6}, Lxa3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqd2;

    invoke-virtual {v11, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_3
    sget-object v1, Ly40;->t3:Lo40;

    .line 34
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 35
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 37
    invoke-interface {v7}, Lxa3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqd2;

    invoke-virtual {v11, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_4
    sget-object v1, Ly40;->v3:Lo40;

    .line 39
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 40
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 41
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 42
    invoke-interface {v8}, Lxa3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqd2;

    invoke-virtual {v11, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_5
    sget-object v1, Ly40;->w3:Lo40;

    .line 44
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 45
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 46
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 47
    invoke-interface {v9}, Lxa3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqd2;

    invoke-virtual {v11, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_6
    new-instance v1, Lpd2;

    invoke-direct {v1, v10, v11}, Lpd2;-><init>(Ljava/util/concurrent/Executor;Ljava/util/Set;)V

    .line 49
    sget-object v2, Lgf0;->b:Ldf0;

    sget-object v3, Lgf0;->c:Lbf0;

    .line 50
    new-instance v4, Lmf0;

    iget-object v0, v0, Lhf0;->a:Lyd0;

    const-string v5, "google.afma.request.getSignals"

    invoke-direct {v4, v0, v5, v2, v3}, Lmf0;-><init>(Lyd0;Ljava/lang/String;Lef0;Lbf0;)V

    .line 51
    invoke-virtual {p2}, Lvz0;->c()Lzo2;

    move-result-object p2

    .line 52
    sget-object v0, Lap2;->o:Lap2;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzauj;->e:Landroid/os/Bundle;

    .line 53
    invoke-static {p1}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lko2;->b(Ljava/lang/Object;Law2;)Lqo2;

    move-result-object p1

    new-instance p2, Ltw1;

    invoke-direct {p2, v1}, Ltw1;-><init>(Lpd2;)V

    .line 54
    iget-object v0, p1, Lqo2;->f:Lko2;

    .line 55
    iget-object v0, v0, Lko2;->a:Lzv2;

    .line 56
    invoke-virtual {p1, p2, v0}, Lqo2;->c(Lcv2;Ljava/util/concurrent/Executor;)Lqo2;

    move-result-object p1

    .line 57
    sget-object p2, Lap2;->p:Lap2;

    .line 58
    invoke-virtual {p1}, Lqo2;->e()Llo2;

    move-result-object v0

    .line 59
    iget-object p1, p1, Lqo2;->f:Lko2;

    invoke-virtual {p1, p2, v0}, Lko2;->b(Ljava/lang/Object;Law2;)Lqo2;

    move-result-object p1

    .line 60
    iget-object p2, p1, Lqo2;->f:Lko2;

    .line 61
    iget-object p2, p2, Lko2;->a:Lzv2;

    .line 62
    invoke-virtual {p1, v4, p2}, Lqo2;->c(Lcv2;Ljava/util/concurrent/Executor;)Lqo2;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lqo2;->e()Llo2;

    move-result-object p1

    return-object p1
.end method

.method public final c7(Ljava/lang/String;)Law2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Law2<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lv60;->a:Le60;

    invoke-virtual {v0}, Le60;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Split request is disabled."

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lvv2$a;

    invoke-direct {v0, p1}, Lvv2$a;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Lvw1;

    invoke-direct {v0}, Lvw1;-><init>()V

    .line 5
    iget-object v1, p0, Lmw1;->j:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxw1;

    if-nez v1, :cond_2

    .line 6
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "URL to be removed not found for cache key: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 7
    new-instance p1, Lvv2$a;

    invoke-direct {p1, v0}, Lvv2$a;-><init>(Ljava/lang/Throwable;)V

    return-object p1

    .line 8
    :cond_2
    invoke-static {v0}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object p1

    return-object p1
.end method

.method public final e3(Lcom/google/android/gms/internal/ads/zzauj;Llm0;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2
    invoke-virtual {p0, p1, v0}, Lmw1;->b7(Lcom/google/android/gms/internal/ads/zzauj;I)Law2;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1, p2}, Lmw1;->Y6(Law2;Llm0;)V

    return-void
.end method

.method public final n5(Ljava/lang/String;Llm0;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmw1;->c7(Ljava/lang/String;)Law2;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1, p2}, Lmw1;->Y6(Law2;Llm0;)V

    return-void
.end method

.method public final y3(Lcom/google/android/gms/internal/ads/zzauj;Llm0;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2
    invoke-virtual {p0, p1, v0}, Lmw1;->Z6(Lcom/google/android/gms/internal/ads/zzauj;I)Law2;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1, p2}, Lmw1;->Y6(Law2;Llm0;)V

    .line 4
    new-instance p2, Lrw1;

    invoke-direct {p2, p0}, Lrw1;-><init>(Lmw1;)V

    iget-object v0, p0, Lmw1;->f:Ljava/util/concurrent/Executor;

    check-cast p1, Llo2;

    .line 5
    iget-object p1, p1, Llo2;->g:Law2;

    invoke-interface {p1, p2, v0}, Law2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
