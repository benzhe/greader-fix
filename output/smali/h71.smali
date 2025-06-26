.class public final Lh71;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lgv1;

.field public final b:Lll2;

.field public final c:Lzo2;

.field public final d:Lt11;

.field public final e:Lc32;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc32<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final f:Lmd1;

.field public final g:Lhl2;

.field public final h:Lbw1;

.field public final i:Lg91;

.field public final j:Ljava/util/concurrent/Executor;

.field public final k:Luv1;

.field public final l:Lnz1;


# direct methods
.method public constructor <init>(Lgv1;Lll2;Lzo2;Lt11;Lc32;Lmd1;Lhl2;Lbw1;Lg91;Ljava/util/concurrent/Executor;Luv1;Lnz1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgv1;",
            "Lll2;",
            "Lzo2;",
            "Lt11;",
            "Lc32<",
            "TT;>;",
            "Lmd1;",
            "Lhl2;",
            "Lbw1;",
            "Lg91;",
            "Ljava/util/concurrent/Executor;",
            "Luv1;",
            "Lnz1;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lh71;->a:Lgv1;

    .line 3
    iput-object p2, p0, Lh71;->b:Lll2;

    .line 4
    iput-object p3, p0, Lh71;->c:Lzo2;

    .line 5
    iput-object p4, p0, Lh71;->d:Lt11;

    .line 6
    iput-object p5, p0, Lh71;->e:Lc32;

    .line 7
    iput-object p6, p0, Lh71;->f:Lmd1;

    .line 8
    iput-object p7, p0, Lh71;->g:Lhl2;

    .line 9
    iput-object p8, p0, Lh71;->h:Lbw1;

    .line 10
    iput-object p9, p0, Lh71;->i:Lg91;

    .line 11
    iput-object p10, p0, Lh71;->j:Ljava/util/concurrent/Executor;

    .line 12
    iput-object p11, p0, Lh71;->k:Luv1;

    .line 13
    iput-object p12, p0, Lh71;->l:Lnz1;

    return-void
.end method


# virtual methods
.method public final a(Law2;)Law2;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Law2<",
            "Lcom/google/android/gms/internal/ads/zzauj;",
            ">;)",
            "Law2<",
            "Lhl2;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lap2;->h:Lap2;

    iget-object v1, p0, Lh71;->g:Lhl2;

    if-eqz v1, :cond_0

    .line 2
    iget-object p1, p0, Lh71;->c:Lzo2;

    .line 3
    invoke-virtual {p1, v0}, Lko2;->c(Ljava/lang/Object;)Loo2;

    move-result-object p1

    iget-object v0, p0, Lh71;->g:Lhl2;

    .line 4
    invoke-static {v0}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object v0

    invoke-virtual {p1, v0}, Loo2;->b(Law2;)Lqo2;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lqo2;->e()Llo2;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlb()Lio3;

    move-result-object v1

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v2, Ly40;->l2:Lo40;

    .line 9
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->f:Lu40;

    .line 10
    invoke-virtual {v3, v2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 11
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12
    iget-object v2, v1, Lio3;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 13
    :try_start_0
    invoke-virtual {v1}, Lio3;->a()V

    .line 14
    sget-object v3, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lms2;

    iget-object v4, v1, Lio3;->a:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    iget-object v1, v1, Lio3;->a:Ljava/lang/Runnable;

    sget-object v4, Ly40;->m2:Lo40;

    .line 16
    sget-object v5, Los3;->j:Los3;

    iget-object v5, v5, Los3;->f:Lu40;

    .line 17
    invoke-virtual {v5, v4}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v4

    .line 18
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 19
    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 20
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 21
    :cond_1
    :goto_0
    iget-object v1, p0, Lh71;->b:Lll2;

    iget-object v1, v1, Lll2;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzvq;->w:Lcom/google/android/gms/internal/ads/zzvf;

    if-eqz v1, :cond_6

    .line 22
    iget-object p1, p0, Lh71;->c:Lzo2;

    .line 23
    invoke-virtual {p1, v0}, Lko2;->c(Ljava/lang/Object;)Loo2;

    move-result-object p1

    iget-object v0, p0, Lh71;->a:Lgv1;

    .line 24
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzli()Lcf0;

    move-result-object v1

    iget-object v2, v0, Lgv1;->a:Landroid/content/Context;

    iget-object v3, v0, Lgv1;->b:Lcom/google/android/gms/internal/ads/zzbar;

    .line 26
    invoke-virtual {v1, v2, v3}, Lcf0;->b(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)Lhf0;

    move-result-object v1

    sget-object v2, Lgf0;->b:Ldf0;

    .line 27
    new-instance v3, Lmf0;

    iget-object v1, v1, Lhf0;->a:Lyd0;

    const-string v4, "google.afma.response.normalize"

    invoke-direct {v3, v1, v4, v2, v2}, Lmf0;-><init>(Lyd0;Ljava/lang/String;Lef0;Lbf0;)V

    .line 28
    iget-object v1, v0, Lgv1;->c:Lll2;

    iget-object v1, v1, Lll2;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzvq;->w:Lcom/google/android/gms/internal/ads/zzvf;

    .line 29
    sget-object v2, Ly40;->r4:Lo40;

    .line 30
    sget-object v4, Los3;->j:Los3;

    iget-object v4, v4, Los3;->f:Lu40;

    .line 31
    invoke-virtual {v4, v2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v4, 0x1

    const-string v5, ""

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    if-nez v1, :cond_3

    goto :goto_1

    .line 33
    :cond_3
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzvf;->e:Ljava/lang/String;

    invoke-direct {v2, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 34
    new-instance v6, Lorg/json/JSONObject;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzvf;->f:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, "request_id"

    .line 35
    invoke-virtual {v2, v7, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 37
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 38
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :catch_0
    :cond_4
    :goto_1
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_5

    .line 39
    new-instance v0, Lz22;

    sget-object v1, Ldm2;->r:Ldm2;

    const-string v2, "Mismatch request IDs."

    invoke-direct {v0, v1, v2}, Lz22;-><init>(Ldm2;Ljava/lang/String;)V

    .line 40
    new-instance v1, Lvv2$a;

    invoke-direct {v1, v0}, Lvv2$a;-><init>(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 41
    :cond_5
    invoke-static {v5}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object v2

    new-instance v4, Lfv1;

    invoke-direct {v4, v0, v1}, Lfv1;-><init>(Lgv1;Lcom/google/android/gms/internal/ads/zzvf;)V

    iget-object v1, v0, Lgv1;->d:Ljava/util/concurrent/Executor;

    .line 42
    invoke-static {v2, v4, v1}, Lvt2;->m(Law2;Lcv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v1

    .line 43
    new-instance v2, Liv1;

    invoke-direct {v2, v3}, Liv1;-><init>(Lmf0;)V

    iget-object v3, v0, Lgv1;->d:Ljava/util/concurrent/Executor;

    .line 44
    invoke-static {v1, v2, v3}, Lvt2;->m(Law2;Lcv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v1

    .line 45
    new-instance v2, Lhv1;

    invoke-direct {v2, v0}, Lhv1;-><init>(Lgv1;)V

    iget-object v0, v0, Lgv1;->d:Ljava/util/concurrent/Executor;

    .line 46
    invoke-static {v1, v2, v0}, Lvt2;->m(Law2;Lcv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v1

    .line 47
    :goto_3
    invoke-virtual {p1, v1}, Loo2;->b(Law2;)Lqo2;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lqo2;->e()Llo2;

    move-result-object p1

    return-object p1

    .line 49
    :cond_6
    iget-object v1, p0, Lh71;->c:Lzo2;

    .line 50
    invoke-virtual {v1, v0, p1}, Lko2;->b(Ljava/lang/Object;Law2;)Lqo2;

    move-result-object p1

    iget-object v0, p0, Lh71;->k:Luv1;

    .line 51
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    new-instance v1, Lg71;

    invoke-direct {v1, v0}, Lg71;-><init>(Luv1;)V

    .line 53
    iget-object v0, p1, Lqo2;->f:Lko2;

    .line 54
    iget-object v0, v0, Lko2;->a:Lzv2;

    .line 55
    invoke-virtual {p1, v1, v0}, Lqo2;->c(Lcv2;Ljava/util/concurrent/Executor;)Lqo2;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lqo2;->e()Llo2;

    move-result-object p1

    return-object p1
.end method

.method public final b()Law2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Law2<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh71;->i:Lg91;

    invoke-virtual {v0}, Lg91;->b()Law2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lh71;->a(Law2;)Law2;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lh71;->c(Law2;)Law2;

    move-result-object v0

    return-object v0
.end method

.method public final c(Law2;)Law2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Law2<",
            "Lhl2;",
            ">;)",
            "Law2<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh71;->c:Lzo2;

    sget-object v1, Lap2;->i:Lap2;

    .line 2
    invoke-virtual {v0, v1, p1}, Lko2;->b(Ljava/lang/Object;Law2;)Lqo2;

    move-result-object p1

    new-instance v0, Lj71;

    invoke-direct {v0, p0}, Lj71;-><init>(Lh71;)V

    .line 3
    new-instance v1, Luo2;

    invoke-direct {v1, v0}, Luo2;-><init>(Ljo2;)V

    .line 4
    iget-object v0, p1, Lqo2;->f:Lko2;

    .line 5
    iget-object v0, v0, Lko2;->a:Lzv2;

    .line 6
    invoke-virtual {p1, v1, v0}, Lqo2;->c(Lcv2;Ljava/util/concurrent/Executor;)Lqo2;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lh71;->e:Lc32;

    .line 8
    invoke-virtual {p1, v0}, Lqo2;->b(Lcv2;)Lqo2;

    move-result-object p1

    .line 9
    sget-object v0, Ly40;->g3:Lo40;

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

    if-nez v0, :cond_0

    .line 13
    sget-object v0, Ly40;->h3:Lo40;

    .line 14
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 15
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lqo2;->a(JLjava/util/concurrent/TimeUnit;)Lqo2;

    move-result-object p1

    .line 17
    :cond_0
    invoke-virtual {p1}, Lqo2;->e()Llo2;

    move-result-object p1

    return-object p1
.end method
