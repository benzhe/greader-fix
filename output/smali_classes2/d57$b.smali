.class public final Ld57$b;
.super Lf47;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld57;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld57$b$d;,
        Ld57$b$c;
    }
.end annotation


# instance fields
.field public final a:Lf47;

.field public final b:Landroid/content/Context;

.field public final c:Landroid/net/ConnectivityManager;

.field public final d:Ljava/lang/Object;

.field public e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lf47;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf47;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ld57$b;->d:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Ld57$b;->a:Lf47;

    .line 4
    iput-object p2, p0, Ld57$b;->b:Landroid/content/Context;

    if-eqz p2, :cond_0

    const-string p1, "connectivity"

    .line 5
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Ld57$b;->c:Landroid/net/ConnectivityManager;

    .line 6
    :try_start_0
    invoke-virtual {p0}, Ld57$b;->n()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "AndroidChannelBuilder"

    const-string v0, "Failed to configure network monitoring. Does app have ACCESS_NETWORK_STATE permission?"

    .line 7
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Ld57$b;->c:Landroid/net/ConnectivityManager;

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ld57$b;->a:Lf47;

    invoke-virtual {v0}, Ly27;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(Lj47;Lx27;)La37;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RequestT:",
            "Ljava/lang/Object;",
            "ResponseT:",
            "Ljava/lang/Object;",
            ">(",
            "Lj47<",
            "TRequestT;TResponseT;>;",
            "Lx27;",
            ")",
            "La37<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld57$b;->a:Lf47;

    invoke-virtual {v0, p1, p2}, Ly27;->h(Lj47;Lx27;)La37;

    move-result-object p1

    return-object p1
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld57$b;->a:Lf47;

    invoke-virtual {v0}, Lf47;->i()V

    return-void
.end method

.method public j(Z)Li37;
    .locals 1

    .line 1
    iget-object v0, p0, Ld57$b;->a:Lf47;

    invoke-virtual {v0, p1}, Lf47;->j(Z)Li37;

    move-result-object p1

    return-object p1
.end method

.method public k(Li37;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld57$b;->a:Lf47;

    invoke-virtual {v0, p1, p2}, Lf47;->k(Li37;Ljava/lang/Runnable;)V

    return-void
.end method

.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld57$b;->a:Lf47;

    invoke-virtual {v0}, Lf47;->l()V

    return-void
.end method

.method public m()Lf47;
    .locals 2

    .line 1
    iget-object v0, p0, Ld57$b;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ld57$b;->e:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Ld57$b;->e:Ljava/lang/Runnable;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Ld57$b;->a:Lf47;

    invoke-virtual {v0}, Lf47;->m()Lf47;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final n()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Ld57$b;->c:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ld57$b$c;

    invoke-direct {v0, p0, v1}, Ld57$b$c;-><init>(Ld57$b;Ld57$a;)V

    .line 3
    iget-object v1, p0, Ld57$b;->c:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 4
    new-instance v1, Ld57$b$a;

    invoke-direct {v1, p0, v0}, Ld57$b$a;-><init>(Ld57$b;Ld57$b$c;)V

    iput-object v1, p0, Ld57$b;->e:Ljava/lang/Runnable;

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ld57$b$d;

    invoke-direct {v0, p0, v1}, Ld57$b$d;-><init>(Ld57$b;Ld57$a;)V

    .line 6
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Ld57$b;->b:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 8
    new-instance v1, Ld57$b$b;

    invoke-direct {v1, p0, v0}, Ld57$b$b;-><init>(Ld57$b;Ld57$b$d;)V

    iput-object v1, p0, Ld57$b;->e:Ljava/lang/Runnable;

    :goto_0
    return-void
.end method
