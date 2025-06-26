.class public Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;
.super Lcom/noinnion/android/reader/ui/BaseDialogActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public A:Z

.field public B:Landroid/os/Handler;

.field public C:Landroid/content/ServiceConnection;

.field public D:Landroid/widget/ProgressBar;

.field public E:Landroid/widget/TextView;

.field public F:Landroid/widget/TextView;

.field public G:Landroid/widget/TextView;

.field public H:Landroid/widget/TextView;

.field public y:Lnp6;

.field public z:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/noinnion/android/reader/ui/BaseDialogActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;->y:Lnp6;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;->A:Z

    .line 4
    new-instance v0, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity$a;

    invoke-direct {v0, p0}, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity$a;-><init>(Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;)V

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;->B:Landroid/os/Handler;

    .line 5
    new-instance v0, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity$b;

    invoke-direct {v0, p0}, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity$b;-><init>(Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;)V

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;->C:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900bb

    if-eq p1, v0, :cond_1

    const v0, 0x7f0902d2

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;->y:Lnp6;

    invoke-interface {p1}, Lnp6;->cancel()V

    .line 3
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;->E:Landroid/widget/TextView;

    const v0, 0x7f1100be

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;->z:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/noinnion/android/reader/ui/BaseDialogActivity;->A(Landroid/os/Bundle;Z)V

    const p1, 0x7f1100bd

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    const p1, 0x7f0c004c

    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 4
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/noinnion/android/greader/service/FeedService;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;->C:Landroid/content/ServiceConnection;

    invoke-virtual {p0, p1, v1, v0}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const p1, 0x7f090253

    .line 5
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;->D:Landroid/widget/ProgressBar;

    const p1, 0x7f09015e

    .line 6
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;->E:Landroid/widget/TextView;

    const p1, 0x7f0900e8

    .line 7
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;->F:Landroid/widget/TextView;

    const p1, 0x7f0900e9

    .line 8
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;->G:Landroid/widget/TextView;

    const p1, 0x7f0900ea

    .line 9
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;->H:Landroid/widget/TextView;

    const p1, 0x7f0902d2

    .line 10
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;->z:Landroid/widget/Button;

    .line 11
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900bb

    .line 12
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f1100e7

    .line 13
    invoke-static {p0, p1}, Ln56;->y2(Landroid/app/Activity;I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;->C:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;->A:Z

    .line 3
    invoke-super {p0}, Lcom/noinnion/android/reader/ui/BaseDialogActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/download/DownloadFeedActivity;->B:Landroid/os/Handler;

    const v1, -0x21524111

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
