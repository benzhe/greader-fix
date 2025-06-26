.class public final Lmo3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li00$a;


# instance fields
.field public final synthetic a:Lio3;


# direct methods
.method public constructor <init>(Lio3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmo3;->a:Lio3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Z(I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lmo3;->a:Lio3;

    .line 2
    iget-object p1, p1, Lio3;->b:Ljava/lang/Object;

    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lmo3;->a:Lio3;

    const/4 v1, 0x0

    .line 5
    iput-object v1, v0, Lio3;->e:Lso3;

    .line 6
    iget-object v0, v0, Lio3;->b:Ljava/lang/Object;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 8
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final l0(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lmo3;->a:Lio3;

    .line 2
    iget-object p1, p1, Lio3;->b:Ljava/lang/Object;

    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lmo3;->a:Lio3;

    .line 5
    iget-object v1, v0, Lio3;->c:Loo3;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Loo3;->p()Lso3;

    move-result-object v1

    .line 7
    iput-object v1, v0, Lio3;->e:Lso3;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Unable to obtain a cache service instance."

    .line 8
    invoke-static {v1, v0}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    iget-object v0, p0, Lmo3;->a:Lio3;

    invoke-static {v0}, Lio3;->d(Lio3;)V

    .line 10
    :cond_0
    :goto_0
    iget-object v0, p0, Lmo3;->a:Lio3;

    .line 11
    iget-object v0, v0, Lio3;->b:Ljava/lang/Object;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 13
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
