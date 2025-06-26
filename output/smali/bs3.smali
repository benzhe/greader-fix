.class public final Lbs3;
.super Lms3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lms3<",
        "Lxk0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Lwr3;


# direct methods
.method public constructor <init>(Lwr3;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbs3;->c:Lwr3;

    iput-object p2, p0, Lbs3;->b:Landroid/app/Activity;

    invoke-direct {p0}, Lms3;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lqt3;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lbs3;->b:Landroid/app/Activity;

    .line 2
    new-instance v1, Ly20;

    invoke-direct {v1, v0}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 3
    invoke-interface {p1, v1}, Lqt3;->zzb(Lx20;)Lxk0;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lbs3;->b:Landroid/app/Activity;

    const-string v1, "ad_overlay"

    invoke-static {v0, v1}, Lwr3;->d(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lbs3;->c:Lwr3;

    .line 2
    iget-object v0, v0, Lwr3;->f:Lvk0;

    .line 3
    iget-object v1, p0, Lbs3;->b:Landroid/app/Activity;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Could not create remote AdOverlay."

    const/4 v3, 0x0

    .line 5
    :try_start_0
    new-instance v4, Ly20;

    invoke-direct {v4, v1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v0, v1}, Lz20;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyk0;

    invoke-interface {v0, v4}, Lyk0;->r3(Lx20;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay"

    .line 7
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 8
    instance-of v4, v1, Lxk0;

    if-eqz v4, :cond_1

    .line 9
    check-cast v1, Lxk0;

    :goto_0
    move-object v3, v1

    goto :goto_1

    .line 10
    :cond_1
    new-instance v1, Lzk0;

    invoke-direct {v1, v0}, Lzk0;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lz20$a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-static {v2, v0}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 12
    invoke-static {v2, v0}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v3
.end method
