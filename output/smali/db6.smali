.class public final synthetic Ldb6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw35;


# instance fields
.field public final a:Ljb6;


# direct methods
.method public constructor <init>(Ljb6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldb6;->a:Ljb6;

    return-void
.end method


# virtual methods
.method public a(Le45;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Ldb6;->a:Ljb6;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Le45;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, v0, Ljb6;->c:Lxb6;

    .line 4
    monitor-enter v1

    const/4 v2, 0x0

    .line 5
    :try_start_0
    invoke-static {v2}, Lc50;->X(Ljava/lang/Object;)Le45;

    move-result-object v2

    iput-object v2, v1, Lxb6;->c:Le45;

    .line 6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    iget-object v1, v1, Lxb6;->b:Lhc6;

    .line 8
    monitor-enter v1

    .line 9
    :try_start_1
    iget-object v2, v1, Lhc6;->a:Landroid/content/Context;

    iget-object v3, v1, Lhc6;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    monitor-exit v1

    .line 11
    invoke-virtual {p1}, Le45;->l()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {p1}, Le45;->l()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyb6;

    .line 13
    iget-object p1, p1, Lyb6;->d:Lorg/json/JSONArray;

    const-string v1, "FirebaseRemoteConfig"

    .line 14
    iget-object v2, v0, Ljb6;->a:Lye5;

    if-nez v2, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    :try_start_2
    invoke-static {p1}, Ljb6;->d(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    .line 16
    iget-object v0, v0, Ljb6;->a:Lye5;

    invoke-virtual {v0, p1}, Lye5;->d(Ljava/util/List;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lwe5; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Could not update ABT experiments."

    .line 17
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "Could not parse ABT experiments from the JSON response."

    .line 18
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const-string p1, "FirebaseRemoteConfig"

    const-string v0, "Activated configs written to disk are null."

    .line 19
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 20
    monitor-exit v1

    throw p1

    :catchall_1
    move-exception p1

    .line 21
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_2
    const/4 p1, 0x0

    .line 22
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
