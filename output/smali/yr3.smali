.class public final Lyr3;
.super Lms3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lms3<",
        "Lfo0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lhg0;


# direct methods
.method public constructor <init>(Lwr3;Landroid/content/Context;Ljava/lang/String;Lhg0;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lyr3;->b:Landroid/content/Context;

    iput-object p3, p0, Lyr3;->c:Ljava/lang/String;

    iput-object p4, p0, Lyr3;->d:Lhg0;

    invoke-direct {p0}, Lms3;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lqt3;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lyr3;->b:Landroid/content/Context;

    .line 2
    new-instance v1, Ly20;

    invoke-direct {v1, v0}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lyr3;->c:Ljava/lang/String;

    iget-object v2, p0, Lyr3;->d:Lhg0;

    const v3, 0xc365f90

    .line 4
    invoke-interface {p1, v1, v0, v2, v3}, Lqt3;->zzb(Lx20;Ljava/lang/String;Lhg0;I)Lfo0;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lyr3;->b:Landroid/content/Context;

    const-string v1, "rewarded"

    invoke-static {v0, v1}, Lwr3;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lz30;

    invoke-direct {v0}, Lz30;-><init>()V

    return-object v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lyr3;->b:Landroid/content/Context;

    iget-object v1, p0, Lyr3;->c:Ljava/lang/String;

    iget-object v2, p0, Lyr3;->d:Lhg0;

    .line 2
    new-instance v3, Ly20;

    invoke-direct {v3, v0}, Ly20;-><init>(Ljava/lang/Object;)V

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "com.google.android.gms.ads.rewarded.ChimeraRewardedAdCreatorImpl"

    .line 3
    sget-object v6, Luo0;->a:Lks0;

    .line 4
    invoke-static {v0, v5, v6}, Lc50;->D1(Landroid/content/Context;Ljava/lang/String;Lks0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llo0;

    const v5, 0xc365f90

    .line 5
    invoke-interface {v0, v3, v1, v2, v5}, Llo0;->l2(Lx20;Ljava/lang/String;Lhg0;I)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAd"

    .line 6
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 7
    instance-of v2, v1, Lfo0;

    if-eqz v2, :cond_1

    .line 8
    check-cast v1, Lfo0;

    :goto_0
    move-object v4, v1

    goto :goto_2

    .line 9
    :cond_1
    new-instance v1, Lho0;

    invoke-direct {v1, v0}, Lho0;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljs0; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    const-string v1, "#007 Could not call remote method."

    .line 10
    invoke-static {v1, v0}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-object v4
.end method
