.class public Ljw6;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0}, Ljw6;->b(Landroid/app/Activity;Ljava/lang/String;Z)V

    return-void
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "android.intent.action.VIEW"

    if-eqz p2, :cond_7

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lq3;

    invoke-direct {v0}, Lq3;-><init>()V

    const/4 v2, 0x0

    const-string v3, "android.support.customtabs.extra.TITLE_VISIBILITY"

    const/4 v4, 0x1

    .line 4
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    invoke-static {p2}, Llw6;->e(Landroid/content/Context;)I

    move-result v3

    if-eq v3, v4, :cond_4

    const/4 v5, 0x2

    if-eq v3, v5, :cond_3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_2

    const/4 v5, 0x5

    if-eq v3, v5, :cond_1

    .line 6
    sget v3, Lcom/noinnion/android/reader/R$color;->primary_default:I

    goto :goto_0

    .line 7
    :cond_1
    sget v3, Lcom/noinnion/android/reader/R$color;->primary_green:I

    goto :goto_0

    .line 8
    :cond_2
    sget v3, Lcom/noinnion/android/reader/R$color;->primary_sepia:I

    goto :goto_0

    .line 9
    :cond_3
    sget v3, Lcom/noinnion/android/reader/R$color;->primary_black:I

    goto :goto_0

    .line 10
    :cond_4
    sget v3, Lcom/noinnion/android/reader/R$color;->primary_dark:I

    .line 11
    :goto_0
    invoke-static {p0, v3}, Lu7;->b(Landroid/content/Context;I)I

    move-result v3

    const/high16 v5, -0x1000000

    or-int/2addr v3, v5

    .line 12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lq3;->a:Ljava/lang/Integer;

    .line 13
    sget v3, Lcom/noinnion/android/reader/R$anim;->right_slide_in:I

    sget v5, Lcom/noinnion/android/reader/R$anim;->no_anim:I

    .line 14
    invoke-static {p2, v3, v5}, Lh7;->a(Landroid/content/Context;II)Lh7;

    move-result-object v3

    .line 15
    invoke-virtual {v3}, Lh7;->b()Landroid/os/Bundle;

    move-result-object v3

    .line 16
    sget v6, Lcom/noinnion/android/reader/R$anim;->right_slide_out:I

    .line 17
    invoke-static {p2, v5, v6}, Lh7;->a(Landroid/content/Context;II)Lh7;

    move-result-object p2

    .line 18
    invoke-virtual {p2}, Lh7;->b()Landroid/os/Bundle;

    move-result-object p2

    const-string v5, "android.support.customtabs.extra.EXIT_ANIMATION_BUNDLE"

    .line 19
    invoke-virtual {v1, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p2, "android.support.customtabs.extra.SESSION"

    .line 20
    invoke-virtual {v1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 21
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const/4 v6, 0x0

    .line 22
    invoke-virtual {v5, p2, v6}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 23
    invoke-virtual {v1, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_5
    const-string p2, "android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS"

    .line 24
    invoke-virtual {v1, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 25
    iget-object p2, v0, Lq3;->a:Ljava/lang/Integer;

    .line 26
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_6

    .line 27
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string v4, "android.support.customtabs.extra.TOOLBAR_COLOR"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 28
    :cond_6
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p2, "androidx.browser.customtabs.extra.SHARE_STATE"

    .line 29
    invoke-virtual {v1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 30
    new-instance p2, Lu3;

    invoke-direct {p2, v1, v3}, Lu3;-><init>(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 31
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 32
    iget-object v0, p2, Lu3;->a:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 33
    iget-object p1, p2, Lu3;->a:Landroid/content/Intent;

    iget-object p2, p2, Lu3;->b:Landroid/os/Bundle;

    .line 34
    sget-object v0, Lu7;->a:Ljava/lang/Object;

    .line 35
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 37
    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_1

    .line 38
    :cond_8
    :try_start_1
    new-instance p2, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 39
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 40
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_2

    const-string v0, ""

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5f

    if-ne v1, v2, :cond_1

    .line 3
    new-instance v1, Ljava/util/Locale;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_1
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 5
    :cond_2
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 6
    :goto_1
    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    .line 7
    iput-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method public static d(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    sget v1, Lcom/noinnion/android/reader/R$color;->primary_default:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/noinnion/android/reader/R$color;->primary_green:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/noinnion/android/reader/R$color;->accent_dark:I

    const/4 v2, 0x2

    aput v1, v0, v2

    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 2
    invoke-static {}, Llw6;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/noinnion/android/reader/R$color;->background_dark:I

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Llw6;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/noinnion/android/reader/R$color;->background_sepia:I

    goto :goto_0

    .line 4
    :cond_1
    sget v0, Lcom/noinnion/android/reader/R$color;->background_default:I

    .line 5
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setProgressBackgroundColor(I)V

    return-void
.end method
