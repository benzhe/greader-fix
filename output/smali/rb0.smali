.class public final Lrb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkb0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ler3;",
        ":",
        "Lmw0;",
        ":",
        "Lxw0;",
        ":",
        "Lod0;",
        ":",
        "Lsx0;",
        ":",
        "Lyx0;",
        ":",
        "Ljava/lang/Object;",
        ":",
        "Lcy0;",
        ":",
        "Ldy0;",
        ":",
        "Ley0;",
        ">",
        "Ljava/lang/Object;",
        "Lkb0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/ads/internal/zza;

.field public final b:Lns1;

.field public final c:Lpp2;

.field public final d:Lls0;

.field public final e:Lsj0;

.field public final f:Lsy1;

.field public g:Lcom/google/android/gms/ads/internal/overlay/zzv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zza;Lsj0;Lsy1;Lns1;Lpp2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lrb0;->g:Lcom/google/android/gms/ads/internal/overlay/zzv;

    .line 3
    iput-object p1, p0, Lrb0;->a:Lcom/google/android/gms/ads/internal/zza;

    .line 4
    iput-object p2, p0, Lrb0;->e:Lsj0;

    .line 5
    iput-object p3, p0, Lrb0;->f:Lsy1;

    .line 6
    iput-object p4, p0, Lrb0;->b:Lns1;

    .line 7
    iput-object p5, p0, Lrb0;->c:Lpp2;

    .line 8
    new-instance p1, Lls0;

    invoke-direct {p1}, Lls0;-><init>()V

    iput-object p1, p0, Lrb0;->d:Lls0;

    return-void
.end method

