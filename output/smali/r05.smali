.class public final Lr05;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzas;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lbg4;

.field public final synthetic h:Lh15;


# direct methods
.method public constructor <init>(Lh15;Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;Lbg4;)V
    .locals 0

    iput-object p1, p0, Lr05;->h:Lh15;

    iput-object p2, p0, Lr05;->e:Lcom/google/android/gms/measurement/internal/zzas;

    iput-object p3, p0, Lr05;->f:Ljava/lang/String;

    iput-object p4, p0, Lr05;->g:Lbg4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lr05;->h:Lh15;

    .line 1
    iget-object v2, v1, Lh15;->d:Lhw4;

    if-nez v2, :cond_0

    .line 2
    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 3
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 4
    iget-object v1, v1, Lqw4;->f:Low4;

    const-string v2, "Discarding data. Failed to send event to service to bundle"

    .line 5
    invoke-virtual {v1, v2}, Low4;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lr05;->h:Lh15;

    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 6
    :goto_0
    invoke-virtual {v1}, Lrx4;->t()Lp25;

    move-result-object v1

    iget-object v2, p0, Lr05;->g:Lbg4;

    .line 7
    invoke-virtual {v1, v2, v0}, Lp25;->S(Lbg4;[B)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lr05;->e:Lcom/google/android/gms/measurement/internal/zzas;

    iget-object v3, p0, Lr05;->f:Ljava/lang/String;

    .line 8
    invoke-interface {v2, v1, v3}, Lhw4;->I3(Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lr05;->h:Lh15;

    .line 9
    invoke-virtual {v1}, Lh15;->s()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    iget-object v1, p0, Lr05;->h:Lh15;

    iget-object v1, v1, Lly4;->a:Lrx4;

    goto :goto_0

    .line 11
    :goto_1
    :try_start_2
    iget-object v2, p0, Lr05;->h:Lh15;

    iget-object v2, v2, Lly4;->a:Lrx4;

    .line 12
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 13
    iget-object v2, v2, Lqw4;->f:Low4;

    const-string v3, "Failed to send event to the service to bundle"

    .line 14
    invoke-virtual {v2, v3, v1}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lr05;->h:Lh15;

    iget-object v1, v1, Lly4;->a:Lrx4;

    goto :goto_0

    .line 15
    :goto_2
    iget-object v2, p0, Lr05;->h:Lh15;

    iget-object v2, v2, Lly4;->a:Lrx4;

    .line 16
    invoke-virtual {v2}, Lrx4;->t()Lp25;

    move-result-object v2

    iget-object v3, p0, Lr05;->g:Lbg4;

    .line 17
    invoke-virtual {v2, v3, v0}, Lp25;->S(Lbg4;[B)V

    .line 18
    throw v1
.end method
