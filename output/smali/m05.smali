.class public final Lm05;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzp;

.field public final synthetic f:Lbg4;

.field public final synthetic g:Lh15;


# direct methods
.method public constructor <init>(Lh15;Lcom/google/android/gms/measurement/internal/zzp;Lbg4;)V
    .locals 0

    iput-object p1, p0, Lm05;->g:Lh15;

    iput-object p2, p0, Lm05;->e:Lcom/google/android/gms/measurement/internal/zzp;

    iput-object p3, p0, Lm05;->f:Lbg4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const-string v0, "Failed to get app instance id"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lpc4;->b()Z

    iget-object v2, p0, Lm05;->g:Lh15;

    iget-object v2, v2, Lly4;->a:Lrx4;

    .line 2
    iget-object v2, v2, Lrx4;->g:Lcs4;

    .line 3
    sget-object v3, Lew4;->E0:Ldw4;

    invoke-virtual {v2, v1, v3}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lm05;->g:Lh15;

    iget-object v2, v2, Lly4;->a:Lrx4;

    .line 4
    invoke-virtual {v2}, Lrx4;->q()Lex4;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Lex4;->s()Lds4;

    move-result-object v2

    invoke-virtual {v2}, Lds4;->e()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lm05;->g:Lh15;

    iget-object v2, v2, Lly4;->a:Lrx4;

    .line 6
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 7
    iget-object v2, v2, Lqw4;->k:Low4;

    const-string v3, "Analytics storage consent denied; will not get app instance id"

    .line 8
    invoke-virtual {v2, v3}, Low4;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lm05;->g:Lh15;

    iget-object v2, v2, Lly4;->a:Lrx4;

    .line 9
    invoke-virtual {v2}, Lrx4;->s()Lsz4;

    move-result-object v2

    .line 10
    iget-object v2, v2, Lsz4;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 12
    iget-object v2, p0, Lm05;->g:Lh15;

    iget-object v2, v2, Lly4;->a:Lrx4;

    .line 13
    invoke-virtual {v2}, Lrx4;->q()Lex4;

    move-result-object v2

    .line 14
    iget-object v2, v2, Lex4;->l:Ldx4;

    invoke-virtual {v2, v1}, Ldx4;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lm05;->g:Lh15;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 15
    :goto_0
    invoke-virtual {v0}, Lrx4;->t()Lp25;

    move-result-object v0

    iget-object v2, p0, Lm05;->f:Lbg4;

    .line 16
    invoke-virtual {v0, v2, v1}, Lp25;->P(Lbg4;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v2, p0, Lm05;->g:Lh15;

    .line 17
    iget-object v3, v2, Lh15;->d:Lhw4;

    if-nez v3, :cond_1

    .line 18
    iget-object v2, v2, Lly4;->a:Lrx4;

    .line 19
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 20
    iget-object v2, v2, Lqw4;->f:Low4;

    .line 21
    invoke-virtual {v2, v0}, Low4;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lm05;->g:Lh15;

    iget-object v0, v0, Lly4;->a:Lrx4;

    goto :goto_0

    .line 22
    :cond_1
    :try_start_2
    iget-object v2, p0, Lm05;->e:Lcom/google/android/gms/measurement/internal/zzp;

    const-string v4, "null reference"

    .line 23
    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    iget-object v2, p0, Lm05;->e:Lcom/google/android/gms/measurement/internal/zzp;

    .line 25
    invoke-interface {v3, v2}, Lhw4;->Z0(Lcom/google/android/gms/measurement/internal/zzp;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lm05;->g:Lh15;

    iget-object v2, v2, Lly4;->a:Lrx4;

    .line 26
    invoke-virtual {v2}, Lrx4;->s()Lsz4;

    move-result-object v2

    .line 27
    iget-object v2, v2, Lsz4;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 28
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 29
    iget-object v2, p0, Lm05;->g:Lh15;

    iget-object v2, v2, Lly4;->a:Lrx4;

    .line 30
    invoke-virtual {v2}, Lrx4;->q()Lex4;

    move-result-object v2

    .line 31
    iget-object v2, v2, Lex4;->l:Ldx4;

    invoke-virtual {v2, v1}, Ldx4;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lm05;->g:Lh15;

    .line 32
    invoke-virtual {v2}, Lh15;->s()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    iget-object v0, p0, Lm05;->g:Lh15;

    iget-object v0, v0, Lly4;->a:Lrx4;

    goto :goto_0

    .line 34
    :goto_1
    :try_start_3
    iget-object v3, p0, Lm05;->g:Lh15;

    iget-object v3, v3, Lly4;->a:Lrx4;

    .line 35
    invoke-virtual {v3}, Lrx4;->a()Lqw4;

    move-result-object v3

    .line 36
    iget-object v3, v3, Lqw4;->f:Low4;

    .line 37
    invoke-virtual {v3, v0, v2}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lm05;->g:Lh15;

    iget-object v0, v0, Lly4;->a:Lrx4;

    goto :goto_0

    .line 38
    :goto_2
    iget-object v2, p0, Lm05;->g:Lh15;

    iget-object v2, v2, Lly4;->a:Lrx4;

    .line 39
    invoke-virtual {v2}, Lrx4;->t()Lp25;

    move-result-object v2

    iget-object v3, p0, Lm05;->f:Lbg4;

    .line 40
    invoke-virtual {v2, v3, v1}, Lp25;->P(Lbg4;Ljava/lang/String;)V

    .line 41
    throw v0
.end method
