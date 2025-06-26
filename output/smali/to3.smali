.class public final Lto3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Loo3;

.field public b:Z

.field public final c:Landroid/content/Context;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lto3;->d:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lto3;->c:Landroid/content/Context;

    return-void
.end method

.method public static a(Lto3;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lto3;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lto3;->a:Loo3;

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Li00;->disconnect()V

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lto3;->a:Loo3;

    .line 6
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 7
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
