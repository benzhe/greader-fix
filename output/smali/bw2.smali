.class public final Lbw2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic e:Ljava/util/concurrent/Executor;

.field public final synthetic f:Lsu2;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lsu2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbw2;->e:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lbw2;->f:Lsu2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lbw2;->e:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    iget-object v0, p0, Lbw2;->f:Lsu2;

    invoke-virtual {v0, p1}, Lsu2;->j(Ljava/lang/Throwable;)Z

    return-void
.end method
