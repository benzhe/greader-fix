.class public final synthetic Lx96;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Ly96;

.field public final f:Z


# direct methods
.method public constructor <init>(Ly96;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx96;->e:Ly96;

    iput-boolean p2, p0, Lx96;->f:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lx96;->e:Ly96;

    iget-boolean v1, p0, Lx96;->f:Z

    .line 1
    sget-object v2, Ly96;->m:Ljava/lang/Object;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v2, Ly96;->m:Ljava/lang/Object;

    monitor-enter v2

    .line 4
    :try_start_0
    iget-object v3, v0, Ly96;->a:Lpe5;

    .line 5
    invoke-virtual {v3}, Lpe5;->a()V

    .line 6
    iget-object v3, v3, Lpe5;->a:Landroid/content/Context;

    const-string v4, "generatefid.lock"

    .line 7
    invoke-static {v3, v4}, Lu96;->a(Landroid/content/Context;Ljava/lang/String;)Lu96;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 8
    :try_start_1
    iget-object v4, v0, Ly96;->c:Lla6;

    .line 9
    invoke-virtual {v4}, Lla6;->b()Lma6;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz v3, :cond_0

    .line 10
    :try_start_2
    invoke-virtual {v3}, Lu96;->b()V

    :cond_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 11
    :try_start_3
    invoke-virtual {v4}, Lma6;->h()Z

    move-result v3

    if-nez v3, :cond_4

    .line 12
    invoke-virtual {v4}, Lma6;->f()Lla6$a;

    move-result-object v3

    sget-object v5, Lla6$a;->g:Lla6$a;

    if-ne v3, v5, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    .line 13
    iget-object v1, v0, Ly96;->d:Lha6;

    invoke-virtual {v1, v4}, Lha6;->d(Lma6;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 14
    :cond_3
    invoke-virtual {v0, v4}, Ly96;->c(Lma6;)Lma6;

    move-result-object v1

    goto :goto_2

    .line 15
    :cond_4
    :goto_1
    invoke-virtual {v0, v4}, Ly96;->j(Lma6;)Lma6;

    move-result-object v1
    :try_end_3
    .catch Laa6; {:try_start_3 .. :try_end_3} :catch_0

    .line 16
    :goto_2
    monitor-enter v2

    .line 17
    :try_start_4
    iget-object v3, v0, Ly96;->a:Lpe5;

    .line 18
    invoke-virtual {v3}, Lpe5;->a()V

    .line 19
    iget-object v3, v3, Lpe5;->a:Landroid/content/Context;

    const-string v5, "generatefid.lock"

    .line 20
    invoke-static {v3, v5}, Lu96;->a(Landroid/content/Context;Ljava/lang/String;)Lu96;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 21
    :try_start_5
    iget-object v5, v0, Ly96;->c:Lla6;

    invoke-virtual {v5, v1}, Lla6;->a(Lma6;)Lma6;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v3, :cond_5

    .line 22
    :try_start_6
    invoke-virtual {v3}, Lu96;->b()V

    .line 23
    :cond_5
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 24
    monitor-enter v0

    .line 25
    :try_start_7
    iget-object v2, v0, Ly96;->k:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-eqz v2, :cond_6

    .line 26
    invoke-virtual {v4}, Lma6;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lma6;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 27
    iget-object v2, v0, Ly96;->k:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lia6;

    .line 28
    invoke-virtual {v1}, Lma6;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lia6;->a(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    .line 29
    :cond_6
    monitor-exit v0

    .line 30
    invoke-virtual {v1}, Lma6;->j()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 31
    move-object v2, v1

    check-cast v2, Lja6;

    .line 32
    iget-object v2, v2, Lja6;->b:Ljava/lang/String;

    .line 33
    monitor-enter v0

    .line 34
    :try_start_8
    iput-object v2, v0, Ly96;->j:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 35
    monitor-exit v0

    goto :goto_4

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 36
    :cond_7
    :goto_4
    invoke-virtual {v1}, Lma6;->h()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 37
    new-instance v1, Laa6;

    sget-object v2, Laa6$a;->e:Laa6$a;

    invoke-direct {v1, v2}, Laa6;-><init>(Laa6$a;)V

    invoke-virtual {v0, v1}, Ly96;->k(Ljava/lang/Exception;)V

    goto :goto_5

    .line 38
    :cond_8
    invoke-virtual {v1}, Lma6;->i()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 39
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ly96;->k(Ljava/lang/Exception;)V

    goto :goto_5

    .line 40
    :cond_9
    invoke-virtual {v0, v1}, Ly96;->l(Lma6;)V

    goto :goto_5

    :catchall_1
    move-exception v1

    .line 41
    monitor-exit v0

    throw v1

    :catchall_2
    move-exception v0

    if-eqz v3, :cond_a

    .line 42
    :try_start_9
    invoke-virtual {v3}, Lu96;->b()V

    .line 43
    :cond_a
    throw v0

    :catchall_3
    move-exception v0

    .line 44
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0

    :catch_0
    move-exception v1

    .line 45
    invoke-virtual {v0, v1}, Ly96;->k(Ljava/lang/Exception;)V

    :cond_b
    :goto_5
    return-void

    :catchall_4
    move-exception v0

    if-eqz v3, :cond_c

    .line 46
    :try_start_a
    invoke-virtual {v3}, Lu96;->b()V

    .line 47
    :cond_c
    throw v0

    :catchall_5
    move-exception v0

    .line 48
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v0
.end method
