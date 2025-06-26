.class public final Lis3;
.super Lms3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lms3<",
        "Lzt3;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lwr3;


# direct methods
.method public constructor <init>(Lwr3;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lis3;->c:Lwr3;

    iput-object p2, p0, Lis3;->b:Landroid/content/Context;

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
    iget-object v0, p0, Lis3;->b:Landroid/content/Context;

    .line 2
    new-instance v1, Ly20;

    invoke-direct {v1, v0}, Ly20;-><init>(Ljava/lang/Object;)V

    const v0, 0xc365f90

    .line 3
    invoke-interface {p1, v1, v0}, Lqt3;->zza(Lx20;I)Lzt3;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lis3;->b:Landroid/content/Context;

    const-string v1, "mobile_ads_settings"

    invoke-static {v0, v1}, Lwr3;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lv30;

    invoke-direct {v0}, Lv30;-><init>()V

    return-object v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lis3;->c:Lwr3;

    .line 2
    iget-object v0, v0, Lwr3;->c:Lm30;

    .line 3
    iget-object v1, p0, Lis3;->b:Landroid/content/Context;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 5
    :try_start_0
    new-instance v3, Ly20;

    invoke-direct {v3, v1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v0, v1}, Lz20;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu3;

    const v1, 0xc365f90

    .line 7
    invoke-interface {v0, v3, v1}, Leu3;->o6(Lx20;I)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManager"

    .line 8
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 9
    instance-of v3, v1, Lzt3;

    if-eqz v3, :cond_1

    .line 10
    check-cast v1, Lzt3;

    :goto_0
    move-object v2, v1

    goto :goto_2

    .line 11
    :cond_1
    new-instance v1, Lbu3;

    invoke-direct {v1, v0}, Lbu3;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lz20$a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    const-string v1, "Could not get remote MobileAdsSettingManager."

    .line 12
    invoke-static {v1, v0}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-object v2
.end method
