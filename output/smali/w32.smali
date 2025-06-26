.class public final Lw32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsz1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsz1<",
        "Ldp1;",
        "Lzl2;",
        "Lf12;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lgp1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lgp1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lw32;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lw32;->b:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lw32;->c:Lgp1;

    return-void
.end method

.method public static c(Lhl2;Lsk2;Lmz1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhl2;",
            "Lsk2;",
            "Lmz1<",
            "Lzl2;",
            "Lf12;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p2, Lmz1;->b:Ljava/lang/Object;

    check-cast v0, Lzl2;

    iget-object p0, p0, Lhl2;->a:Lcl2;

    iget-object p0, p0, Lcl2;->a:Lll2;

    iget-object p0, p0, Lll2;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object p1, p1, Lsk2;->u:Lorg/json/JSONObject;

    .line 2
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget-object v0, v0, Lzl2;->a:Lig0;

    invoke-interface {v0, p0, p1}, Lig0;->V5(Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 5
    :try_start_2
    new-instance p1, Lpl2;

    invoke-direct {p1, p0}, Lpl2;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "Fail to load ad from adapter "

    .line 6
    iget-object p2, p2, Lmz1;->a:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    invoke-static {p1, p0}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final a(Lhl2;Lsk2;Lmz1;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lpl2;,
            Lz22;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw32;->c:Lgp1;

    new-instance v1, Lv61;

    iget-object v2, p3, Lmz1;->a:Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lv61;-><init>(Lhl2;Lsk2;Ljava/lang/String;)V

    new-instance p1, Lep1;

    new-instance p2, Lz32;

    invoke-direct {p2, p3}, Lz32;-><init>(Lmz1;)V

    invoke-direct {p1, p2}, Lep1;-><init>(Lwh1;)V

    .line 2
    invoke-virtual {v0, v1, p1}, Lgp1;->e(Lv61;Lep1;)Lfp1;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lh61;->a()Lxa1;

    move-result-object p2

    .line 4
    new-instance v0, Le21;

    iget-object v1, p3, Lmz1;->b:Ljava/lang/Object;

    check-cast v1, Lzl2;

    invoke-direct {v0, v1}, Le21;-><init>(Lzl2;)V

    iget-object v1, p0, Lw32;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, v1}, Lxd1;->F0(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 5
    invoke-virtual {p1}, Lh61;->b()Ldb1;

    move-result-object p2

    .line 6
    invoke-virtual {p1}, Lh61;->c()Lx91;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lfp1;->j()Lwb1;

    move-result-object v1

    .line 8
    invoke-virtual {p1}, Lfp1;->l()Lcg1;

    move-result-object v2

    .line 9
    iget-object p3, p3, Lmz1;->c:Llb1;

    check-cast p3, Lf12;

    new-instance v3, La42;

    invoke-direct {v3, v1, v0, p2, v2}, La42;-><init>(Lwb1;Lx91;Ldb1;Lcg1;)V

    .line 10
    monitor-enter p3

    .line 11
    :try_start_0
    iput-object v3, p3, Lf12;->e:Lvn0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p3

    .line 13
    invoke-virtual {p1}, Lfp1;->k()Ldp1;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p3

    throw p1
.end method

.method public final b(Lhl2;Lsk2;Lmz1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhl2;",
            "Lsk2;",
            "Lmz1<",
            "Lzl2;",
            "Lf12;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lpl2;
        }
    .end annotation

    .line 1
    iget-object v0, p3, Lmz1;->b:Ljava/lang/Object;

    check-cast v0, Lzl2;

    invoke-virtual {v0}, Lzl2;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ly32;

    invoke-direct {v0, p0, p1, p2, p3}, Ly32;-><init>(Lw32;Lhl2;Lsk2;Lmz1;)V

    .line 3
    iget-object v1, p3, Lmz1;->c:Llb1;

    check-cast v1, Lf12;

    .line 4
    monitor-enter v1

    .line 5
    :try_start_0
    iput-object v0, v1, Lf12;->g:Ly32;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    monitor-exit v1

    .line 7
    iget-object v0, p3, Lmz1;->b:Ljava/lang/Object;

    check-cast v0, Lzl2;

    iget-object v1, p0, Lw32;->a:Landroid/content/Context;

    iget-object p1, p1, Lhl2;->a:Lcl2;

    iget-object p1, p1, Lcl2;->a:Lll2;

    iget-object v4, p1, Lll2;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object p1, p3, Lmz1;->c:Llb1;

    move-object v6, p1

    check-cast v6, Lvn0;

    iget-object p1, p2, Lsk2;->u:Lorg/json/JSONObject;

    .line 8
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :try_start_1
    iget-object v2, v0, Lzl2;->a:Lig0;

    .line 11
    new-instance v3, Ly20;

    invoke-direct {v3, v1}, Ly20;-><init>(Ljava/lang/Object;)V

    const/4 v5, 0x0

    .line 12
    invoke-interface/range {v2 .. v7}, Lig0;->i5(Lx20;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Lvn0;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 13
    new-instance p2, Lpl2;

    invoke-direct {p2, p1}, Lpl2;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catchall_1
    move-exception p1

    .line 14
    monitor-exit v1

    throw p1

    .line 15
    :cond_0
    invoke-static {p1, p2, p3}, Lw32;->c(Lhl2;Lsk2;Lmz1;)V

    return-void
.end method
