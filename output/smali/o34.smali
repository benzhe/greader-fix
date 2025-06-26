.class public final Lo34;
.super Lg34;
.source "SourceFile"


# instance fields
.field public final synthetic i:Landroid/app/Activity;

.field public final synthetic j:Lp34;


# direct methods
.method public constructor <init>(Lp34;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lo34;->j:Lp34;

    iput-object p2, p0, Lo34;->i:Landroid/app/Activity;

    iget-object p1, p1, Lp34;->e:Lq34;

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

    iget-object v0, p0, Lo34;->j:Lp34;

    iget-object v0, v0, Lp34;->e:Lq34;

    .line 1
    iget-object v0, v0, Lq34;->i:Lyf4;

    .line 2
    iget-object v1, p0, Lo34;->i:Landroid/app/Activity;

    .line 3
    new-instance v2, Ly20;

    invoke-direct {v2, v1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 4
    iget-wide v3, p0, Lg34;->f:J

    invoke-interface {v0, v2, v3, v4}, Lyf4;->onActivityDestroyed(Lx20;J)V

    return-void
.end method
