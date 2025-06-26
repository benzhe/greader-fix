.class public final synthetic La50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgt2;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La50;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, La50;->a:Landroid/content/Context;

    .line 1
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 2
    iget-boolean v2, v1, Lu40;->c:Z

    if-eqz v2, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object v2, v1, Lu40;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 4
    :try_start_0
    iget-boolean v3, v1, Lu40;->c:Z

    if-eqz v3, :cond_1

    .line 5
    monitor-exit v2

    goto :goto_2

    .line 6
    :cond_1
    iget-boolean v3, v1, Lu40;->d:Z

    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 7
    iput-boolean v4, v1, Lu40;->d:Z

    .line 8
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_3

    move-object v3, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    :goto_0
    iput-object v3, v1, Lu40;->g:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    invoke-static {v3}, Li20;->a(Landroid/content/Context;)Lh20;

    move-result-object v3

    iget-object v5, v1, Lu40;->g:Landroid/content/Context;

    .line 10
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v3, v5, v6}, Lh20;->a(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    iput-object v3, v1, Lu40;->f:Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catch_0
    const/4 v3, 0x0

    .line 11
    :try_start_2
    invoke-static {v0}, Lky;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_5

    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    move-object v0, v5

    :goto_1
    move-object v5, v0

    .line 13
    :cond_5
    sget-object v0, Los3;->j:Los3;

    iget-object v0, v0, Los3;->e:Lv40;

    const-string v0, "google_ads_flags"

    .line 14
    invoke-virtual {v5, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 15
    iput-object v0, v1, Lu40;->e:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_6

    .line 16
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 17
    :cond_6
    new-instance v0, Lz40;

    invoke-direct {v0, v1}, Lz40;-><init>(Lu40;)V

    .line 18
    sget-object v5, Lf70;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v1}, Lu40;->b()V

    .line 20
    iput-boolean v4, v1, Lu40;->c:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    :try_start_3
    iput-boolean v3, v1, Lu40;->d:Z

    .line 22
    iget-object v0, v1, Lu40;->b:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 23
    monitor-exit v2

    :goto_2
    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    .line 24
    iput-boolean v3, v1, Lu40;->d:Z

    .line 25
    iget-object v1, v1, Lu40;->b:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 26
    throw v0

    :catchall_1
    move-exception v0

    .line 27
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
