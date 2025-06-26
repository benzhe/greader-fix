.class public final Lqq3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public b:I

.field public c:I

.field public final synthetic d:Lip3;


# direct methods
.method public constructor <init>(Lip3;[BLjp3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqq3;->d:Lip3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lqq3;->a:[B

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lqq3;->d:Lip3;

    iget-boolean v1, v0, Lip3;->b:Z

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Lip3;->a:Lvd3;

    iget-object v1, p0, Lqq3;->a:[B

    invoke-interface {v0, v1}, Lvd3;->w0([B)V

    .line 3
    iget-object v0, p0, Lqq3;->d:Lip3;

    iget-object v0, v0, Lip3;->a:Lvd3;

    iget v1, p0, Lqq3;->b:I

    invoke-interface {v0, v1}, Lvd3;->U2(I)V

    .line 4
    iget-object v0, p0, Lqq3;->d:Lip3;

    iget-object v0, v0, Lip3;->a:Lvd3;

    iget v1, p0, Lqq3;->c:I

    invoke-interface {v0, v1}, Lvd3;->F3(I)V

    .line 5
    iget-object v0, p0, Lqq3;->d:Lip3;

    iget-object v0, v0, Lip3;->a:Lvd3;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lvd3;->M2([I)V

    .line 6
    iget-object v0, p0, Lqq3;->d:Lip3;

    iget-object v0, v0, Lip3;->a:Lvd3;

    invoke-interface {v0}, Lvd3;->L5()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Clearcut log failed"

    .line 8
    invoke-static {v1, v0}, Lis0;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw v0
.end method
