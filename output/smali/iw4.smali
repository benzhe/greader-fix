.class public final Liw4;
.super Lww4;
.source "SourceFile"


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:J

.field public final h:J

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public j:I

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lrx4;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lww4;-><init>(Lrx4;)V

    iput-wide p2, p0, Liw4;->h:J

    return-void
.end method


# virtual methods
.method public final h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final i()V
    .locals 14
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "appId",
            "appStore",
            "appName",
            "gmpAppId",
            "gaAppId"
        }
    .end annotation

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 1
    iget-object v0, v0, Lrx4;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lly4;->a:Lrx4;

    .line 3
    iget-object v1, v1, Lrx4;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "unknown"

    const-string v3, "Unknown"

    const/high16 v4, -0x80000000

    const/4 v5, 0x0

    const-string v6, ""

    if-nez v1, :cond_0

    iget-object v7, p0, Lly4;->a:Lrx4;

    .line 5
    invoke-virtual {v7}, Lrx4;->a()Lqw4;

    move-result-object v7

    .line 6
    iget-object v7, v7, Lqw4;->f:Low4;

    .line 7
    invoke-static {v0}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "PackageManager is null, app identity information might be inaccurate. appId"

    .line 8
    invoke-virtual {v7, v9, v8}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 9
    :cond_0
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10
    :catch_0
    iget-object v7, p0, Lly4;->a:Lrx4;

    .line 11
    invoke-virtual {v7}, Lrx4;->a()Lqw4;

    move-result-object v7

    .line 12
    iget-object v7, v7, Lqw4;->f:Low4;

    .line 13
    invoke-static {v0}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Error retrieving app installer package name. appId"

    .line 14
    invoke-virtual {v7, v9, v8}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    if-nez v2, :cond_1

    const-string v2, "manual_install"

    goto :goto_1

    :cond_1
    const-string v7, "com.android.vending"

    .line 15
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v2, v6

    .line 16
    :cond_2
    :goto_1
    :try_start_1
    iget-object v7, p0, Lly4;->a:Lrx4;

    .line 17
    iget-object v7, v7, Lrx4;->a:Landroid/content/Context;

    .line 18
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 19
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 20
    invoke-virtual {v1, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 21
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 22
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :cond_3
    move-object v8, v3

    .line 23
    :goto_2
    :try_start_2
    iget-object v3, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 24
    iget v4, v7, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-object v7, v3

    move-object v3, v8

    goto :goto_3

    :catch_2
    move-object v7, v3

    .line 25
    :goto_3
    iget-object v8, p0, Lly4;->a:Lrx4;

    .line 26
    invoke-virtual {v8}, Lrx4;->a()Lqw4;

    move-result-object v8

    .line 27
    iget-object v8, v8, Lqw4;->f:Low4;

    .line 28
    invoke-static {v0}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "Error retrieving package info. appId, appName"

    .line 29
    invoke-virtual {v8, v10, v9, v3}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v7

    .line 30
    :cond_4
    :goto_4
    iput-object v0, p0, Liw4;->c:Ljava/lang/String;

    iput-object v2, p0, Liw4;->f:Ljava/lang/String;

    iput-object v3, p0, Liw4;->d:Ljava/lang/String;

    iput v4, p0, Liw4;->e:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Liw4;->g:J

    iget-object v2, p0, Lly4;->a:Lrx4;

    .line 31
    iget-object v2, v2, Lrx4;->b:Ljava/lang/String;

    .line 32
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_5

    iget-object v2, p0, Lly4;->a:Lrx4;

    .line 33
    iget-object v2, v2, Lrx4;->c:Ljava/lang/String;

    const-string v4, "am"

    .line 34
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    iget-object v4, p0, Lly4;->a:Lrx4;

    .line 35
    invoke-virtual {v4}, Lrx4;->h()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    iget-object v7, p0, Lly4;->a:Lrx4;

    .line 36
    invoke-virtual {v7}, Lrx4;->a()Lqw4;

    move-result-object v7

    goto/16 :goto_6

    .line 37
    :pswitch_0
    iget-object v7, p0, Lly4;->a:Lrx4;

    .line 38
    invoke-virtual {v7}, Lrx4;->a()Lqw4;

    move-result-object v7

    .line 39
    iget-object v7, v7, Lqw4;->l:Low4;

    const-string v8, "App measurement disabled via the global data collection setting"

    .line 40
    invoke-virtual {v7, v8}, Low4;->a(Ljava/lang/String;)V

    goto :goto_7

    .line 41
    :pswitch_1
    iget-object v7, p0, Lly4;->a:Lrx4;

    .line 42
    invoke-virtual {v7}, Lrx4;->a()Lqw4;

    move-result-object v7

    .line 43
    iget-object v7, v7, Lqw4;->k:Low4;

    const-string v8, "App measurement deactivated via resources. This method is being deprecated. Please refer to https://firebase.google.com/support/guides/disable-analytics"

    .line 44
    invoke-virtual {v7, v8}, Low4;->a(Ljava/lang/String;)V

    goto :goto_7

    .line 45
    :pswitch_2
    iget-object v7, p0, Lly4;->a:Lrx4;

    .line 46
    invoke-virtual {v7}, Lrx4;->a()Lqw4;

    move-result-object v7

    .line 47
    iget-object v7, v7, Lqw4;->n:Low4;

    const-string v8, "App measurement disabled via the init parameters"

    .line 48
    invoke-virtual {v7, v8}, Low4;->a(Ljava/lang/String;)V

    goto :goto_7

    .line 49
    :pswitch_3
    iget-object v7, p0, Lly4;->a:Lrx4;

    .line 50
    invoke-virtual {v7}, Lrx4;->a()Lqw4;

    move-result-object v7

    .line 51
    iget-object v7, v7, Lqw4;->l:Low4;

    const-string v8, "App measurement disabled via the manifest"

    .line 52
    invoke-virtual {v7, v8}, Low4;->a(Ljava/lang/String;)V

    goto :goto_7

    .line 53
    :pswitch_4
    iget-object v7, p0, Lly4;->a:Lrx4;

    .line 54
    invoke-virtual {v7}, Lrx4;->a()Lqw4;

    move-result-object v7

    .line 55
    iget-object v7, v7, Lqw4;->l:Low4;

    const-string v8, "App measurement disabled by setAnalyticsCollectionEnabled(false)"

    .line 56
    invoke-virtual {v7, v8}, Low4;->a(Ljava/lang/String;)V

    goto :goto_7

    .line 57
    :pswitch_5
    iget-object v7, p0, Lly4;->a:Lrx4;

    .line 58
    invoke-virtual {v7}, Lrx4;->a()Lqw4;

    move-result-object v7

    .line 59
    iget-object v7, v7, Lqw4;->n:Low4;

    const-string v8, "App measurement deactivated via the init parameters"

    .line 60
    invoke-virtual {v7, v8}, Low4;->a(Ljava/lang/String;)V

    goto :goto_7

    .line 61
    :pswitch_6
    iget-object v7, p0, Lly4;->a:Lrx4;

    .line 62
    invoke-virtual {v7}, Lrx4;->a()Lqw4;

    move-result-object v7

    .line 63
    iget-object v7, v7, Lqw4;->l:Low4;

    const-string v8, "App measurement deactivated via the manifest"

    .line 64
    invoke-virtual {v7, v8}, Low4;->a(Ljava/lang/String;)V

    goto :goto_7

    .line 65
    :pswitch_7
    iget-object v7, p0, Lly4;->a:Lrx4;

    .line 66
    invoke-virtual {v7}, Lrx4;->a()Lqw4;

    move-result-object v7

    .line 67
    iget-object v7, v7, Lqw4;->n:Low4;

    const-string v8, "App measurement collection enabled"

    .line 68
    invoke-virtual {v7, v8}, Low4;->a(Ljava/lang/String;)V

    goto :goto_7

    .line 69
    :goto_6
    iget-object v7, v7, Lqw4;->l:Low4;

    const-string v8, "App measurement disabled due to denied storage consent"

    .line 70
    invoke-virtual {v7, v8}, Low4;->a(Ljava/lang/String;)V

    :goto_7
    iput-object v6, p0, Liw4;->k:Ljava/lang/String;

    iput-object v6, p0, Liw4;->l:Ljava/lang/String;

    iput-object v6, p0, Liw4;->m:Ljava/lang/String;

    iget-object v7, p0, Lly4;->a:Lrx4;

    .line 71
    iget-object v8, v7, Lrx4;->f:Lc35;

    if-eqz v2, :cond_6

    .line 72
    iget-object v2, v7, Lrx4;->b:Ljava/lang/String;

    .line 73
    iput-object v2, p0, Liw4;->l:Ljava/lang/String;

    :cond_6
    const/4 v2, 0x0

    .line 74
    :try_start_3
    invoke-static {}, Lcf4;->b()Z

    iget-object v7, p0, Lly4;->a:Lrx4;

    .line 75
    iget-object v7, v7, Lrx4;->g:Lcs4;

    .line 76
    sget-object v8, Lew4;->M0:Ldw4;

    invoke-virtual {v7, v2, v8}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v7
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    const-string v9, "google_app_id"

    if-eqz v7, :cond_7

    :try_start_4
    iget-object v7, p0, Lly4;->a:Lrx4;

    .line 77
    iget-object v10, v7, Lrx4;->a:Landroid/content/Context;

    .line 78
    iget-object v7, v7, Lrx4;->s:Ljava/lang/String;

    .line 79
    invoke-static {v10, v9, v7}, Lzz4;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    .line 80
    :cond_7
    iget-object v7, p0, Lly4;->a:Lrx4;

    .line 81
    iget-object v7, v7, Lrx4;->a:Landroid/content/Context;

    .line 82
    invoke-static {v7, v9}, Lzz4;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 83
    :goto_8
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eq v3, v9, :cond_8

    move-object v9, v7

    goto :goto_9

    :cond_8
    move-object v9, v6

    :goto_9
    iput-object v9, p0, Liw4;->k:Ljava/lang/String;

    .line 84
    invoke-static {}, Lae4;->b()Z

    iget-object v9, p0, Lly4;->a:Lrx4;

    .line 85
    iget-object v9, v9, Lrx4;->g:Lcs4;

    .line 86
    sget-object v10, Lew4;->i0:Ldw4;

    .line 87
    invoke-virtual {v9, v2, v10}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v9
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3

    const-string v10, "string"

    const-string v11, "admob_app_id"

    const-string v12, "null reference"

    if-eqz v9, :cond_11

    .line 88
    :try_start_5
    invoke-static {}, Lcf4;->b()Z

    iget-object v9, p0, Lly4;->a:Lrx4;

    .line 89
    iget-object v9, v9, Lrx4;->g:Lcs4;

    .line 90
    invoke-virtual {v9, v2, v8}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v8
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_3

    const-string v9, "ga_app_id"

    if-eqz v8, :cond_c

    :try_start_6
    iget-object v8, p0, Lly4;->a:Lrx4;

    .line 91
    iget-object v10, v8, Lrx4;->a:Landroid/content/Context;

    .line 92
    iget-object v8, v8, Lrx4;->s:Ljava/lang/String;

    .line 93
    invoke-static {v10, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 95
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_9

    goto :goto_a

    .line 96
    :cond_9
    invoke-static {v10}, Lc50;->I1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 97
    :goto_a
    invoke-static {v9, v12, v8}, Lc50;->Z2(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 98
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eq v3, v10, :cond_a

    move-object v6, v9

    :cond_a
    iput-object v6, p0, Liw4;->m:Ljava/lang/String;

    .line 99
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 100
    :cond_b
    invoke-static {v11, v12, v8}, Lc50;->Z2(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Liw4;->l:Ljava/lang/String;

    goto/16 :goto_f

    .line 101
    :cond_c
    iget-object v8, p0, Lly4;->a:Lrx4;

    .line 102
    iget-object v8, v8, Lrx4;->a:Landroid/content/Context;

    .line 103
    invoke-static {v8, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 105
    sget v12, Lcom/google/android/gms/common/R$string;->common_google_play_services_unknown_issue:I

    .line 106
    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v12

    .line 107
    invoke-virtual {v8, v9, v10, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_d

    move-object v9, v2

    goto :goto_b

    .line 108
    :cond_d
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 109
    :goto_b
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eq v3, v13, :cond_e

    move-object v6, v9

    :cond_e
    iput-object v6, p0, Liw4;->m:Ljava/lang/String;

    .line 110
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 111
    :cond_f
    invoke-virtual {v8, v11, v10, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_10

    move-object v3, v2

    goto :goto_c

    .line 112
    :cond_10
    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 113
    :goto_c
    iput-object v3, p0, Liw4;->l:Ljava/lang/String;

    goto :goto_f

    .line 114
    :cond_11
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 115
    invoke-static {}, Lcf4;->b()Z

    iget-object v3, p0, Lly4;->a:Lrx4;

    .line 116
    iget-object v3, v3, Lrx4;->g:Lcs4;

    .line 117
    invoke-virtual {v3, v2, v8}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, p0, Lly4;->a:Lrx4;

    .line 118
    iget-object v6, v3, Lrx4;->a:Landroid/content/Context;

    .line 119
    iget-object v3, v3, Lrx4;->s:Ljava/lang/String;

    .line 120
    invoke-static {v6, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 122
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_12

    goto :goto_d

    .line 123
    :cond_12
    invoke-static {v6}, Lc50;->I1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 124
    :goto_d
    invoke-static {v11, v7, v3}, Lc50;->Z2(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Liw4;->l:Ljava/lang/String;

    goto :goto_f

    .line 125
    :cond_13
    iget-object v3, p0, Lly4;->a:Lrx4;

    .line 126
    iget-object v3, v3, Lrx4;->a:Landroid/content/Context;

    .line 127
    invoke-static {v3, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 128
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 129
    sget v6, Lcom/google/android/gms/common/R$string;->common_google_play_services_unknown_issue:I

    .line 130
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v6

    .line 131
    invoke-virtual {v3, v11, v10, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_14

    move-object v3, v2

    goto :goto_e

    .line 132
    :cond_14
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 133
    :goto_e
    iput-object v3, p0, Liw4;->l:Ljava/lang/String;

    :cond_15
    :goto_f
    if-nez v4, :cond_17

    .line 134
    iget-object v3, p0, Lly4;->a:Lrx4;

    .line 135
    invoke-virtual {v3}, Lrx4;->a()Lqw4;

    move-result-object v3

    .line 136
    iget-object v3, v3, Lqw4;->n:Low4;

    const-string v4, "App measurement enabled for app package, google app id"

    .line 137
    iget-object v6, p0, Liw4;->c:Ljava/lang/String;

    iget-object v7, p0, Liw4;->k:Ljava/lang/String;

    .line 138
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_16

    iget-object v7, p0, Liw4;->l:Ljava/lang/String;

    goto :goto_10

    .line 139
    :cond_16
    iget-object v7, p0, Liw4;->k:Ljava/lang/String;

    .line 140
    :goto_10
    invoke-virtual {v3, v4, v6, v7}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_11

    :catch_3
    move-exception v3

    .line 141
    iget-object v4, p0, Lly4;->a:Lrx4;

    .line 142
    invoke-virtual {v4}, Lrx4;->a()Lqw4;

    move-result-object v4

    .line 143
    iget-object v4, v4, Lqw4;->f:Low4;

    .line 144
    invoke-static {v0}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v6, "Fetching Google App Id failed with exception. appId"

    .line 145
    invoke-virtual {v4, v6, v0, v3}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    :cond_17
    :goto_11
    iput-object v2, p0, Liw4;->i:Ljava/util/List;

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 147
    iget-object v3, v0, Lrx4;->f:Lc35;

    .line 148
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 149
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "analytics.safelisted_events"

    .line 150
    invoke-static {v3}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    invoke-virtual {v0}, Lcs4;->t()Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_18

    iget-object v3, v0, Lly4;->a:Lrx4;

    .line 152
    invoke-virtual {v3}, Lrx4;->a()Lqw4;

    move-result-object v3

    .line 153
    iget-object v3, v3, Lqw4;->f:Low4;

    const-string v4, "Failed to load metadata: Metadata bundle is null"

    .line 154
    invoke-virtual {v3, v4}, Low4;->a(Ljava/lang/String;)V

    goto :goto_12

    .line 155
    :cond_18
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_19

    :goto_12
    move-object v3, v2

    goto :goto_13

    .line 156
    :cond_19
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_13
    if-eqz v3, :cond_1b

    .line 157
    :try_start_7
    iget-object v4, v0, Lly4;->a:Lrx4;

    .line 158
    iget-object v4, v4, Lrx4;->a:Landroid/content/Context;

    .line 159
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1a

    goto :goto_14

    .line 160
    :cond_1a
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_14

    :catch_4
    move-exception v3

    .line 161
    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 162
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 163
    iget-object v0, v0, Lqw4;->f:Low4;

    const-string v4, "Failed to load string array from metadata: resource not found"

    .line 164
    invoke-virtual {v0, v4, v3}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1b
    :goto_14
    if-nez v2, :cond_1c

    goto :goto_15

    .line 165
    :cond_1c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 166
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 167
    iget-object v0, v0, Lqw4;->k:Low4;

    const-string v2, "Safelisted event list is empty. Ignoring"

    .line 168
    invoke-virtual {v0, v2}, Low4;->a(Ljava/lang/String;)V

    goto :goto_16

    .line 169
    :cond_1d
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lly4;->a:Lrx4;

    .line 170
    invoke-virtual {v4}, Lrx4;->t()Lp25;

    move-result-object v4

    const-string v6, "safelisted event"

    .line 171
    invoke-virtual {v4, v6, v3}, Lp25;->h0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1e

    goto :goto_16

    .line 172
    :cond_1f
    :goto_15
    iput-object v2, p0, Liw4;->i:Ljava/util/List;

    :goto_16
    if-eqz v1, :cond_20

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 173
    iget-object v0, v0, Lrx4;->a:Landroid/content/Context;

    .line 174
    invoke-static {v0}, Lbi;->M(Landroid/content/Context;)Z

    move-result v0

    iput v0, p0, Liw4;->j:I

    return-void

    :cond_20
    iput v5, p0, Liw4;->j:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lww4;->f()V

    iget-object v0, p0, Liw4;->c:Ljava/lang/String;

    const-string v1, "null reference"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Liw4;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lww4;->f()V

    iget-object v0, p0, Liw4;->k:Ljava/lang/String;

    const-string v1, "null reference"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Liw4;->k:Ljava/lang/String;

    return-object v0
.end method
