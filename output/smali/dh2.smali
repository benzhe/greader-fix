.class public final Ldh2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc72;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc72<",
        "Le41;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lzg2;


# direct methods
.method public constructor <init>(Lzg2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldh2;->a:Lzg2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Ldh2;->a:Lzg2;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ldh2;->a:Lzg2;

    const/4 v2, 0x0

    iput-object v2, v1, Lzg2;->m:Le41;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Le41;

    .line 2
    iget-object v0, p0, Ldh2;->a:Lzg2;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Ldh2;->a:Lzg2;

    iget-object v1, v1, Lzg2;->m:Le41;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Le41;->a()V

    .line 5
    :cond_0
    iget-object v1, p0, Ldh2;->a:Lzg2;

    iput-object p1, v1, Lzg2;->m:Le41;

    .line 6
    iget-object v2, p1, Le41;->h:Lxw0;

    if-eqz v2, :cond_1

    .line 7
    invoke-interface {v2, v1}, Lxw0;->S(Lqn3;)V

    .line 8
    :cond_1
    iget-object v1, p0, Ldh2;->a:Lzg2;

    .line 9
    iget-object v1, v1, Lzg2;->j:Lmg2;

    .line 10
    new-instance v2, Ld41;

    iget-object v3, p0, Ldh2;->a:Lzg2;

    .line 11
    iget-object v4, v3, Lzg2;->j:Lmg2;

    .line 12
    invoke-direct {v2, p1, v3, v4}, Ld41;-><init>(Le41;Lit3;Lmg2;)V

    .line 13
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :goto_0
    iget-object v3, v1, Lmg2;->l:Lmg2;

    if-eqz v3, :cond_2

    move-object v1, v3

    goto :goto_0

    .line 15
    :cond_2
    iget-object v1, v1, Lmg2;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_3

    goto :goto_1

    .line 17
    :cond_3
    :try_start_1
    check-cast v1, Lyn3;

    .line 18
    invoke-interface {v1, v2}, Lyn3;->W1(Lxn3;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "#007 Could not call remote method."

    .line 19
    invoke-static {v2, v1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    :goto_1
    invoke-virtual {p1}, Lf61;->b()V

    .line 21
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
