.class public final Lp34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final synthetic e:Lq34;


# direct methods
.method public constructor <init>(Lq34;)V
    .locals 0

    iput-object p1, p0, Lp34;->e:Lq34;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lp34;->e:Lq34;

    new-instance v1, Li34;

    .line 1
    invoke-direct {v1, p0, p2, p1}, Li34;-><init>(Lp34;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 2
    iget-object p1, v0, Lq34;->c:Ljava/util/concurrent/ExecutorService;

    .line 3
    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lp34;->e:Lq34;

    new-instance v1, Lo34;

    .line 1
    invoke-direct {v1, p0, p1}, Lo34;-><init>(Lp34;Landroid/app/Activity;)V

    .line 2
    iget-object p1, v0, Lq34;->c:Ljava/util/concurrent/ExecutorService;

    .line 3
    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lp34;->e:Lq34;

    new-instance v1, Ll34;

    .line 1
    invoke-direct {v1, p0, p1}, Ll34;-><init>(Lp34;Landroid/app/Activity;)V

    .line 2
    iget-object p1, v0, Lq34;->c:Ljava/util/concurrent/ExecutorService;

    .line 3
    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lp34;->e:Lq34;

    new-instance v1, Lk34;

    .line 1
    invoke-direct {v1, p0, p1}, Lk34;-><init>(Lp34;Landroid/app/Activity;)V

    .line 2
    iget-object p1, v0, Lq34;->c:Ljava/util/concurrent/ExecutorService;

    .line 3
    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Ldd4;

    .line 1
    invoke-direct {v0}, Ldd4;-><init>()V

    iget-object v1, p0, Lp34;->e:Lq34;

    new-instance v2, Ln34;

    .line 2
    invoke-direct {v2, p0, p1, v0}, Ln34;-><init>(Lp34;Landroid/app/Activity;Ldd4;)V

    .line 3
    iget-object p1, v1, Lq34;->c:Ljava/util/concurrent/ExecutorService;

    .line 4
    invoke-interface {p1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x32

    .line 5
    invoke-virtual {v0, v1, v2}, Ldd4;->l0(J)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lp34;->e:Lq34;

    new-instance v1, Lj34;

    .line 1
    invoke-direct {v1, p0, p1}, Lj34;-><init>(Lp34;Landroid/app/Activity;)V

    .line 2
    iget-object p1, v0, Lq34;->c:Ljava/util/concurrent/ExecutorService;

    .line 3
    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lp34;->e:Lq34;

    new-instance v1, Lm34;

    .line 1
    invoke-direct {v1, p0, p1}, Lm34;-><init>(Lp34;Landroid/app/Activity;)V

    .line 2
    iget-object p1, v0, Lq34;->c:Ljava/util/concurrent/ExecutorService;

    .line 3
    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
