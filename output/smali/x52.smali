.class public final Lx52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc72;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc72<",
        "Lj41;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lu52;


# direct methods
.method public constructor <init>(Lu52;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx52;->a:Lu52;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lx52;->a:Lu52;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lx52;->a:Lu52;

    const/4 v2, 0x0

    .line 3
    iput-object v2, v1, Lu52;->k:Lj41;

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lj41;

    .line 2
    iget-object v0, p0, Lx52;->a:Lu52;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lx52;->a:Lu52;

    .line 4
    iget-object v1, v1, Lu52;->k:Lj41;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lf61;->a()V

    .line 6
    :cond_0
    iget-object v1, p0, Lx52;->a:Lu52;

    .line 7
    iput-object p1, v1, Lu52;->k:Lj41;

    .line 8
    invoke-virtual {p1}, Lf61;->b()V

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
