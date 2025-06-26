.class public final Li00$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "i"
.end annotation


# instance fields
.field public final a:I

.field public final synthetic b:Li00;


# direct methods
.method public constructor <init>(Li00;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Li00$i;->b:Li00;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Li00$i;->a:I

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    if-nez p2, :cond_0

    .line 1
    iget-object p1, p0, Li00$i;->b:Li00;

    .line 2
    invoke-virtual {p1}, Li00;->k()V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Li00$i;->b:Li00;

    .line 4
    iget-object p1, p1, Li00;->n:Ljava/lang/Object;

    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object v0, p0, Li00$i;->b:Li00;

    const-string v1, "com.google.android.gms.common.internal.IGmsServiceBroker"

    .line 7
    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    instance-of v2, v1, Lt00;

    if-eqz v2, :cond_1

    .line 9
    check-cast v1, Lt00;

    goto :goto_0

    .line 10
    :cond_1
    new-instance v1, Ls00;

    invoke-direct {v1, p2}, Ls00;-><init>(Landroid/os/IBinder;)V

    .line 11
    :goto_0
    iput-object v1, v0, Li00;->o:Lt00;

    .line 12
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget-object p1, p0, Li00$i;->b:Li00;

    const/4 p2, 0x0

    iget v0, p0, Li00$i;->a:I

    invoke-virtual {p1, p2, v0}, Li00;->l(II)V

    return-void

    :catchall_0
    move-exception p2

    .line 14
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    iget-object p1, p0, Li00$i;->b:Li00;

    .line 2
    iget-object p1, p1, Li00;->n:Ljava/lang/Object;

    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Li00$i;->b:Li00;

    const/4 v1, 0x0

    .line 5
    iput-object v1, v0, Li00;->o:Lt00;

    .line 6
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p1, v0, Li00;->l:Landroid/os/Handler;

    const/4 v0, 0x6

    iget v1, p0, Li00$i;->a:I

    const/4 v2, 0x1

    .line 8
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
