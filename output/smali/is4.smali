.class public abstract Lis4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile d:Landroid/os/Handler;


# instance fields
.field public final a:Lny4;

.field public final b:Ljava/lang/Runnable;

.field public volatile c:J


# direct methods
.method public constructor <init>(Lny4;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "null reference"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lis4;->a:Lny4;

    new-instance v0, Lhs4;

    .line 3
    invoke-direct {v0, p0, p1}, Lhs4;-><init>(Lis4;Lny4;)V

    iput-object v0, p0, Lis4;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final b(J)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lis4;->c()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget-object v0, p0, Lis4;->a:Lny4;

    .line 2
    invoke-interface {v0}, Lny4;->e()Lb20;

    move-result-object v0

    invoke-interface {v0}, Lb20;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lis4;->c:J

    .line 3
    invoke-virtual {p0}, Lis4;->d()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lis4;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lis4;->a:Lny4;

    .line 4
    invoke-interface {v0}, Lny4;->a()Lqw4;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lqw4;->f:Low4;

    .line 6
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "Failed to schedule delayed post. time"

    invoke-virtual {v0, p2, p1}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lis4;->c:J

    .line 1
    invoke-virtual {p0}, Lis4;->d()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lis4;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()Landroid/os/Handler;
    .locals 3

    sget-object v0, Lis4;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lis4;->d:Landroid/os/Handler;

    return-object v0

    :cond_0
    const-class v0, Lis4;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lis4;->d:Landroid/os/Handler;

    if-nez v1, :cond_1

    new-instance v1, Lcc4;

    iget-object v2, p0, Lis4;->a:Lny4;

    .line 1
    invoke-interface {v2}, Lny4;->j()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcc4;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lis4;->d:Landroid/os/Handler;

    :cond_1
    sget-object v1, Lis4;->d:Landroid/os/Handler;

    .line 2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
