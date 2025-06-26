.class public Ls3;
.super Lm$a;
.source "SourceFile"


# instance fields
.field public f:Landroid/os/Handler;

.field public final synthetic g:Lr3;


# direct methods
.method public constructor <init>(Lt3;Lr3;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ls3;->g:Lr3;

    invoke-direct {p0}, Lm$a;-><init>()V

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Ls3;->f:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public b2(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls3;->g:Lr3;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ls3;->f:Landroid/os/Handler;

    new-instance v7, Ls3$e;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Ls3$e;-><init>(Ls3;ILandroid/net/Uri;ZLandroid/os/Bundle;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c6(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls3;->g:Lr3;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ls3;->f:Landroid/os/Handler;

    new-instance v1, Ls3$d;

    invoke-direct {v1, p0, p1, p2}, Ls3$d;-><init>(Ls3;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public g0(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls3;->g:Lr3;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ls3;->f:Landroid/os/Handler;

    new-instance v1, Ls3$b;

    invoke-direct {v1, p0, p1, p2}, Ls3$b;-><init>(Ls3;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public l0(ILandroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ls3;->g:Lr3;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ls3;->f:Landroid/os/Handler;

    new-instance v1, Ls3$a;

    invoke-direct {v1, p0, p1, p2}, Ls3$a;-><init>(Ls3;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public n6(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls3;->g:Lr3;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ls3;->f:Landroid/os/Handler;

    new-instance v1, Ls3$c;

    invoke-direct {v1, p0, p1}, Ls3$c;-><init>(Ls3;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
