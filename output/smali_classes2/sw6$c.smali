.class public Lsw6$c;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsw6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Lsw6;


# direct methods
.method public constructor <init>(Lsw6;Lsw6$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsw6$c;->b:Lsw6;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lsw6$c;->a:Z

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    const-string v0, "&per_page"

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 2
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->pageUp(Z)Z

    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lsw6$c;->b:Lsw6;

    iget-object p1, p1, Lsw6;->f:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const-string p1, "http://disqus.com/logout"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 4
    iget-object p1, p0, Lsw6$c;->b:Lsw6;

    invoke-static {p1}, Lsw6;->d(Lsw6;)V

    goto :goto_1

    :cond_0
    const-string p1, "http://disqus.com/next/login-success/"

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "http://disqus.com/_ax/twitter/complete/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "http://disqus.com/_ax/google/complete/"

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "http://disqus.com/_ax/facebook/complete/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    :cond_2
    iget-object p1, p0, Lsw6$c;->b:Lsw6;

    iget-object p1, p1, Lsw6;->f:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-boolean p1, p0, Lsw6$c;->a:Z

    if-eqz p1, :cond_4

    .line 9
    iget-object p1, p0, Lsw6$c;->b:Lsw6;

    iget-object p1, p1, Lsw6;->n:Landroid/os/Handler;

    new-instance p2, Lsw6$c$a;

    invoke-direct {p2, p0}, Lsw6$c$a;-><init>(Lsw6$c;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 10
    :cond_3
    :goto_0
    iget-object p1, p0, Lsw6$c;->b:Lsw6;

    invoke-static {p1}, Lsw6;->d(Lsw6;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lsw6$c;->b:Lsw6;

    iget-object p1, p1, Lsw6;->f:Landroid/view/View;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    const-string p1, "comment:"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lsw6$c;->b:Lsw6;

    invoke-static {p1}, Lsw6;->d(Lsw6;)V

    goto :goto_0

    :cond_0
    const-string p1, "http://disqus.com/_ax/google/complete/"

    .line 4
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "http://disqus.com/_ax/facebook/complete/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lsw6$c;->a:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lsw6$c;->a:Z

    .line 2
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
