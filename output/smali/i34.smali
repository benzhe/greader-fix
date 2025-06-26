.class public final Li34;
.super Lg34;
.source "SourceFile"


# instance fields
.field public final synthetic i:Landroid/os/Bundle;

.field public final synthetic j:Landroid/app/Activity;

.field public final synthetic k:Lp34;


# direct methods
.method public constructor <init>(Lp34;Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Li34;->k:Lp34;

    iput-object p2, p0, Li34;->i:Landroid/os/Bundle;

    iput-object p3, p0, Li34;->j:Landroid/app/Activity;

    iget-object p1, p1, Lp34;->e:Lq34;

    const/4 p2, 0x1

    .line 1
    invoke-direct {p0, p1, p2}, Lg34;-><init>(Lq34;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Li34;->i:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    .line 1
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Li34;->i:Landroid/os/Bundle;

    const-string v2, "com.google.app_measurement.screen_service"

    .line 2
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Li34;->i:Landroid/os/Bundle;

    .line 3
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    instance-of v3, v1, Landroid/os/Bundle;

    if-eqz v3, :cond_1

    .line 5
    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    iget-object v1, p0, Li34;->k:Lp34;

    iget-object v1, v1, Lp34;->e:Lq34;

    .line 6
    iget-object v1, v1, Lq34;->i:Lyf4;

    .line 7
    iget-object v2, p0, Li34;->j:Landroid/app/Activity;

    .line 8
    new-instance v3, Ly20;

    invoke-direct {v3, v2}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 9
    iget-wide v4, p0, Lg34;->f:J

    .line 10
    invoke-interface {v1, v3, v0, v4, v5}, Lyf4;->onActivityCreated(Lx20;Landroid/os/Bundle;J)V

    return-void
.end method
