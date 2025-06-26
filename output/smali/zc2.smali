.class public final synthetic Lzc2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final e:Lwc2;


# direct methods
.method public constructor <init>(Lwc2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzc2;->e:Lwc2;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lzc2;->e:Lwc2;

    .line 1
    iget-object v1, v0, Lwc2;->a:Lcq0;

    iget-object v2, v0, Lwc2;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcq0;->h(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    new-instance v0, Lxc2;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lxc2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_4

    .line 3
    :cond_0
    iget-object v1, v0, Lwc2;->a:Lcq0;

    iget-object v2, v0, Lwc2;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcq0;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    move-object v3, v1

    .line 4
    iget-object v1, v0, Lwc2;->a:Lcq0;

    iget-object v2, v0, Lwc2;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcq0;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    move-object v4, v1

    .line 5
    iget-object v1, v0, Lwc2;->a:Lcq0;

    iget-object v2, v0, Lwc2;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcq0;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, ""

    :cond_3
    move-object v5, v1

    .line 6
    iget-object v1, v0, Lwc2;->a:Lcq0;

    iget-object v0, v0, Lwc2;->c:Landroid/content/Context;

    .line 7
    invoke-virtual {v1, v0}, Lcq0;->h(Landroid/content/Context;)Z

    move-result v2

    const/4 v6, 0x0

    if-nez v2, :cond_4

    move-object v7, v6

    goto :goto_1

    .line 8
    :cond_4
    iget-object v2, v1, Lcq0;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 9
    :try_start_0
    iget-object v7, v1, Lcq0;->d:Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 10
    monitor-exit v2

    goto :goto_1

    .line 11
    :cond_5
    invoke-static {v0}, Lcq0;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "getAppIdOrigin"

    .line 12
    iget-object v7, v1, Lcq0;->d:Ljava/lang/String;

    sget-object v8, Ldq0;->a:Lcq0$b;

    .line 13
    invoke-virtual {v1, v0, v7, v8}, Lcq0;->b(Ljava/lang/String;Ljava/lang/Object;Lcq0$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcq0;->d:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string v0, "fa"

    .line 14
    iput-object v0, v1, Lcq0;->d:Ljava/lang/String;

    .line 15
    :goto_0
    iget-object v7, v1, Lcq0;->d:Ljava/lang/String;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-nez v7, :cond_7

    const-string v0, ""

    goto :goto_2

    :cond_7
    move-object v0, v7

    :goto_2
    const-string v1, "TIME_OUT"

    .line 16
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 17
    sget-object v1, Ly40;->Y:Lo40;

    .line 18
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 19
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/Long;

    move-object v7, v1

    goto :goto_3

    :cond_8
    move-object v7, v6

    .line 21
    :goto_3
    new-instance v1, Lxc2;

    move-object v2, v1

    move-object v6, v0

    invoke-direct/range {v2 .. v7}, Lxc2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    move-object v0, v1

    :goto_4
    return-object v0

    :catchall_0
    move-exception v0

    .line 22
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
