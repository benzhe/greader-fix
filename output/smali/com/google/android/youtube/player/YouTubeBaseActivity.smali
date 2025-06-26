.class public Lcom/google/android/youtube/player/YouTubeBaseActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/player/YouTubeBaseActivity$a;
    }
.end annotation


# instance fields
.field public e:Lcom/google/android/youtube/player/YouTubeBaseActivity$a;

.field public f:Lcom/google/android/youtube/player/YouTubePlayerView;

.field public g:I

.field public h:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/google/android/youtube/player/YouTubeBaseActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/player/YouTubeBaseActivity$a;-><init>(Lcom/google/android/youtube/player/YouTubeBaseActivity;B)V

    iput-object v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->e:Lcom/google/android/youtube/player/YouTubeBaseActivity$a;

    if-eqz p1, :cond_0

    const-string v0, "YouTubeBaseActivity.KEY_PLAYER_VIEW_STATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->h:Landroid/os/Bundle;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->f:Lcom/google/android/youtube/player/YouTubePlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    .line 1
    iget-object v2, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->i:Ldd5;

    if-eqz v2, :cond_0

    .line 2
    :try_start_0
    iget-object v2, v2, Ldd5;->b:Lvc5;

    invoke-interface {v2, v1}, Lvc5;->P6(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    .line 3
    iput-boolean v2, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->o:Z

    iget-object v0, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->i:Ldd5;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ldd5;->a(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Lad5;

    invoke-direct {v1, v0}, Lad5;-><init>(Landroid/os/RemoteException;)V

    throw v1

    .line 5
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->g:I

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->f:Lcom/google/android/youtube/player/YouTubePlayerView;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->i:Ldd5;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, v0, Ldd5;->b:Lvc5;

    invoke-interface {v0}, Lvc5;->R4()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lad5;

    invoke-direct {v1, v0}, Lad5;-><init>(Landroid/os/RemoteException;)V

    throw v1

    .line 3
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->g:I

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->f:Lcom/google/android/youtube/player/YouTubePlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->e()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->f:Lcom/google/android/youtube/player/YouTubePlayerView;

    if-eqz v0, :cond_1

    .line 1
    iget-object v1, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->i:Ldd5;

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->m:Landroid/os/Bundle;

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, v1, Ldd5;->b:Lvc5;

    invoke-interface {v0}, Lvc5;->z0()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lad5;

    invoke-direct {v0, p1}, Lad5;-><init>(Landroid/os/RemoteException;)V

    throw v0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->h:Landroid/os/Bundle;

    :goto_0
    const-string v1, "YouTubeBaseActivity.KEY_PLAYER_VIEW_STATE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->g:I

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->f:Lcom/google/android/youtube/player/YouTubePlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->a()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->g:I

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->f:Lcom/google/android/youtube/player/YouTubePlayerView;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->i:Ldd5;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, v0, Ldd5;->b:Lvc5;

    invoke-interface {v0}, Lvc5;->A5()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lad5;

    invoke-direct {v1, v0}, Lad5;-><init>(Landroid/os/RemoteException;)V

    throw v1

    .line 3
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
