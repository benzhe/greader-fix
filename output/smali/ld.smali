.class public Lld;
.super Landroid/app/Fragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Lld;

    invoke-direct {v2}, Lld;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 4
    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lad$a;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lfd;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lfd;

    invoke-interface {v0}, Lfd;->getLifecycle()Led;

    move-result-object v0

    invoke-virtual {v0, p1}, Led;->d(Lad$a;)V

    return-void

    .line 4
    :cond_0
    instance-of v1, v0, Ldd;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Ldd;

    invoke-interface {v0}, Ldd;->getLifecycle()Lad;

    move-result-object v0

    .line 6
    instance-of v1, v0, Led;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Led;

    invoke-virtual {v0, p1}, Led;->d(Lad$a;)V

    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    sget-object p1, Lad$a;->ON_CREATE:Lad$a;

    invoke-virtual {p0, p1}, Lld;->a(Lad$a;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 2
    sget-object v0, Lad$a;->ON_DESTROY:Lad$a;

    invoke-virtual {p0, v0}, Lld;->a(Lad$a;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 2
    sget-object v0, Lad$a;->ON_PAUSE:Lad$a;

    invoke-virtual {p0, v0}, Lld;->a(Lad$a;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 2
    sget-object v0, Lad$a;->ON_RESUME:Lad$a;

    invoke-virtual {p0, v0}, Lld;->a(Lad$a;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 2
    sget-object v0, Lad$a;->ON_START:Lad$a;

    invoke-virtual {p0, v0}, Lld;->a(Lad$a;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 2
    sget-object v0, Lad$a;->ON_STOP:Lad$a;

    invoke-virtual {p0, v0}, Lld;->a(Lad$a;)V

    return-void
.end method
