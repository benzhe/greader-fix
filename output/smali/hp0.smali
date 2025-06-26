.class public final synthetic Lhp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# instance fields
.field public final a:Lfp0;


# direct methods
.method public constructor <init>(Lfp0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhp0;->a:Lfp0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 10

    iget-object v0, p0, Lhp0;->a:Lfp0;

    check-cast p1, Ljava/util/Map;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 2
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "matches"

    .line 5
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 6
    iget-object v5, v0, Lfp0;->i:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 8
    iget-object v7, v0, Lfp0;->i:Ljava/lang/Object;

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    :try_start_2
    iget-object v8, v0, Lfp0;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lja3$h$b;

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v8, :cond_2

    :try_start_3
    const-string v4, "Cannot find the corresponding resource object for "

    .line 10
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v3}, Lc50;->L3(Ljava/lang/String;)V

    .line 11
    monitor-exit v5

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v6, :cond_4

    .line 12
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v9, "threat_type"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 13
    iget-boolean v9, v8, Ls63$b;->g:Z

    if-eqz v9, :cond_3

    .line 14
    invoke-virtual {v8}, Ls63$b;->o()V

    .line 15
    iput-boolean v1, v8, Ls63$b;->g:Z

    .line 16
    :cond_3
    iget-object v9, v8, Ls63$b;->f:Ls63;

    check-cast v9, Lja3$h;

    invoke-static {v9, v7}, Lja3$h;->D(Lja3$h;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 17
    :cond_4
    iget-boolean v3, v0, Lfp0;->g:Z

    if-lez v6, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    or-int/2addr v3, v4

    iput-boolean v3, v0, Lfp0;->g:Z

    .line 18
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 19
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1

    :catchall_1
    move-exception p1

    .line 20
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1

    .line 21
    :cond_6
    iget-boolean p1, v0, Lfp0;->g:Z

    if-eqz p1, :cond_8

    .line 22
    iget-object p1, v0, Lfp0;->i:Ljava/lang/Object;

    monitor-enter p1
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    .line 23
    :try_start_7
    iget-object v2, v0, Lfp0;->a:Lja3$b;

    sget-object v3, Lja3$g;->o:Lja3$g;

    .line 24
    iget-boolean v4, v2, Ls63$b;->g:Z

    if-eqz v4, :cond_7

    .line 25
    invoke-virtual {v2}, Ls63$b;->o()V

    .line 26
    iput-boolean v1, v2, Ls63$b;->g:Z

    .line 27
    :cond_7
    iget-object v1, v2, Ls63$b;->f:Ls63;

    check-cast v1, Lja3;

    invoke-static {v1, v3}, Lja3;->B(Lja3;Lja3$g;)V

    .line 28
    monitor-exit p1

    goto :goto_4

    :catchall_2
    move-exception v0

    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0

    .line 29
    :cond_8
    :goto_4
    invoke-virtual {v0}, Lfp0;->h()Law2;

    move-result-object p1
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    const-string v0, "Failed to get SafeBrowsing metadata"

    .line 30
    sget-object v1, Lx60;->a:Le60;

    invoke-virtual {v1}, Le60;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 31
    invoke-static {v0, p1}, Lis0;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    :cond_9
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Safebrowsing report transmission failed."

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 33
    new-instance v0, Lvv2$a;

    invoke-direct {v0, p1}, Lvv2$a;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_5
    return-object p1
.end method
