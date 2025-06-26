.class public final Lp05;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzp;

.field public final synthetic f:Landroid/os/Bundle;

.field public final synthetic g:Lh15;


# direct methods
.method public constructor <init>(Lh15;Lcom/google/android/gms/measurement/internal/zzp;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lp05;->g:Lh15;

    iput-object p2, p0, Lp05;->e:Lcom/google/android/gms/measurement/internal/zzp;

    iput-object p3, p0, Lp05;->f:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lp05;->g:Lh15;

    .line 1
    iget-object v1, v0, Lh15;->d:Lhw4;

    const-string v2, "Failed to send default event parameters to service"

    if-nez v1, :cond_0

    .line 2
    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 3
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lqw4;->f:Low4;

    .line 5
    invoke-virtual {v0, v2}, Low4;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lp05;->e:Lcom/google/android/gms/measurement/internal/zzp;

    const-string v3, "null reference"

    .line 6
    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lp05;->f:Landroid/os/Bundle;

    iget-object v3, p0, Lp05;->e:Lcom/google/android/gms/measurement/internal/zzp;

    .line 8
    invoke-interface {v1, v0, v3}, Lhw4;->z3(Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzp;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lp05;->g:Lh15;

    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 9
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 10
    iget-object v1, v1, Lqw4;->f:Low4;

    .line 11
    invoke-virtual {v1, v2, v0}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
