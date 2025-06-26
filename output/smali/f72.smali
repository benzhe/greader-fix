.class public final Lf72;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrv2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrv2<",
        "Lf61;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc72;

.field public final synthetic b:Lji1;

.field public final synthetic c:Le72;


# direct methods
.method public constructor <init>(Le72;Lc72;Lji1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf72;->c:Le72;

    iput-object p2, p0, Lf72;->a:Lc72;

    iput-object p3, p0, Lf72;->b:Lji1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf72;->b:Lji1;

    invoke-virtual {v0}, Lji1;->c()Lh71;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lh71;->l:Lnz1;

    invoke-static {p1, v0}, Lc50;->y1(Ljava/lang/Throwable;Lnz1;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lf72;->b:Lji1;

    invoke-virtual {v1}, Lji1;->d()Lba1;

    move-result-object v1

    .line 4
    new-instance v2, Lfa1;

    invoke-direct {v2, v0}, Lfa1;-><init>(Lcom/google/android/gms/internal/ads/zzvh;)V

    invoke-virtual {v1, v2}, Lxd1;->D0(Lzd1;)V

    .line 5
    iget-object v1, p0, Lf72;->c:Le72;

    .line 6
    iget-object v1, v1, Le72;->b:Lsy0;

    .line 7
    invoke-virtual {v1}, Lsy0;->e()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Li72;

    invoke-direct {v2, p0, v0}, Li72;-><init>(Lf72;Lcom/google/android/gms/internal/ads/zzvh;)V

    .line 8
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvh;->e:I

    const-string v1, "NativeAdLoader.onFailure"

    invoke-static {v0, p1, v1}, Lc50;->X1(ILjava/lang/Throwable;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lf72;->a:Lc72;

    invoke-interface {p1}, Lc72;->a()V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lf61;

    .line 2
    iget-object v0, p0, Lf72;->c:Le72;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p1, Lf61;->g:Lrc1;

    .line 4
    iget-object v1, v1, Lrc1;->e:Lvc1;

    .line 5
    iget-object v2, p0, Lf72;->c:Le72;

    .line 6
    iget-object v2, v2, Le72;->d:Ly62;

    .line 7
    iget-object v2, v2, Ly62;->b:Lw52;

    .line 8
    iget-object v1, v1, Lvc1;->a:Lrc1;

    .line 9
    iput-object v2, v1, Lrc1;->f:Lw52;

    .line 10
    iget-object v1, p0, Lf72;->a:Lc72;

    invoke-interface {v1, p1}, Lc72;->onSuccess(Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lf72;->c:Le72;

    .line 12
    iget-object p1, p1, Le72;->b:Lsy0;

    .line 13
    invoke-virtual {p1}, Lsy0;->e()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v1, Lj72;

    invoke-direct {v1, p0}, Lj72;-><init>(Lf72;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
