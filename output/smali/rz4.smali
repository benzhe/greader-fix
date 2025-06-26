.class public final Lrz4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final synthetic e:Lsz4;


# direct methods
.method public synthetic constructor <init>(Lsz4;)V
    .locals 0

    iput-object p1, p0, Lrz4;->e:Lsz4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lrz4;->e:Lsz4;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 1
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lqw4;->n:Low4;

    const-string v1, "onActivityCreated"

    .line 3
    invoke-virtual {v0, v1}, Low4;->a(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lrz4;->e:Lsz4;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 5
    :goto_0
    invoke-virtual {v0}, Lrx4;->y()Lh05;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1, p2}, Lh05;->t(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void

    .line 7
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 8
    invoke-virtual {v4}, Landroid/net/Uri;->isHierarchical()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_5

    .line 9
    :cond_1
    iget-object v1, p0, Lrz4;->e:Lsz4;

    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 10
    invoke-virtual {v1}, Lrx4;->t()Lp25;

    const-string v1, "android.intent.extra.REFERRER_NAME"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android-app://com.google.android.googlequicksearchbox/https/www.google.com"

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    const-string v1, "https://www.google.com"

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android-app://com.google.appcrawler"

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eq v3, v0, :cond_4

    const-string v0, "auto"

    goto :goto_3

    :cond_4
    const-string v0, "gs"

    :goto_3
    move-object v5, v0

    :try_start_2
    const-string v0, "referrer"

    .line 15
    invoke-virtual {v4, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez p2, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    iget-object v0, p0, Lrz4;->e:Lsz4;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 16
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v0

    new-instance v7, Lqz4;

    move-object v1, v7

    move-object v2, p0

    .line 17
    invoke-direct/range {v1 .. v6}, Lqz4;-><init>(Lrz4;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, v7}, Lox4;->q(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lrz4;->e:Lsz4;

    iget-object v0, v0, Lly4;->a:Lrx4;

    goto :goto_0

    .line 19
    :cond_6
    :goto_5
    iget-object v0, p0, Lrz4;->e:Lsz4;

    iget-object v0, v0, Lly4;->a:Lrx4;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    .line 20
    :goto_6
    :try_start_3
    iget-object v1, p0, Lrz4;->e:Lsz4;

    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 21
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 22
    iget-object v1, v1, Lqw4;->f:Low4;

    const-string v2, "Throwable caught in onActivityCreated"

    .line 23
    invoke-virtual {v1, v2, v0}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 24
    iget-object v0, p0, Lrz4;->e:Lsz4;

    iget-object v0, v0, Lly4;->a:Lrx4;

    goto/16 :goto_0

    .line 25
    :goto_7
    iget-object v1, p0, Lrz4;->e:Lsz4;

    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 26
    invoke-virtual {v1}, Lrx4;->y()Lh05;

    move-result-object v1

    .line 27
    invoke-virtual {v1, p1, p2}, Lh05;->t(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 28
    throw v0
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lrz4;->e:Lsz4;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 1
    invoke-virtual {v0}, Lrx4;->y()Lh05;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lh05;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lh05;->g:Landroid/app/Activity;

    if-ne p1, v2, :cond_0

    const/4 v2, 0x0

    iput-object v2, v0, Lh05;->g:Landroid/app/Activity;

    .line 3
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v0, Lly4;->a:Lrx4;

    .line 4
    iget-object v1, v1, Lrx4;->g:Lcs4;

    .line 5
    invoke-virtual {v1}, Lcs4;->x()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lh05;->f:Ljava/util/Map;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 6

    iget-object v0, p0, Lrz4;->e:Lsz4;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 1
    invoke-virtual {v0}, Lrx4;->y()Lh05;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lly4;->a:Lrx4;

    .line 3
    iget-object v1, v1, Lrx4;->g:Lcs4;

    .line 4
    sget-object v2, Lew4;->u0:Ldw4;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lh05;->l:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, v0, Lh05;->k:Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Lh05;->h:Z

    .line 5
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    iget-object v1, v0, Lly4;->a:Lrx4;

    .line 6
    iget-object v1, v1, Lrx4;->n:Lb20;

    .line 7
    invoke-interface {v1}, Lb20;->b()J

    move-result-wide v1

    iget-object v4, v0, Lly4;->a:Lrx4;

    .line 8
    iget-object v4, v4, Lrx4;->g:Lcs4;

    .line 9
    sget-object v5, Lew4;->t0:Ldw4;

    .line 10
    invoke-virtual {v4, v3, v5}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Lly4;->a:Lrx4;

    .line 11
    iget-object v4, v4, Lrx4;->g:Lcs4;

    .line 12
    invoke-virtual {v4}, Lcs4;->x()Z

    move-result v4

    if-nez v4, :cond_1

    iput-object v3, v0, Lh05;->c:La05;

    iget-object p1, v0, Lly4;->a:Lrx4;

    .line 13
    invoke-virtual {p1}, Lrx4;->m()Lox4;

    move-result-object p1

    new-instance v3, Le05;

    .line 14
    invoke-direct {v3, v0, v1, v2}, Le05;-><init>(Lh05;J)V

    .line 15
    invoke-virtual {p1, v3}, Lox4;->q(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {v0, p1}, Lh05;->n(Landroid/app/Activity;)La05;

    move-result-object p1

    iget-object v4, v0, Lh05;->c:La05;

    iput-object v4, v0, Lh05;->d:La05;

    iput-object v3, v0, Lh05;->c:La05;

    iget-object v3, v0, Lly4;->a:Lrx4;

    .line 17
    invoke-virtual {v3}, Lrx4;->m()Lox4;

    move-result-object v3

    new-instance v4, Lf05;

    .line 18
    invoke-direct {v4, v0, p1, v1, v2}, Lf05;-><init>(Lh05;La05;J)V

    .line 19
    invoke-virtual {v3, v4}, Lox4;->q(Ljava/lang/Runnable;)V

    .line 20
    :goto_1
    iget-object p1, p0, Lrz4;->e:Lsz4;

    iget-object p1, p1, Lly4;->a:Lrx4;

    .line 21
    invoke-virtual {p1}, Lrx4;->r()Lx15;

    move-result-object p1

    iget-object v0, p1, Lly4;->a:Lrx4;

    .line 22
    iget-object v0, v0, Lrx4;->n:Lb20;

    .line 23
    invoke-interface {v0}, Lb20;->b()J

    move-result-wide v0

    iget-object v2, p1, Lly4;->a:Lrx4;

    .line 24
    invoke-virtual {v2}, Lrx4;->m()Lox4;

    move-result-object v2

    new-instance v3, Lp15;

    .line 25
    invoke-direct {v3, p1, v0, v1}, Lp15;-><init>(Lx15;J)V

    .line 26
    invoke-virtual {v2, v3}, Lox4;->q(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 6

    iget-object v0, p0, Lrz4;->e:Lsz4;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 1
    invoke-virtual {v0}, Lrx4;->r()Lx15;

    move-result-object v0

    iget-object v1, v0, Lly4;->a:Lrx4;

    .line 2
    iget-object v1, v1, Lrx4;->n:Lb20;

    .line 3
    invoke-interface {v1}, Lb20;->b()J

    move-result-wide v1

    iget-object v3, v0, Lly4;->a:Lrx4;

    .line 4
    invoke-virtual {v3}, Lrx4;->m()Lox4;

    move-result-object v3

    new-instance v4, Lo15;

    .line 5
    invoke-direct {v4, v0, v1, v2}, Lo15;-><init>(Lx15;J)V

    .line 6
    invoke-virtual {v3, v4}, Lox4;->q(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lrz4;->e:Lsz4;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 7
    invoke-virtual {v0}, Lrx4;->y()Lh05;

    move-result-object v0

    .line 8
    iget-object v1, v0, Lly4;->a:Lrx4;

    .line 9
    iget-object v1, v1, Lrx4;->g:Lcs4;

    .line 10
    sget-object v2, Lew4;->u0:Ldw4;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, Lh05;->l:Ljava/lang/Object;

    monitor-enter v1

    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, v0, Lh05;->k:Z

    iget-object v4, v0, Lh05;->g:Landroid/app/Activity;

    if-eq p1, v4, :cond_0

    iget-object v4, v0, Lh05;->l:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-object p1, v0, Lh05;->g:Landroid/app/Activity;

    iput-boolean v2, v0, Lh05;->h:Z

    .line 11
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v4, v0, Lly4;->a:Lrx4;

    .line 12
    iget-object v4, v4, Lrx4;->g:Lcs4;

    .line 13
    sget-object v5, Lew4;->t0:Ldw4;

    .line 14
    invoke-virtual {v4, v3, v5}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lly4;->a:Lrx4;

    .line 15
    iget-object v4, v4, Lrx4;->g:Lcs4;

    .line 16
    invoke-virtual {v4}, Lcs4;->x()Z

    move-result v4

    if-eqz v4, :cond_0

    iput-object v3, v0, Lh05;->i:La05;

    iget-object v4, v0, Lly4;->a:Lrx4;

    .line 17
    invoke-virtual {v4}, Lrx4;->m()Lox4;

    move-result-object v4

    new-instance v5, Lg05;

    .line 18
    invoke-direct {v5, v0}, Lg05;-><init>(Lh05;)V

    .line 19
    invoke-virtual {v4, v5}, Lox4;->q(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 20
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 21
    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :cond_1
    :goto_1
    iget-object v1, v0, Lly4;->a:Lrx4;

    .line 22
    iget-object v1, v1, Lrx4;->g:Lcs4;

    .line 23
    sget-object v4, Lew4;->t0:Ldw4;

    .line 24
    invoke-virtual {v1, v3, v4}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lly4;->a:Lrx4;

    .line 25
    iget-object v1, v1, Lrx4;->g:Lcs4;

    .line 26
    invoke-virtual {v1}, Lcs4;->x()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p1, v0, Lh05;->i:La05;

    iput-object p1, v0, Lh05;->c:La05;

    iget-object p1, v0, Lly4;->a:Lrx4;

    .line 27
    invoke-virtual {p1}, Lrx4;->m()Lox4;

    move-result-object p1

    new-instance v1, Ld05;

    .line 28
    invoke-direct {v1, v0}, Ld05;-><init>(Lh05;)V

    .line 29
    invoke-virtual {p1, v1}, Lox4;->q(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 30
    :cond_2
    invoke-virtual {v0, p1}, Lh05;->n(Landroid/app/Activity;)La05;

    move-result-object v1

    .line 31
    invoke-virtual {v0, p1, v1, v2}, Lh05;->i(Landroid/app/Activity;La05;Z)V

    iget-object p1, v0, Lly4;->a:Lrx4;

    .line 32
    invoke-virtual {p1}, Lrx4;->c()Lxu4;

    move-result-object p1

    iget-object v0, p1, Lly4;->a:Lrx4;

    .line 33
    iget-object v0, v0, Lrx4;->n:Lb20;

    .line 34
    invoke-interface {v0}, Lb20;->b()J

    move-result-wide v0

    iget-object v2, p1, Lly4;->a:Lrx4;

    .line 35
    invoke-virtual {v2}, Lrx4;->m()Lox4;

    move-result-object v2

    new-instance v3, Lwt4;

    .line 36
    invoke-direct {v3, p1, v0, v1}, Lwt4;-><init>(Lxu4;J)V

    .line 37
    invoke-virtual {v2, v3}, Lox4;->q(Ljava/lang/Runnable;)V

    :goto_2
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lrz4;->e:Lsz4;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 1
    invoke-virtual {v0}, Lrx4;->y()Lh05;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lly4;->a:Lrx4;

    .line 3
    iget-object v1, v1, Lrx4;->g:Lcs4;

    .line 4
    invoke-virtual {v1}, Lcs4;->x()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lh05;->f:Ljava/util/Map;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La05;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    .line 6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-wide v1, p1, La05;->c:J

    const-string v3, "id"

    .line 7
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p1, La05;->a:Ljava/lang/String;

    const-string v2, "name"

    .line 8
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, La05;->b:Ljava/lang/String;

    const-string v1, "referrer_name"

    .line 9
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.google.app_measurement.screen_service"

    .line 10
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
