.class public final synthetic Lql1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkb0;


# instance fields
.field public final a:Lpl1;

.field public final b:Landroid/view/View;

.field public final c:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lpl1;Landroid/view/View;Landroid/view/WindowManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lql1;->a:Lpl1;

    iput-object p2, p0, Lql1;->b:Landroid/view/View;

    iput-object p3, p0, Lql1;->c:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 10

    iget-object v0, p0, Lql1;->a:Lpl1;

    iget-object v8, p0, Lql1;->b:Landroid/view/View;

    iget-object v7, p0, Lql1;->c:Landroid/view/WindowManager;

    check-cast p1, Lxw0;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p1}, Lxw0;->I()Lhy0;

    move-result-object v1

    new-instance v2, Lvl1;

    invoke-direct {v2, v0, p2}, Lvl1;-><init>(Lpl1;Ljava/util/Map;)V

    .line 3
    check-cast v1, Lww0;

    .line 4
    iput-object v2, v1, Lww0;->k:Lgy0;

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 5
    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "validator_width"

    .line 6
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Ly40;->H4:Lo40;

    .line 7
    sget-object v4, Los3;->j:Los3;

    iget-object v4, v4, Los3;->f:Lu40;

    .line 8
    invoke-virtual {v4, v3}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v3

    .line 9
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 10
    invoke-static {v1, v2, v3}, Lpl1;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "validator_height"

    .line 11
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Ly40;->I4:Lo40;

    .line 12
    sget-object v5, Los3;->j:Los3;

    iget-object v5, v5, Los3;->f:Lu40;

    .line 13
    invoke-virtual {v5, v4}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v4

    .line 14
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 15
    invoke-static {v1, v3, v4}, Lpl1;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "validator_x"

    .line 16
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lpl1;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    const-string v6, "validator_y"

    .line 17
    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v1, v6, v5}, Lpl1;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 18
    invoke-static {v2, v3}, Ljy0;->d(II)Ljy0;

    move-result-object v2

    invoke-interface {p1, v2}, Lxw0;->J(Ljy0;)V

    .line 19
    :try_start_0
    invoke-interface {p1}, Lxw0;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 20
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    sget-object v3, Ly40;->J4:Lo40;

    .line 21
    sget-object v5, Los3;->j:Los3;

    iget-object v5, v5, Los3;->f:Lu40;

    .line 22
    invoke-virtual {v5, v3}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v3

    .line 23
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 24
    invoke-interface {p1}, Lxw0;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 25
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    sget-object v3, Ly40;->K4:Lo40;

    .line 26
    sget-object v5, Los3;->j:Los3;

    iget-object v5, v5, Los3;->f:Lu40;

    .line 27
    invoke-virtual {v5, v3}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v3

    .line 28
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 29
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzbn;->zzaaj()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 30
    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 31
    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 32
    invoke-interface {p1}, Lxw0;->getView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v7, v2, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "orientation"

    .line 33
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .line 34
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 35
    invoke-virtual {v8, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "1"

    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 37
    :cond_1
    iget v2, v2, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .line 38
    :cond_2
    :goto_1
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    :goto_2
    sub-int v6, v2, v1

    .line 39
    new-instance v9, Lsl1;

    move-object v1, v9

    move-object v2, v8

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lsl1;-><init>(Landroid/view/View;Lxw0;Ljava/lang/String;Landroid/view/WindowManager$LayoutParams;ILandroid/view/WindowManager;)V

    iput-object v9, v0, Lpl1;->c:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 40
    invoke-virtual {v8}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 41
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 42
    iget-object v0, v0, Lpl1;->c:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_3
    const-string v0, "overlay_url"

    .line 43
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 44
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 45
    invoke-interface {p1, p2}, Lxw0;->loadUrl(Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void
.end method
