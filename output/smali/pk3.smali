.class public final Lpk3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lj40;

.field public final synthetic f:Lzh3;


# direct methods
.method public constructor <init>(Lzh3;Lj40;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpk3;->f:Lzh3;

    iput-object p2, p0, Lpk3;->e:Lj40;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lpk3;->f:Lzh3;

    .line 2
    iget-object v0, v0, Lzh3;->f:Ljava/util/concurrent/BlockingQueue;

    .line 3
    iget-object v1, p0, Lpk3;->e:Lj40;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 4
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
