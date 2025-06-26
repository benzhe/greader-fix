.class public final Lt45;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Le45;

.field public final synthetic f:Ls45;


# direct methods
.method public constructor <init>(Ls45;Le45;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt45;->f:Ls45;

    iput-object p2, p0, Lt45;->e:Le45;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lt45;->f:Ls45;

    .line 2
    iget-object v0, v0, Ls45;->b:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lt45;->f:Ls45;

    .line 5
    iget-object v1, v1, Ls45;->c:Lz35;

    if-eqz v1, :cond_0

    .line 6
    iget-object v2, p0, Lt45;->e:Le45;

    invoke-interface {v1, v2}, Lz35;->a(Le45;)V

    .line 7
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
