.class public Llb5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llb5$c;,
        Llb5$b;
    }
.end annotation


# static fields
.field public static e:Llb5;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Landroid/os/Handler;

.field public c:Llb5$c;

.field public d:Llb5$c;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Llb5;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Landroid/os/Handler;

    .line 4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Llb5$a;

    invoke-direct {v2, p0}, Llb5$a;-><init>(Llb5;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Llb5;->b:Landroid/os/Handler;

    return-void
.end method

.method public static b()Llb5;
    .locals 1

    .line 1
    sget-object v0, Llb5;->e:Llb5;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Llb5;

    invoke-direct {v0}, Llb5;-><init>()V

    sput-object v0, Llb5;->e:Llb5;

    .line 3
    :cond_0
    sget-object v0, Llb5;->e:Llb5;

    return-object v0
.end method


# virtual methods
.method public final a(Llb5$c;I)Z
    .locals 2

    .line 1
    iget-object v0, p1, Llb5$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llb5$b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Llb5;->b:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    invoke-interface {v0, p2}, Llb5$b;->a(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c(Llb5$b;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Llb5;->c:Llb5$c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, v0, Llb5$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final d(Llb5$b;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Llb5;->d:Llb5$c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, v0, Llb5$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public e(Llb5$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Llb5;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Llb5;->c(Llb5$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Llb5;->c:Llb5$c;

    iget-boolean v1, p1, Llb5$c;->c:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p1, Llb5$c;->c:Z

    .line 4
    iget-object v1, p0, Llb5;->b:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f(Llb5$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Llb5;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Llb5;->c(Llb5$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Llb5;->c:Llb5$c;

    iget-boolean v1, p1, Llb5$c;->c:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p1, Llb5$c;->c:Z

    .line 4
    invoke-virtual {p0, p1}, Llb5;->g(Llb5$c;)V

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final g(Llb5$c;)V
    .locals 4

    .line 1
    iget v0, p1, Llb5$c;->b:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xabe

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    const/16 v0, 0x5dc

    goto :goto_0

    :cond_2
    const/16 v0, 0xabe

    .line 2
    :goto_0
    iget-object v1, p0, Llb5;->b:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Llb5;->b:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long v2, v0

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    iget-object v0, p0, Llb5;->d:Llb5$c;

    if-eqz v0, :cond_1

    .line 2
    iput-object v0, p0, Llb5;->c:Llb5$c;

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Llb5;->d:Llb5$c;

    .line 4
    iget-object v0, v0, Llb5$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llb5$b;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Llb5$b;->show()V

    goto :goto_0

    .line 6
    :cond_0
    iput-object v1, p0, Llb5;->c:Llb5$c;

    :cond_1
    :goto_0
    return-void
.end method
