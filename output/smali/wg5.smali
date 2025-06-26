.class public final synthetic Lwg5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwf5;


# instance fields
.field public final a:Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;


# direct methods
.method public constructor <init>(Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwg5;->a:Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;

    return-void
.end method


# virtual methods
.method public a(Ltf5;)Ljava/lang/Object;
    .locals 43

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lwg5;->a:Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;

    .line 1
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    const-class v2, Lpe5;

    invoke-interface {v0, v2}, Ltf5;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpe5;

    .line 3
    const-class v3, Lzg5;

    invoke-interface {v0, v3}, Ltf5;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzg5;

    .line 4
    const-class v4, Lbf5;

    invoke-interface {v0, v4}, Ltf5;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbf5;

    .line 5
    const-class v5, Lz96;

    invoke-interface {v0, v5}, Ltf5;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz96;

    const-string v11, "0.0"

    const-string v12, "FirebaseCrashlytics"

    .line 6
    invoke-virtual {v2}, Lpe5;->a()V

    .line 7
    iget-object v14, v2, Lpe5;->a:Landroid/content/Context;

    .line 8
    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 9
    new-instance v6, Lgj5;

    invoke-direct {v6, v14, v5, v0}, Lgj5;-><init>(Landroid/content/Context;Ljava/lang/String;Lz96;)V

    .line 10
    new-instance v7, Lbj5;

    invoke-direct {v7, v2}, Lbj5;-><init>(Lpe5;)V

    if-nez v3, :cond_0

    .line 11
    new-instance v0, Lbh5;

    invoke-direct {v0}, Lbh5;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, v3

    .line 12
    :goto_0
    new-instance v15, Lgh5;

    invoke-direct {v15, v2, v14, v6, v7}, Lgh5;-><init>(Lpe5;Landroid/content/Context;Lgj5;Lbj5;)V

    if-eqz v4, :cond_3

    .line 13
    sget-object v3, Lah5;->a:Lah5;

    const-string v5, "Firebase Analytics is available."

    invoke-virtual {v3, v5}, Lah5;->b(Ljava/lang/String;)V

    .line 14
    new-instance v5, Llh5;

    invoke-direct {v5, v4}, Llh5;-><init>(Lbf5;)V

    .line 15
    new-instance v8, Lvg5;

    invoke-direct {v8}, Lvg5;-><init>()V

    const-string v9, "clx"

    .line 16
    invoke-interface {v4, v9, v8}, Lbf5;->f(Ljava/lang/String;Lbf5$b;)Lbf5$a;

    move-result-object v9

    if-nez v9, :cond_1

    const-string v9, "Could not register AnalyticsConnectorListener with Crashlytics origin."

    .line 17
    invoke-virtual {v3, v9}, Lah5;->b(Ljava/lang/String;)V

    const-string v9, "crash"

    .line 18
    invoke-interface {v4, v9, v8}, Lbf5;->f(Ljava/lang/String;Lbf5$b;)Lbf5$a;

    move-result-object v9

    if-eqz v9, :cond_1

    const-string v4, "A new version of the Google Analytics for Firebase SDK is now available. For improved performance and compatibility with Crashlytics, please update to the latest version."

    .line 19
    invoke-virtual {v3, v4}, Lah5;->f(Ljava/lang/String;)V

    :cond_1
    if-eqz v9, :cond_2

    const-string v4, "Firebase Analytics listener registered successfully."

    .line 20
    invoke-virtual {v3, v4}, Lah5;->b(Ljava/lang/String;)V

    .line 21
    new-instance v3, Lkh5;

    invoke-direct {v3}, Lkh5;-><init>()V

    .line 22
    new-instance v4, Ljh5;

    const/16 v9, 0x1f4

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v4, v5, v9, v10}, Ljh5;-><init>(Llh5;ILjava/util/concurrent/TimeUnit;)V

    .line 23
    iput-object v3, v8, Lvg5;->b:Lih5;

    .line 24
    iput-object v4, v8, Lvg5;->a:Lih5;

    move-object v5, v4

    goto :goto_1

    :cond_2
    const-string v4, "Firebase Analytics listener registration failed."

    .line 25
    invoke-virtual {v3, v4}, Lah5;->b(Ljava/lang/String;)V

    .line 26
    new-instance v3, Loh5;

    invoke-direct {v3}, Loh5;-><init>()V

    :goto_1
    move-object v8, v3

    move-object v9, v5

    goto :goto_2

    .line 27
    :cond_3
    sget-object v3, Lah5;->a:Lah5;

    const-string v4, "Firebase Analytics is unavailable."

    invoke-virtual {v3, v4}, Lah5;->b(Ljava/lang/String;)V

    .line 28
    new-instance v3, Loh5;

    invoke-direct {v3}, Loh5;-><init>()V

    .line 29
    new-instance v4, Lmh5;

    invoke-direct {v4}, Lmh5;-><init>()V

    move-object v8, v3

    move-object v9, v4

    :goto_2
    const-string v3, "Crashlytics Exception Handler"

    .line 30
    invoke-static {v3}, Lc50;->h(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v10

    .line 31
    new-instance v13, Lvi5;

    move-object v3, v13

    move-object v4, v2

    move-object v5, v6

    move-object v6, v0

    invoke-direct/range {v3 .. v10}, Lvi5;-><init>(Lpe5;Lgj5;Lzg5;Lbj5;Lnh5;Lhh5;Ljava/util/concurrent/ExecutorService;)V

    const/4 v3, 0x6

    const/4 v0, 0x0

    .line 32
    :try_start_0
    iget-object v4, v15, Lgh5;->l:Lgj5;

    invoke-virtual {v4}, Lgj5;->c()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v15, Lgh5;->i:Ljava/lang/String;

    .line 33
    iget-object v4, v15, Lgh5;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, v15, Lgh5;->d:Landroid/content/pm/PackageManager;

    .line 34
    iget-object v4, v15, Lgh5;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v15, Lgh5;->e:Ljava/lang/String;

    .line 35
    iget-object v5, v15, Lgh5;->d:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v4, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, v15, Lgh5;->f:Landroid/content/pm/PackageInfo;

    .line 36
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lgh5;->g:Ljava/lang/String;

    .line 37
    iget-object v0, v15, Lgh5;->f:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v0, :cond_4

    move-object v0, v11

    .line 38
    :cond_4
    iput-object v0, v15, Lgh5;->h:Ljava/lang/String;

    .line 39
    iget-object v0, v15, Lgh5;->d:Landroid/content/pm/PackageManager;

    iget-object v4, v15, Lgh5;->c:Landroid/content/Context;

    .line 40
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lgh5;->j:Ljava/lang/String;

    .line 41
    iget-object v0, v15, Lgh5;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lgh5;->k:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    .line 42
    sget-object v4, Lah5;->a:Lah5;

    .line 43
    invoke-virtual {v4, v3}, Lah5;->a(I)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "Failed init"

    .line 44
    invoke-static {v12, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_6

    .line 45
    sget-object v0, Lah5;->a:Lah5;

    const-string v2, "Unable to start Crashlytics."

    invoke-virtual {v0, v2}, Lah5;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto/16 :goto_a

    :cond_6
    const-string v0, "com.google.firebase.crashlytics.startup"

    .line 46
    invoke-static {v0}, Lc50;->h(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    .line 47
    invoke-virtual {v2}, Lpe5;->a()V

    .line 48
    iget-object v0, v2, Lpe5;->c:Lve5;

    .line 49
    iget-object v0, v0, Lve5;->b:Ljava/lang/String;

    .line 50
    iget-object v2, v15, Lgh5;->l:Lgj5;

    iget-object v4, v15, Lgh5;->a:Lfl5;

    iget-object v5, v15, Lgh5;->g:Ljava/lang/String;

    iget-object v6, v15, Lgh5;->h:Ljava/lang/String;

    .line 51
    invoke-virtual {v15}, Lgh5;->c()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v15, Lgh5;->m:Lbj5;

    .line 52
    invoke-virtual {v2}, Lgj5;->c()Ljava/lang/String;

    move-result-object v9

    .line 53
    new-instance v10, Lnj5;

    invoke-direct {v10}, Lnj5;-><init>()V

    .line 54
    new-instance v1, Llm5;

    invoke-direct {v1, v10}, Llm5;-><init>(Lnj5;)V

    move-object/from16 p1, v11

    .line 55
    new-instance v11, Lgm5;

    invoke-direct {v11, v14}, Lgm5;-><init>(Landroid/content/Context;)V

    move-object/from16 v26, v13

    .line 56
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v27, v15

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v0, v15, v16

    move-object/from16 v28, v12

    const-string v12, "https://firebase-settings.crashlytics.com/spi/v2/platforms/android/gmp/%s/settings"

    invoke-static {v13, v12, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 57
    new-instance v15, Lxm5;

    invoke-direct {v15, v7, v12, v4}, Lxm5;-><init>(Ljava/lang/String;Ljava/lang/String;Lfl5;)V

    const/4 v4, 0x2

    new-array v7, v4, [Ljava/lang/Object;

    .line 58
    sget-object v12, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 59
    invoke-virtual {v2, v12}, Lgj5;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v16

    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 60
    invoke-virtual {v2, v12}, Lgj5;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/16 v16, 0x1

    aput-object v12, v7, v16

    const-string v12, "%s/%s"

    .line 61
    invoke-static {v13, v12, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 62
    sget-object v7, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lgj5;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 63
    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lgj5;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/4 v7, 0x4

    new-array v12, v7, [Ljava/lang/String;

    .line 64
    invoke-static {v14}, Lvh5;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    const/16 v17, 0x0

    aput-object v13, v12, v17

    aput-object v0, v12, v16

    aput-object v6, v12, v4

    const/4 v4, 0x3

    aput-object v5, v12, v4

    .line 65
    invoke-static {v12}, Lvh5;->e([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 66
    invoke-static {v9}, Ldj5;->i(Ljava/lang/String;)Ldj5;

    move-result-object v4

    .line 67
    iget v4, v4, Ldj5;->e:I

    .line 68
    new-instance v9, Lum5;

    move-object/from16 v16, v9

    move-object/from16 v17, v0

    move-object/from16 v21, v2

    move-object/from16 v23, v6

    move-object/from16 v24, v5

    move/from16 v25, v4

    invoke-direct/range {v16 .. v25}, Lum5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lhj5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    new-instance v2, Ljm5;

    move-object/from16 v4, v26

    move-object v13, v2

    move-object v0, v15

    move-object/from16 v5, v27

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v17, v1

    move-object/from16 v18, v11

    move-object/from16 v19, v0

    move-object/from16 v20, v8

    invoke-direct/range {v13 .. v20}, Ljm5;-><init>(Landroid/content/Context;Lum5;Lnj5;Llm5;Lgm5;Lym5;Lbj5;)V

    .line 70
    sget-object v0, Lim5;->e:Lim5;

    invoke-virtual {v2, v0, v3}, Ljm5;->d(Lim5;Ljava/util/concurrent/Executor;)Le45;

    move-result-object v0

    .line 71
    new-instance v1, Lfh5;

    invoke-direct {v1, v5}, Lfh5;-><init>(Lgh5;)V

    .line 72
    invoke-virtual {v0, v3, v1}, Le45;->i(Ljava/util/concurrent/Executor;Lw35;)Le45;

    .line 73
    iget-object v0, v4, Lvi5;->a:Landroid/content/Context;

    invoke-static {v0}, Lvh5;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 74
    sget-object v0, Lah5;->a:Lah5;

    const-string v1, "Mapping file ID is: "

    invoke-static {v1, v10, v0}, Ljo;->G(Ljava/lang/String;Ljava/lang/String;Lah5;)V

    .line 75
    iget-object v1, v4, Lvi5;->a:Landroid/content/Context;

    const-string v6, "com.crashlytics.RequireBuildId"

    const/4 v8, 0x1

    .line 76
    invoke-static {v1, v6, v8}, Lvh5;->i(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    const-string v6, "The Crashlytics build ID is missing. This occurs when Crashlytics tooling is absent from your app\'s build configuration. Please review Crashlytics onboarding instructions and ensure you have a valid Crashlytics account."

    if-nez v1, :cond_7

    const-string v1, "Configured not to require a build ID."

    .line 77
    invoke-virtual {v0, v1}, Lah5;->b(Ljava/lang/String;)V

    goto :goto_4

    .line 78
    :cond_7
    invoke-static {v10}, Lvh5;->r(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_4
    const/4 v1, 0x1

    move-object/from16 v15, v28

    goto :goto_5

    :cond_8
    const-string v1, "."

    move-object/from16 v15, v28

    .line 79
    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, ".     |  | "

    .line 80
    invoke-static {v15, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, ".     |  |"

    .line 81
    invoke-static {v15, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-static {v15, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, ".   \\ |  | /"

    .line 83
    invoke-static {v15, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, ".    \\    /"

    .line 84
    invoke-static {v15, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, ".     \\  /"

    .line 85
    invoke-static {v15, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, ".      \\/"

    .line 86
    invoke-static {v15, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, ".      /\\"

    .line 90
    invoke-static {v15, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, ".     /  \\"

    .line 91
    invoke-static {v15, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, ".    /    \\"

    .line 92
    invoke-static {v15, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, ".   / |  | \\"

    .line 93
    invoke-static {v15, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {v15, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {v15, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {v15, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_d

    .line 98
    iget-object v1, v4, Lvi5;->b:Lpe5;

    .line 99
    invoke-virtual {v1}, Lpe5;->a()V

    .line 100
    iget-object v1, v1, Lpe5;->c:Lve5;

    .line 101
    iget-object v9, v1, Lve5;->b:Ljava/lang/String;

    :try_start_1
    const-string v1, "Initializing Crashlytics 17.3.0"

    .line 102
    invoke-virtual {v0, v7}, Lah5;->a(I)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x0

    .line 103
    invoke-static {v15, v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    :cond_9
    new-instance v1, Lol5;

    iget-object v6, v4, Lvi5;->a:Landroid/content/Context;

    invoke-direct {v1, v6}, Lol5;-><init>(Landroid/content/Context;)V

    .line 105
    new-instance v7, Lxi5;

    const-string v8, "crash_marker"

    invoke-direct {v7, v8, v1}, Lxi5;-><init>(Ljava/lang/String;Lol5;)V

    iput-object v7, v4, Lvi5;->f:Lxi5;

    .line 106
    new-instance v7, Lxi5;

    const-string v8, "initialization_marker"

    invoke-direct {v7, v8, v1}, Lxi5;-><init>(Ljava/lang/String;Lol5;)V

    iput-object v7, v4, Lvi5;->e:Lxi5;

    .line 107
    new-instance v32, Lfl5;

    invoke-direct/range {v32 .. v32}, Lfl5;-><init>()V

    .line 108
    new-instance v7, Lfn5;

    invoke-direct {v7, v6}, Lfn5;-><init>(Landroid/content/Context;)V

    .line 109
    iget-object v8, v4, Lvi5;->h:Lgj5;

    .line 110
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 111
    invoke-virtual {v8}, Lgj5;->c()Ljava/lang/String;

    move-result-object v11

    .line 112
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v8, 0x0

    .line 113
    invoke-virtual {v6, v12, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 114
    iget v8, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    .line 115
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v6, :cond_a

    move-object/from16 v14, p1

    goto :goto_6

    :cond_a
    move-object v14, v6

    .line 116
    :goto_6
    new-instance v6, Lqh5;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object v8, v6

    move-object/from16 p1, v3

    move-object v3, v15

    move-object v15, v7

    :try_start_2
    invoke-direct/range {v8 .. v15}, Lqh5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfn5;)V

    .line 117
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Installer package name is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lqh5;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lah5;->b(Ljava/lang/String;)V

    .line 118
    new-instance v0, Lii5;

    iget-object v7, v4, Lvi5;->a:Landroid/content/Context;

    iget-object v8, v4, Lvi5;->l:Lwh5;

    iget-object v9, v4, Lvi5;->h:Lgj5;

    iget-object v10, v4, Lvi5;->c:Lbj5;

    iget-object v11, v4, Lvi5;->f:Lxi5;

    const/16 v38, 0x0

    const/16 v39, 0x0

    iget-object v12, v4, Lvi5;->m:Lzg5;

    iget-object v13, v4, Lvi5;->j:Lhh5;

    move-object/from16 v29, v0

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v33, v9

    move-object/from16 v34, v10

    move-object/from16 v35, v1

    move-object/from16 v36, v11

    move-object/from16 v37, v6

    move-object/from16 v40, v12

    move-object/from16 v41, v13

    move-object/from16 v42, v2

    invoke-direct/range {v29 .. v42}, Lii5;-><init>(Landroid/content/Context;Lwh5;Lfl5;Lgj5;Lbj5;Lol5;Lxi5;Lqh5;Ltl5;Lul5$b;Lzg5;Lhh5;Lkm5;)V

    iput-object v0, v4, Lvi5;->g:Lii5;

    .line 119
    iget-object v0, v4, Lvi5;->e:Lxi5;

    .line 120
    invoke-virtual {v0}, Lxi5;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 121
    iget-object v1, v4, Lvi5;->l:Lwh5;

    new-instance v6, Lwi5;

    invoke-direct {v6, v4}, Lwi5;-><init>(Lvi5;)V

    .line 122
    invoke-virtual {v1, v6}, Lwh5;->b(Ljava/util/concurrent/Callable;)Le45;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 123
    :try_start_3
    invoke-static {v1}, Lqj5;->a(Le45;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 124
    :try_start_4
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 125
    :catch_1
    iget-object v1, v4, Lvi5;->g:Lii5;

    .line 126
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v6

    .line 127
    iget-object v7, v1, Lii5;->e:Lwh5;

    new-instance v8, Lci5;

    invoke-direct {v8, v1}, Lci5;-><init>(Lii5;)V

    invoke-virtual {v7, v8}, Lwh5;->b(Ljava/util/concurrent/Callable;)Le45;

    .line 128
    new-instance v7, Lmi5;

    invoke-direct {v7, v1}, Lmi5;-><init>(Lii5;)V

    .line 129
    new-instance v8, Laj5;

    invoke-direct {v8, v7, v2, v6}, Laj5;-><init>(Laj5$a;Lkm5;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v8, v1, Lii5;->t:Laj5;

    .line 130
    invoke-static {v8}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    if-eqz v0, :cond_b

    .line 131
    iget-object v0, v4, Lvi5;->a:Landroid/content/Context;

    invoke-static {v0}, Lvh5;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 132
    sget-object v0, Lah5;->a:Lah5;

    const-string v1, "Crashlytics did not finish previous background initialization. Initializing synchronously."

    .line 133
    invoke-virtual {v0, v1}, Lah5;->b(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v4, v2}, Lvi5;->b(Lkm5;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_8

    .line 135
    :cond_b
    sget-object v0, Lah5;->a:Lah5;

    const-string v1, "Exception handling initialization successful"

    invoke-virtual {v0, v1}, Lah5;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/16 v19, 0x1

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    move-object/from16 p1, v3

    move-object v3, v15

    .line 136
    :goto_7
    sget-object v1, Lah5;->a:Lah5;

    const/4 v6, 0x6

    .line 137
    invoke-virtual {v1, v6}, Lah5;->a(I)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "Crashlytics was not started due to an exception during initialization"

    .line 138
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    const/4 v0, 0x0

    .line 139
    iput-object v0, v4, Lvi5;->g:Lii5;

    :goto_8
    const/4 v0, 0x0

    const/16 v19, 0x0

    .line 140
    :goto_9
    new-instance v0, Lxg5;

    move-object v15, v0

    move-object/from16 v16, v5

    move-object/from16 v17, p1

    move-object/from16 v18, v2

    move-object/from16 v20, v4

    invoke-direct/range {v15 .. v20}, Lxg5;-><init>(Lgh5;Ljava/util/concurrent/ExecutorService;Ljm5;ZLvi5;)V

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lc50;->i(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Le45;

    .line 141
    new-instance v0, Lyg5;

    invoke-direct {v0, v4}, Lyg5;-><init>(Lvi5;)V

    :goto_a
    return-object v0

    .line 142
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
