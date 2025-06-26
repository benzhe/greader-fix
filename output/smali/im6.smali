.class public Lim6;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/appcompat/app/AppCompatActivity;",
        ":",
        "Lpl6$b;",
        ">",
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Lem6;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field public b:Lcom/michaelflisar/gdprdialog/GDPRSetup;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/michaelflisar/gdprdialog/GDPRSetup;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/michaelflisar/gdprdialog/GDPRSetup;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lim6;->a:Ljava/lang/ref/WeakReference;

    .line 3
    iput-object p2, p0, Lim6;->b:Lcom/michaelflisar/gdprdialog/GDPRSetup;

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lvl6;->e:Lvl6;

    new-instance v2, Lem6;

    invoke-direct {v2}, Lem6;-><init>()V

    .line 2
    iget-object v3, v0, Lim6;->b:Lcom/michaelflisar/gdprdialog/GDPRSetup;

    .line 3
    iget-object v3, v3, Lcom/michaelflisar/gdprdialog/GDPRSetup;->m:[Lwl6;

    .line 4
    iget-object v4, v0, Lim6;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/app/AppCompatActivity;

    .line 5
    iget-object v5, v0, Lim6;->b:Lcom/michaelflisar/gdprdialog/GDPRSetup;

    .line 6
    iget-object v5, v5, Lcom/michaelflisar/gdprdialog/GDPRSetup;->r:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x1

    if-lez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/4 v8, 0x0

    .line 8
    :goto_1
    array-length v9, v3

    if-ge v8, v9, :cond_2

    .line 9
    aget-object v9, v3, v8

    sget-object v10, Lwl6;->e:Lwl6;

    if-ne v9, v10, :cond_1

    const/4 v8, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_2
    if-eqz v4, :cond_16

    .line 10
    new-instance v11, Lem6;

    invoke-direct {v11}, Lem6;-><init>()V

    if-nez v5, :cond_3

    if-eqz v8, :cond_7

    .line 11
    :cond_3
    iget-object v5, v0, Lim6;->b:Lcom/michaelflisar/gdprdialog/GDPRSetup;

    .line 12
    iget-object v12, v5, Lcom/michaelflisar/gdprdialog/GDPRSetup;->r:Ljava/util/ArrayList;

    .line 13
    iget v13, v5, Lcom/michaelflisar/gdprdialog/GDPRSetup;->u:I

    .line 14
    iget v5, v5, Lcom/michaelflisar/gdprdialog/GDPRSetup;->v:I

    .line 15
    invoke-virtual {v11}, Lem6;->b()V

    .line 16
    :try_start_0
    invoke-virtual {v11, v4, v12, v13, v5}, Lem6;->a(Landroid/content/Context;Ljava/util/ArrayList;II)Lorg/json/JSONObject;

    move-result-object v5

    .line 17
    sget v12, Lcom/michaelflisar/gdprdialog/R$string;->gdpr_googles_check_json_field_is_request_in_eea_or_unknown:I

    invoke-virtual {v4, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 18
    sget v13, Lcom/michaelflisar/gdprdialog/R$string;->gdpr_googles_check_json_field_companies:I

    invoke-virtual {v4, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 19
    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 20
    sget-object v12, Lvl6;->f:Lvl6;

    goto :goto_3

    :cond_4
    sget-object v12, Lvl6;->g:Lvl6;

    :goto_3
    iput-object v12, v11, Lem6;->a:Lvl6;

    .line 21
    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 22
    sget v12, Lcom/michaelflisar/gdprdialog/R$string;->gdpr_googles_check_json_field_company_name:I

    invoke-virtual {v4, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 23
    sget v14, Lcom/michaelflisar/gdprdialog/R$string;->gdpr_googles_check_json_field_policy_url:I

    invoke-virtual {v4, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 24
    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v13, 0x0

    .line 25
    :goto_4
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v13, v15, :cond_5

    .line 26
    iget-object v15, v11, Lem6;->b:Ljava/util/List;

    new-instance v6, Lcom/michaelflisar/gdprdialog/GDPRSubNetwork;

    .line 27
    invoke-virtual {v5, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 28
    invoke-virtual {v5, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v9, v10}, Lcom/michaelflisar/gdprdialog/GDPRSubNetwork;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 30
    :catch_0
    invoke-virtual {v11}, Lem6;->b()V

    .line 31
    iput-boolean v7, v11, Lem6;->c:Z

    .line 32
    invoke-static {}, Lpl6;->b()Lpl6;

    move-result-object v5

    .line 33
    iget-object v5, v5, Lpl6;->c:Lpl6$c;

    .line 34
    check-cast v5, Lpl6$a;

    .line 35
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-nez v8, :cond_6

    .line 36
    iput-object v1, v11, Lem6;->a:Lvl6;

    .line 37
    :cond_6
    iget-object v5, v2, Lem6;->b:Ljava/util/List;

    .line 38
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 39
    iget-object v5, v2, Lem6;->b:Ljava/util/List;

    iget-object v6, v11, Lem6;->b:Ljava/util/List;

    .line 40
    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    const/4 v5, 0x0

    .line 41
    :goto_5
    array-length v6, v3

    if-ge v5, v6, :cond_16

    .line 42
    aget-object v6, v3, v5

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v8, 0x0

    if-eqz v6, :cond_13

    if-eq v6, v7, :cond_f

    const/4 v9, 0x2

    if-eq v6, v9, :cond_b

    const/4 v9, 0x3

    if-eq v6, v9, :cond_8

    goto/16 :goto_10

    .line 43
    :cond_8
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 44
    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    .line 45
    invoke-static {v6}, Lfm6;->i(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 46
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :cond_9
    const/4 v6, 0x0

    goto :goto_6

    .line 47
    :catch_1
    invoke-static {}, Lpl6;->b()Lpl6;

    move-result-object v6

    .line 48
    iget-object v6, v6, Lpl6;->c:Lpl6$c;

    .line 49
    check-cast v6, Lpl6$a;

    .line 50
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x1

    :goto_6
    if-eqz v6, :cond_a

    goto :goto_7

    .line 51
    :cond_a
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_7
    move-object v6, v8

    .line 52
    :goto_8
    invoke-virtual {v2, v6}, Lem6;->c(Ljava/lang/Boolean;)Lem6;

    goto/16 :goto_10

    .line 53
    :cond_b
    :try_start_2
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 54
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0xa

    if-ge v9, v10, :cond_c

    goto :goto_9

    :cond_c
    const-string v9, "euro"

    .line 55
    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 56
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_c

    :cond_d
    const/4 v6, 0x0

    goto :goto_a

    .line 57
    :catch_2
    invoke-static {}, Lpl6;->b()Lpl6;

    move-result-object v6

    .line 58
    iget-object v6, v6, Lpl6;->c:Lpl6$c;

    .line 59
    check-cast v6, Lpl6$a;

    .line 60
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    const/4 v6, 0x1

    :goto_a
    if-eqz v6, :cond_e

    goto :goto_b

    .line 61
    :cond_e
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_b
    move-object v6, v8

    .line 62
    :goto_c
    invoke-virtual {v2, v6}, Lem6;->c(Ljava/lang/Boolean;)Lem6;

    goto/16 :goto_10

    :cond_f
    const-string v6, "phone"

    .line 63
    :try_start_3
    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 64
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_10

    .line 65
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v12, 0x2

    if-ne v10, v12, :cond_10

    .line 66
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    .line 67
    invoke-static {v9}, Lfm6;->i(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 68
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_f

    :cond_10
    const/4 v9, 0x0

    goto :goto_d

    .line 69
    :catch_3
    invoke-static {}, Lpl6;->b()Lpl6;

    move-result-object v9

    .line 70
    iget-object v9, v9, Lpl6;->c:Lpl6$c;

    .line 71
    check-cast v9, Lpl6$a;

    .line 72
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x1

    .line 73
    :goto_d
    :try_start_4
    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 74
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v10

    const/4 v12, 0x2

    if-eq v10, v12, :cond_11

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v10

    if-eqz v10, :cond_11

    .line 75
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_11

    .line 76
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v12, 0x2

    if-ne v10, v12, :cond_11

    .line 77
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 78
    invoke-static {v6}, Lfm6;->i(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 79
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_f

    .line 80
    :catch_4
    invoke-static {}, Lpl6;->b()Lpl6;

    move-result-object v6

    .line 81
    iget-object v6, v6, Lpl6;->c:Lpl6$c;

    .line 82
    check-cast v6, Lpl6$a;

    .line 83
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x1

    :cond_11
    if-eqz v9, :cond_12

    goto :goto_e

    .line 84
    :cond_12
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_e
    move-object v6, v8

    .line 85
    :goto_f
    invoke-virtual {v2, v6}, Lem6;->c(Ljava/lang/Boolean;)Lem6;

    goto :goto_10

    .line 86
    :cond_13
    iget-boolean v6, v11, Lem6;->c:Z

    if-nez v6, :cond_14

    .line 87
    iget-object v6, v11, Lem6;->a:Lvl6;

    .line 88
    iput-object v6, v2, Lem6;->a:Lvl6;

    goto :goto_10

    .line 89
    :cond_14
    invoke-virtual {v2, v8}, Lem6;->c(Ljava/lang/Boolean;)Lem6;

    .line 90
    :goto_10
    iget-object v6, v2, Lem6;->a:Lvl6;

    if-eq v6, v1, :cond_15

    .line 91
    iget-boolean v6, v2, Lem6;->c:Z

    if-nez v6, :cond_15

    goto :goto_11

    :cond_15
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_5

    .line 92
    :cond_16
    :goto_11
    invoke-static {}, Lpl6;->b()Lpl6;

    move-result-object v1

    .line 93
    iget-object v1, v1, Lpl6;->c:Lpl6$c;

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 94
    iget-object v5, v2, Lem6;->a:Lvl6;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, v2, Lem6;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget-boolean v5, v2, Lem6;->c:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v4, v7

    const-string v5, "{ Location: %s | SubNetworks: %d | Error: %b }"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, "GDPRPreperationData: %s"

    .line 95
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    check-cast v1, Lpl6$a;

    .line 96
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lem6;

    .line 2
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lim6;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    iget-object v1, p0, Lim6;->b:Lcom/michaelflisar/gdprdialog/GDPRSetup;

    .line 6
    iget-object v1, v1, Lcom/michaelflisar/gdprdialog/GDPRSetup;->m:[Lwl6;

    .line 7
    array-length v1, v1

    if-lez v1, :cond_1

    .line 8
    iget-object v1, p1, Lem6;->a:Lvl6;

    .line 9
    sget-object v2, Lvl6;->g:Lvl6;

    if-ne v1, v2, :cond_1

    .line 10
    new-instance p1, Lrl6;

    sget-object v2, Lql6;->i:Lql6;

    invoke-direct {p1, v0, v2, v1}, Lrl6;-><init>(Landroid/content/Context;Lql6;Lvl6;)V

    .line 11
    invoke-static {}, Lpl6;->b()Lpl6;

    move-result-object v1

    invoke-virtual {v1, p1}, Lpl6;->c(Lrl6;)Z

    .line 12
    check-cast v0, Lpl6$b;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lpl6$b;->c(Lrl6;Z)V

    goto :goto_0

    .line 13
    :cond_1
    check-cast v0, Lpl6$b;

    invoke-interface {v0, p1}, Lpl6$b;->h(Lem6;)V

    :cond_2
    :goto_0
    return-void
.end method
