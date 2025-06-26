.class public final Lcom/noinnion/android/greader/ui/item/ItemFragment$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/item/ItemFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public final synthetic f:Lcom/noinnion/android/greader/ui/item/ItemFragment;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/item/ItemFragment;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$a;->f:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const-string p1, "ad_block_regex_general"

    const-string v0, ".*(adserver|adserv|adfarm|smartad|doubleclick|google-analytics\\.com/ga\\.js|google-analytics\\.com/analytics\\.js|ligatus\\.com|adnxs\\.com|intellitxt\\.com|veeseo\\.com|kalooga\\.com|plista\\.com|taboola\\.com|outbrain\\.com|(da|rc)\\.feedsportal\\.com.r).*"

    .line 2
    invoke-static {p2, p1, v0}, Liw6;->G(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Prefs.getAdBlockRegexGeneral(c)"

    .line 3
    invoke-static {p1, p2}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 9

    const-string v0, "view"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$a;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$a;->c:Z

    if-nez v1, :cond_0

    .line 2
    move-object v1, p1

    check-cast v1, Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    .line 3
    invoke-virtual {v1}, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->e()V

    .line 4
    :cond_0
    iget v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$a;->b:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$a;->b:I

    .line 5
    invoke-static {p2, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const-string v1, "youtube.com"

    const/4 v3, 0x0

    .line 6
    invoke-static {p2, v1, v3, v0}, Lco7;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-static {p2}, Ln56;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "decodedUrl"

    .line 8
    invoke-static {p2, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "get_video_info"

    invoke-static {p2, v1, v3, v0}, Lco7;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v1

    const-string v4, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    const/4 v5, 0x4

    const-string v6, "&"

    const/4 v7, -0x1

    const/4 v8, 0x6

    if-eqz v1, :cond_1

    :try_start_0
    const-string v0, "video_id="

    .line 9
    invoke-static {p2, v0, v3, v3, v8}, Lco7;->l(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v0

    if-le v0, v7, :cond_2

    add-int/lit8 v0, v0, 0x9

    .line 10
    invoke-static {p2, v6, v0, v3, v5}, Lco7;->l(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v1

    .line 11
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v4}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    const-string v1, "watch?ajax"

    .line 12
    invoke-static {p2, v1, v3, v0}, Lco7;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "watch?v="

    invoke-static {p2, v1, v3, v0}, Lco7;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    :try_start_1
    invoke-static {p2, v1, v3, v3, v8}, Lco7;->l(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v0

    if-le v0, v7, :cond_2

    add-int/lit8 v0, v0, 0x8

    .line 14
    invoke-static {p2, v6, v0, v3, v5}, Lco7;->l(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v1

    .line 15
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v4}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_4

    .line 16
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v3, 0x1

    :cond_3
    if-ne v3, v2, :cond_4

    .line 17
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$a;->f:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$a;->f:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-static {v1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->e(Lcom/noinnion/android/greader/ui/item/ItemFragment;)Lkw6;

    move-result-object v1

    iget-boolean v1, v1, Lkw6;->n:Z

    invoke-static {v0, p2, v1}, Llx6;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 18
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    :cond_4
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$a;->f:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$a;->d:Ljava/lang/String;

    invoke-static {p2, v0}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$a;->e:Ljava/lang/String;

    invoke-static {p2, v0}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    iput-object p2, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$a;->e:Ljava/lang/String;

    .line 4
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$a;->f:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 5
    sget v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->T:I

    .line 6
    invoke-virtual {p2}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->o()Landroid/webkit/WebView;

    move-result-object p2

    .line 7
    move-object v0, p1

    check-cast v0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    const/4 v2, 0x0

    .line 8
    iput-boolean v2, v0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->i:Z

    .line 9
    iget-boolean v3, v0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->j:Z

    const/4 v4, 0x2

    if-nez v3, :cond_4

    .line 10
    invoke-virtual {v0}, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->l:Z

    if-eqz v3, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0}, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, v0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->m:I

    if-lez v3, :cond_4

    if-ne v3, v1, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    iget v5, v0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->h:I

    if-eq v5, v1, :cond_3

    if-ne v5, v4, :cond_4

    :cond_3
    if-ne v3, v4, :cond_4

    :goto_0
    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_5

    .line 13
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$a;->f:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 14
    invoke-virtual {v2, v0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->w(Landroid/webkit/WebView;)V

    if-eqz p2, :cond_6

    .line 15
    invoke-virtual {p2}, Landroid/webkit/WebView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 16
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$a;->f:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    iget v3, v0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->f:I

    iget-boolean v5, v0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->o:Z

    .line 17
    invoke-virtual {v2, v3, v5, v1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->m(IZZ)V

    goto :goto_2

    .line 18
    :cond_5
    iput-boolean v2, v0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->j:Z

    .line 19
    :cond_6
    :goto_2
    iget-boolean v2, v0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->n:Z

    if-eqz v2, :cond_8

    .line 20
    invoke-virtual {v0}, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->c()Z

    move-result v2

    .line 21
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    if-eqz v2, :cond_7

    const-string v1, "javascript:function resizeImages() {var minSize=200;var maxSize=window.innerWidth-20;for(x=0;x<document.images.length;x++) {var imageNode=document.images[x];iWidth=imageNode.width;if (iWidth > maxSize && iWidth > minSize) {imageNode.setAttribute(\'width\',\'100%\');imageNode.removeAttribute(\'height\');imageNode.removeAttribute(\'style\');}}} function resizeIFrames() {var i,frames;frames=document.getElementsByTagName(\"iframe\"); for(i=0;i<frames.length; ++i) {frames[i].setAttribute(\'width\', \'280\');frames[i].setAttribute(\'height\', \'210\');}}resizeImages();"

    goto :goto_3

    :cond_7
    const-string v1, "javascript:function resizeImages() {var minSize=200;var maxSize=window.innerWidth-30;for(x=0;x<document.images.length;x++) {var imageNode=document.images[x];iWidth=imageNode.width;if (iWidth > maxSize && iWidth > minSize) {imageNode.setAttribute(\'width\',maxSize);imageNode.removeAttribute(\'height\');imageNode.removeAttribute(\'style\');}}} resizeImages();"

    .line 22
    :goto_3
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_8
    const v1, -0x60607

    .line 23
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 24
    invoke-virtual {v0}, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->b()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 25
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const-string v1, "view.getSettings()"

    invoke-static {p1, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    if-eqz p2, :cond_9

    .line 26
    invoke-virtual {p2}, Landroid/webkit/WebView;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTag()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 27
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$a;->f:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    iget-boolean p2, v0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->o:Z

    iget-boolean v0, v0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->i:Z

    .line 28
    invoke-virtual {p1, v4, p2, v0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->m(IZZ)V

    :cond_9
    :goto_4
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    const-string p3, "view"

    invoke-static {p1, p3}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "url"

    invoke-static {p2, p3}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p2, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$a;->d:Ljava/lang/String;

    const/4 p3, 0x0

    .line 2
    iput-object p3, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$a;->e:Ljava/lang/String;

    const/4 p3, 0x0

    .line 3
    iput p3, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$a;->b:I

    const-string v0, "about:blank"

    const/4 v1, 0x2

    .line 4
    invoke-static {p2, v0, p3, v1}, Lco7;->A(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 5
    iput-boolean v2, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$a;->c:Z

    goto :goto_0

    .line 6
    :cond_0
    iput-boolean p3, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$a;->c:Z

    const-string v0, "file:"

    .line 7
    invoke-static {p2, v0, p3, v1}, Lco7;->A(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "feed:"

    .line 8
    invoke-static {p2, v0, p3, v1}, Lco7;->A(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 9
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$a;->f:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 10
    iget-object p3, p2, Lcom/noinnion/android/greader/ui/item/ItemFragment;->i:Lap6;

    .line 11
    invoke-virtual {p2, p1, p3}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->v(Landroid/webkit/WebView;Lap6;)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$a;->f:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 13
    sget v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->T:I

    .line 14
    invoke-virtual {p2}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->o()Landroid/webkit/WebView;

    move-result-object p2

    .line 15
    check-cast p1, Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    .line 16
    iput v2, p1, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->f:I

    if-eqz p2, :cond_3

    .line 17
    invoke-virtual {p2}, Landroid/webkit/WebView;->getTag()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 18
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$a;->f:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    iget-boolean p1, p1, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->o:Z

    .line 19
    invoke-virtual {p2, v2, p1, p3}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->m(IZZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p3, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failingUrl"

    invoke-static {p4, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$a;->f:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 3
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$a;->f:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 4
    iget-object v0, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->i:Lap6;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v0, Lap6;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 6
    :goto_0
    invoke-static {p2, p3, v0, p4}, Ln56;->I(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "file:///android_asset/html/"

    const-string v4, "text/html"

    const-string v5, "utf-8"

    const/4 v6, 0x0

    move-object v1, p1

    .line 7
    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "request.url.toString()"

    invoke-static {v0, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$a;->a:Ljava/lang/String;

    const-string v2, "pattern"

    .line 3
    invoke-static {v1, v2}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v2, "Pattern.compile(pattern)"

    invoke-static {v1, v2}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "nativePattern"

    .line 5
    invoke-static {v1, v2}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "input"

    .line 6
    invoke-static {v0, v2}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "url"

    .line 8
    invoke-static {v0, v1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "youtube.com"

    .line 9
    invoke-static {v0, v3, v1, v2}, Lco7;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "playerretry"

    invoke-static {v0, v3, v1, v2}, Lco7;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    goto :goto_1

    .line 11
    :cond_2
    :goto_0
    new-instance p1, Landroid/webkit/WebResourceResponse;

    new-instance p2, Ljava/io/ByteArrayInputStream;

    sget-object v0, Lwn7;->a:Ljava/nio/charset/Charset;

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v0, "text/html"

    const-string v1, "UTF-8"

    invoke-direct {p1, v0, v1, p2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    :goto_1
    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8

    const-string v0, "view"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "file:"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 1
    invoke-static {p2, v1, v2, v3}, Lco7;->A(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v1

    const/4 v4, 0x1

    if-nez v1, :cond_9

    const-string v1, "//"

    invoke-static {p2, v1, v2, v3}, Lco7;->A(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v1, "https://play.google.com/store/apps/details?id="

    .line 2
    invoke-static {p2, v1, v2, v3}, Lco7;->A(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "market:"

    invoke-static {p2, v1, v2, v3}, Lco7;->A(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "vnd.youtube:"

    invoke-static {p2, v1, v2, v3}, Lco7;->A(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string v1, "readability:"

    .line 3
    invoke-static {p2, v1, v2, v3}, Lco7;->A(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$a;->f:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 5
    sget v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->T:I

    .line 6
    invoke-virtual {p2, p1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->w(Landroid/webkit/WebView;)V

    goto/16 :goto_1

    :cond_2
    const-string v1, "readaloud:"

    .line 7
    invoke-static {p2, v1, v2, v3}, Lco7;->A(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$a;->f:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->K()V

    goto/16 :goto_1

    :cond_3
    const-string v1, "youtube://"

    .line 9
    invoke-static {p2, v1, v2, v3}, Lco7;->A(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v5

    const/4 v6, 0x4

    const-string v7, ""

    if-eqz v5, :cond_4

    .line 10
    invoke-static {p2, v1, v7, v2, v6}, Lco7;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$a;->f:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$a;->f:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-static {v0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->e(Lcom/noinnion/android/greader/ui/item/ItemFragment;)Lkw6;

    move-result-object v0

    iget-boolean v0, v0, Lkw6;->n:Z

    invoke-static {p2, p1, v0}, Llx6;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_4
    const-string v1, "media://"

    .line 12
    invoke-static {p2, v1, v2, v3}, Lco7;->A(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 13
    invoke-static {p2, v1, v7, v2, v6}, Lco7;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    .line 14
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$a;->f:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_5

    goto :goto_1

    :cond_5
    const-string v0, "uid"

    .line 15
    invoke-static {p2, v0, p1, v2}, Lap6;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lap6;

    move-result-object p1

    .line 16
    invoke-static {p2, p1}, Ln56;->U1(Landroid/app/Activity;Lap6;)V

    goto :goto_1

    :cond_6
    const-string v1, "comment:"

    .line 17
    invoke-static {p2, v1, v2, v3}, Lco7;->A(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 18
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$a;->f:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 19
    iget-object p2, p1, Lcom/noinnion/android/greader/ui/item/ItemFragment;->i:Lap6;

    if-eqz p2, :cond_9

    .line 20
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lwb;

    move-result-object p1

    iget-object v1, p2, Lap6;->f:Ljava/lang/String;

    iget-object v3, p2, Lap6;->h:Ljava/lang/String;

    iget-object p2, p2, Lap6;->k:Ljava/lang/String;

    .line 21
    sget v5, Lsw6;->o:I

    .line 22
    :try_start_0
    new-instance v5, Lsw6;

    invoke-direct {v5}, Lsw6;-><init>()V

    .line 23
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "itemId"

    .line 24
    invoke-virtual {v6, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "title"

    .line 25
    invoke-virtual {v6, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v6, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 28
    check-cast p1, Lxb;

    .line 29
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance p2, Lqb;

    invoke-direct {p2, p1}, Lqb;-><init>(Lxb;)V

    const-string p1, "fragment_item_comment"

    .line 31
    invoke-virtual {p2, v2, v5, p1, v4}, Lqb;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 32
    invoke-virtual {p2}, Lqb;->d()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 33
    :cond_7
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 34
    :cond_8
    :goto_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$a;->f:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$a;->f:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Liw6;->Q(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p1, p2, v0}, Ljw6;->b(Landroid/app/Activity;Ljava/lang/String;Z)V

    :catch_0
    :cond_9
    :goto_1
    return v4
.end method
