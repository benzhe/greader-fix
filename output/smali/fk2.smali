.class public final Lfk2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrv2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrv2<",
        "Ldp1;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc72;

.field public final synthetic b:Lgk2;

.field public final synthetic c:Lzj2;


# direct methods
.method public constructor <init>(Lzj2;Lc72;Lgk2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfk2;->c:Lzj2;

    iput-object p2, p0, Lfk2;->a:Lc72;

    iput-object p3, p0, Lfk2;->b:Lgk2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lfk2;->c:Lzj2;

    .line 2
    iget-object v0, v0, Lzj2;->e:Lli2;

    .line 3
    invoke-interface {v0}, Lli2;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgp1;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v1}, Lc50;->y1(Ljava/lang/Throwable;Lnz1;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object v1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lgp1;->d()Lh71;

    move-result-object v1

    .line 6
    iget-object v1, v1, Lh71;->l:Lnz1;

    invoke-static {p1, v1}, Lc50;->y1(Ljava/lang/Throwable;Lnz1;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object v1

    .line 7
    :goto_0
    iget-object v2, p0, Lfk2;->c:Lzj2;

    monitor-enter v2

    if-eqz v0, :cond_1

    .line 8
    :try_start_0
    invoke-virtual {v0}, Lgp1;->a()Lba1;

    move-result-object v0

    .line 9
    new-instance v3, Lfa1;

    invoke-direct {v3, v1}, Lfa1;-><init>(Lcom/google/android/gms/internal/ads/zzvh;)V

    invoke-virtual {v0, v3}, Lxd1;->D0(Lzd1;)V

    .line 10
    iget-object v0, p0, Lfk2;->c:Lzj2;

    .line 11
    iget-object v0, v0, Lzj2;->b:Ljava/util/concurrent/Executor;

    .line 12
    new-instance v3, Lhk2;

    invoke-direct {v3, p0, v1}, Lhk2;-><init>(Lfk2;Lcom/google/android/gms/internal/ads/zzvh;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 13
    :cond_1
    iget-object v0, p0, Lfk2;->c:Lzj2;

    .line 14
    iget-object v0, v0, Lzj2;->d:Lej2;

    .line 15
    invoke-virtual {v0, v1}, Lej2;->Q(Lcom/google/android/gms/internal/ads/zzvh;)V

    .line 16
    iget-object v0, p0, Lfk2;->c:Lzj2;

    iget-object v3, p0, Lfk2;->b:Lgk2;

    .line 17
    invoke-virtual {v0, v3}, Lzj2;->b(Loi2;)Lp01;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lp01;->e()Lgp1;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lgp1;->d()Lh71;

    move-result-object v0

    .line 20
    iget-object v0, v0, Lh71;->f:Lmd1;

    .line 21
    sget-object v3, Lsd1;->a:Lzd1;

    invoke-virtual {v0, v3}, Lxd1;->D0(Lzd1;)V

    .line 22
    :goto_1
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzvh;->e:I

    const-string v1, "RewardedAdLoader.onFailure"

    invoke-static {v0, p1, v1}, Lc50;->X1(ILjava/lang/Throwable;Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lfk2;->a:Lc72;

    invoke-interface {p1}, Lc72;->a()V

    .line 24
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ldp1;

    .line 2
    iget-object v0, p0, Lfk2;->c:Lzj2;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p1, Lf61;->g:Lrc1;

    .line 4
    iget-object v1, v1, Lrc1;->e:Lvc1;

    .line 5
    iget-object v2, p0, Lfk2;->c:Lzj2;

    .line 6
    iget-object v2, v2, Lzj2;->d:Lej2;

    .line 7
    iget-object v1, v1, Lvc1;->a:Lrc1;

    .line 8
    iput-object v2, v1, Lrc1;->i:Lej2;

    .line 9
    iget-object v1, p0, Lfk2;->a:Lc72;

    invoke-interface {v1, p1}, Lc72;->onSuccess(Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lfk2;->c:Lzj2;

    .line 11
    iget-object v1, p1, Lzj2;->b:Ljava/util/concurrent/Executor;

    .line 12
    iget-object p1, p1, Lzj2;->d:Lej2;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    new-instance v2, Lek2;

    invoke-direct {v2, p1}, Lek2;-><init>(Lej2;)V

    .line 15
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 16
    iget-object p1, p0, Lfk2;->c:Lzj2;

    .line 17
    iget-object p1, p1, Lzj2;->d:Lej2;

    .line 18
    invoke-virtual {p1}, Lej2;->onAdMetadataChanged()V

    .line 19
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
