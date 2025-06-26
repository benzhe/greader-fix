.class public final Lz24;
.super Lg34;
.source "SourceFile"


# instance fields
.field public final synthetic i:Landroid/os/Bundle;

.field public final synthetic j:Ldd4;

.field public final synthetic k:Lq34;


# direct methods
.method public constructor <init>(Lq34;Landroid/os/Bundle;Ldd4;)V
    .locals 0

    iput-object p1, p0, Lz24;->k:Lq34;

    iput-object p2, p0, Lz24;->i:Landroid/os/Bundle;

    iput-object p3, p0, Lz24;->j:Ldd4;

    const/4 p2, 0x1

    .line 1
    invoke-direct {p0, p1, p2}, Lg34;-><init>(Lq34;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lz24;->k:Lq34;

    .line 1
    iget-object v0, v0, Lq34;->i:Lyf4;

    .line 2
    iget-object v1, p0, Lz24;->i:Landroid/os/Bundle;

    iget-object v2, p0, Lz24;->j:Ldd4;

    iget-wide v3, p0, Lg34;->e:J

    invoke-interface {v0, v1, v2, v3, v4}, Lyf4;->performAction(Landroid/os/Bundle;Lbg4;J)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lz24;->j:Ldd4;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, Ldd4;->zzb(Landroid/os/Bundle;)V

    return-void
.end method