.method public static b(Landroid/content/Context;Ld23;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;
    .locals 6

    if-nez p1, :cond_0

    return-object p2

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Ld23;->c(Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Ld23;->c:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 3
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 4
    invoke-virtual {p1, p2, p0, p3, p4}, Ld23;->a(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Lf13; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object p1

    .line 6
    iget-object p3, p1, Lor0;->e:Landroid/content/Context;

    iget-object p1, p1, Lor0;->f:Lcom/google/android/gms/internal/ads/zzbar;

    invoke-static {p3, p1}, Lxl0;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)Lbm0;

    move-result-object p1

    const-string p3, "OpenGmsgHandler.maybeAddClickSignalsToUri"

    .line 7
    invoke-interface {p1, p0, p3}, Lbm0;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :catch_1
    :cond_3
    :goto_2
    return-object p2
.end method

.method public static f(Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const-string v0, "o"

    .line 1
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_2

    const-string v0, "p"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x7

    return p0

    :cond_0
    const-string v0, "l"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x6

    return p0

    :cond_1
    const-string v0, "c"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkx()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzr;->zzzv()I

    move-result p0

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static g(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4

    :try_start_0
    const-string v0, "aclk_ms"

    .line 1
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "aclk_upms"

    .line 4
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "Error adding click uptime parameter to url: "

    .line 6
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    invoke-static {v1, v0}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 1
    move-object/from16 v3, p1

    check-cast v3, Ler3;

    const-string v0, "u"

    .line 2
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3
    move-object v5, v3

    check-cast v5, Lxw0;

    invoke-interface {v5}, Lxw0;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v4, v6, v7}, Lc50;->A3(Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v4

    const-string v6, "a"

    .line 4
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_0

    const-string v0, "Action missing from an open GMSG."

    .line 5
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    iget-object v8, v1, Lrb0;->a:Lcom/google/android/gms/ads/internal/zza;

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/google/android/gms/ads/internal/zza;->zzkc()Z

    move-result v8

    if-nez v8, :cond_1

    .line 7
    iget-object v0, v1, Lrb0;->a:Lcom/google/android/gms/ads/internal/zza;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/ads/internal/zza;->zzbk(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_1
    invoke-interface {v5}, Lxw0;->g()Lsk2;

    move-result-object v8

    .line 9
    invoke-interface {v5}, Lxw0;->e()Lwk2;

    move-result-object v9

    const/4 v10, 0x0

    if-eqz v8, :cond_2

    if-eqz v9, :cond_2

    .line 10
    iget-boolean v8, v8, Lsk2;->d0:Z

    .line 11
    iget-object v9, v9, Lwk2;->b:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v9, ""

    const/4 v8, 0x0

    :goto_0
    const-string v11, "expand"

    .line 12
    invoke-virtual {v11, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    const-string v12, "1"

    const-string v13, "custom_close"

    if-eqz v11, :cond_4

    .line 13
    invoke-interface {v5}, Lxw0;->E0()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Cannot expand WebView that is already expanded."

    .line 14
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    return-void

    .line 15
    :cond_3
    invoke-virtual {v1, v10}, Lrb0;->e(Z)V

    .line 16
    check-cast v3, Lcy0;

    .line 17
    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 18
    invoke-static/range {p2 .. p2}, Lrb0;->f(Ljava/util/Map;)I

    move-result v2

    invoke-interface {v3, v0, v2}, Lcy0;->t(ZI)V

    return-void

    :cond_4
    const-string v11, "webapp"

    .line 19
    invoke-virtual {v11, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 20
    invoke-virtual {v1, v10}, Lrb0;->e(Z)V

    if-eqz v4, :cond_5

    .line 21
    check-cast v3, Lcy0;

    .line 22
    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 23
    invoke-static/range {p2 .. p2}, Lrb0;->f(Ljava/util/Map;)I

    move-result v2

    invoke-interface {v3, v0, v2, v4}, Lcy0;->m0(ZILjava/lang/String;)V

    return-void

    .line 24
    :cond_5
    check-cast v3, Lcy0;

    .line 25
    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 26
    invoke-static/range {p2 .. p2}, Lrb0;->f(Ljava/util/Map;)I

    move-result v4

    const-string v5, "html"

    .line 27
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "baseurl"

    .line 28
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 29
    invoke-interface {v3, v0, v4, v5, v2}, Lcy0;->B0(ZILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    const-string v11, "chrome_custom_tab"

    .line 30
    invoke-virtual {v11, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    sget-object v11, Ly40;->y2:Lo40;

    .line 31
    sget-object v12, Los3;->j:Los3;

    iget-object v12, v12, Los3;->f:Lu40;

    .line 32
    invoke-virtual {v12, v11}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v11

    .line 33
    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 34
    invoke-virtual {v1, v7}, Lrb0;->e(Z)V

    .line 35
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "Cannot open browser with null or empty url"

    .line 36
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    .line 37
    sget-object v0, Ly50;->k:Ly50;

    invoke-virtual {v1, v0}, Lrb0;->c(Ly50;)V

    return-void

    .line 38
    :cond_7
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 39
    invoke-interface {v5}, Lxw0;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 40
    invoke-interface {v5}, Lxw0;->l()Ld23;

    move-result-object v4

    .line 41
    invoke-interface {v5}, Lxw0;->getView()Landroid/view/View;

    move-result-object v6

    .line 42
    invoke-interface {v5}, Lxw0;->a()Landroid/app/Activity;

    move-result-object v10

    .line 43
    invoke-static {v2, v4, v0, v6, v10}, Lrb0;->b(Landroid/content/Context;Ld23;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0

    .line 44
    invoke-static {v0}, Lrb0;->g(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v8, :cond_8

    .line 45
    iget-object v2, v1, Lrb0;->f:Lsy1;

    if-eqz v2, :cond_8

    .line 46
    invoke-interface {v5}, Lxw0;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 47
    invoke-virtual {v1, v3, v2, v4, v9}, Lrb0;->d(Ler3;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 48
    :cond_8
    new-instance v2, Lub0;

    invoke-direct {v2, v1}, Lub0;-><init>(Lrb0;)V

    iput-object v2, v1, Lrb0;->g:Lcom/google/android/gms/ads/internal/overlay/zzv;

    .line 49
    check-cast v3, Lcy0;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzb;

    .line 50
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lrb0;->g:Lcom/google/android/gms/ads/internal/overlay/zzv;

    invoke-direct {v2, v0, v4, v7}, Lcom/google/android/gms/ads/internal/overlay/zzb;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/overlay/zzv;Z)V

    .line 51
    invoke-interface {v3, v2}, Lcy0;->V(Lcom/google/android/gms/ads/internal/overlay/zzb;)V

    return-void

    :cond_9
    const-string v11, "app"

    .line 52
    invoke-virtual {v11, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_18

    const-string v11, "system_browser"

    .line 53
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v13, "true"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_18

    .line 54
    invoke-virtual {v1, v7}, Lrb0;->e(Z)V

    .line 55
    new-instance v4, Lwb0;

    .line 56
    invoke-interface {v5}, Lxw0;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v5}, Lxw0;->l()Ld23;

    move-result-object v11

    invoke-interface {v5}, Lxw0;->getView()Landroid/view/View;

    move-result-object v13

    invoke-direct {v4, v6, v11, v13}, Lwb0;-><init>(Landroid/content/Context;Ld23;Landroid/view/View;)V

    const-string v11, "activity"

    .line 57
    invoke-virtual {v6, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 58
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    goto/16 :goto_3

    .line 60
    :cond_a
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 61
    iget-object v11, v4, Lwb0;->a:Landroid/content/Context;

    iget-object v13, v4, Lwb0;->b:Ld23;

    iget-object v14, v4, Lwb0;->c:Landroid/view/View;

    invoke-static {v11, v13, v0, v14, v12}, Lrb0;->b(Landroid/content/Context;Ld23;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0

    .line 62
    invoke-static {v0}, Lrb0;->g(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    const-string v11, "use_first_package"

    .line 63
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    const-string v13, "use_running_process"

    .line 64
    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    const-string v14, "use_custom_tabs"

    .line 65
    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    sget-object v2, Ly40;->w2:Lo40;

    .line 66
    sget-object v14, Los3;->j:Los3;

    iget-object v14, v14, Los3;->f:Lu40;

    .line 67
    invoke-virtual {v14, v2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 68
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_1

    :cond_b
    const/4 v7, 0x0

    .line 69
    :cond_c
    :goto_1
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v14, "http"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v15, "https"

    if-eqz v2, :cond_d

    .line 70
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    goto :goto_2

    .line 71
    :cond_d
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 72
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    .line 73
    :cond_e
    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-static {v0}, Lwb0;->c(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 75
    invoke-static {v12}, Lwb0;->c(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v12

    if-eqz v7, :cond_f

    .line 76
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v7, v4, Lwb0;->a:Landroid/content/Context;

    invoke-static {v7, v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzb(Landroid/content/Context;Landroid/content/Intent;)V

    .line 77
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v7, v4, Lwb0;->a:Landroid/content/Context;

    invoke-static {v7, v12}, Lcom/google/android/gms/ads/internal/util/zzj;->zzb(Landroid/content/Context;Landroid/content/Intent;)V

    .line 78
    :cond_f
    invoke-virtual {v4, v0, v2}, Lwb0;->b(Landroid/content/Intent;Ljava/util/ArrayList;)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    if-eqz v7, :cond_10

    .line 79
    invoke-static {v0, v7}, Lwb0;->a(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    move-result-object v12

    goto/16 :goto_3

    :cond_10
    if-eqz v12, :cond_11

    .line 80
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v12, v7}, Lwb0;->b(Landroid/content/Intent;Ljava/util/ArrayList;)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    if-eqz v7, :cond_11

    .line 81
    invoke-static {v0, v7}, Lwb0;->a(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    move-result-object v12

    .line 82
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v12, v7}, Lwb0;->b(Landroid/content/Intent;Ljava/util/ArrayList;)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_11

    goto :goto_3

    .line 83
    :cond_11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_13

    :cond_12
    move-object v12, v0

    goto :goto_3

    :cond_13
    if-eqz v13, :cond_16

    if-eqz v6, :cond_16

    .line 84
    invoke-virtual {v6}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_16

    .line 85
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :cond_14
    if-ge v7, v6, :cond_16

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v7, v7, 0x1

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 86
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_15
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_14

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 87
    iget-object v14, v14, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v15, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 88
    invoke-static {v0, v12}, Lwb0;->a(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    move-result-object v12

    goto :goto_3

    :cond_16
    if-eqz v11, :cond_12

    .line 89
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    invoke-static {v0, v2}, Lwb0;->a(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    move-result-object v12

    :goto_3
    if-eqz v8, :cond_17

    .line 90
    iget-object v0, v1, Lrb0;->f:Lsy1;

    if-eqz v0, :cond_17

    if-eqz v12, :cond_17

    .line 91
    invoke-interface {v5}, Lxw0;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-virtual {v1, v3, v0, v2, v9}, Lrb0;->d(Ler3;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 93
    :cond_17
    :try_start_0
    check-cast v3, Lcy0;

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzb;

    iget-object v2, v1, Lrb0;->g:Lcom/google/android/gms/ads/internal/overlay/zzv;

    invoke-direct {v0, v12, v2}, Lcom/google/android/gms/ads/internal/overlay/zzb;-><init>(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzv;)V

    invoke-interface {v3, v0}, Lcy0;->V(Lcom/google/android/gms/ads/internal/overlay/zzb;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 94
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    return-void

    :cond_18
    const-string v0, "open_app"

    .line 95
    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v11, "p"

    if-eqz v0, :cond_1d

    .line 96
    sget-object v0, Ly40;->P4:Lo40;

    .line 97
    sget-object v4, Los3;->j:Los3;

    iget-object v4, v4, Los3;->f:Lu40;

    .line 98
    invoke-virtual {v4, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 99
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 100
    invoke-virtual {v1, v7}, Lrb0;->e(Z)V

    .line 101
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_19

    const-string v0, "Package name missing from open app action."

    .line 102
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    return-void

    :cond_19
    if-eqz v8, :cond_1a

    .line 103
    iget-object v2, v1, Lrb0;->f:Lsy1;

    if-eqz v2, :cond_1a

    .line 104
    invoke-interface {v5}, Lxw0;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v3, v2, v0, v9}, Lrb0;->d(Ler3;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 105
    :cond_1a
    invoke-interface {v5}, Lxw0;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-nez v2, :cond_1b

    const-string v0, "Cannot get package manager from open app action."

    .line 106
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    return-void

    .line 107
    :cond_1b
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 108
    check-cast v3, Lcy0;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzb;

    iget-object v4, v1, Lrb0;->g:Lcom/google/android/gms/ads/internal/overlay/zzv;

    invoke-direct {v2, v0, v4}, Lcom/google/android/gms/ads/internal/overlay/zzb;-><init>(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzv;)V

    invoke-interface {v3, v2}, Lcy0;->V(Lcom/google/android/gms/ads/internal/overlay/zzb;)V

    :cond_1c
    return-void

    .line 109
    :cond_1d
    invoke-virtual {v1, v7}, Lrb0;->e(Z)V

    const-string v0, "intent_url"

    .line 110
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/String;

    .line 111
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 112
    :try_start_1
    invoke-static {v13, v10}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v12
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v14, v0

    const-string v0, "Error parsing the url: "

    .line 113
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_1e

    invoke-virtual {v0, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_1e
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v13

    :goto_4
    invoke-static {v0, v14}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1f
    :goto_5
    if-eqz v12, :cond_21

    .line 114
    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 115
    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 116
    sget-object v13, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v13, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_21

    .line 117
    invoke-interface {v5}, Lxw0;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 118
    invoke-interface {v5}, Lxw0;->l()Ld23;

    move-result-object v14

    .line 119
    invoke-interface {v5}, Lxw0;->getView()Landroid/view/View;

    move-result-object v15

    .line 120
    invoke-interface {v5}, Lxw0;->a()Landroid/app/Activity;

    move-result-object v7

    .line 121
    invoke-static {v13, v14, v0, v15, v7}, Lrb0;->b(Landroid/content/Context;Ld23;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0

    .line 122
    invoke-static {v0}, Lrb0;->g(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 123
    invoke-virtual {v12}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_20

    sget-object v7, Ly40;->Q4:Lo40;

    .line 124
    sget-object v13, Los3;->j:Los3;

    iget-object v13, v13, Los3;->f:Lu40;

    .line 125
    invoke-virtual {v13, v7}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v7

    .line 126
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_20

    .line 127
    invoke-virtual {v12}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v0, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6

    .line 128
    :cond_20
    invoke-virtual {v12, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 129
    :cond_21
    :goto_6
    sget-object v0, Ly40;->a5:Lo40;

    .line 130
    sget-object v7, Los3;->j:Los3;

    iget-object v7, v7, Los3;->f:Lu40;

    .line 131
    invoke-virtual {v7, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 132
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v7, "event_id"

    if-eqz v0, :cond_22

    const-string v0, "intent_async"

    .line 133
    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 134
    invoke-interface {v2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v10, 0x1

    .line 135
    :cond_22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz v10, :cond_23

    .line 136
    new-instance v6, Ltb0;

    invoke-direct {v6, v0, v2, v3}, Ltb0;-><init>(Ljava/util/Map;Ljava/util/Map;Ler3;)V

    iput-object v6, v1, Lrb0;->g:Lcom/google/android/gms/ads/internal/overlay/zzv;

    :cond_23
    const-string v6, "openIntentAsync"

    if-eqz v12, :cond_26

    if-eqz v8, :cond_25

    .line 137
    iget-object v4, v1, Lrb0;->f:Lsy1;

    if-eqz v4, :cond_25

    .line 138
    invoke-interface {v5}, Lxw0;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 139
    invoke-virtual {v1, v3, v4, v5, v9}, Lrb0;->d(Ler3;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    if-eqz v10, :cond_24

    .line 140
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    check-cast v3, Lod0;

    invoke-interface {v3, v6, v0}, Lod0;->x(Ljava/lang/String;Ljava/util/Map;)V

    :cond_24
    return-void

    .line 142
    :cond_25
    check-cast v3, Lcy0;

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzb;

    iget-object v2, v1, Lrb0;->g:Lcom/google/android/gms/ads/internal/overlay/zzv;

    invoke-direct {v0, v12, v2}, Lcom/google/android/gms/ads/internal/overlay/zzb;-><init>(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzv;)V

    invoke-interface {v3, v0}, Lcy0;->V(Lcom/google/android/gms/ads/internal/overlay/zzb;)V

    return-void

    .line 143
    :cond_26
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_27

    .line 144
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 145
    invoke-interface {v5}, Lxw0;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 146
    invoke-interface {v5}, Lxw0;->l()Ld23;

    move-result-object v13

    .line 147
    invoke-interface {v5}, Lxw0;->getView()Landroid/view/View;

    move-result-object v14

    .line 148
    invoke-interface {v5}, Lxw0;->a()Landroid/app/Activity;

    move-result-object v15

    .line 149
    invoke-static {v12, v13, v4, v14, v15}, Lrb0;->b(Landroid/content/Context;Ld23;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v4

    .line 150
    invoke-static {v4}, Lrb0;->g(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 151
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_27
    move-object v14, v4

    if-eqz v8, :cond_29

    .line 152
    iget-object v4, v1, Lrb0;->f:Lsy1;

    if-eqz v4, :cond_29

    .line 153
    invoke-interface {v5}, Lxw0;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v14, v9}, Lrb0;->d(Ler3;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    if-eqz v10, :cond_28

    .line 154
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    check-cast v3, Lod0;

    invoke-interface {v3, v6, v0}, Lod0;->x(Ljava/lang/String;Ljava/util/Map;)V

    :cond_28
    return-void

    .line 156
    :cond_29
    check-cast v3, Lcy0;

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzb;

    const-string v4, "i"

    .line 157
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Ljava/lang/String;

    const-string v4, "m"

    .line 158
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Ljava/lang/String;

    .line 159
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Ljava/lang/String;

    const-string v4, "c"

    .line 160
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v17, v4

    check-cast v17, Ljava/lang/String;

    const-string v4, "f"

    .line 161
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v18, v4

    check-cast v18, Ljava/lang/String;

    const-string v4, "e"

    .line 162
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Ljava/lang/String;

    iget-object v2, v1, Lrb0;->g:Lcom/google/android/gms/ads/internal/overlay/zzv;

    move-object v12, v0

    move-object/from16 v20, v2

    invoke-direct/range {v12 .. v20}, Lcom/google/android/gms/ads/internal/overlay/zzb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/overlay/zzv;)V

    .line 163
    invoke-interface {v3, v0}, Lcy0;->V(Lcom/google/android/gms/ads/internal/overlay/zzb;)V

    :cond_2a
    return-void
.end method

.method public final c(Ly50;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lrb0;->b:Lns1;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Ly40;->e5:Lo40;

    .line 3
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 4
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "cct_open_status"

    const-string v2, "cct_action"

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lrb0;->c:Lpp2;

    .line 7
    invoke-static {v2}, Lqp2;->c(Ljava/lang/String;)Lqp2;

    move-result-object v2

    .line 8
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object v3, v2, Lqp2;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-interface {v0, v2}, Lpp2;->b(Lqp2;)V

    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Lrb0;->b:Lns1;

    .line 12
    invoke-virtual {v0}, Lns1;->a()Lms1;

    move-result-object v0

    .line 13
    iget-object v3, v0, Lms1;->a:Ljava/util/Map;

    const-string v4, "action"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15
    iget-object v2, v0, Lms1;->a:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {v0}, Lms1;->b()V

    return-void
.end method

.method public final d(Ler3;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v9, p4

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzj;->zzbd(Landroid/content/Context;)Z

    move-result v7

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzj;->zzbg(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/util/zzbg;

    move-result-object v8

    .line 3
    iget-object v2, v0, Lrb0;->b:Lns1;

    if-eqz v2, :cond_0

    .line 4
    iget-object v3, v0, Lrb0;->c:Lpp2;

    iget-object v4, v0, Lrb0;->f:Lsy1;

    const-string v6, "offline_open"

    move-object v1, p2

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v6}, Lcz1;->X6(Landroid/content/Context;Lns1;Lpp2;Lsy1;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    move-object v1, p1

    check-cast v1, Lxw0;

    .line 6
    invoke-interface {v1}, Lxw0;->c()Ljy0;

    move-result-object v2

    invoke-virtual {v2}, Ljy0;->b()Z

    move-result v2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lxw0;->a()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v7, :cond_2

    .line 7
    iget-object v1, v0, Lrb0;->f:Lsy1;

    iget-object v2, v0, Lrb0;->d:Lls0;

    .line 8
    new-instance v3, Lwy1;

    invoke-direct {v3, v1, v2, v9}, Lwy1;-><init>(Lsy1;Lls0;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lsy1;->c(Ljo2;)V

    return v11

    .line 9
    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzj;->zzbf(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v8, :cond_6

    if-nez v2, :cond_6

    sget-object v3, Ly40;->X4:Lo40;

    .line 10
    sget-object v4, Los3;->j:Los3;

    iget-object v4, v4, Los3;->f:Lu40;

    .line 11
    invoke-virtual {v4, v3}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v3

    .line 12
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    .line 13
    :cond_3
    invoke-interface {v1}, Lxw0;->c()Ljy0;

    move-result-object v2

    invoke-virtual {v2}, Ljy0;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 14
    invoke-interface {v1}, Lxw0;->a()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v4, v0, Lrb0;->f:Lsy1;

    iget-object v5, v0, Lrb0;->b:Lns1;

    iget-object v6, v0, Lrb0;->c:Lpp2;

    move-object v3, v8

    move-object/from16 v7, p4

    move-object v8, p3

    .line 15
    invoke-static/range {v1 .. v8}, Lcz1;->W6(Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/zze;Lcom/google/android/gms/ads/internal/util/zzbg;Lsy1;Lns1;Lpp2;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 16
    :cond_4
    move-object v1, p1

    check-cast v1, Lcy0;

    iget-object v3, v0, Lrb0;->f:Lsy1;

    iget-object v4, v0, Lrb0;->b:Lns1;

    iget-object v5, v0, Lrb0;->c:Lpp2;

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkx()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/util/zzr;->zzzv()I

    move-result v11

    move-object v2, v8

    move-object/from16 v6, p4

    move-object v7, p3

    move v8, v11

    .line 18
    invoke-interface/range {v1 .. v8}, Lcy0;->X(Lcom/google/android/gms/ads/internal/util/zzbg;Lsy1;Lns1;Lpp2;Ljava/lang/String;Ljava/lang/String;I)V

    .line 19
    :goto_1
    iget-object v2, v0, Lrb0;->b:Lns1;

    if-eqz v2, :cond_5

    .line 20
    iget-object v3, v0, Lrb0;->c:Lpp2;

    iget-object v4, v0, Lrb0;->f:Lsy1;

    const-string v6, "dialog_impression"

    move-object v1, p2

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v6}, Lcz1;->X6(Landroid/content/Context;Lns1;Lpp2;Lsy1;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_5
    invoke-interface {p1}, Ler3;->onAdClicked()V

    return v10

    .line 22
    :cond_6
    :goto_2
    iget-object v1, v0, Lrb0;->f:Lsy1;

    .line 23
    new-instance v3, Lvy1;

    invoke-direct {v3, v1, v9}, Lvy1;-><init>(Lsy1;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lsy1;->c(Ljo2;)V

    .line 24
    iget-object v1, v0, Lrb0;->b:Lns1;

    if-eqz v1, :cond_b

    .line 25
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzj;->zzbf(Landroid/content/Context;)Z

    move-result v1

    const-string v3, "dialog_not_shown_reason"

    if-nez v1, :cond_7

    const-string v1, "notifications_disabled"

    .line 27
    invoke-virtual {v7, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    if-nez v8, :cond_8

    const-string v1, "work_manager_unavailable"

    .line 28
    invoke-virtual {v7, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 29
    :cond_8
    sget-object v1, Ly40;->X4:Lo40;

    .line 30
    sget-object v4, Los3;->j:Los3;

    iget-object v4, v4, Los3;->f:Lu40;

    .line 31
    invoke-virtual {v4, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 32
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "notification_flow_disabled"

    .line 33
    invoke-virtual {v7, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    if-eqz v2, :cond_a

    const-string v1, "fullscreen_no_activity"

    .line 34
    invoke-virtual {v7, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_a
    :goto_3
    iget-object v2, v0, Lrb0;->b:Lns1;

    iget-object v3, v0, Lrb0;->c:Lpp2;

    iget-object v4, v0, Lrb0;->f:Lsy1;

    const-string v6, "dialog_not_shown"

    move-object v1, p2

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lcz1;->Y6(Landroid/content/Context;Lns1;Lpp2;Lsy1;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_b
    return v11
.end method

.method public final e(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrb0;->e:Lsj0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lsj0;->f(Z)V

    :cond_0
    return-void
.end method
