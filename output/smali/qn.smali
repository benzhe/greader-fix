.class public final Lqn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lin;

.field public final synthetic f:Ltn;


# direct methods
.method public constructor <init>(Ltn;Lin;)V
    .locals 0

    iput-object p1, p0, Lqn;->f:Ltn;

    iput-object p2, p0, Lqn;->e:Lin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lqn;->f:Ltn;

    .line 1
    iget-object v0, v0, Ltn;->a:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lqn;->f:Ltn;

    .line 3
    iget-object v1, v1, Ltn;->c:Lgn;

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, p0, Lqn;->e:Lin;

    .line 5
    invoke-interface {v1, v2}, Lgn;->a(Lin;)V

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
