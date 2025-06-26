.class public Lov5$a;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lov5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lov5;


# direct methods
.method public constructor <init>(Lov5;Lnv5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lov5$a;->a:Lov5;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lov5$a;->a:Lov5;

    .line 2
    iget-object p1, p1, Lov5;->c:Ljava/util/List;

    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lov5$a;->a:Lov5;

    .line 5
    iget-object v0, v0, Lov5;->c:Ljava/util/List;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkx5;

    .line 7
    sget-object v2, Lpv5$a;->f:Lpv5$a;

    invoke-interface {v1, v2}, Lkx5;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lov5$a;->a:Lov5;

    .line 2
    iget-object p1, p1, Lov5;->c:Ljava/util/List;

    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lov5$a;->a:Lov5;

    .line 5
    iget-object v0, v0, Lov5;->c:Ljava/util/List;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkx5;

    .line 7
    sget-object v2, Lpv5$a;->e:Lpv5$a;

    invoke-interface {v1, v2}, Lkx5;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
