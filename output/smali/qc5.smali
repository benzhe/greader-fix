.class public final Lqc5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Led5$b;


# instance fields
.field public final synthetic a:Lcom/google/android/youtube/player/YouTubePlayerView;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/player/YouTubePlayerView;)V
    .locals 0

    iput-object p1, p0, Lqc5;->a:Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lnc5;)V
    .locals 2

    iget-object v0, p0, Lqc5;->a:Lcom/google/android/youtube/player/YouTubePlayerView;

    .line 1
    sget v1, Lcom/google/android/youtube/player/YouTubePlayerView;->p:I

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/player/YouTubePlayerView;->c(Lnc5;)V

    .line 2
    iget-object p1, p0, Lqc5;->a:Lcom/google/android/youtube/player/YouTubePlayerView;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p1, Lcom/google/android/youtube/player/YouTubePlayerView;->h:Ltc5;

    return-void
.end method
