.class public final Ljm3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final e:Landroid/app/Application;

.field public final f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ljm3;->g:Z

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ljm3;->f:Ljava/lang/ref/WeakReference;

    .line 4
    iput-object p1, p0, Ljm3;->e:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public final a(Lrm3;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Ljm3;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1, v0}, Lrm3;->a(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void

    .line 3
    :cond_0
    iget-boolean p1, p0, Ljm3;->g:Z

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Ljm3;->e:Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Ljm3;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "Error while dispatching lifecycle callback."

    .line 6
    invoke-static {v0, p1}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance v0, Lmm3;

    invoke-direct {v0, p1, p2}, Lmm3;-><init>(Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Ljm3;->a(Lrm3;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    new-instance v0, Lsm3;

    invoke-direct {v0, p1}, Lsm3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Ljm3;->a(Lrm3;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 1
    new-instance v0, Lnm3;

    invoke-direct {v0, p1}, Lnm3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Ljm3;->a(Lrm3;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    new-instance v0, Lom3;

    invoke-direct {v0, p1}, Lom3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Ljm3;->a(Lrm3;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance v0, Lpm3;

    invoke-direct {v0, p1, p2}, Lpm3;-><init>(Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Ljm3;->a(Lrm3;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 1
    new-instance v0, Llm3;

    invoke-direct {v0, p1}, Llm3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Ljm3;->a(Lrm3;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 1
    new-instance v0, Lqm3;

    invoke-direct {v0, p1}, Lqm3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Ljm3;->a(Lrm3;)V

    return-void
.end method
