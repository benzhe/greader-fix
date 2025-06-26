.class public final Lqa1;
.super Lxd1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lxd1<",
        "Lva1;",
        ">;"
    }
.end annotation


# instance fields
.field public f:Z


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lsf1<",
            "Lva1;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lxd1;-><init>(Ljava/util/Set;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lqa1;->f:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized onAdImpression()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lqa1;->f:Z

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lta1;->a:Lzd1;

    invoke-virtual {p0, v0}, Lxd1;->D0(Lzd1;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lqa1;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
