.class public final Lk05;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzp;

.field public final synthetic f:Lh15;


# direct methods
.method public constructor <init>(Lh15;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 0

    iput-object p1, p0, Lk05;->f:Lh15;

    iput-object p2, p0, Lk05;->e:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lk05;->f:Lh15;

    .line 1
    iget-object v1, v0, Lh15;->d:Lhw4;

    if-nez v1, :cond_0

    .line 2
    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 3
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lqw4;->f:Low4;

    const-string v1, "Failed to reset data on the service: not connected to service"

    .line 5
    invoke-virtual {v0, v1}, Low4;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lk05;->e:Lcom/google/android/gms/measurement/internal/zzp;

    const-string v2, "null reference"

    .line 6
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lk05;->e:Lcom/google/android/gms/measurement/internal/zzp;

    .line 8
    invoke-interface {v1, v0}, Lhw4;->h3(Lcom/google/android/gms/measurement/internal/zzp;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    iget-object v1, p0, Lk05;->f:Lh15;

    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 10
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 11
    iget-object v1, v1, Lqw4;->f:Low4;

    const-string v2, "Failed to reset data on the service: remote exception"

    .line 12
    invoke-virtual {v1, v2, v0}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    :goto_0
    iget-object v0, p0, Lk05;->f:Lh15;

    .line 14
    invoke-virtual {v0}, Lh15;->s()V

    return-void
.end method
