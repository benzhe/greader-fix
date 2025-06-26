.class public final Ltn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Z

.field public c:Lgn;

.field public final synthetic d:Lfn;


# direct methods
.method public synthetic constructor <init>(Lfn;Lgn;)V
    .locals 0

    iput-object p1, p0, Ltn;->d:Lfn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltn;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Ltn;->b:Z

    iput-object p2, p0, Ltn;->c:Lgn;

    return-void
.end method

.method public static a(Ltn;Lin;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ltn;->d:Lfn;

    new-instance v1, Lqn;

    .line 2
    invoke-direct {v1, p0, p1}, Lqn;-><init>(Ltn;Lin;)V

    invoke-static {v0, v1}, Lfn;->h(Lfn;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string p1, "BillingClient"

    const-string v0, "Billing service connected."

    .line 1
    invoke-static {p1, v0}, Lpr4;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Ltn;->d:Lfn;

    .line 2
    sget v0, Lrr4;->e:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.android.vending.billing.IInAppBillingService"

    .line 3
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lsr4;

    if-eqz v1, :cond_1

    .line 5
    move-object p2, v0

    check-cast p2, Lsr4;

    goto :goto_0

    :cond_1
    new-instance v0, Lqr4;

    .line 6
    invoke-direct {v0, p2}, Lqr4;-><init>(Landroid/os/IBinder;)V

    move-object p2, v0

    .line 7
    :goto_0
    iput-object p2, p1, Lfn;->f:Lsr4;

    .line 8
    iget-object p1, p0, Ltn;->d:Lfn;

    new-instance p2, Lrn;

    .line 9
    invoke-direct {p2, p0}, Lrn;-><init>(Ltn;)V

    new-instance v0, Lsn;

    invoke-direct {v0, p0}, Lsn;-><init>(Ltn;)V

    const-wide/16 v1, 0x7530

    .line 10
    invoke-virtual {p1, p2, v1, v2, v0}, Lfn;->i(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_2

    .line 11
    iget-object p1, p0, Ltn;->d:Lfn;

    .line 12
    invoke-virtual {p1}, Lfn;->g()Lin;

    move-result-object p1

    .line 13
    iget-object p2, p0, Ltn;->d:Lfn;

    new-instance v0, Lqn;

    .line 14
    invoke-direct {v0, p0, p1}, Lqn;-><init>(Ltn;Lin;)V

    invoke-static {p2, v0}, Lfn;->h(Lfn;Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "BillingClient"

    const-string v0, "Billing service disconnected."

    .line 1
    invoke-static {p1, v0}, Lpr4;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Ltn;->d:Lfn;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lfn;->f:Lsr4;

    const/4 v0, 0x0

    .line 3
    iput v0, p1, Lfn;->a:I

    .line 4
    iget-object p1, p0, Ltn;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Ltn;->c:Lgn;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lgn;->b()V

    .line 6
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
