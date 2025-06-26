.class public final Lyw4;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final a:Lj25;

.field public b:Z

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lyw4;

    return-void
.end method

.method public constructor <init>(Lj25;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p1, p0, Lyw4;->a:Lj25;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lyw4;->a:Lj25;

    .line 1
    invoke-virtual {v0}, Lj25;->S()V

    iget-object v0, p0, Lyw4;->a:Lj25;

    .line 2
    invoke-virtual {v0}, Lj25;->m()Lox4;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lox4;->d()V

    iget-object v0, p0, Lyw4;->a:Lj25;

    .line 4
    invoke-virtual {v0}, Lj25;->m()Lox4;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lox4;->d()V

    iget-boolean v0, p0, Lyw4;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyw4;->a:Lj25;

    .line 6
    invoke-virtual {v0}, Lj25;->a()Lqw4;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lqw4;->n:Low4;

    const-string v1, "Unregistering connectivity change receiver"

    .line 8
    invoke-virtual {v0, v1}, Low4;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyw4;->b:Z

    iput-boolean v0, p0, Lyw4;->c:Z

    iget-object v0, p0, Lyw4;->a:Lj25;

    .line 9
    iget-object v0, v0, Lj25;->j:Lrx4;

    .line 10
    iget-object v0, v0, Lrx4;->a:Landroid/content/Context;

    .line 11
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lyw4;->a:Lj25;

    .line 12
    invoke-virtual {v1}, Lj25;->a()Lqw4;

    move-result-object v1

    .line 13
    iget-object v1, v1, Lqw4;->f:Low4;

    const-string v2, "Failed to unregister the network broadcast receiver"

    .line 14
    invoke-virtual {v1, v2, v0}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p1, p0, Lyw4;->a:Lj25;

    .line 1
    invoke-virtual {p1}, Lj25;->S()V

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lyw4;->a:Lj25;

    .line 3
    invoke-virtual {p2}, Lj25;->a()Lqw4;

    move-result-object p2

    .line 4
    iget-object p2, p2, Lqw4;->n:Low4;

    const-string v0, "NetworkBroadcastReceiver received action"

    .line 5
    invoke-virtual {p2, v0, p1}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lyw4;->a:Lj25;

    .line 7
    invoke-virtual {p1}, Lj25;->K()Lvw4;

    move-result-object p1

    invoke-virtual {p1}, Lvw4;->i()Z

    move-result p1

    iget-boolean p2, p0, Lyw4;->c:Z

    if-eq p2, p1, :cond_0

    iput-boolean p1, p0, Lyw4;->c:Z

    iget-object p2, p0, Lyw4;->a:Lj25;

    .line 8
    invoke-virtual {p2}, Lj25;->m()Lox4;

    move-result-object p2

    new-instance v0, Lxw4;

    invoke-direct {v0, p0, p1}, Lxw4;-><init>(Lyw4;Z)V

    .line 9
    invoke-virtual {p2, v0}, Lox4;->q(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    iget-object p2, p0, Lyw4;->a:Lj25;

    .line 10
    invoke-virtual {p2}, Lj25;->a()Lqw4;

    move-result-object p2

    .line 11
    iget-object p2, p2, Lqw4;->i:Low4;

    const-string v0, "NetworkBroadcastReceiver received unknown action"

    .line 12
    invoke-virtual {p2, v0, p1}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
