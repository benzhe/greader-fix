.class public Lm36;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final e:Landroid/os/Handler;

.field public f:Z

.field public g:Z

.field public h:Ljava/lang/Runnable;

.field public final i:Lfj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfj7<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lm36;->e:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lm36;->f:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lm36;->g:Z

    .line 4
    new-instance v0, Lfj7;

    invoke-direct {v0}, Lfj7;-><init>()V

    .line 5
    iput-object v0, p0, Lm36;->i:Lfj7;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lm36;->g:Z

    .line 2
    iget-object p1, p0, Lm36;->h:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lm36;->e:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lm36;->e:Landroid/os/Handler;

    .line 5
    new-instance v0, Ll36;

    invoke-direct {v0, p0}, Ll36;-><init>(Lm36;)V

    .line 6
    iput-object v0, p0, Lm36;->h:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lm36;->g:Z

    .line 2
    iget-boolean p1, p0, Lm36;->f:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    .line 3
    iput-boolean v0, p0, Lm36;->f:Z

    .line 4
    iget-object v0, p0, Lm36;->h:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lm36;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "went foreground"

    .line 6
    invoke-static {p1}, Ln56;->u1(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lm36;->i:Lfj7;

    const-string v0, "ON_FOREGROUND"

    invoke-virtual {p1, v0}, Lfj7;->d(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
