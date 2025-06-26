.class public final synthetic Lx62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lda1;


# instance fields
.field public final e:Lw52;

.field public final f:Led0;


# direct methods
.method public constructor <init>(Lw52;Led0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx62;->e:Lw52;

    iput-object p2, p0, Lx62;->f:Led0;

    return-void
.end method


# virtual methods
.method public final Q(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lx62;->e:Lw52;

    iget-object v1, p0, Lx62;->f:Led0;

    .line 2
    invoke-virtual {v0, p1}, Lw52;->Q(Lcom/google/android/gms/internal/ads/zzvh;)V

    const-string v0, "#007 Could not call remote method."

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v1, p1}, Led0;->M4(Lcom/google/android/gms/internal/ads/zzvh;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 4
    invoke-static {v0, v2}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 5
    :try_start_1
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzvh;->e:I

    invoke-interface {v1, p1}, Led0;->Y5(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 6
    invoke-static {v0, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
