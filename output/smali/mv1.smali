.class public abstract Lmv1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li00$a;
.implements Li00$b;


# instance fields
.field public final a:Lxs0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs0<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;

.field public c:Z

.field public d:Z

.field public e:Lcom/google/android/gms/internal/ads/zzauj;

.field public f:Lcm0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lxs0;

    invoke-direct {v0}, Lxs0;-><init>()V

    .line 3
    iput-object v0, p0, Lmv1;->a:Lxs0;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmv1;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lmv1;->c:Z

    .line 6
    iput-boolean v0, p0, Lmv1;->d:Z

    return-void
.end method


# virtual methods
.method public Z(I)V
    .locals 0

    const-string p1, "Cannot connect to remote service, fallback to local instance."

    .line 1
    invoke-static {p1}, Lis0;->zzdz(Ljava/lang/String;)V

    return-void
.end method

.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmv1;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lmv1;->d:Z

    .line 3
    iget-object v1, p0, Lmv1;->f:Lcm0;

    invoke-virtual {v1}, Li00;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmv1;->f:Lcm0;

    invoke-virtual {v1}, Li00;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    :cond_0
    iget-object v1, p0, Lmv1;->f:Lcm0;

    invoke-virtual {v1}, Li00;->disconnect()V

    .line 5
    :cond_1
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public g0(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    const-string p1, "Disconnected from remote ad request service."

    .line 1
    invoke-static {p1}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lmv1;->a:Lxs0;

    new-instance v0, Lyv1;

    sget-object v1, Ldm2;->e:Ldm2;

    invoke-direct {v0, v1}, Lyv1;-><init>(Ldm2;)V

    invoke-virtual {p1, v0}, Lxs0;->b(Ljava/lang/Throwable;)Z

    return-void
.end method
