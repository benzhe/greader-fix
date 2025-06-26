.class public Lcom/noinnion/android/greader/ui/media/MusicActivity$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/media/MusicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/media/MusicActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/media/MusicActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity$b;->a:Lcom/noinnion/android/greader/ui/media/MusicActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const v0, -0x21524111

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity$b;->a:Lcom/noinnion/android/greader/ui/media/MusicActivity;

    .line 2
    iget-boolean v1, p1, Lcom/noinnion/android/greader/ui/media/MusicActivity;->E:Z

    if-eqz v1, :cond_4

    .line 3
    :try_start_0
    iget-object v1, p1, Lcom/noinnion/android/greader/ui/media/MusicActivity;->F:Lur6;

    if-eqz v1, :cond_3

    .line 4
    iget-boolean p1, p1, Lcom/noinnion/android/greader/ui/media/MusicActivity;->H:Z

    if-nez p1, :cond_0

    .line 5
    invoke-interface {v1}, Lur6;->getDuration()I

    move-result p1

    .line 6
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity$b;->a:Lcom/noinnion/android/greader/ui/media/MusicActivity;

    .line 7
    iget-object v2, v1, Lcom/noinnion/android/greader/ui/media/MusicActivity;->L:Landroid/widget/TextView;

    .line 8
    invoke-virtual {v1, p1}, Lcom/noinnion/android/greader/ui/media/MusicActivity;->B(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity$b;->a:Lcom/noinnion/android/greader/ui/media/MusicActivity;

    .line 10
    iget-object v1, v1, Lcom/noinnion/android/greader/ui/media/MusicActivity;->D:Landroid/widget/SeekBar;

    .line 11
    invoke-virtual {v1, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 12
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity$b;->a:Lcom/noinnion/android/greader/ui/media/MusicActivity;

    .line 13
    iget-object v2, v1, Lcom/noinnion/android/greader/ui/media/MusicActivity;->J:Landroid/widget/TextView;

    .line 14
    iget-object v1, v1, Lcom/noinnion/android/greader/ui/media/MusicActivity;->F:Lur6;

    .line 15
    invoke-interface {v1}, Lur6;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez p1, :cond_0

    .line 16
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity$b;->a:Lcom/noinnion/android/greader/ui/media/MusicActivity;

    const/4 v1, 0x1

    .line 17
    iput-boolean v1, p1, Lcom/noinnion/android/greader/ui/media/MusicActivity;->H:Z

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity$b;->a:Lcom/noinnion/android/greader/ui/media/MusicActivity;

    .line 19
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/media/MusicActivity;->F:Lur6;

    .line 20
    invoke-interface {p1}, Lur6;->d0()I

    move-result p1

    .line 21
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity$b;->a:Lcom/noinnion/android/greader/ui/media/MusicActivity;

    .line 22
    iget v2, v1, Lcom/noinnion/android/greader/ui/media/MusicActivity;->I:I

    if-eq v2, p1, :cond_2

    .line 23
    iput p1, v1, Lcom/noinnion/android/greader/ui/media/MusicActivity;->I:I

    .line 24
    iget-object v1, v1, Lcom/noinnion/android/greader/ui/media/MusicActivity;->y:Landroid/widget/ImageView;

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    const p1, 0x7f080124

    goto :goto_0

    :cond_1
    const p1, 0x7f080125

    .line 25
    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 26
    :cond_2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity$b;->a:Lcom/noinnion/android/greader/ui/media/MusicActivity;

    .line 27
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/media/MusicActivity;->F:Lur6;

    .line 28
    invoke-interface {p1}, Lur6;->getCurrentPosition()I

    move-result p1

    .line 29
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity$b;->a:Lcom/noinnion/android/greader/ui/media/MusicActivity;

    .line 30
    iget-object v2, v1, Lcom/noinnion/android/greader/ui/media/MusicActivity;->K:Landroid/widget/TextView;

    .line 31
    invoke-virtual {v1, p1}, Lcom/noinnion/android/greader/ui/media/MusicActivity;->B(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity$b;->a:Lcom/noinnion/android/greader/ui/media/MusicActivity;

    .line 33
    iget-object v1, v1, Lcom/noinnion/android/greader/ui/media/MusicActivity;->D:Landroid/widget/SeekBar;

    .line 34
    invoke-virtual {v1, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 35
    :cond_3
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 37
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method
