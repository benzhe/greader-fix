.class public final Lbd5$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbd5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "f"
.end annotation


# instance fields
.field public final synthetic a:Lbd5;


# direct methods
.method public constructor <init>(Lbd5;)V
    .locals 0

    iput-object p1, p0, Lbd5$f;->a:Lbd5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8

    iget-object p1, p0, Lbd5$f;->a:Lbd5;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    sget v0, Lxc5$a;->e:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.youtube.player.internal.IServiceBroker"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lxc5;

    if-eqz v1, :cond_1

    move-object p2, v0

    check-cast p2, Lxc5;

    :goto_0
    move-object v1, p2

    goto :goto_1

    :cond_1
    new-instance v0, Lxc5$a$a;

    invoke-direct {v0, p2}, Lxc5$a$a;-><init>(Landroid/os/IBinder;)V

    move-object v1, v0

    .line 3
    :goto_1
    new-instance v2, Lbd5$e;

    invoke-direct {v2, p1}, Lbd5$e;-><init>(Lbd5;)V

    check-cast p1, Lzc5;

    .line 4
    iget-object v4, p1, Lzc5;->l:Ljava/lang/String;

    iget-object v5, p1, Lzc5;->m:Ljava/lang/String;

    iget-object v6, p1, Lzc5;->k:Ljava/lang/String;

    const/16 v3, 0x4b2

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lxc5;->q5(Luc5;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p1, "YouTubeClient"

    const-string p2, "service died"

    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lbd5$f;->a:Lbd5;

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, Lbd5;->c:Landroid/os/IInterface;

    .line 2
    invoke-virtual {p1}, Lbd5;->g()V

    return-void
.end method
