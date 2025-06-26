.class public Ljm5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld45;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljm5;->d(Lim5;Ljava/util/concurrent/Executor;)Le45;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld45<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljm5;


# direct methods
.method public constructor <init>(Ljm5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljm5$a;->a:Ljm5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Le45;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Void;

    const-string p1, "FirebaseCrashlytics"

    .line 2
    iget-object v0, p0, Ljm5$a;->a:Ljm5;

    .line 3
    iget-object v1, v0, Ljm5;->f:Lym5;

    .line 4
    iget-object v0, v0, Ljm5;->b:Lum5;

    .line 5
    check-cast v1, Lxm5;

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x6

    const/4 v3, 0x0

    .line 7
    :try_start_0
    invoke-virtual {v1, v0}, Lxm5;->f(Lum5;)Ljava/util/Map;

    move-result-object v4

    .line 8
    invoke-virtual {v1, v4}, Lph5;->c(Ljava/util/Map;)Lel5;

    move-result-object v5

    .line 9
    invoke-virtual {v1, v5, v0}, Lxm5;->d(Lel5;Lum5;)Lel5;

    .line 10
    iget-object v0, v1, Lxm5;->f:Lah5;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Requesting settings from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v7, v1, Lph5;->a:Ljava/lang/String;

    .line 12
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lah5;->b(Ljava/lang/String;)V

    .line 13
    iget-object v0, v1, Lxm5;->f:Lah5;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Settings query params were: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lah5;->b(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v5}, Lel5;->a()Lgl5;

    move-result-object v0

    .line 15
    iget-object v4, v1, Lxm5;->f:Lah5;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Settings request ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "X-REQUEST-ID"

    .line 16
    iget-object v7, v0, Lgl5;->c:Lokhttp3/Headers;

    invoke-virtual {v7, v6}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 17
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lah5;->b(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1, v0}, Lxm5;->g(Lgl5;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 19
    iget-object v1, v1, Lxm5;->f:Lah5;

    .line 20
    invoke-virtual {v1, v2}, Lah5;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Settings request failed."

    .line 21
    invoke-static {p1, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_2

    .line 22
    iget-object v1, p0, Ljm5$a;->a:Ljm5;

    .line 23
    iget-object v1, v1, Ljm5;->c:Llm5;

    .line 24
    invoke-virtual {v1, v0}, Llm5;->a(Lorg/json/JSONObject;)Ltm5;

    move-result-object v1

    .line 25
    iget-object v4, p0, Ljm5$a;->a:Ljm5;

    .line 26
    iget-object v4, v4, Ljm5;->e:Lgm5;

    .line 27
    iget-wide v5, v1, Ltm5;->d:J

    .line 28
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Failed to close settings writer."

    .line 29
    sget-object v8, Lah5;->a:Lah5;

    const-string v9, "Writing settings to cache file..."

    invoke-virtual {v8, v9}, Lah5;->b(Ljava/lang/String;)V

    :try_start_1
    const-string v8, "expires_at"

    .line 30
    invoke-virtual {v0, v8, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 31
    new-instance v5, Ljava/io/FileWriter;

    .line 32
    new-instance v6, Ljava/io/File;

    new-instance v8, Lol5;

    iget-object v4, v4, Lgm5;->a:Landroid/content/Context;

    invoke-direct {v8, v4}, Lol5;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Lol5;->a()Ljava/io/File;

    move-result-object v4

    const-string v8, "com.crashlytics.settings.json"

    invoke-direct {v6, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    invoke-direct {v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v5}, Ljava/io/FileWriter;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception v4

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception v4

    move-object v5, v3

    .line 36
    :goto_1
    :try_start_3
    sget-object v6, Lah5;->a:Lah5;

    const-string v8, "Failed to cache settings"

    .line 37
    invoke-virtual {v6, v2}, Lah5;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    invoke-static {p1, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 39
    :cond_1
    :goto_2
    invoke-static {v5, v7}, Lvh5;->c(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Ljm5$a;->a:Ljm5;

    const-string v2, "Loaded settings: "

    .line 41
    invoke-virtual {p1, v0, v2}, Ljm5;->e(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Ljm5$a;->a:Ljm5;

    .line 43
    iget-object v0, p1, Ljm5;->b:Lum5;

    .line 44
    iget-object v0, v0, Lum5;->f:Ljava/lang/String;

    .line 45
    iget-object p1, p1, Ljm5;->a:Landroid/content/Context;

    invoke-static {p1}, Lvh5;->n(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 46
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "existing_instance_identifier"

    .line 47
    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 48
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 49
    iget-object p1, p0, Ljm5$a;->a:Ljm5;

    .line 50
    iget-object p1, p1, Ljm5;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 51
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 52
    iget-object p1, p0, Ljm5$a;->a:Ljm5;

    .line 53
    iget-object p1, p1, Ljm5;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 54
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf45;

    .line 55
    iget-object v0, v1, Ltm5;->a:Lpm5;

    .line 56
    invoke-virtual {p1, v0}, Lf45;->b(Ljava/lang/Object;)Z

    .line 57
    new-instance p1, Lf45;

    invoke-direct {p1}, Lf45;-><init>()V

    .line 58
    iget-object v0, v1, Ltm5;->a:Lpm5;

    .line 59
    invoke-virtual {p1, v0}, Lf45;->b(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Ljm5$a;->a:Ljm5;

    .line 61
    iget-object v0, v0, Ljm5;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 62
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_5

    :catchall_2
    move-exception p1

    move-object v3, v5

    :goto_3
    move-object v5, v3

    .line 63
    :goto_4
    invoke-static {v5, v7}, Lvh5;->c(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 64
    throw p1

    .line 65
    :cond_2
    :goto_5
    invoke-static {v3}, Lc50;->X(Ljava/lang/Object;)Le45;

    move-result-object p1

    return-object p1
.end method
