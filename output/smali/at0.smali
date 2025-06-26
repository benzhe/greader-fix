.class public Lat0;
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

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Lxs0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs0<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lxs0;

    invoke-direct {v0}, Lxs0;-><init>()V

    .line 3
    iput-object v0, p0, Lat0;->a:Lxs0;

    .line 4
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lat0;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    new-instance v1, Ldt0;

    invoke-direct {v1, p0}, Ldt0;-><init>(Lat0;)V

    .line 6
    sget-object v2, Lms0;->f:Lzv2;

    .line 7
    new-instance v3, Lsv2;

    invoke-direct {v3, v0, v1}, Lsv2;-><init>(Ljava/util/concurrent/Future;Lrv2;)V

    invoke-virtual {v0, v3, v2}, Lxs0;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lat0;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lat0;->a:Lxs0;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0, v1}, Lxs0;->b(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final c(Lbt0;Lzs0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbt0<",
            "TT;>;",
            "Lzs0;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lat0;->a:Lxs0;

    new-instance v1, Lct0;

    invoke-direct {v1, p1, p2}, Lct0;-><init>(Lbt0;Lzs0;)V

    .line 2
    sget-object p1, Lms0;->f:Lzv2;

    .line 3
    new-instance p2, Lsv2;

    invoke-direct {p2, v0, v1}, Lsv2;-><init>(Ljava/util/concurrent/Future;Lrv2;)V

    .line 4
    iget-object v0, v0, Lxs0;->e:Liw2;

    invoke-virtual {v0, p2, p1}, Lsu2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
