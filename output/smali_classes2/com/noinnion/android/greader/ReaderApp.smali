.class public final Lcom/noinnion/android/greader/ReaderApp;
.super Landroid/app/Application;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 15

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2
    new-instance v0, Len6;

    invoke-direct {v0, p0}, Len6;-><init>(Lcom/noinnion/android/greader/ReaderApp;)V

    .line 3
    sget-object v1, Lo08;->b:Lo08;

    const-string v2, "koinContext"

    .line 4
    invoke-static {v1, v2}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "appDeclaration"

    invoke-static {v0, v2}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "koinContext"

    .line 5
    invoke-static {v1, v2}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "appDeclaration"

    invoke-static {v0, v2}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    invoke-static {}, Ll08;->b()Ll08;

    move-result-object v2

    .line 8
    invoke-virtual {v1, v2}, Lo08;->a(Ll08;)V

    .line 9
    invoke-virtual {v0, v2}, Len6;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v2}, Ll08;->a()Ll08;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 11
    monitor-exit v1

    .line 12
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 13
    invoke-static {v0}, Llw6;->e(Landroid/content/Context;)I

    .line 14
    invoke-static {}, Ljb6;->a()Ljb6;

    move-result-object v0

    .line 15
    invoke-static {}, Lqn6;->values()[Lqn6;

    move-result-object v1

    .line 16
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    .line 17
    aget-object v6, v1, v5

    .line 18
    invoke-virtual {v6}, Lqn6;->k()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lqn6;->i()Ljava/lang/Object;

    move-result-object v6

    .line 19
    new-instance v8, Lrj7;

    invoke-direct {v8, v7, v6}, Lrj7;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lek7;->t(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v1

    .line 21
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 23
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 24
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 25
    instance-of v6, v5, [B

    if-eqz v6, :cond_1

    .line 26
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v6, Ljava/lang/String;

    check-cast v5, [B

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 27
    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 28
    :try_start_1
    sget-object v3, Lyb6;->f:Ljava/util/Date;

    .line 29
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 30
    sget-object v3, Lyb6;->f:Ljava/util/Date;

    .line 31
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 32
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 33
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 34
    new-instance v2, Lyb6;

    .line 35
    invoke-direct {v2, v7, v3, v5, v6}, Lyb6;-><init>(Lorg/json/JSONObject;Ljava/util/Date;Lorg/json/JSONArray;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 36
    iget-object v3, v0, Ljb6;->e:Lxb6;

    invoke-virtual {v3, v2}, Lxb6;->c(Lyb6;)Le45;

    move-result-object v2

    .line 37
    sget-object v3, Lib6;->a:Lib6;

    invoke-virtual {v2, v3}, Le45;->p(Ld45;)Le45;

    move-result-object v2

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v3, "FirebaseRemoteConfig"

    const-string v5, "The provided defaults map could not be processed."

    .line 38
    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    invoke-static {v1}, Lc50;->X(Ljava/lang/Object;)Le45;

    move-result-object v2

    .line 40
    :goto_2
    new-instance v3, Lpn6;

    invoke-direct {v3, v0}, Lpn6;-><init>(Ljb6;)V

    invoke-virtual {v2, v3}, Le45;->b(Lz35;)Le45;

    .line 41
    invoke-static {}, Lpl6;->b()Lpl6;

    move-result-object v0

    .line 42
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v0, Lpl6;->a:Landroid/content/Context;

    .line 44
    sget v2, Lcom/michaelflisar/gdprdialog/R$string;->gdpr_preference_file:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, v0, Lpl6;->b:Landroid/content/SharedPreferences;

    .line 45
    new-instance v0, Lcom/michaelflisar/gdprdialog/GDPRNetwork;

    sget v2, Lcom/michaelflisar/gdprdialog/R$string;->gdpr_type_ads:I

    const/4 v10, 0x1

    const-string v7, "AdMob"

    const-string v8, "https://policies.google.com/privacy"

    move-object v5, v0

    move-object v6, p0

    move v9, v2

    invoke-direct/range {v5 .. v10}, Lcom/michaelflisar/gdprdialog/GDPRNetwork;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    const/4 v3, 0x1

    .line 46
    iput-boolean v3, v0, Lcom/michaelflisar/gdprdialog/GDPRNetwork;->h:Z

    const-string v5, "https://support.google.com/admob/answer/9012903"

    .line 47
    iput-object v5, v0, Lcom/michaelflisar/gdprdialog/GDPRNetwork;->k:Ljava/lang/String;

    .line 48
    sput-object v0, Lsl6;->a:Lcom/michaelflisar/gdprdialog/GDPRNetwork;

    .line 49
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "Firebase"

    const-string v2, "https://firebase.google.com/support/privacy"

    .line 87
    sget v5, Lcom/michaelflisar/gdprdialog/R$string;->gdpr_type_cloud_database:I

    .line 88
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 89
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 90
    new-instance v11, Lcom/michaelflisar/gdprdialog/GDPRNetwork;

    sget v12, Lcom/michaelflisar/gdprdialog/R$string;->gdpr_type_crash:I

    const/4 v13, 0x0

    const/4 v10, 0x0

    move-object v5, v11

    move-object v7, v0

    move-object v8, v2

    move v9, v12

    invoke-direct/range {v5 .. v10}, Lcom/michaelflisar/gdprdialog/GDPRNetwork;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    sput-object v11, Lsl6;->b:Lcom/michaelflisar/gdprdialog/GDPRNetwork;

    .line 91
    new-instance v11, Lcom/michaelflisar/gdprdialog/GDPRNetwork;

    sget v14, Lcom/michaelflisar/gdprdialog/R$string;->gdpr_type_analytics:I

    move-object v5, v11

    move v9, v14

    move v10, v13

    invoke-direct/range {v5 .. v10}, Lcom/michaelflisar/gdprdialog/GDPRNetwork;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    sput-object v11, Lsl6;->c:Lcom/michaelflisar/gdprdialog/GDPRNetwork;

    .line 92
    sget v0, Lcom/michaelflisar/gdprdialog/R$string;->gdpr_type_notifications:I

    .line 93
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 94
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 95
    invoke-virtual {p0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 96
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 98
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 99
    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 100
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 101
    invoke-virtual {p0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 102
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 103
    invoke-virtual {p0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 104
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 105
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 106
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 107
    sget v2, Lcom/michaelflisar/gdprdialog/R$string;->gdpr_type_authorization:I

    .line 108
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 109
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 110
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    invoke-static {}, Lpl6;->b()Lpl6;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lpl6;->a()Lrl6;

    move-result-object v0

    .line 114
    iget-object v0, v0, Lrl6;->a:Lql6;

    .line 115
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v2, Lql6;->h:Lql6;

    if-eq v0, v2, :cond_4

    sget-object v2, Lql6;->i:Lql6;

    if-ne v0, v2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v0, 0x1

    :goto_4
    if-eqz v0, :cond_5

    .line 117
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    const-string v2, "allow_personalized_ads"

    const-string v5, "true"

    .line 118
    iget-object v0, v0, Lcom/google/firebase/analytics/FirebaseAnalytics;->a:Lq34;

    .line 119
    invoke-virtual {v0, v1, v2, v5, v4}, Lq34;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 120
    :cond_5
    invoke-static {}, Lpe5;->b()Lpe5;

    move-result-object v0

    .line 121
    const-class v2, Lyg5;

    .line 122
    invoke-virtual {v0}, Lpe5;->a()V

    .line 123
    iget-object v0, v0, Lpe5;->d:Leg5;

    invoke-virtual {v0, v2}, Lpf5;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 124
    check-cast v0, Lyg5;

    const-string v2, "FirebaseCrashlytics component is not present."

    .line 125
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    iget-object v0, v0, Lyg5;->a:Lvi5;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 127
    iget-object v0, v0, Lvi5;->c:Lbj5;

    .line 128
    monitor-enter v0

    if-eqz v2, :cond_6

    .line 129
    :try_start_2
    iput-boolean v4, v0, Lbj5;->f:Z

    goto :goto_5

    :catchall_0
    move-exception v1

    goto/16 :goto_a

    :cond_6
    :goto_5
    if-eqz v2, :cond_7

    move-object v5, v2

    goto :goto_6

    .line 130
    :cond_7
    iget-object v5, v0, Lbj5;->b:Lpe5;

    .line 131
    invoke-virtual {v5}, Lpe5;->a()V

    .line 132
    iget-object v5, v5, Lpe5;->a:Landroid/content/Context;

    .line 133
    invoke-virtual {v0, v5}, Lbj5;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v5

    :goto_6
    iput-object v5, v0, Lbj5;->g:Ljava/lang/Boolean;

    .line 134
    iget-object v5, v0, Lbj5;->a:Landroid/content/SharedPreferences;

    .line 135
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "firebase_crashlytics_collection_enabled"

    if-eqz v2, :cond_8

    .line 136
    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_7

    .line 137
    :cond_8
    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 138
    :goto_7
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 139
    iget-object v2, v0, Lbj5;->c:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    :try_start_3
    invoke-virtual {v0}, Lbj5;->b()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 141
    iget-boolean v5, v0, Lbj5;->e:Z

    if-nez v5, :cond_a

    .line 142
    iget-object v5, v0, Lbj5;->d:Lf45;

    invoke-virtual {v5, v1}, Lf45;->b(Ljava/lang/Object;)Z

    .line 143
    iput-boolean v3, v0, Lbj5;->e:Z

    goto :goto_8

    .line 144
    :cond_9
    iget-boolean v5, v0, Lbj5;->e:Z

    if-eqz v5, :cond_a

    .line 145
    new-instance v5, Lf45;

    invoke-direct {v5}, Lf45;-><init>()V

    iput-object v5, v0, Lbj5;->d:Lf45;

    .line 146
    iput-boolean v4, v0, Lbj5;->e:Z

    .line 147
    :cond_a
    :goto_8
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 148
    monitor-exit v0

    .line 149
    sget-object v0, Lkl6;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_d

    .line 150
    new-instance v0, Lll6;

    const-string v2, "org/threeten/bp/TZDB.dat"

    invoke-direct {v0, p0, v2}, Lll6;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 151
    sget-object v2, Lm78;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_c

    .line 152
    sget-object v2, Lm78;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_9

    .line 153
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Initializer was already set, possibly with a default during initialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_d
    :goto_9
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 156
    sput-boolean v4, Lp07;->b:Z

    .line 157
    new-instance v1, Lgz6$b;

    invoke-direct {v1}, Lgz6$b;-><init>()V

    .line 158
    iput-boolean v3, v1, Lgz6$b;->g:Z

    .line 159
    iput-boolean v3, v1, Lgz6$b;->h:Z

    .line 160
    iput-boolean v3, v1, Lgz6$b;->i:Z

    .line 161
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2}, Lgz6$b;->a(Landroid/graphics/Bitmap$Config;)Lgz6$b;

    .line 162
    invoke-virtual {v1}, Lgz6$b;->b()Lgz6;

    move-result-object v1

    .line 163
    new-instance v2, Liz6$b;

    invoke-direct {v2, v0}, Liz6$b;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x3

    .line 164
    invoke-virtual {v2, v4}, Liz6$b;->f(I)Liz6$b;

    const/4 v5, 0x4

    .line 165
    invoke-virtual {v2, v5}, Liz6$b;->e(I)Liz6$b;

    .line 166
    iput-boolean v3, v2, Liz6$b;->h:Z

    const/16 v6, 0x3e8

    .line 167
    invoke-virtual {v2, v6}, Liz6$b;->c(I)Liz6$b;

    .line 168
    iput-object v1, v2, Liz6$b;->p:Lgz6;

    .line 169
    sget-object v7, Lwz6;->f:Lwz6;

    invoke-virtual {v2, v7}, Liz6$b;->d(Lwz6;)Liz6$b;

    .line 170
    invoke-virtual {v2}, Liz6$b;->a()Liz6;

    move-result-object v2

    .line 171
    invoke-static {}, Lhz6;->j()Lhz6;

    move-result-object v8

    invoke-virtual {v8, v2}, Lhz6;->k(Liz6;)V

    .line 172
    new-instance v2, Liz6$b;

    invoke-direct {v2, v0}, Liz6$b;-><init>(Landroid/content/Context;)V

    .line 173
    invoke-virtual {v2, v4}, Liz6$b;->f(I)Liz6$b;

    .line 174
    invoke-virtual {v2, v5}, Liz6$b;->e(I)Liz6$b;

    .line 175
    iput-boolean v3, v2, Liz6$b;->h:Z

    .line 176
    new-instance v5, Lvy6;

    const-string v8, "uil-icons"

    invoke-static {v0, v8}, Ln56;->M0(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-direct {v5, v8}, Lvy6;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v5}, Liz6$b;->b(Lty6;)Liz6$b;

    .line 177
    invoke-virtual {v2, v6}, Liz6$b;->c(I)Liz6$b;

    .line 178
    iput-object v1, v2, Liz6$b;->p:Lgz6;

    .line 179
    invoke-virtual {v2, v7}, Liz6$b;->d(Lwz6;)Liz6$b;

    .line 180
    invoke-virtual {v2}, Liz6$b;->a()Liz6;

    move-result-object v2

    .line 181
    invoke-static {}, Lsx6;->n()Lsx6;

    move-result-object v5

    invoke-virtual {v5, v2}, Lhz6;->k(Liz6;)V

    .line 182
    new-instance v2, Liz6$b;

    invoke-direct {v2, v0}, Liz6$b;-><init>(Landroid/content/Context;)V

    .line 183
    invoke-virtual {v2, v4}, Liz6$b;->f(I)Liz6$b;

    const/4 v4, 0x2

    .line 184
    invoke-virtual {v2, v4}, Liz6$b;->e(I)Liz6$b;

    .line 185
    iput-boolean v3, v2, Liz6$b;->h:Z

    .line 186
    new-instance v3, Lvy6;

    const-string v4, "uil-temp"

    invoke-static {v0, v4}, Ln56;->M0(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {v3, v0}, Lvy6;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v3}, Liz6$b;->b(Lty6;)Liz6$b;

    const/16 v0, 0x64

    .line 187
    invoke-virtual {v2, v0}, Liz6$b;->c(I)Liz6$b;

    .line 188
    iput-object v1, v2, Liz6$b;->p:Lgz6;

    .line 189
    invoke-virtual {v2, v7}, Liz6$b;->d(Lwz6;)Liz6$b;

    .line 190
    invoke-virtual {v2}, Liz6$b;->a()Liz6;

    move-result-object v0

    .line 191
    invoke-static {}, Lux6;->n()Lux6;

    move-result-object v1

    invoke-virtual {v1, v0}, Lhz6;->k(Liz6;)V

    .line 192
    new-instance v0, Lfn6;

    invoke-direct {v0, p0}, Lfn6;-><init>(Lcom/noinnion/android/greader/ReaderApp;)V

    .line 193
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 194
    sget-object v0, Lgn6;->e:Lgn6;

    .line 195
    sput-object v0, Ln56;->a:Ltc7;

    return-void

    :catchall_1
    move-exception v1

    .line 196
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_a
    monitor-exit v0

    throw v1

    :catchall_2
    move-exception v0

    .line 197
    monitor-exit v1

    throw v0
.end method
