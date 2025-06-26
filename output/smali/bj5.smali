.class public Lbj5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/SharedPreferences;

.field public final b:Lpe5;

.field public final c:Ljava/lang/Object;

.field public d:Lf45;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf45<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field public f:Z

.field public g:Ljava/lang/Boolean;

.field public h:Lf45;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf45<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpe5;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbj5;->c:Ljava/lang/Object;

    .line 3
    new-instance v1, Lf45;

    invoke-direct {v1}, Lf45;-><init>()V

    iput-object v1, p0, Lbj5;->d:Lf45;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lbj5;->e:Z

    .line 5
    iput-boolean v1, p0, Lbj5;->f:Z

    .line 6
    new-instance v2, Lf45;

    invoke-direct {v2}, Lf45;-><init>()V

    iput-object v2, p0, Lbj5;->h:Lf45;

    .line 7
    invoke-virtual {p1}, Lpe5;->a()V

    .line 8
    iget-object v2, p1, Lpe5;->a:Landroid/content/Context;

    .line 9
    iput-object p1, p0, Lbj5;->b:Lpe5;

    .line 10
    invoke-static {v2}, Lvh5;->n(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lbj5;->a:Landroid/content/SharedPreferences;

    const-string v3, "firebase_crashlytics_collection_enabled"

    .line 11
    invoke-interface {p1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    .line 12
    iput-boolean v1, p0, Lbj5;->f:Z

    .line 13
    invoke-interface {p1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v6

    :goto_0
    if-nez p1, :cond_1

    .line 14
    invoke-virtual {p0, v2}, Lbj5;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    .line 15
    :cond_1
    iput-object p1, p0, Lbj5;->g:Ljava/lang/Boolean;

    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    invoke-virtual {p0}, Lbj5;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 18
    iget-object p1, p0, Lbj5;->d:Lf45;

    invoke-virtual {p1, v6}, Lf45;->b(Ljava/lang/Object;)Z

    .line 19
    iput-boolean v5, p0, Lbj5;->e:Z

    .line 20
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 4

    const-string v0, "firebase_crashlytics_collection_enabled"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v3, 0x80

    .line 3
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    sget-object v0, Lah5;->a:Lah5;

    const/4 v2, 0x3

    .line 8
    invoke-virtual {v0, v2}, Lah5;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FirebaseCrashlytics"

    const-string v2, "Unable to get PackageManager. Falling through"

    .line 9
    invoke-static {v0, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lbj5;->f:Z

    return-object v1

    :cond_1
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lbj5;->f:Z

    .line 12
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized b()Z
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lbj5;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lbj5;->b:Lpe5;

    invoke-virtual {v0}, Lpe5;->f()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "ENABLED"

    goto :goto_1

    :cond_1
    const-string v1, "DISABLED"

    .line 4
    :goto_1
    iget-object v2, p0, Lbj5;->g:Ljava/lang/Boolean;

    if-nez v2, :cond_2

    const-string v2, "global Firebase setting"

    goto :goto_2

    .line 5
    :cond_2
    iget-boolean v2, p0, Lbj5;->f:Z

    if-eqz v2, :cond_3

    const-string v2, "firebase_crashlytics_collection_enabled manifest flag"

    goto :goto_2

    :cond_3
    const-string v2, "API"

    .line 6
    :goto_2
    sget-object v3, Lah5;->a:Lah5;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const-string v1, "Crashlytics automatic data collection %s by %s."

    .line 7
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v3, v1}, Lah5;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Le45;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le45<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lbj5;->h:Lf45;

    .line 2
    iget-object v0, v0, Lf45;->a:Le55;

    .line 3
    iget-object v1, p0, Lbj5;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, p0, Lbj5;->d:Lf45;

    .line 5
    iget-object v2, v2, Lf45;->a:Le55;

    .line 6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    sget-object v1, Lqj5;->a:Ljava/io/FilenameFilter;

    .line 8
    new-instance v1, Lf45;

    invoke-direct {v1}, Lf45;-><init>()V

    .line 9
    new-instance v3, Lrj5;

    invoke-direct {v3, v1}, Lrj5;-><init>(Lf45;)V

    .line 10
    invoke-virtual {v0, v3}, Le55;->h(Lw35;)Le45;

    .line 11
    invoke-virtual {v2, v3}, Le55;->h(Lw35;)Le45;

    .line 12
    iget-object v0, v1, Lf45;->a:Le55;

    return-object v0

    :catchall_0
    move-exception v0

    .line 13
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
