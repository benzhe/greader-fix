.class public Lgm5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lgm5;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 8

    const-string v0, "Error while closing settings cache file."

    .line 1
    sget-object v1, Lah5;->a:Lah5;

    const-string v2, "Reading cached settings..."

    invoke-virtual {v1, v2}, Lah5;->b(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 2
    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Lol5;

    iget-object v5, p0, Lgm5;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Lol5;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lol5;->a()Ljava/io/File;

    move-result-object v4

    const-string v5, "com.crashlytics.settings.json"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    invoke-static {v1}, Lvh5;->u(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 6
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v1

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_0
    :try_start_2
    const-string v3, "No cached settings found."

    .line 7
    invoke-virtual {v1, v3}, Lah5;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v2

    .line 8
    :goto_0
    invoke-static {v2, v0}, Lvh5;->c(Ljava/io/Closeable;Ljava/lang/String;)V

    move-object v2, v4

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v3, v1

    move-object v1, v2

    .line 9
    :goto_1
    :try_start_3
    sget-object v4, Lah5;->a:Lah5;

    const-string v5, "Failed to fetch cached settings"

    const/4 v6, 0x6

    .line 10
    invoke-virtual {v4, v6}, Lah5;->a(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "FirebaseCrashlytics"

    .line 11
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 12
    :cond_1
    invoke-static {v1, v0}, Lvh5;->c(Ljava/io/Closeable;Ljava/lang/String;)V

    :goto_2
    return-object v2

    :catchall_1
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    :goto_3
    invoke-static {v2, v0}, Lvh5;->c(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 13
    throw v1
.end method
