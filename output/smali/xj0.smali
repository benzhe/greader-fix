.class public final Lxj0;
.super Lyj0;
.source "SourceFile"

# interfaces
.implements Lkb0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lyj0;",
        "Lkb0<",
        "Lxw0;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Lxw0;

.field public final d:Landroid/content/Context;

.field public final e:Landroid/view/WindowManager;

.field public final f:Ll40;

.field public g:Landroid/util/DisplayMetrics;

.field public h:F

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I


# direct methods
.method public constructor <init>(Lxw0;Landroid/content/Context;Ll40;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lyj0;-><init>(Lxw0;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lxj0;->i:I

    .line 3
    iput v0, p0, Lxj0;->j:I

    .line 4
    iput v0, p0, Lxj0;->l:I

    .line 5
    iput v0, p0, Lxj0;->m:I

    .line 6
    iput v0, p0, Lxj0;->n:I

    .line 7
    iput v0, p0, Lxj0;->o:I

    .line 8
    iput-object p1, p0, Lxj0;->c:Lxw0;

    .line 9
    iput-object p2, p0, Lxj0;->d:Landroid/content/Context;

    .line 10
    iput-object p3, p0, Lxj0;->f:Ll40;

    const-string p1, "window"

    .line 11
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lxj0;->e:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 8

    .line 1
    check-cast p1, Lxw0;

    .line 2
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p1, p0, Lxj0;->g:Landroid/util/DisplayMetrics;

    .line 3
    iget-object p1, p0, Lxj0;->e:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lxj0;->g:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 5
    iget-object p2, p0, Lxj0;->g:Landroid/util/DisplayMetrics;

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lxj0;->h:F

    .line 6
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lxj0;->k:I

    .line 7
    sget-object p1, Los3;->j:Los3;

    iget-object p1, p1, Los3;->a:Lzr0;

    .line 8
    iget-object p1, p0, Lxj0;->g:Landroid/util/DisplayMetrics;

    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p1, p2}, Lzr0;->g(Landroid/util/DisplayMetrics;I)I

    move-result p1

    iput p1, p0, Lxj0;->i:I

    .line 9
    sget-object p1, Los3;->j:Los3;

    iget-object p1, p1, Los3;->a:Lzr0;

    .line 10
    iget-object p1, p0, Lxj0;->g:Landroid/util/DisplayMetrics;

    iget p2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1, p2}, Lzr0;->g(Landroid/util/DisplayMetrics;I)I

    move-result p1

    iput p1, p0, Lxj0;->j:I

    .line 11
    iget-object p1, p0, Lxj0;->c:Lxw0;

    invoke-interface {p1}, Lxw0;->a()Landroid/app/Activity;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzj;->zzf(Landroid/app/Activity;)[I

    move-result-object p1

    .line 14
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->a:Lzr0;

    .line 15
    iget-object v1, p0, Lxj0;->g:Landroid/util/DisplayMetrics;

    aget v2, p1, v0

    invoke-static {v1, v2}, Lzr0;->g(Landroid/util/DisplayMetrics;I)I

    move-result v1

    iput v1, p0, Lxj0;->l:I

    .line 16
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->a:Lzr0;

    .line 17
    iget-object v1, p0, Lxj0;->g:Landroid/util/DisplayMetrics;

    aget p1, p1, p2

    invoke-static {v1, p1}, Lzr0;->g(Landroid/util/DisplayMetrics;I)I

    move-result p1

    iput p1, p0, Lxj0;->m:I

    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    iget p1, p0, Lxj0;->i:I

    iput p1, p0, Lxj0;->l:I

    .line 19
    iget p1, p0, Lxj0;->j:I

    iput p1, p0, Lxj0;->m:I

    .line 20
    :goto_1
    iget-object p1, p0, Lxj0;->c:Lxw0;

    invoke-interface {p1}, Lxw0;->c()Ljy0;

    move-result-object p1

    invoke-virtual {p1}, Ljy0;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 21
    iget p1, p0, Lxj0;->i:I

    iput p1, p0, Lxj0;->n:I

    .line 22
    iget p1, p0, Lxj0;->j:I

    iput p1, p0, Lxj0;->o:I

    goto :goto_2

    .line 23
    :cond_2
    iget-object p1, p0, Lxj0;->c:Lxw0;

    invoke-interface {p1, v0, v0}, Lxw0;->measure(II)V

    .line 24
    :goto_2
    iget v2, p0, Lxj0;->i:I

    iget v3, p0, Lxj0;->j:I

    iget v4, p0, Lxj0;->l:I

    iget v5, p0, Lxj0;->m:I

    iget v6, p0, Lxj0;->h:F

    iget v7, p0, Lxj0;->k:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lyj0;->b(IIIIFI)V

    .line 25
    iget-object p1, p0, Lxj0;->f:Ll40;

    .line 26
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "tel:"

    .line 28
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 29
    invoke-virtual {p1, v1}, Ll40;->a(Landroid/content/Intent;)Z

    move-result p1

    .line 30
    iget-object v1, p0, Lxj0;->f:Ll40;

    .line 31
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "sms:"

    .line 33
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 34
    invoke-virtual {v1, v2}, Ll40;->a(Landroid/content/Intent;)Z

    move-result v1

    .line 35
    iget-object v2, p0, Lxj0;->f:Ll40;

    .line 36
    invoke-virtual {v2}, Ll40;->c()Z

    move-result v2

    iget-object v3, p0, Lxj0;->f:Ll40;

    .line 37
    invoke-virtual {v3}, Ll40;->b()Z

    move-result v3

    .line 38
    iget-object v4, p0, Lxj0;->c:Lxw0;

    .line 39
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "sms"

    .line 40
    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "tel"

    .line 41
    invoke-virtual {v1, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "calendar"

    .line 42
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "storePicture"

    .line 43
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "inlineVideo"

    .line 44
    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    const-string v1, "Error occured while obtaining the MRAID capabilities."

    .line 45
    invoke-static {v1, p1}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_3
    const-string v1, "onDeviceFeaturesReceived"

    .line 46
    invoke-interface {v4, v1, p1}, Lod0;->d0(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p1, 0x2

    new-array v1, p1, [I

    .line 47
    iget-object v2, p0, Lxj0;->c:Lxw0;

    invoke-interface {v2, v1}, Lxw0;->getLocationOnScreen([I)V

    .line 48
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->a:Lzr0;

    .line 49
    iget-object v3, p0, Lxj0;->d:Landroid/content/Context;

    aget v0, v1, v0

    invoke-virtual {v2, v3, v0}, Lzr0;->j(Landroid/content/Context;I)I

    move-result v0

    .line 50
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->a:Lzr0;

    .line 51
    iget-object v3, p0, Lxj0;->d:Landroid/content/Context;

    aget p2, v1, p2

    invoke-virtual {v2, v3, p2}, Lzr0;->j(Landroid/content/Context;I)I

    move-result p2

    .line 52
    invoke-virtual {p0, v0, p2}, Lxj0;->f(II)V

    .line 53
    invoke-static {p1}, Lis0;->isLoggable(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Dispatching Ready Event."

    .line 54
    invoke-static {p1}, Lis0;->zzey(Ljava/lang/String;)V

    .line 55
    :cond_3
    iget-object p1, p0, Lxj0;->c:Lxw0;

    invoke-interface {p1}, Lxw0;->b()Lcom/google/android/gms/internal/ads/zzbar;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbar;->e:Ljava/lang/String;

    .line 56
    :try_start_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "js"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 57
    iget-object p2, p0, Lyj0;->a:Lxw0;

    const-string v0, "onReadyEventReceived"

    invoke-interface {p2, v0, p1}, Lod0;->d0(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    const-string p2, "Error occurred while dispatching ready Event."

    .line 58
    invoke-static {p2, p1}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method public final f(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lxj0;->d:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v0, p0, Lxj0;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzh(Landroid/app/Activity;)[I

    move-result-object v0

    aget v1, v0, v1

    .line 3
    :cond_0
    iget-object v0, p0, Lxj0;->c:Lxw0;

    invoke-interface {v0}, Lxw0;->c()Ljy0;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lxj0;->c:Lxw0;

    invoke-interface {v0}, Lxw0;->c()Ljy0;

    move-result-object v0

    invoke-virtual {v0}, Ljy0;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4
    :cond_1
    iget-object v0, p0, Lxj0;->c:Lxw0;

    invoke-interface {v0}, Lxw0;->getWidth()I

    move-result v0

    .line 5
    iget-object v2, p0, Lxj0;->c:Lxw0;

    invoke-interface {v2}, Lxw0;->getHeight()I

    move-result v2

    .line 6
    sget-object v3, Ly40;->K:Lo40;

    .line 7
    sget-object v4, Los3;->j:Los3;

    iget-object v4, v4, Los3;->f:Lu40;

    .line 8
    invoke-virtual {v4, v3}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v3

    .line 9
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v0, :cond_2

    .line 10
    iget-object v3, p0, Lxj0;->c:Lxw0;

    invoke-interface {v3}, Lxw0;->c()Ljy0;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 11
    iget-object v0, p0, Lxj0;->c:Lxw0;

    invoke-interface {v0}, Lxw0;->c()Ljy0;

    move-result-object v0

    iget v0, v0, Ljy0;->c:I

    :cond_2
    if-nez v2, :cond_3

    .line 12
    iget-object v3, p0, Lxj0;->c:Lxw0;

    invoke-interface {v3}, Lxw0;->c()Ljy0;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 13
    iget-object v2, p0, Lxj0;->c:Lxw0;

    invoke-interface {v2}, Lxw0;->c()Ljy0;

    move-result-object v2

    iget v2, v2, Ljy0;->b:I

    .line 14
    :cond_3
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->a:Lzr0;

    .line 15
    iget-object v4, p0, Lxj0;->d:Landroid/content/Context;

    invoke-virtual {v3, v4, v0}, Lzr0;->j(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lxj0;->n:I

    .line 16
    sget-object v0, Los3;->j:Los3;

    iget-object v0, v0, Los3;->a:Lzr0;

    .line 17
    iget-object v3, p0, Lxj0;->d:Landroid/content/Context;

    invoke-virtual {v0, v3, v2}, Lzr0;->j(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lxj0;->o:I

    :cond_4
    sub-int v0, p2, v1

    .line 18
    iget v1, p0, Lxj0;->n:I

    iget v2, p0, Lxj0;->o:I

    .line 19
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "x"

    .line 20
    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "y"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "width"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "height"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lyj0;->a:Lxw0;

    const-string v2, "onDefaultPositionReceived"

    invoke-interface {v1, v2, v0}, Lod0;->d0(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Error occurred while dispatching default position."

    .line 22
    invoke-static {v1, v0}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    :goto_0
    iget-object v0, p0, Lxj0;->c:Lxw0;

    invoke-interface {v0}, Lxw0;->I()Lhy0;

    move-result-object v0

    check-cast v0, Lww0;

    .line 24
    iget-object v0, v0, Lww0;->v:Lsj0;

    if-eqz v0, :cond_5

    .line 25
    iput p1, v0, Lsj0;->e:I

    .line 26
    iput p2, v0, Lsj0;->f:I

    :cond_5
    return-void
.end method
