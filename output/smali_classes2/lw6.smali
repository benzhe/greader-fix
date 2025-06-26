.class public Llw6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I = -0x1


# direct methods
.method public static a(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-static {p0}, Liw6;->d(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Llw6;->b(Landroid/app/Activity;I)V

    return-void
.end method

.method public static b(Landroid/app/Activity;I)V
    .locals 1

    .line 1
    sget v0, Llw6;->a:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 p1, -0x1

    .line 2
    sput p1, Llw6;->a:I

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 4
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static c(I)I
    .locals 1

    .line 1
    rem-int/lit8 p0, p0, 0x5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 2
    sget p0, Lcom/noinnion/android/reader/R$drawable;->thumbnail_no_image_1:I

    goto :goto_0

    .line 3
    :cond_0
    sget p0, Lcom/noinnion/android/reader/R$drawable;->thumbnail_no_image_3:I

    goto :goto_0

    .line 4
    :cond_1
    sget p0, Lcom/noinnion/android/reader/R$drawable;->thumbnail_no_image_4:I

    goto :goto_0

    .line 5
    :cond_2
    sget p0, Lcom/noinnion/android/reader/R$drawable;->thumbnail_no_image_5:I

    goto :goto_0

    .line 6
    :cond_3
    sget p0, Lcom/noinnion/android/reader/R$drawable;->thumbnail_no_image_2:I

    :goto_0
    return p0
.end method

.method public static d(Z)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Llw6;->k()Z

    move-result v0

    const-string v1, "#888888"

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "#cccccc"

    goto :goto_1

    .line 2
    :cond_1
    invoke-static {}, Llw6;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p0, :cond_2

    const-string p0, "#757577"

    goto :goto_0

    :cond_2
    const-string p0, "#3d3d3f"

    :goto_0
    move-object v1, p0

    goto :goto_1

    :cond_3
    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    const-string v1, "#444444"

    :goto_1
    return-object v1
.end method

.method public static e(Landroid/content/Context;)I
    .locals 2

    .line 1
    sget v0, Llw6;->a:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {p0}, Liw6;->d(Landroid/content/Context;)I

    move-result p0

    sput p0, Llw6;->a:I

    return p0
.end method

.method public static f()I
    .locals 2

    .line 1
    sget v0, Llw6;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 2
    sget v0, Lcom/noinnion/android/reader/R$drawable;->ic_item_keep_unread:I

    return v0

    .line 3
    :cond_0
    sget v0, Lcom/noinnion/android/reader/R$drawable;->ic_item_keep_unread_green:I

    return v0

    .line 4
    :cond_1
    sget v0, Lcom/noinnion/android/reader/R$drawable;->ic_item_keep_unread_sepia:I

    return v0

    .line 5
    :cond_2
    sget v0, Lcom/noinnion/android/reader/R$drawable;->ic_item_keep_unread_black:I

    return v0

    .line 6
    :cond_3
    sget v0, Lcom/noinnion/android/reader/R$drawable;->ic_item_keep_unread_dark:I

    return v0
.end method

.method public static g()I
    .locals 2

    .line 1
    sget v0, Llw6;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 2
    sget v0, Lcom/noinnion/android/reader/R$drawable;->ic_item_unread:I

    return v0

    .line 3
    :cond_0
    sget v0, Lcom/noinnion/android/reader/R$drawable;->ic_item_unread_green:I

    return v0

    .line 4
    :cond_1
    sget v0, Lcom/noinnion/android/reader/R$drawable;->ic_item_unread_sepia:I

    return v0

    .line 5
    :cond_2
    sget v0, Lcom/noinnion/android/reader/R$drawable;->ic_item_unread_black:I

    return v0

    .line 6
    :cond_3
    sget v0, Lcom/noinnion/android/reader/R$drawable;->ic_item_unread_dark:I

    return v0
.end method

.method public static h()I
    .locals 2

    .line 1
    sget v0, Llw6;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    sget v0, Lcom/noinnion/android/reader/R$drawable;->md_shadow_black:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/noinnion/android/reader/R$drawable;->md_shadow:I

    :goto_1
    return v0
.end method

.method public static i()I
    .locals 2

    .line 1
    invoke-static {}, Llw6;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget v0, Lcom/noinnion/android/reader/R$drawable;->ic_home_menu_sepia:I

    return v0

    .line 3
    :cond_0
    sget v0, Llw6;->a:I

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 4
    sget v0, Lcom/noinnion/android/reader/R$drawable;->ic_home_menu_light:I

    goto :goto_2

    :cond_3
    sget v0, Lcom/noinnion/android/reader/R$drawable;->ic_home_menu_dark:I

    :goto_2
    return v0
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Llw6;->e(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "blue"

    return-object p0

    :cond_0
    const-string p0, "green"

    return-object p0

    :cond_1
    const-string p0, "sepia"

    return-object p0

    :cond_2
    const-string p0, "black"

    return-object p0

    :cond_3
    const-string p0, "dark"

    return-object p0
.end method

.method public static k()Z
    .locals 3

    .line 1
    sget v0, Llw6;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static l()Z
    .locals 2

    .line 1
    sget v0, Llw6;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static m(Landroid/app/Activity;Z)V
    .locals 2

    .line 1
    invoke-static {p0}, Liw6;->d(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_0

    .line 2
    sget p1, Lcom/noinnion/android/reader/R$style;->AppTheme_Default_Transparent:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/noinnion/android/reader/R$style;->AppTheme_Default:I

    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_5

    :cond_1
    if-eqz p1, :cond_2

    .line 3
    sget p1, Lcom/noinnion/android/reader/R$style;->AppTheme_Green_Transparent:I

    goto :goto_1

    :cond_2
    sget p1, Lcom/noinnion/android/reader/R$style;->AppTheme_Green:I

    :goto_1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_5

    :cond_3
    if-eqz p1, :cond_4

    .line 4
    sget p1, Lcom/noinnion/android/reader/R$style;->AppTheme_Sepia_Transparent:I

    goto :goto_2

    :cond_4
    sget p1, Lcom/noinnion/android/reader/R$style;->AppTheme_Sepia:I

    :goto_2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_5

    :cond_5
    if-eqz p1, :cond_6

    .line 5
    sget p1, Lcom/noinnion/android/reader/R$style;->AppTheme_Black_Transparent:I

    goto :goto_3

    :cond_6
    sget p1, Lcom/noinnion/android/reader/R$style;->AppTheme_Black:I

    :goto_3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_5

    :cond_7
    if-eqz p1, :cond_8

    .line 6
    sget p1, Lcom/noinnion/android/reader/R$style;->AppTheme_Dark_Transparent:I

    goto :goto_4

    :cond_8
    sget p1, Lcom/noinnion/android/reader/R$style;->AppTheme_Dark:I

    :goto_4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    .line 7
    :goto_5
    sput v0, Llw6;->a:I

    return-void
.end method

.method public static n(Landroid/content/Context;Z)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/noinnion/android/reader/R$bool;->isTablet:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
