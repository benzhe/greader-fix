.class public final Lzo3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li00$b;


# instance fields
.field public final synthetic a:Lxs0;

.field public final synthetic b:Lto3;


# direct methods
.method public constructor <init>(Lto3;Lxs0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzo3;->b:Lto3;

    iput-object p2, p0, Lzo3;->a:Lxs0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g0(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lzo3;->b:Lto3;

    .line 2
    iget-object p1, p1, Lto3;->d:Ljava/lang/Object;

    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lzo3;->a:Lxs0;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Connection failed."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lxs0;->b(Ljava/lang/Throwable;)Z

    .line 5
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
