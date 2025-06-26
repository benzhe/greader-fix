.class public Lcom/noinnion/android/reader/ui/widget/ItemWebView$b;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/reader/ui/widget/ItemWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/noinnion/android/reader/ui/widget/ItemWebView;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/reader/ui/widget/ItemWebView;Lcom/noinnion/android/reader/ui/widget/ItemWebView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView$b;->a:Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView$b;->a:Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    iget-object v0, p1, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->q:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3

    iget-boolean p1, p1, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->e:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x1

    .line 2
    :cond_1
    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/16 p1, 0x64

    if-ne p2, p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView$b;->a:Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    iget-object p1, p1, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->q:Landroid/widget/ProgressBar;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView$b;->a:Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    iget-object p1, p1, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->q:Landroid/widget/ProgressBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method
