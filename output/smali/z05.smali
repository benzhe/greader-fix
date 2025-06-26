.class public final Lz05;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lcom/google/android/gms/measurement/internal/zzp;

.field public final synthetic h:Lbg4;

.field public final synthetic i:Lh15;


# direct methods
.method public constructor <init>(Lh15;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzp;Lbg4;)V
    .locals 0

    iput-object p1, p0, Lz05;->i:Lh15;

    iput-object p2, p0, Lz05;->e:Ljava/lang/String;

    iput-object p3, p0, Lz05;->f:Ljava/lang/String;

    iput-object p4, p0, Lz05;->g:Lcom/google/android/gms/measurement/internal/zzp;

    iput-object p5, p0, Lz05;->h:Lbg4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v1, p0, Lz05;->i:Lh15;

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

    const-string v2, "Failed to get conditional properties; not connected to service"

    .line 6
    iget-object v3, p0, Lz05;->e:Ljava/lang/String;

    iget-object v4, p0, Lz05;->f:Ljava/lang/String;

    .line 7
    invoke-virtual {v1, v2, v3, v4}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lz05;->i:Lh15;

    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 8
    :goto_0
    invoke-virtual {v1}, Lrx4;->t()Lp25;

    move-result-object v1

    iget-object v2, p0, Lz05;->h:Lbg4;

    .line 9
    invoke-virtual {v1, v2, v0}, Lp25;->V(Lbg4;Ljava/util/ArrayList;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lz05;->g:Lcom/google/android/gms/measurement/internal/zzp;

    const-string v3, "null reference"

    .line 10
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    iget-object v1, p0, Lz05;->e:Ljava/lang/String;

    iget-object v3, p0, Lz05;->f:Ljava/lang/String;

    iget-object v4, p0, Lz05;->g:Lcom/google/android/gms/measurement/internal/zzp;

    .line 12
    invoke-interface {v2, v1, v3, v4}, Lhw4;->q0(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzp;)Ljava/util/List;

    move-result-object v1

    .line 13
    invoke-static {v1}, Lp25;->W(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lz05;->i:Lh15;

    .line 14
    invoke-virtual {v1}, Lh15;->s()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    iget-object v1, p0, Lz05;->i:Lh15;

    iget-object v1, v1, Lly4;->a:Lrx4;

    goto :goto_0

    .line 16
    :goto_1
    :try_start_2
    iget-object v2, p0, Lz05;->i:Lh15;

    iget-object v2, v2, Lly4;->a:Lrx4;

    .line 17
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 18
    iget-object v2, v2, Lqw4;->f:Low4;

    const-string v3, "Failed to get conditional properties; remote exception"

    .line 19
    iget-object v4, p0, Lz05;->e:Ljava/lang/String;

    iget-object v5, p0, Lz05;->f:Ljava/lang/String;

    .line 20
    invoke-virtual {v2, v3, v4, v5, v1}, Low4;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lz05;->i:Lh15;

    iget-object v1, v1, Lly4;->a:Lrx4;

    goto :goto_0

    .line 21
    :goto_2
    iget-object v2, p0, Lz05;->i:Lh15;

    iget-object v2, v2, Lly4;->a:Lrx4;

    .line 22
    invoke-virtual {v2}, Lrx4;->t()Lp25;

    move-result-object v2

    iget-object v3, p0, Lz05;->h:Lbg4;

    .line 23
    invoke-virtual {v2, v3, v0}, Lp25;->V(Lbg4;Ljava/util/ArrayList;)V

    .line 24
    throw v1
.end method
