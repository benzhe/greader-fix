.class public final Li05;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lcom/google/android/gms/measurement/internal/zzp;

.field public final synthetic h:Z

.field public final synthetic i:Lbg4;

.field public final synthetic j:Lh15;


# direct methods
.method public constructor <init>(Lh15;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzp;ZLbg4;)V
    .locals 0

    iput-object p1, p0, Li05;->j:Lh15;

    iput-object p2, p0, Li05;->e:Ljava/lang/String;

    iput-object p3, p0, Li05;->f:Ljava/lang/String;

    iput-object p4, p0, Li05;->g:Lcom/google/android/gms/measurement/internal/zzp;

    iput-boolean p5, p0, Li05;->h:Z

    iput-object p6, p0, Li05;->i:Lbg4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    .line 1
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    iget-object v1, p0, Li05;->j:Lh15;

    .line 2
    iget-object v2, v1, Lh15;->d:Lhw4;

    if-nez v2, :cond_0

    .line 3
    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 4
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 5
    iget-object v1, v1, Lqw4;->f:Low4;

    const-string v2, "Failed to get user properties; not connected to service"

    .line 6
    iget-object v3, p0, Li05;->e:Ljava/lang/String;

    iget-object v4, p0, Li05;->f:Ljava/lang/String;

    .line 7
    invoke-virtual {v1, v2, v3, v4}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Li05;->j:Lh15;

    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 8
    invoke-virtual {v1}, Lrx4;->t()Lp25;

    move-result-object v1

    iget-object v2, p0, Li05;->i:Lbg4;

    .line 9
    invoke-virtual {v1, v2, v0}, Lp25;->U(Lbg4;Landroid/os/Bundle;)V

    return-void

    :catchall_0
    move-exception v1

    goto/16 :goto_3

    :cond_0
    :try_start_1
    iget-object v1, p0, Li05;->g:Lcom/google/android/gms/measurement/internal/zzp;

    const-string v3, "null reference"

    .line 10
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    iget-object v1, p0, Li05;->e:Ljava/lang/String;

    iget-object v3, p0, Li05;->f:Ljava/lang/String;

    iget-boolean v4, p0, Li05;->h:Z

    iget-object v5, p0, Li05;->g:Lcom/google/android/gms/measurement/internal/zzp;

    .line 12
    invoke-interface {v2, v1, v3, v4, v5}, Lhw4;->Q2(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzp;)Ljava/util/List;

    move-result-object v1

    .line 13
    new-instance v2, Landroid/os/Bundle;

    .line 14
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    if-nez v1, :cond_1

    goto :goto_1

    .line 15
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzkr;

    .line 16
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzkr;->i:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 17
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkr;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_3
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzkr;->h:Ljava/lang/Long;

    if-eqz v4, :cond_4

    .line 19
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkr;->f:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 20
    :cond_4
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzkr;->k:Ljava/lang/Double;

    if-eqz v4, :cond_2

    .line 21
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkr;->f:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 22
    :cond_5
    :goto_1
    :try_start_2
    iget-object v0, p0, Li05;->j:Lh15;

    .line 23
    invoke-virtual {v0}, Lh15;->s()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 24
    iget-object v0, p0, Li05;->j:Lh15;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 25
    invoke-virtual {v0}, Lrx4;->t()Lp25;

    move-result-object v0

    iget-object v1, p0, Li05;->i:Lbg4;

    .line 26
    invoke-virtual {v0, v1, v2}, Lp25;->U(Lbg4;Landroid/os/Bundle;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 27
    :goto_2
    :try_start_3
    iget-object v1, p0, Li05;->j:Lh15;

    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 28
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 29
    iget-object v1, v1, Lqw4;->f:Low4;

    const-string v3, "Failed to get user properties; remote exception"

    .line 30
    iget-object v4, p0, Li05;->e:Ljava/lang/String;

    .line 31
    invoke-virtual {v1, v3, v4, v0}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v0, p0, Li05;->j:Lh15;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 32
    invoke-virtual {v0}, Lrx4;->t()Lp25;

    move-result-object v0

    iget-object v1, p0, Li05;->i:Lbg4;

    .line 33
    invoke-virtual {v0, v1, v2}, Lp25;->U(Lbg4;Landroid/os/Bundle;)V

    return-void

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    :goto_3
    iget-object v2, p0, Li05;->j:Lh15;

    iget-object v2, v2, Lly4;->a:Lrx4;

    .line 34
    invoke-virtual {v2}, Lrx4;->t()Lp25;

    move-result-object v2

    iget-object v3, p0, Li05;->i:Lbg4;

    .line 35
    invoke-virtual {v2, v3, v0}, Lp25;->U(Lbg4;Landroid/os/Bundle;)V

    .line 36
    throw v1
.end method
