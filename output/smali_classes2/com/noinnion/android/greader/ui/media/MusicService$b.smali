.class public Lcom/noinnion/android/greader/ui/media/MusicService$b;
.super Lur6$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/media/MusicService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic f:Lcom/noinnion/android/greader/ui/media/MusicService;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/media/MusicService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicService$b;->f:Lcom/noinnion/android/greader/ui/media/MusicService;

    invoke-direct {p0}, Lur6$a;-><init>()V

    return-void
.end method


# virtual methods
.method public C0(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService$b;->f:Lcom/noinnion/android/greader/ui/media/MusicService;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/media/MusicService;->e:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method public d0()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService$b;->f:Lcom/noinnion/android/greader/ui/media/MusicService;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/media/MusicService;->g:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    sget-object v1, Lcom/noinnion/android/greader/ui/media/MusicService$d;->g:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    return v0

    .line 2
    :cond_0
    sget-object v1, Lcom/noinnion/android/greader/ui/media/MusicService$d;->h:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    return v0

    .line 3
    :cond_1
    sget-object v1, Lcom/noinnion/android/greader/ui/media/MusicService$d;->i:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x4

    return v0

    .line 4
    :cond_2
    sget-object v1, Lcom/noinnion/android/greader/ui/media/MusicService$d;->f:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService$b;->f:Lcom/noinnion/android/greader/ui/media/MusicService;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/media/MusicService;->e:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService$b;->f:Lcom/noinnion/android/greader/ui/media/MusicService;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/media/MusicService;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService$b;->f:Lcom/noinnion/android/greader/ui/media/MusicService;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/media/MusicService;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService$b;->f:Lcom/noinnion/android/greader/ui/media/MusicService;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/media/MusicService;->k:Ljava/lang/String;

    return-object v0
.end method
