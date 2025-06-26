.class public Lxg5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lgh5;

.field public final synthetic f:Ljava/util/concurrent/ExecutorService;

.field public final synthetic g:Ljm5;

.field public final synthetic h:Z

.field public final synthetic i:Lvi5;


# direct methods
.method public constructor <init>(Lgh5;Ljava/util/concurrent/ExecutorService;Ljm5;ZLvi5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxg5;->e:Lgh5;

    iput-object p2, p0, Lxg5;->f:Ljava/util/concurrent/ExecutorService;

    iput-object p3, p0, Lxg5;->g:Ljm5;

    iput-boolean p4, p0, Lxg5;->h:Z

    iput-object p5, p0, Lxg5;->i:Lvi5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lxg5;->e:Lgh5;

    iget-object v1, p0, Lxg5;->f:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lxg5;->g:Ljm5;

    .line 2
    iget-object v3, v0, Lgh5;->b:Lpe5;

    .line 3
    invoke-virtual {v3}, Lpe5;->a()V

    .line 4
    iget-object v3, v3, Lpe5;->c:Lve5;

    .line 5
    iget-object v3, v3, Lve5;->b:Ljava/lang/String;

    .line 6
    iget-object v4, v0, Lgh5;->m:Lbj5;

    .line 7
    invoke-virtual {v4}, Lbj5;->c()Le45;

    move-result-object v4

    new-instance v5, Leh5;

    invoke-direct {v5, v0, v2}, Leh5;-><init>(Lgh5;Ljm5;)V

    .line 8
    invoke-virtual {v4, v1, v5}, Le45;->q(Ljava/util/concurrent/Executor;Ld45;)Le45;

    move-result-object v4

    new-instance v5, Ldh5;

    invoke-direct {v5, v0, v3, v2, v1}, Ldh5;-><init>(Lgh5;Ljava/lang/String;Ljm5;Ljava/util/concurrent/Executor;)V

    .line 9
    invoke-virtual {v4, v1, v5}, Le45;->q(Ljava/util/concurrent/Executor;Ld45;)Le45;

    .line 10
    iget-boolean v0, p0, Lxg5;->h:Z

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lxg5;->i:Lvi5;

    iget-object v1, p0, Lxg5;->g:Ljm5;

    .line 12
    iget-object v2, v0, Lvi5;->k:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lui5;

    invoke-direct {v3, v0, v1}, Lui5;-><init>(Lvi5;Lkm5;)V

    .line 13
    sget-object v0, Lqj5;->a:Ljava/io/FilenameFilter;

    .line 14
    new-instance v0, Lf45;

    invoke-direct {v0}, Lf45;-><init>()V

    .line 15
    new-instance v1, Lsj5;

    invoke-direct {v1, v3, v0}, Lsj5;-><init>(Ljava/util/concurrent/Callable;Lf45;)V

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
