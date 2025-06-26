.class public Landroidx/lifecycle/LifecycleService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Ldd;


# instance fields
.field public final e:Lmd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Lmd;

    invoke-direct {v0, p0}, Lmd;-><init>(Ldd;)V

    iput-object v0, p0, Landroidx/lifecycle/LifecycleService;->e:Lmd;

    return-void
.end method


# virtual methods
.method public getLifecycle()Lad;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/LifecycleService;->e:Lmd;

    .line 2
    iget-object v0, v0, Lmd;->a:Led;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/lifecycle/LifecycleService;->e:Lmd;

    .line 2
    sget-object v0, Lad$a;->ON_START:Lad$a;

    invoke-virtual {p1, v0}, Lmd;->a(Lad$a;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/LifecycleService;->e:Lmd;

    .line 2
    sget-object v1, Lad$a;->ON_CREATE:Lad$a;

    invoke-virtual {v0, v1}, Lmd;->a(Lad$a;)V

    .line 3
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/LifecycleService;->e:Lmd;

    .line 2
    sget-object v1, Lad$a;->ON_STOP:Lad$a;

    invoke-virtual {v0, v1}, Lmd;->a(Lad$a;)V

    .line 3
    sget-object v1, Lad$a;->ON_DESTROY:Lad$a;

    invoke-virtual {v0, v1}, Lmd;->a(Lad$a;)V

    .line 4
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/LifecycleService;->e:Lmd;

    .line 2
    sget-object v1, Lad$a;->ON_START:Lad$a;

    invoke-virtual {v0, v1}, Lmd;->a(Lad$a;)V

    .line 3
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
