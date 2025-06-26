.class public final Ll05;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f:Lcom/google/android/gms/measurement/internal/zzp;

.field public final synthetic g:Lh15;


# direct methods
.method public constructor <init>(Lh15;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 0

    iput-object p1, p0, Ll05;->g:Lh15;

    iput-object p2, p0, Ll05;->e:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Ll05;->f:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Ll05;->e:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lpc4;->b()Z

    iget-object v1, p0, Ll05;->g:Lh15;

    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 2
    iget-object v1, v1, Lrx4;->g:Lcs4;

    .line 3
    sget-object v2, Lew4;->E0:Ldw4;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ll05;->g:Lh15;

    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 4
    invoke-virtual {v1}, Lrx4;->q()Lex4;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lex4;->s()Lds4;

    move-result-object v1

    invoke-virtual {v1}, Lds4;->e()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ll05;->g:Lh15;

    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 6
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 7
    iget-object v1, v1, Lqw4;->k:Low4;

    const-string v2, "Analytics storage consent denied; will not get app instance id"

    .line 8
    invoke-virtual {v1, v2}, Low4;->a(Ljava/lang/String;)V

    iget-object v1, p0, Ll05;->g:Lh15;

    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 9
    invoke-virtual {v1}, Lrx4;->s()Lsz4;

    move-result-object v1

    .line 10
    iget-object v1, v1, Lsz4;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 12
    iget-object v1, p0, Ll05;->g:Lh15;

    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 13
    invoke-virtual {v1}, Lrx4;->q()Lex4;

    move-result-object v1

    .line 14
    iget-object v1, v1, Lex4;->l:Ldx4;

    invoke-virtual {v1, v3}, Ldx4;->b(Ljava/lang/String;)V

    iget-object v1, p0, Ll05;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Ll05;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :try_start_2
    iget-object v1, p0, Ll05;->g:Lh15;

    .line 17
    iget-object v2, v1, Lh15;->d:Lhw4;

    if-nez v2, :cond_1

    .line 18
    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 19
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 20
    iget-object v1, v1, Lqw4;->f:Low4;

    const-string v2, "Failed to get app instance id"

    .line 21
    invoke-virtual {v1, v2}, Low4;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Ll05;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :cond_1
    :try_start_4
    iget-object v1, p0, Ll05;->f:Lcom/google/android/gms/measurement/internal/zzp;

    const-string v3, "null reference"

    .line 23
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    iget-object v1, p0, Ll05;->e:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Ll05;->f:Lcom/google/android/gms/measurement/internal/zzp;

    .line 25
    invoke-interface {v2, v3}, Lhw4;->Z0(Lcom/google/android/gms/measurement/internal/zzp;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, p0, Ll05;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 26
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v2, p0, Ll05;->g:Lh15;

    iget-object v2, v2, Lly4;->a:Lrx4;

    .line 27
    invoke-virtual {v2}, Lrx4;->s()Lsz4;

    move-result-object v2

    .line 28
    iget-object v2, v2, Lsz4;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 29
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 30
    iget-object v2, p0, Ll05;->g:Lh15;

    iget-object v2, v2, Lly4;->a:Lrx4;

    .line 31
    invoke-virtual {v2}, Lrx4;->q()Lex4;

    move-result-object v2

    .line 32
    iget-object v2, v2, Lex4;->l:Ldx4;

    invoke-virtual {v2, v1}, Ldx4;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Ll05;->g:Lh15;

    .line 33
    invoke-virtual {v1}, Lh15;->s()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 34
    :try_start_5
    iget-object v1, p0, Ll05;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 35
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 36
    :goto_1
    :try_start_6
    iget-object v2, p0, Ll05;->g:Lh15;

    iget-object v2, v2, Lly4;->a:Lrx4;

    .line 37
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 38
    iget-object v2, v2, Lqw4;->f:Low4;

    const-string v3, "Failed to get app instance id"

    .line 39
    invoke-virtual {v2, v3, v1}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v1, p0, Ll05;->e:Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_0

    .line 40
    :goto_2
    monitor-exit v0

    return-void

    .line 41
    :goto_3
    iget-object v2, p0, Ll05;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 42
    throw v1

    :catchall_1
    move-exception v1

    .line 43
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1
.end method
