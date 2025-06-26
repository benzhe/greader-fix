.class public final Lu40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Landroid/os/ConditionVariable;

.field public volatile c:Z

.field public volatile d:Z

.field public e:Landroid/content/SharedPreferences;

.field public f:Landroid/os/Bundle;

.field public g:Landroid/content/Context;

.field public h:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lu40;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lu40;->b:Landroid/os/ConditionVariable;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lu40;->c:Z

    .line 5
    iput-boolean v0, p0, Lu40;->d:Z

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lu40;->e:Landroid/content/SharedPreferences;

    .line 7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lu40;->f:Landroid/os/Bundle;

    .line 8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lu40;->h:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final a(Lo40;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo40<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu40;->b:Landroid/os/ConditionVariable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lu40;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lu40;->d:Z

    if-eqz v1, :cond_0

    .line 4
    monitor-exit v0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Flags.initialize() was not called!"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 7
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lu40;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lu40;->e:Landroid/content/SharedPreferences;

    if-nez v0, :cond_4

    .line 8
    :cond_2
    iget-object v0, p0, Lu40;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_1
    iget-boolean v1, p0, Lu40;->c:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lu40;->e:Landroid/content/SharedPreferences;

    if-nez v1, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    :cond_4
    iget v0, p1, Lo40;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 12
    iget-object v0, p0, Lu40;->f:Landroid/os/Bundle;

    if-nez v0, :cond_5

    .line 13
    iget-object p1, p1, Lo40;->c:Ljava/lang/Object;

    return-object p1

    .line 14
    :cond_5
    invoke-virtual {p1, v0}, Lo40;->e(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_6
    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 15
    iget-object v0, p0, Lu40;->h:Lorg/json/JSONObject;

    .line 16
    iget-object v1, p1, Lo40;->b:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 18
    iget-object v0, p0, Lu40;->h:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lo40;->i(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 19
    :cond_7
    new-instance v0, Lx40;

    invoke-direct {v0, p0, p1}, Lx40;-><init>(Lu40;Lo40;)V

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzbr;->zza(Lgt2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 20
    :cond_8
    :goto_1
    :try_start_2
    iget-object p1, p1, Lo40;->c:Ljava/lang/Object;

    .line 21
    monitor-exit v0

    return-object p1

    :catchall_1
    move-exception p1

    .line 22
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lu40;->e:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Lw40;

    invoke-direct {v0, p0}, Lw40;-><init>(Lu40;)V

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzbr;->zza(Lgt2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lu40;->h:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const-string p1, "flag_configuration"

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lu40;->b()V

    :cond_0
    return-void
.end method
