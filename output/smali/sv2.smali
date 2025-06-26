.class public final Lsv2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final e:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final f:Lrv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrv2<",
            "-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;Lrv2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Lrv2<",
            "-TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lsv2;->e:Ljava/util/concurrent/Future;

    .line 3
    iput-object p2, p0, Lsv2;->f:Lrv2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsv2;->e:Ljava/util/concurrent/Future;

    instance-of v1, v0, Lqw2;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lqw2;

    .line 3
    invoke-virtual {v0}, Lqw2;->a()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lsv2;->f:Lrv2;

    invoke-interface {v1, v0}, Lrv2;->a(Ljava/lang/Throwable;)V

    return-void

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Lsv2;->e:Ljava/util/concurrent/Future;

    invoke-static {v0}, Lvt2;->e(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    iget-object v1, p0, Lsv2;->f:Lrv2;

    invoke-interface {v1, v0}, Lrv2;->onSuccess(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 7
    :goto_0
    iget-object v1, p0, Lsv2;->f:Lrv2;

    invoke-interface {v1, v0}, Lrv2;->a(Ljava/lang/Throwable;)V

    return-void

    :catch_2
    move-exception v0

    .line 8
    iget-object v1, p0, Lsv2;->f:Lrv2;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, Lrv2;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lxs2;

    const-class v1, Lsv2;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lxs2;-><init>(Ljava/lang/String;Lys2;)V

    .line 2
    iget-object v1, p0, Lsv2;->f:Lrv2;

    .line 3
    new-instance v3, Lzs2;

    invoke-direct {v3, v2}, Lzs2;-><init>(Lys2;)V

    .line 4
    iget-object v2, v0, Lxs2;->c:Lzs2;

    iput-object v3, v2, Lzs2;->b:Lzs2;

    iput-object v3, v0, Lxs2;->c:Lzs2;

    .line 5
    iput-object v1, v3, Lzs2;->a:Ljava/lang/Object;

    .line 6
    invoke-virtual {v0}, Lxs2;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
