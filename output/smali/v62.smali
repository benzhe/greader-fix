.class public final Lv62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc72;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc72<",
        "Lf61;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lw62;


# direct methods
.method public constructor <init>(Lw62;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv62;->a:Lw62;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lv62;->a:Lw62;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lv62;->a:Lw62;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

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

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lf61;

    .line 2
    iget-object v0, p0, Lv62;->a:Lw62;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lv62;->a:Lw62;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lv62;->a:Lw62;

    .line 6
    iget-object v2, p1, Lf61;->f:Lt91;

    .line 7
    iput-object v2, v1, Lw62;->c:Lru3;

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
