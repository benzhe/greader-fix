.class public final Lpc3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final e:Lxb3;

.field public final f:Lgl1$b;


# direct methods
.method public constructor <init>(Lxb3;Lgl1$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lpc3;->e:Lxb3;

    .line 3
    iput-object p2, p0, Lpc3;->f:Lgl1$b;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpc3;->e:Lxb3;

    .line 2
    iget-object v0, v0, Lxb3;->k:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object v0, p0, Lpc3;->e:Lxb3;

    .line 5
    iget-object v0, v0, Lxb3;->j:Lgl1;

    if-eqz v0, :cond_1

    .line 6
    :try_start_0
    iget-object v1, p0, Lpc3;->f:Lgl1$b;

    monitor-enter v1
    :try_end_0
    .catch Le73; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    iget-object v2, p0, Lpc3;->f:Lgl1$b;

    invoke-virtual {v0}, Lb53;->b()[B

    move-result-object v0

    invoke-static {}, Le63;->a()Le63;

    move-result-object v3

    const/4 v4, 0x0

    .line 8
    array-length v5, v0

    invoke-virtual {v2, v0, v4, v5, v3}, Ls63$b;->k([BIILe63;)La53;

    .line 9
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Le73; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
