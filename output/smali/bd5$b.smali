.class public final Lbd5$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbd5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lbd5;


# direct methods
.method public constructor <init>(Lbd5;)V
    .locals 0

    iput-object p1, p0, Lbd5$b;->a:Lbd5;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lbd5$b;->a:Lbd5;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lnc5;

    invoke-virtual {v0, p1}, Lbd5;->d(Lnc5;)V

    return-void

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lbd5$b;->a:Lbd5;

    .line 1
    iget-object v1, v0, Lbd5;->d:Ljava/util/ArrayList;

    .line 2
    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbd5$b;->a:Lbd5;

    .line 3
    iget-boolean v2, v0, Lbd5;->j:Z

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v0}, Lbd5;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbd5$b;->a:Lbd5;

    .line 5
    iget-object v0, v0, Lbd5;->d:Ljava/util/ArrayList;

    .line 6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Led5$a;

    invoke-interface {p1}, Led5$a;->t()V

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lbd5$b;->a:Lbd5;

    invoke-virtual {v0}, Lbd5;->e()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_5

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    :goto_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lbd5$c;

    .line 7
    monitor-enter p1

    :try_start_1
    iget-object v0, p1, Lbd5$c;->a:Ljava/lang/Object;

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p1, v0}, Lbd5$c;->a(Ljava/lang/Object;)V

    return-void

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
