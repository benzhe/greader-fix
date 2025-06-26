.class public Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity$a;->a:Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const v0, -0x21524111

    if-ne p1, v0, :cond_2

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity$a;->a:Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;

    .line 3
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;->y:Lnp6;

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Lnp6;->c5()I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity$a;->a:Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;

    .line 6
    iget-object v1, p1, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;->E:Landroid/widget/TextView;

    const v2, 0x7f1100be

    .line 7
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity$a;->a:Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p1, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;->A:Z

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity$a;->a:Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;

    .line 11
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;->y:Lnp6;

    .line 12
    invoke-interface {p1}, Lnp6;->p0()I

    move-result p1

    .line 13
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity$a;->a:Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;

    .line 14
    iget-object v1, v1, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;->E:Landroid/widget/TextView;

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity$a;->a:Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;

    .line 16
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;->y:Lnp6;

    .line 17
    invoke-interface {p1}, Lnp6;->c5()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity$a;->a:Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;

    .line 19
    iget-object v1, p1, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;->D:Landroid/widget/ProgressBar;

    .line 20
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;->y:Lnp6;

    .line 21
    invoke-interface {p1}, Lnp6;->T0()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 22
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity$a;->a:Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;

    .line 23
    iget-object v1, p1, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;->F:Landroid/widget/TextView;

    .line 24
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;->y:Lnp6;

    .line 25
    invoke-interface {p1}, Lnp6;->y1()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity$a;->a:Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;

    .line 27
    iget-object v1, p1, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;->G:Landroid/widget/TextView;

    .line 28
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;->y:Lnp6;

    .line 29
    invoke-interface {p1}, Lnp6;->n0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity$a;->a:Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;

    .line 31
    iget-object v1, p1, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;->H:Landroid/widget/TextView;

    .line 32
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;->y:Lnp6;

    .line 33
    invoke-interface {p1}, Lnp6;->f6()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity$a;->a:Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;

    .line 35
    iget-boolean p1, p1, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;->A:Z

    if-nez p1, :cond_2

    .line 36
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method
