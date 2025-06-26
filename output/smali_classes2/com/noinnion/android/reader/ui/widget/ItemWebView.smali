.class public Lcom/noinnion/android/reader/ui/widget/ItemWebView;
.super Lcom/noinnion/android/view/ExtendedWebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noinnion/android/reader/ui/widget/ItemWebView$b;
    }
.end annotation


# instance fields
.field public e:Z

.field public f:I

.field public g:Z

.field public h:I

.field public i:Z

.field public j:Z

.field public k:I

.field public l:Z

.field public m:I

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Landroid/widget/ProgressBar;

.field public r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/noinnion/android/view/ExtendedWebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->e:Z

    .line 3
    iput p1, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->f:I

    .line 4
    iput-boolean p1, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->g:Z

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->h:I

    .line 6
    iput-boolean p1, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->i:Z

    .line 7
    iput-boolean p1, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->j:Z

    .line 8
    iput v0, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->k:I

    .line 9
    iput-boolean p1, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->l:Z

    .line 10
    iput p1, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->m:I

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->n:Z

    .line 12
    iput-boolean p1, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->o:Z

    .line 13
    iput-boolean v0, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->p:Z

    .line 14
    iput-boolean p1, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->r:Z

    .line 15
    invoke-virtual {p0}, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/noinnion/android/view/ExtendedWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->e:Z

    .line 18
    iput p1, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->f:I

    .line 19
    iput-boolean p1, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->g:Z

    const/4 p2, -0x1

    .line 20
    iput p2, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->h:I

    .line 21
    iput-boolean p1, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->i:Z

    .line 22
    iput-boolean p1, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->j:Z

    .line 23
    iput p2, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->k:I

    .line 24
    iput-boolean p1, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->l:Z

    .line 25
    iput p1, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->m:I

    const/4 p2, 0x1

    .line 26
    iput-boolean p2, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->n:Z

    .line 27
    iput-boolean p1, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->o:Z

    .line 28
    iput-boolean p2, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->p:Z

    .line 29
    iput-boolean p1, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->r:Z

    .line 30
    invoke-virtual {p0}, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/noinnion/android/view/ExtendedWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->e:Z

    .line 33
    iput p1, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->f:I

    .line 34
    iput-boolean p1, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->g:Z

    const/4 p2, -0x1

    .line 35
    iput p2, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->h:I

    .line 36
    iput-boolean p1, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->i:Z

    .line 37
    iput-boolean p1, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->j:Z

    .line 38
    iput p2, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->k:I

    .line 39
    iput-boolean p1, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->l:Z

    .line 40
    iput p1, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->m:I

    const/4 p2, 0x1

    .line 41
    iput-boolean p2, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->n:Z

    .line 42
    iput-boolean p1, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->o:Z

    .line 43
    iput-boolean p2, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->p:Z

    .line 44
    iput-boolean p1, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->r:Z

    .line 45
    invoke-virtual {p0}, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    new-instance v0, Lcom/noinnion/android/reader/ui/widget/ItemWebView$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/noinnion/android/reader/ui/widget/ItemWebView$b;-><init>(Lcom/noinnion/android/reader/ui/widget/ItemWebView;Lcom/noinnion/android/reader/ui/widget/ItemWebView$a;)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    .line 4
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 7
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 8
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 9
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    return-void
.end method

.method public b()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->f:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public destroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const-string v0, "javascript:function addCss(cssCode){var styleElement = document.createElement(\"style\");styleElement.type=\"text/css\";if(styleElement.styleSheet){styleElement.styleSheet.cssText = cssCode;}else{styleElement.appendChild(document.createTextNode(cssCode));}document.getElementsByTagName(\"head\")[0].appendChild(styleElement);}addCss(\'p, h1, h2, h3, h4, h5, h6, .wrap_text {max-width: \' + (window.innerWidth-10)+ \'px !important}\')"

    .line 2
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->r:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->r:Z

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 5
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public setDarkMode(Z)V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    invoke-static {}, Lij;->values()[Lij;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x2d

    if-ge v3, v4, :cond_0

    aget-object v4, v1, v3

    .line 3
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 5
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgj;

    .line 6
    invoke-interface {v3}, Lgj;->i()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FORCE_DARK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 9
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgj;

    .line 10
    invoke-interface {v1}, Lgj;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_7

    .line 11
    iput-boolean p1, p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->g:Z

    .line 12
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    if-eqz p1, :cond_5

    const/4 v2, 0x2

    .line 13
    :cond_5
    sget-object p1, Lij;->W:Lij;

    .line 14
    invoke-virtual {p1}, Lij;->k()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 15
    sget-object p1, Ljj;->a:Lnj;

    .line 16
    const-class v1, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    iget-object p1, p1, Lnj;->a:Lorg/chromium/support_lib_boundary/WebkitToCompatConverterBoundaryInterface;

    .line 17
    invoke-interface {p1, v0}, Lorg/chromium/support_lib_boundary/WebkitToCompatConverterBoundaryInterface;->convertSettings(Landroid/webkit/WebSettings;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p1

    .line 18
    invoke-static {v1, p1}, Lg08;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    .line 19
    invoke-interface {p1, v2}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->setForceDark(I)V

    goto :goto_3

    .line 20
    :cond_6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This method is not supported by the current version of the framework and the current WebView APK"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p1

    :cond_7
    :goto_3
    return-void

    .line 22
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unknown feature FORCE_DARK"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
