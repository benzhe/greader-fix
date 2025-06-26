.class public final Lcom/noinnion/android/reader/ui/dialog/YoutubePlayerActivity;
.super Lcom/google/android/youtube/player/YouTubeBaseActivity;
.source "SourceFile"


# instance fields
.field public final i:I

.field public j:Lcom/google/android/youtube/player/YouTubePlayerView;

.field public k:Landroidx/appcompat/widget/Toolbar;

.field public l:Loc5;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/youtube/player/YouTubeBaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/noinnion/android/reader/ui/dialog/YoutubePlayerActivity;->i:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/noinnion/android/reader/ui/dialog/YoutubePlayerActivity;->i:I

    const/4 v1, 0x0

    const-string v2, "youTubePlayerView"

    const/4 v3, -0x1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/reader/ui/dialog/YoutubePlayerActivity;->j:Lcom/google/android/youtube/player/YouTubePlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {v2}, Lim7;->k(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_1
    invoke-static {p0}, Ln56;->n1(Landroid/content/Context;)Z

    move-result v0

    const/4 v4, -0x2

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/noinnion/android/reader/ui/dialog/YoutubePlayerActivity;->j:Lcom/google/android/youtube/player/YouTubePlayerView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 8
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 9
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {v2}, Lim7;->k(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/noinnion/android/reader/R$bool;->isTablet:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-static {p0}, Ln56;->W0(Landroid/content/Context;)I

    move-result v3

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/noinnion/android/reader/R$integer;->dialog_border_min:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Ln56;->o0(Landroid/content/Context;F)I

    move-result v0

    sub-int/2addr v3, v0

    .line 14
    invoke-static {p0}, Ln56;->l1(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/noinnion/android/reader/R$integer;->dialog_border_max:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Ln56;->o0(Landroid/content/Context;F)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 16
    :cond_5
    iget-object v0, p0, Lcom/noinnion/android/reader/ui/dialog/YoutubePlayerActivity;->j:Lcom/google/android/youtube/player/YouTubePlayerView;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 17
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 18
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_1
    return-void

    .line 19
    :cond_6
    invoke-static {v2}, Lim7;->k(Ljava/lang/String;)V

    throw v1
.end method

.method public finish()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lcom/noinnion/android/reader/ui/dialog/YoutubePlayerActivity;->a()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/youtube/player/YouTubeBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/noinnion/android/reader/R$string;->youtube_dev_key:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.youtube_dev_key)"

    invoke-static {p1, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/noinnion/android/reader/ui/dialog/YoutubePlayerActivity;->m:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "youtubeVideoId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    iput-object p1, p0, Lcom/noinnion/android/reader/ui/dialog/YoutubePlayerActivity;->n:Ljava/lang/String;

    .line 4
    sget p1, Lcom/noinnion/android/reader/R$layout;->youtube_player_activity:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 5
    sget p1, Lcom/noinnion/android/reader/R$id;->toolbar:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.toolbar)"

    invoke-static {p1, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lcom/noinnion/android/reader/ui/dialog/YoutubePlayerActivity;->k:Landroidx/appcompat/widget/Toolbar;

    const-string v0, "toolbar"

    .line 6
    sget v1, Lcom/noinnion/android/reader/R$menu;->youtube_player:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/Toolbar;->n(I)V

    .line 7
    iget-object p1, p0, Lcom/noinnion/android/reader/ui/dialog/YoutubePlayerActivity;->k:Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    new-instance v2, Lxw6;

    invoke-direct {v2, p0}, Lxw6;-><init>(Lcom/noinnion/android/reader/ui/dialog/YoutubePlayerActivity;)V

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object p1, p0, Lcom/noinnion/android/reader/ui/dialog/YoutubePlayerActivity;->k:Landroidx/appcompat/widget/Toolbar;

    if-eqz p1, :cond_1

    new-instance v0, Lyw6;

    invoke-direct {v0, p0}, Lyw6;-><init>(Lcom/noinnion/android/reader/ui/dialog/YoutubePlayerActivity;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$f;)V

    .line 9
    sget p1, Lcom/noinnion/android/reader/R$id;->youtube_player_view:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.youtube_player_view)"

    invoke-static {p1, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/google/android/youtube/player/YouTubePlayerView;

    iput-object p1, p0, Lcom/noinnion/android/reader/ui/dialog/YoutubePlayerActivity;->j:Lcom/google/android/youtube/player/YouTubePlayerView;

    .line 10
    iget-object v0, p0, Lcom/noinnion/android/reader/ui/dialog/YoutubePlayerActivity;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Lzw6;

    invoke-direct {v1, p0}, Lzw6;-><init>(Lcom/noinnion/android/reader/ui/dialog/YoutubePlayerActivity;)V

    const-string v2, "Developer key cannot be null or empty"

    .line 11
    invoke-static {v0, v2}, Lc50;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/youtube/player/YouTubePlayerView;->g:Lcom/google/android/youtube/player/YouTubePlayerView$b;

    invoke-interface {v2, p1, v0, v1}, Lcom/google/android/youtube/player/YouTubePlayerView$b;->b(Lcom/google/android/youtube/player/YouTubePlayerView;Ljava/lang/String;Loc5$b;)V

    .line 12
    invoke-virtual {p0}, Lcom/noinnion/android/reader/ui/dialog/YoutubePlayerActivity;->a()V

    return-void

    :cond_0
    const-string p1, "devKey"

    .line 13
    invoke-static {p1}, Lim7;->k(Ljava/lang/String;)V

    throw v1

    .line 14
    :cond_1
    invoke-static {v0}, Lim7;->k(Ljava/lang/String;)V

    throw v1

    .line 15
    :cond_2
    invoke-static {v0}, Lim7;->k(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_3
    invoke-virtual {p0}, Lcom/noinnion/android/reader/ui/dialog/YoutubePlayerActivity;->finish()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/reader/ui/dialog/YoutubePlayerActivity;->l:Loc5;

    if-eqz v0, :cond_0

    check-cast v0, Ldd5;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ldd5;->a(Z)V

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/google/android/youtube/player/YouTubeBaseActivity;->onDestroy()V

    return-void
.end method

.method public onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    const/4 p2, 0x0

    const-string v0, "toolbar"

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/noinnion/android/reader/ui/dialog/YoutubePlayerActivity;->k:Landroidx/appcompat/widget/Toolbar;

    if-eqz p1, :cond_1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/noinnion/android/reader/ui/dialog/YoutubePlayerActivity;->l:Loc5;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    check-cast p1, Ldd5;

    .line 4
    :try_start_0
    iget-object p1, p1, Ldd5;->b:Lvc5;

    invoke-interface {p1, p2}, Lvc5;->y4(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lad5;

    invoke-direct {p2, p1}, Lad5;-><init>(Landroid/os/RemoteException;)V

    throw p2

    .line 5
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/noinnion/android/reader/ui/dialog/YoutubePlayerActivity;->l:Loc5;

    if-eqz p1, :cond_4

    sget-object p2, Loc5$d;->g:Loc5$d;

    check-cast p1, Ldd5;

    .line 6
    :try_start_1
    iget-object p1, p1, Ldd5;->b:Lvc5;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lvc5;->g4(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    new-instance p2, Lad5;

    invoke-direct {p2, p1}, Lad5;-><init>(Landroid/os/RemoteException;)V

    throw p2

    .line 7
    :cond_1
    invoke-static {v0}, Lim7;->k(Ljava/lang/String;)V

    throw p2

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/noinnion/android/reader/ui/dialog/YoutubePlayerActivity;->k:Landroidx/appcompat/widget/Toolbar;

    if-eqz p1, :cond_5

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/noinnion/android/reader/ui/dialog/YoutubePlayerActivity;->l:Loc5;

    if-eqz p1, :cond_3

    check-cast p1, Ldd5;

    .line 10
    :try_start_2
    iget-object p1, p1, Ldd5;->b:Lvc5;

    invoke-interface {p1, p2}, Lvc5;->y4(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    new-instance p2, Lad5;

    invoke-direct {p2, p1}, Lad5;-><init>(Landroid/os/RemoteException;)V

    throw p2

    .line 11
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/noinnion/android/reader/ui/dialog/YoutubePlayerActivity;->l:Loc5;

    if-eqz p1, :cond_4

    sget-object p2, Loc5$d;->e:Loc5$d;

    check-cast p1, Ldd5;

    .line 12
    :try_start_3
    iget-object p1, p1, Ldd5;->b:Lvc5;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lvc5;->g4(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    new-instance p2, Lad5;

    invoke-direct {p2, p1}, Lad5;-><init>(Landroid/os/RemoteException;)V

    throw p2

    :cond_4
    :goto_2
    return-void

    .line 13
    :cond_5
    invoke-static {v0}, Lim7;->k(Ljava/lang/String;)V

    throw p2
.end method
