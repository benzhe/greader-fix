.class public final Lbw6;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a()Lcom/michaelflisar/gdprdialog/GDPRSetup;
    .locals 6

    .line 1
    new-instance v0, Lcom/michaelflisar/gdprdialog/GDPRSetup;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/michaelflisar/gdprdialog/GDPRNetwork;

    .line 2
    sget-object v2, Lsl6;->a:Lcom/michaelflisar/gdprdialog/GDPRNetwork;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    sget-object v2, Lsl6;->b:Lcom/michaelflisar/gdprdialog/GDPRNetwork;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 4
    sget-object v2, Lsl6;->c:Lcom/michaelflisar/gdprdialog/GDPRNetwork;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 5
    invoke-direct {v0, v1}, Lcom/michaelflisar/gdprdialog/GDPRSetup;-><init>([Lcom/michaelflisar/gdprdialog/GDPRNetwork;)V

    .line 6
    invoke-static {}, Ljb6;->a()Ljb6;

    move-result-object v1

    const-string v2, "url_privacy_policy"

    invoke-virtual {v1, v2}, Ljb6;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FirebaseRemoteConfig.get\u2026g.UrlPrivacyPolicy.key())"

    invoke-static {v1, v2}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "https://"

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 8
    invoke-static {v2, v1}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    :cond_0
    iput-object v1, v0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->e:Ljava/lang/String;

    .line 10
    iput-boolean v3, v0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->j:Z

    .line 11
    sget-object v1, Lwl6;->i:[Lwl6;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lwl6;

    if-nez v1, :cond_1

    new-array v1, v3, [Lwl6;

    .line 12
    :cond_1
    iput-object v1, v0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->m:[Lwl6;

    const/16 v1, 0x2710

    .line 13
    iput v1, v0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->u:I

    .line 14
    iput v1, v0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->v:I

    .line 15
    iput-boolean v4, v0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->n:Z

    .line 16
    iput-boolean v4, v0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->o:Z

    .line 17
    iput-boolean v4, v0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->q:Z

    .line 18
    iput-boolean v4, v0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->l:Z

    const-string v1, "GDPRSetup(\n\t\t\t\t\tGDPRDefi\u2026.withNoToolbarTheme(true)"

    .line 19
    invoke-static {v0, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final b(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p0, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lbw6;->a()Lcom/michaelflisar/gdprdialog/GDPRSetup;

    move-result-object v0

    .line 2
    invoke-static {}, Lpl6;->b()Lpl6;

    move-result-object v1

    sget-object v2, Lvl6;->f:Lvl6;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->o()Lwb;

    move-result-object p0

    .line 5
    const-class v3, Ltl6;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lwb;->c(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lwb;->e()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v1, p0, v0, v2}, Lpl6;->d(Lwb;Lcom/michaelflisar/gdprdialog/GDPRSetup;Lvl6;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    :try_start_1
    invoke-virtual {v1, p0, v0, v2}, Lpl6;->d(Lwb;Lcom/michaelflisar/gdprdialog/GDPRSetup;Lvl6;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method
