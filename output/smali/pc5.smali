.class public final Lpc5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Led5$a;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Lcom/google/android/youtube/player/YouTubePlayerView;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/player/YouTubePlayerView;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lpc5;->b:Lcom/google/android/youtube/player/YouTubePlayerView;

    iput-object p2, p0, Lpc5;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lpc5;->b:Lcom/google/android/youtube/player/YouTubePlayerView;

    .line 1
    iget-boolean v1, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->o:Z

    if-nez v1, :cond_0

    .line 2
    iget-object v0, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->i:Ldd5;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, v0, Ldd5;->b:Lvc5;

    invoke-interface {v0}, Lvc5;->s6()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lad5;

    invoke-direct {v1, v0}, Lad5;-><init>(Landroid/os/RemoteException;)V

    throw v1

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lpc5;->b:Lcom/google/android/youtube/player/YouTubePlayerView;

    .line 5
    iget-object v0, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->k:Lcom/google/android/youtube/player/internal/n;

    .line 6
    iget-object v1, v0, Lcom/google/android/youtube/player/internal/n;->e:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, v0, Lcom/google/android/youtube/player/internal/n;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lpc5;->b:Lcom/google/android/youtube/player/YouTubePlayerView;

    .line 8
    iget-object v1, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->k:Lcom/google/android/youtube/player/internal/n;

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lpc5;->b:Lcom/google/android/youtube/player/YouTubePlayerView;

    .line 10
    iget-object v1, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->k:Lcom/google/android/youtube/player/internal/n;

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/player/YouTubePlayerView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lpc5;->b:Lcom/google/android/youtube/player/YouTubePlayerView;

    .line 12
    iget-object v1, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->j:Landroid/view/View;

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lpc5;->b:Lcom/google/android/youtube/player/YouTubePlayerView;

    const/4 v1, 0x0

    .line 14
    iput-object v1, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->j:Landroid/view/View;

    .line 15
    iput-object v1, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->i:Ldd5;

    .line 16
    iput-object v1, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->h:Ltc5;

    return-void
.end method

.method public final t()V
    .locals 2

    iget-object v0, p0, Lpc5;->b:Lcom/google/android/youtube/player/YouTubePlayerView;

    .line 1
    iget-object v1, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->h:Ltc5;

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Lpc5;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/google/android/youtube/player/YouTubePlayerView;->d(Lcom/google/android/youtube/player/YouTubePlayerView;Landroid/app/Activity;)V

    :cond_0
    iget-object v0, p0, Lpc5;->b:Lcom/google/android/youtube/player/YouTubePlayerView;

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->h:Ltc5;

    return-void
.end method
