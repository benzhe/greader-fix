.class public Landroidx/activity/ComponentActivity;
.super Landroidx/core/app/ComponentActivity;
.source "SourceFile"

# interfaces
.implements Ldd;
.implements Lrd;
.implements Lug;
.implements Lt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/ComponentActivity$b;
    }
.end annotation


# instance fields
.field public final g:Led;

.field public final h:Ltg;

.field public i:Lqd;

.field public final j:Landroidx/activity/OnBackPressedDispatcher;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/core/app/ComponentActivity;-><init>()V

    .line 2
    new-instance v0, Led;

    invoke-direct {v0, p0}, Led;-><init>(Ldd;)V

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->g:Led;

    .line 3
    new-instance v1, Ltg;

    invoke-direct {v1, p0}, Ltg;-><init>(Lug;)V

    .line 4
    iput-object v1, p0, Landroidx/activity/ComponentActivity;->h:Ltg;

    .line 5
    new-instance v1, Landroidx/activity/OnBackPressedDispatcher;

    new-instance v2, Landroidx/activity/ComponentActivity$a;

    invoke-direct {v2, p0}, Landroidx/activity/ComponentActivity$a;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v2}, Landroidx/activity/OnBackPressedDispatcher;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Landroidx/activity/ComponentActivity;->j:Landroidx/activity/OnBackPressedDispatcher;

    .line 6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    new-instance v2, Landroidx/activity/ComponentActivity$2;

    invoke-direct {v2, p0}, Landroidx/activity/ComponentActivity$2;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-virtual {v0, v2}, Led;->a(Lcd;)V

    .line 8
    new-instance v2, Landroidx/activity/ComponentActivity$3;

    invoke-direct {v2, p0}, Landroidx/activity/ComponentActivity$3;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-virtual {v0, v2}, Led;->a(Lcd;)V

    const/16 v2, 0x17

    if-gt v1, v2, :cond_0

    .line 9
    new-instance v1, Landroidx/activity/ImmLeaksCleaner;

    invoke-direct {v1, p0}, Landroidx/activity/ImmLeaksCleaner;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Led;->a(Lcd;)V

    :cond_0
    return-void
.end method

.method public static synthetic l(Landroidx/activity/ComponentActivity;)V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public final b()Landroidx/activity/OnBackPressedDispatcher;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->j:Landroidx/activity/OnBackPressedDispatcher;

    return-object v0
.end method

.method public getLifecycle()Lad;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->g:Led;

    return-object v0
.end method

.method public final getSavedStateRegistry()Lsg;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->h:Ltg;

    .line 2
    iget-object v0, v0, Ltg;->b:Lsg;

    return-object v0
.end method

.method public getViewModelStore()Lqd;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->i:Lqd;

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/activity/ComponentActivity$b;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Landroidx/activity/ComponentActivity$b;->a:Lqd;

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->i:Lqd;

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->i:Lqd;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lqd;

    invoke-direct {v0}, Lqd;-><init>()V

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->i:Lqd;

    .line 7
    :cond_1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->i:Lqd;

    return-object v0

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->j:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->a()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->h:Ltg;

    invoke-virtual {v0, p1}, Ltg;->a(Landroid/os/Bundle;)V

    .line 3
    invoke-static {p0}, Lld;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->i:Lqd;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/activity/ComponentActivity$b;

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v1, Landroidx/activity/ComponentActivity$b;->a:Lqd;

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_1
    new-instance v1, Landroidx/activity/ComponentActivity$b;

    invoke-direct {v1}, Landroidx/activity/ComponentActivity$b;-><init>()V

    .line 5
    iput-object v0, v1, Landroidx/activity/ComponentActivity$b;->a:Lqd;

    return-object v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->g:Led;

    .line 2
    instance-of v1, v0, Led;

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lad$b;->g:Lad$b;

    .line 4
    invoke-virtual {v0, v1}, Led;->f(Lad$b;)V

    .line 5
    :cond_0
    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 6
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->h:Ltg;

    invoke-virtual {v0, p1}, Ltg;->b(Landroid/os/Bundle;)V

    return-void
.end method
