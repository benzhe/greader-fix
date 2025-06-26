.class public final Lcom/google/android/youtube/player/YouTubePlayerView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/player/YouTubePlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/android/youtube/player/YouTubePlayerView;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/player/YouTubePlayerView;B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/youtube/player/YouTubePlayerView$a;->e:Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView$a;->e:Lcom/google/android/youtube/player/YouTubePlayerView;

    .line 1
    iget-object v1, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->i:Ldd5;

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Lcom/google/android/youtube/player/YouTubePlayerView;->f:Ljava/util/Set;

    .line 3
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/youtube/player/YouTubePlayerView$a;->e:Lcom/google/android/youtube/player/YouTubePlayerView;

    .line 4
    iget-object p2, p2, Lcom/google/android/youtube/player/YouTubePlayerView;->f:Ljava/util/Set;

    .line 5
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/youtube/player/YouTubePlayerView$a;->e:Lcom/google/android/youtube/player/YouTubePlayerView;

    .line 6
    iget-object p1, p1, Lcom/google/android/youtube/player/YouTubePlayerView;->i:Ldd5;

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object p1, p1, Ldd5;->b:Lvc5;

    invoke-interface {p1}, Lvc5;->l()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lad5;

    invoke-direct {p2, p1}, Lad5;-><init>(Landroid/os/RemoteException;)V

    throw p2

    :cond_0
    :goto_0
    return-void
.end method
