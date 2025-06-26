.class public Lgh6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/Object;

.field public static c:Lgh6;


# instance fields
.field public a:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lgh6;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lvg4;

    invoke-direct {v0, p1}, Lvg4;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lgh6;->a:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lgh6;
    .locals 4

    .line 1
    sget-object v0, Lgh6;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lgh6;->c:Lgh6;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MLHandler"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 5
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 6
    new-instance v2, Lgh6;

    invoke-direct {v2, v1}, Lgh6;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lgh6;->c:Lgh6;

    .line 7
    :cond_0
    sget-object v1, Lgh6;->c:Lgh6;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public b(Ljava/util/concurrent/Callable;)Le45;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TResultT;>;)",
            "Le45<",
            "TResultT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lf45;

    invoke-direct {v0}, Lf45;-><init>()V

    .line 2
    new-instance v1, Lqh6;

    invoke-direct {v1, p1, v0}, Lqh6;-><init>(Ljava/util/concurrent/Callable;Lf45;)V

    .line 3
    invoke-static {}, Lgh6;->a()Lgh6;

    move-result-object p1

    .line 4
    iget-object p1, p1, Lgh6;->a:Landroid/os/Handler;

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6
    iget-object p1, v0, Lf45;->a:Le55;

    return-object p1
.end method
