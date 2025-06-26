.class public final Lwi2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrv2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrv2<",
        "Lqg1;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc72;

.field public final synthetic b:Loh1;

.field public final synthetic c:Lui2;


# direct methods
.method public constructor <init>(Lui2;Lc72;Loh1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwi2;->c:Lui2;

    iput-object p2, p0, Lwi2;->a:Lc72;

    iput-object p3, p0, Lwi2;->b:Loh1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lwi2;->b:Loh1;

    invoke-virtual {v0}, Loh1;->b()Lh71;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lh71;->l:Lnz1;

    invoke-static {p1, v0}, Lc50;->y1(Ljava/lang/Throwable;Lnz1;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lwi2;->c:Lui2;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, p0, Lwi2;->c:Lui2;

    const/4 v3, 0x0

    .line 5
    iput-object v3, v2, Lui2;->h:Law2;

    .line 6
    iget-object v2, p0, Lwi2;->b:Loh1;

    invoke-virtual {v2}, Loh1;->c()Lba1;

    move-result-object v2

    .line 7
    new-instance v3, Lfa1;

    invoke-direct {v3, v0}, Lfa1;-><init>(Lcom/google/android/gms/internal/ads/zzvh;)V

    invoke-virtual {v2, v3}, Lxd1;->D0(Lzd1;)V

    .line 8
    sget-object v2, Ly40;->N4:Lo40;

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

    if-eqz v2, :cond_0

    .line 12
    iget-object v2, p0, Lwi2;->c:Lui2;

    .line 13
    iget-object v2, v2, Lui2;->b:Ljava/util/concurrent/Executor;

    .line 14
    new-instance v3, Lbj2;

    invoke-direct {v3, p0, v0}, Lbj2;-><init>(Lwi2;Lcom/google/android/gms/internal/ads/zzvh;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 15
    iget-object v2, p0, Lwi2;->c:Lui2;

    .line 16
    iget-object v2, v2, Lui2;->b:Ljava/util/concurrent/Executor;

    .line 17
    new-instance v3, Laj2;

    invoke-direct {v3, p0, v0}, Laj2;-><init>(Lwi2;Lcom/google/android/gms/internal/ads/zzvh;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18
    :cond_0
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvh;->e:I

    const-string v2, "InterstitialAdLoader.onFailure"

    invoke-static {v0, p1, v2}, Lc50;->X1(ILjava/lang/Throwable;Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Lwi2;->a:Lc72;

    invoke-interface {p1}, Lc72;->a()V

    .line 20
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lqg1;

    .line 2
    iget-object v0, p0, Lwi2;->c:Lui2;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lwi2;->c:Lui2;

    const/4 v2, 0x0

    .line 4
    iput-object v2, v1, Lui2;->h:Law2;

    .line 5
    sget-object v1, Ly40;->N4:Lo40;

    .line 6
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 7
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    iget-object v2, p1, Lf61;->g:Lrc1;

    .line 10
    iget-object v2, v2, Lrc1;->e:Lvc1;

    .line 11
    iget-object v3, p0, Lwi2;->c:Lui2;

    .line 12
    iget-object v4, v3, Lui2;->d:Lw52;

    .line 13
    iget-object v2, v2, Lvc1;->a:Lrc1;

    .line 14
    iput-object v4, v2, Lrc1;->f:Lw52;

    .line 15
    iget-object v3, v3, Lui2;->e:Lej2;

    .line 16
    iput-object v3, v2, Lrc1;->i:Lej2;

    .line 17
    :cond_0
    iget-object v2, p0, Lwi2;->a:Lc72;

    invoke-interface {v2, p1}, Lc72;->onSuccess(Ljava/lang/Object;)V

    .line 18
    sget-object p1, Los3;->j:Los3;

    iget-object p1, p1, Los3;->f:Lu40;

    .line 19
    invoke-virtual {p1, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p1

    .line 20
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 21
    iget-object p1, p0, Lwi2;->c:Lui2;

    .line 22
    iget-object p1, p1, Lui2;->b:Ljava/util/concurrent/Executor;

    .line 23
    new-instance v1, Lzi2;

    invoke-direct {v1, p0}, Lzi2;-><init>(Lwi2;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 24
    iget-object p1, p0, Lwi2;->c:Lui2;

    .line 25
    iget-object p1, p1, Lui2;->b:Ljava/util/concurrent/Executor;

    .line 26
    new-instance v1, Lyi2;

    invoke-direct {v1, p0}, Lyi2;-><init>(Lwi2;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 27
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
