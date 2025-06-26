.class public final Lgx4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final a:Ljava/lang/String;

.field public final synthetic b:Lhx4;


# direct methods
.method public constructor <init>(Lhx4;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lgx4;->b:Lhx4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lgx4;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    if-eqz p2, :cond_2

    .line 1
    :try_start_0
    sget p1, Lw54;->e:I

    const-string p1, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService"

    .line 2
    invoke-interface {p2, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    .line 3
    instance-of v0, p1, Lu64;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lu64;

    goto :goto_0

    :cond_0
    new-instance p1, Lx44;

    .line 5
    invoke-direct {p1, p2}, Lx44;-><init>(Landroid/os/IBinder;)V

    :goto_0
    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lgx4;->b:Lhx4;

    iget-object p1, p1, Lhx4;->a:Lrx4;

    .line 7
    invoke-virtual {p1}, Lrx4;->a()Lqw4;

    move-result-object p1

    .line 8
    iget-object p1, p1, Lqw4;->i:Low4;

    const-string p2, "Install Referrer Service implementation was not found"

    .line 9
    invoke-virtual {p1, p2}, Low4;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p2, p0, Lgx4;->b:Lhx4;

    iget-object p2, p2, Lhx4;->a:Lrx4;

    .line 10
    invoke-virtual {p2}, Lrx4;->a()Lqw4;

    move-result-object p2

    .line 11
    iget-object p2, p2, Lqw4;->n:Low4;

    const-string v0, "Install Referrer Service connected"

    .line 12
    invoke-virtual {p2, v0}, Low4;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lgx4;->b:Lhx4;

    iget-object p2, p2, Lhx4;->a:Lrx4;

    .line 13
    invoke-virtual {p2}, Lrx4;->m()Lox4;

    move-result-object p2

    new-instance v0, Lfx4;

    invoke-direct {v0, p0, p1, p0}, Lfx4;-><init>(Lgx4;Lu64;Landroid/content/ServiceConnection;)V

    .line 14
    invoke-virtual {p2, v0}, Lox4;->q(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 15
    iget-object p2, p0, Lgx4;->b:Lhx4;

    iget-object p2, p2, Lhx4;->a:Lrx4;

    .line 16
    invoke-virtual {p2}, Lrx4;->a()Lqw4;

    move-result-object p2

    .line 17
    iget-object p2, p2, Lqw4;->i:Low4;

    const-string v0, "Exception occurred while calling Install Referrer API"

    .line 18
    invoke-virtual {p2, v0, p1}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 19
    :cond_2
    iget-object p1, p0, Lgx4;->b:Lhx4;

    iget-object p1, p1, Lhx4;->a:Lrx4;

    .line 20
    invoke-virtual {p1}, Lrx4;->a()Lqw4;

    move-result-object p1

    .line 21
    iget-object p1, p1, Lqw4;->i:Low4;

    const-string p2, "Install Referrer connection returned with null binder"

    .line 22
    invoke-virtual {p1, p2}, Low4;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lgx4;->b:Lhx4;

    iget-object p1, p1, Lhx4;->a:Lrx4;

    .line 1
    invoke-virtual {p1}, Lrx4;->a()Lqw4;

    move-result-object p1

    .line 2
    iget-object p1, p1, Lqw4;->n:Low4;

    const-string v0, "Install Referrer Service disconnected"

    .line 3
    invoke-virtual {p1, v0}, Low4;->a(Ljava/lang/String;)V

    return-void
.end method
