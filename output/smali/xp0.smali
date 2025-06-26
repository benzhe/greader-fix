.class public final Lxp0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static h:Lxp0;


# instance fields
.field public a:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lcom/google/android/gms/ads/internal/util/zzf;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lcq0;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lrp0;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Ltp0;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lvp0;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lrq0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/zzf;Lcq0;Lwp0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p4, Lfb3;

    const-string v0, "instance cannot be null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-direct {p4, p1}, Lfb3;-><init>(Ljava/lang/Object;)V

    .line 5
    iput-object p4, p0, Lxp0;->a:Lmb3;

    .line 6
    new-instance p1, Lfb3;

    .line 7
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    invoke-direct {p1, p2}, Lfb3;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object p1, p0, Lxp0;->b:Lmb3;

    .line 10
    new-instance p1, Lfb3;

    .line 11
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    invoke-direct {p1, p3}, Lfb3;-><init>(Ljava/lang/Object;)V

    .line 13
    iput-object p1, p0, Lxp0;->c:Lmb3;

    .line 14
    iget-object p2, p0, Lxp0;->a:Lmb3;

    iget-object p3, p0, Lxp0;->b:Lmb3;

    .line 15
    new-instance p4, Lqp0;

    invoke-direct {p4, p2, p3, p1}, Lqp0;-><init>(Lmb3;Lmb3;Lmb3;)V

    .line 16
    sget-object p1, Ldb3;->c:Ljava/lang/Object;

    .line 17
    instance-of p1, p4, Ldb3;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Ldb3;

    invoke-direct {p1, p4}, Ldb3;-><init>(Lmb3;)V

    move-object p4, p1

    .line 19
    :goto_0
    iput-object p4, p0, Lxp0;->d:Lmb3;

    .line 20
    iget-object p1, p0, Lxp0;->b:Lmb3;

    iget-object p2, p0, Lxp0;->c:Lmb3;

    .line 21
    new-instance p3, Lsp0;

    invoke-direct {p3, p1, p2}, Lsp0;-><init>(Lmb3;Lmb3;)V

    .line 22
    instance-of p1, p3, Ldb3;

    if-eqz p1, :cond_1

    goto :goto_1

    .line 23
    :cond_1
    new-instance p1, Ldb3;

    invoke-direct {p1, p3}, Ldb3;-><init>(Lmb3;)V

    move-object p3, p1

    .line 24
    :goto_1
    iput-object p3, p0, Lxp0;->e:Lmb3;

    .line 25
    new-instance p1, Lup0;

    invoke-direct {p1, p3}, Lup0;-><init>(Lmb3;)V

    .line 26
    iput-object p1, p0, Lxp0;->f:Lmb3;

    .line 27
    iget-object p2, p0, Lxp0;->a:Lmb3;

    .line 28
    new-instance p3, Luq0;

    invoke-direct {p3, p2, p1}, Luq0;-><init>(Lmb3;Lmb3;)V

    .line 29
    instance-of p1, p3, Ldb3;

    if-eqz p1, :cond_2

    goto :goto_2

    .line 30
    :cond_2
    new-instance p1, Ldb3;

    invoke-direct {p1, p3}, Ldb3;-><init>(Lmb3;)V

    move-object p3, p1

    .line 31
    :goto_2
    iput-object p3, p0, Lxp0;->g:Lmb3;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lxp0;
    .locals 9

    const-class v0, Lxp0;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lxp0;->h:Lxp0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 2
    monitor-exit v0

    return-object v1

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 4
    invoke-static {p0}, Ly40;->a(Landroid/content/Context;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v1

    invoke-virtual {v1}, Lor0;->f()Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object v1

    .line 6
    invoke-interface {v1, p0}, Lcom/google/android/gms/ads/internal/util/zzf;->initialize(Landroid/content/Context;)V

    .line 7
    new-instance v2, Laq0;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Laq0;-><init>(Lwp0;)V

    .line 8
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iput-object p0, v2, Laq0;->a:Landroid/content/Context;

    .line 10
    iput-object v1, v2, Laq0;->b:Lcom/google/android/gms/ads/internal/util/zzf;

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlt()Lcq0;

    move-result-object p0

    .line 12
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iput-object p0, v2, Laq0;->c:Lcq0;

    .line 14
    iget-object p0, v2, Laq0;->a:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {p0, v1}, Lc50;->l2(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 15
    iget-object p0, v2, Laq0;->b:Lcom/google/android/gms/ads/internal/util/zzf;

    const-class v1, Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-static {p0, v1}, Lc50;->l2(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 16
    iget-object p0, v2, Laq0;->c:Lcq0;

    const-class v1, Lcq0;

    invoke-static {p0, v1}, Lc50;->l2(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 17
    new-instance p0, Lxp0;

    iget-object v1, v2, Laq0;->a:Landroid/content/Context;

    iget-object v4, v2, Laq0;->b:Lcom/google/android/gms/ads/internal/util/zzf;

    iget-object v2, v2, Laq0;->c:Lcq0;

    invoke-direct {p0, v1, v4, v2, v3}, Lxp0;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/zzf;Lcq0;Lwp0;)V

    .line 18
    sput-object p0, Lxp0;->h:Lxp0;

    .line 19
    iget-object p0, p0, Lxp0;->d:Lmb3;

    invoke-interface {p0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrp0;

    .line 20
    iget-object v1, p0, Lrp0;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 21
    iget-object v1, p0, Lrp0;->b:Landroid/content/SharedPreferences;

    const-string v2, "IABTCF_PurposeConsents"

    invoke-virtual {p0, v1, v2}, Lrp0;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 22
    sget-object p0, Lxp0;->h:Lxp0;

    invoke-virtual {p0}, Lxp0;->b()Lvp0;

    move-result-object p0

    .line 23
    iget-object p0, p0, Lvp0;->a:Ltp0;

    invoke-virtual {p0}, Ltp0;->b()V

    .line 24
    sget-object p0, Lxp0;->h:Lxp0;

    .line 25
    iget-object p0, p0, Lxp0;->g:Lmb3;

    invoke-interface {p0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrq0;

    .line 26
    sget-object v1, Ly40;->j0:Lo40;

    .line 27
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 28
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 30
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    sget-object v3, Ly40;->k0:Lo40;

    .line 32
    sget-object v4, Los3;->j:Los3;

    iget-object v4, v4, Los3;->f:Lu40;

    .line 33
    invoke-virtual {v4, v3}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v3

    .line 34
    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 35
    :try_start_3
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 36
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 37
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 38
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_1

    const/4 v7, 0x0

    .line 39
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 40
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 41
    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 42
    :cond_3
    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 43
    :cond_4
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 44
    invoke-virtual {p0, v3}, Lrq0;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 45
    :cond_5
    new-instance v2, Ltq0;

    invoke-direct {v2, p0, v1}, Ltq0;-><init>(Lrq0;Ljava/util/Map;)V

    .line 46
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 47
    :try_start_4
    iget-object v1, p0, Lrq0;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 48
    :try_start_5
    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_0
    move-exception p0

    const-string v1, "Failed to parse listening list"

    .line 49
    invoke-static {v1, p0}, Lis0;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    :cond_6
    :goto_3
    sget-object p0, Lxp0;->h:Lxp0;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final b()Lvp0;
    .locals 2

    .line 1
    new-instance v0, Lvp0;

    iget-object v1, p0, Lxp0;->e:Lmb3;

    invoke-interface {v1}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltp0;

    invoke-direct {v0, v1}, Lvp0;-><init>(Ltp0;)V

    return-object v0
.end method
