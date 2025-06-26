.class public final Lcom/google/android/youtube/player/YouTubeBaseActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/player/YouTubePlayerView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/player/YouTubeBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/youtube/player/YouTubeBaseActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/player/YouTubeBaseActivity;B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity$a;->a:Lcom/google/android/youtube/player/YouTubeBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/player/YouTubePlayerView;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity$a;->a:Lcom/google/android/youtube/player/YouTubeBaseActivity;

    .line 1
    iget-object v0, v0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->f:Lcom/google/android/youtube/player/YouTubePlayerView;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->o:Z

    iget-object v0, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->i:Ldd5;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ldd5;->a(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity$a;->a:Lcom/google/android/youtube/player/YouTubeBaseActivity;

    .line 4
    iput-object p1, v0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->f:Lcom/google/android/youtube/player/YouTubePlayerView;

    .line 5
    iget v0, v0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->g:I

    if-lez v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/youtube/player/YouTubePlayerView;->a()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity$a;->a:Lcom/google/android/youtube/player/YouTubeBaseActivity;

    .line 7
    iget v0, v0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->g:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/google/android/youtube/player/YouTubePlayerView;->e()V

    :cond_2
    return-void
.end method

.method public final b(Lcom/google/android/youtube/player/YouTubePlayerView;Ljava/lang/String;Loc5$b;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity$a;->a:Lcom/google/android/youtube/player/YouTubeBaseActivity;

    .line 1
    iget-object v1, v0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->h:Landroid/os/Bundle;

    .line 2
    iget-object v2, p1, Lcom/google/android/youtube/player/YouTubePlayerView;->i:Ldd5;

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/google/android/youtube/player/YouTubePlayerView;->n:Loc5$b;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "activity cannot be null"

    invoke-static {v0, v2}, Lc50;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "provider cannot be null"

    invoke-static {p1, v2}, Lc50;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p1, Lcom/google/android/youtube/player/YouTubePlayerView;->l:Loc5$e;

    const-string v2, "listener cannot be null"

    invoke-static {p3, v2}, Lc50;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p1, Lcom/google/android/youtube/player/YouTubePlayerView;->n:Loc5$b;

    iput-object v1, p1, Lcom/google/android/youtube/player/YouTubePlayerView;->m:Landroid/os/Bundle;

    iget-object p3, p1, Lcom/google/android/youtube/player/YouTubePlayerView;->k:Lcom/google/android/youtube/player/internal/n;

    .line 3
    iget-object v1, p3, Lcom/google/android/youtube/player/internal/n;->e:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p3, p3, Lcom/google/android/youtube/player/internal/n;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    sget-object p3, Lrc5;->a:Lrc5;

    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lpc5;

    invoke-direct {v2, p1, v0}, Lpc5;-><init>(Lcom/google/android/youtube/player/YouTubePlayerView;Landroid/app/Activity;)V

    new-instance v0, Lqc5;

    invoke-direct {v0, p1}, Lqc5;-><init>(Lcom/google/android/youtube/player/YouTubePlayerView;)V

    invoke-virtual {p3, v1, p2, v2, v0}, Lrc5;->a(Landroid/content/Context;Ljava/lang/String;Led5$a;Led5$b;)Ltc5;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/youtube/player/YouTubePlayerView;->h:Ltc5;

    invoke-interface {p2}, Led5;->b()V

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity$a;->a:Lcom/google/android/youtube/player/YouTubeBaseActivity;

    const/4 p2, 0x0

    .line 7
    iput-object p2, p1, Lcom/google/android/youtube/player/YouTubeBaseActivity;->h:Landroid/os/Bundle;

    return-void
.end method
