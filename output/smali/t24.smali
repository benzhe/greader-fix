.class public final Lt24;
.super Lg34;
.source "SourceFile"


# instance fields
.field public final synthetic i:Ldd4;

.field public final synthetic j:Lq34;


# direct methods
.method public constructor <init>(Lq34;Ldd4;)V
    .locals 0

    iput-object p1, p0, Lt24;->j:Lq34;

    iput-object p2, p0, Lt24;->i:Ldd4;

    const/4 p2, 0x1

    .line 1
    invoke-direct {p0, p1, p2}, Lg34;-><init>(Lq34;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lt24;->j:Lq34;

    .line 1
    iget-object v0, v0, Lq34;->i:Lyf4;

    .line 2
    iget-object v1, p0, Lt24;->i:Ldd4;

    invoke-interface {v0, v1}, Lyf4;->getCachedAppInstanceId(Lbg4;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lt24;->i:Ldd4;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, Ldd4;->zzb(Landroid/os/Bundle;)V

    return-void
.end method
