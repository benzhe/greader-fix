.class public Landroidx/browser/customtabs/CustomTabsService$a;
.super Ln$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/customtabs/CustomTabsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic f:Landroidx/browser/customtabs/CustomTabsService;


# direct methods
.method public constructor <init>(Landroidx/browser/customtabs/CustomTabsService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsService$a;->f:Landroidx/browser/customtabs/CustomTabsService;

    invoke-direct {p0}, Ln$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final Z(Landroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "android.support.customtabs.extra.SESSION_ID"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-object v1
.end method

.method public f3(J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$a;->f:Landroidx/browser/customtabs/CustomTabsService;

    invoke-virtual {v0, p1, p2}, Landroidx/browser/customtabs/CustomTabsService;->i(J)Z

    move-result p1

    return p1
.end method

.method public final g0(Lm;Landroid/app/PendingIntent;)Z
    .locals 4

    .line 1
    new-instance v0, Lx3;

    invoke-direct {v0, p1, p2}, Lx3;-><init>(Lm;Landroid/app/PendingIntent;)V

    const/4 p2, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lp3;

    invoke-direct {v1, p0, v0}, Lp3;-><init>(Landroidx/browser/customtabs/CustomTabsService$a;Lx3;)V

    .line 3
    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsService$a;->f:Landroidx/browser/customtabs/CustomTabsService;

    iget-object v2, v2, Landroidx/browser/customtabs/CustomTabsService;->e:Lm4;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v1, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 5
    iget-object v3, p0, Landroidx/browser/customtabs/CustomTabsService$a;->f:Landroidx/browser/customtabs/CustomTabsService;

    iget-object v3, v3, Landroidx/browser/customtabs/CustomTabsService;->e:Lm4;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v3, p1, v1}, Lm4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    iget-object p1, p0, Landroidx/browser/customtabs/CustomTabsService$a;->f:Landroidx/browser/customtabs/CustomTabsService;

    invoke-virtual {p1, v0}, Landroidx/browser/customtabs/CustomTabsService;->c(Lx3;)Z

    move-result p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return p1

    :catchall_0
    move-exception p1

    .line 8
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return p2
.end method

.method public l0(Lm;Landroid/os/Bundle;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Landroidx/browser/customtabs/CustomTabsService$a;->Z(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/browser/customtabs/CustomTabsService$a;->g0(Lm;Landroid/app/PendingIntent;)Z

    move-result p1

    return p1
.end method

.method public s4(Lm;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/browser/customtabs/CustomTabsService$a;->g0(Lm;Landroid/app/PendingIntent;)Z

    move-result p1

    return p1
.end method
