.class public final synthetic Lqm1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final e:Law2;

.field public final f:Law2;

.field public final g:Law2;

.field public final h:Law2;

.field public final i:Law2;

.field public final j:Lorg/json/JSONObject;

.field public final k:Law2;

.field public final l:Law2;

.field public final m:Law2;


# direct methods
.method public constructor <init>(Lom1;Law2;Law2;Law2;Law2;Law2;Lorg/json/JSONObject;Law2;Law2;Law2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lqm1;->e:Law2;

    iput-object p3, p0, Lqm1;->f:Law2;

    iput-object p4, p0, Lqm1;->g:Law2;

    iput-object p5, p0, Lqm1;->h:Law2;

    iput-object p6, p0, Lqm1;->i:Law2;

    iput-object p7, p0, Lqm1;->j:Lorg/json/JSONObject;

    iput-object p8, p0, Lqm1;->k:Law2;

    iput-object p9, p0, Lqm1;->l:Law2;

    iput-object p10, p0, Lqm1;->m:Law2;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lqm1;->e:Law2;

    iget-object v1, p0, Lqm1;->f:Law2;

    iget-object v2, p0, Lqm1;->g:Law2;

    iget-object v3, p0, Lqm1;->h:Law2;

    iget-object v4, p0, Lqm1;->i:Law2;

    iget-object v5, p0, Lqm1;->j:Lorg/json/JSONObject;

    iget-object v6, p0, Lqm1;->k:Law2;

    iget-object v7, p0, Lqm1;->l:Law2;

    iget-object v8, p0, Lqm1;->m:Law2;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwj1;

    .line 3
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 4
    monitor-enter v0

    .line 5
    :try_start_0
    iput-object v1, v0, Lwj1;->e:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    .line 6
    monitor-exit v0

    .line 7
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu70;

    .line 8
    monitor-enter v0

    .line 9
    :try_start_1
    iput-object v1, v0, Lwj1;->o:Lu70;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    .line 10
    monitor-exit v0

    .line 11
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu70;

    .line 12
    monitor-enter v0

    .line 13
    :try_start_2
    iput-object v1, v0, Lwj1;->p:Lu70;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .line 14
    monitor-exit v0

    .line 15
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm70;

    .line 16
    monitor-enter v0

    .line 17
    :try_start_3
    iput-object v1, v0, Lwj1;->c:Lm70;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 18
    monitor-exit v0

    const-string v1, "mute"

    .line 19
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    .line 20
    sget-object v1, Lnt2;->f:Lmu2;

    sget-object v1, Lau2;->i:Lnt2;

    goto :goto_2

    :cond_0
    const-string v2, "reasons"

    .line 21
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 22
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_1

    .line 23
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 24
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 25
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lsm1;->e(Lorg/json/JSONObject;)Llv3;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 26
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 27
    :cond_3
    invoke-static {v2}, Lnt2;->s(Ljava/util/Collection;)Lnt2;

    move-result-object v1

    goto :goto_2

    .line 28
    :cond_4
    :goto_1
    sget-object v1, Lnt2;->f:Lmu2;

    sget-object v1, Lau2;->i:Lnt2;

    .line 29
    :goto_2
    monitor-enter v0

    .line 30
    :try_start_4
    iput-object v1, v0, Lwj1;->f:Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 31
    monitor-exit v0

    const-string v1, "mute"

    .line 32
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    const-string v3, "default_reason"

    .line 33
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_3

    .line 34
    :cond_6
    invoke-static {v1}, Lsm1;->e(Lorg/json/JSONObject;)Llv3;

    move-result-object v2

    .line 35
    :goto_3
    monitor-enter v0

    .line 36
    :try_start_5
    iput-object v2, v0, Lwj1;->g:Llv3;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 37
    monitor-exit v0

    .line 38
    invoke-interface {v6}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxw0;

    if-eqz v1, :cond_7

    .line 39
    monitor-enter v0

    .line 40
    :try_start_6
    iput-object v1, v0, Lwj1;->i:Lxw0;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 41
    monitor-exit v0

    .line 42
    invoke-interface {v1}, Lxw0;->getView()Landroid/view/View;

    move-result-object v2

    .line 43
    monitor-enter v0

    .line 44
    :try_start_7
    iput-object v2, v0, Lwj1;->l:Landroid/view/View;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 45
    monitor-exit v0

    .line 46
    invoke-interface {v1}, Lxw0;->f()Lrx0;

    move-result-object v1

    .line 47
    monitor-enter v0

    .line 48
    :try_start_8
    iput-object v1, v0, Lwj1;->b:Lsu3;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 49
    monitor-exit v0

    goto :goto_4

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :catchall_1
    move-exception v1

    .line 50
    monitor-exit v0

    throw v1

    :catchall_2
    move-exception v1

    .line 51
    monitor-exit v0

    throw v1

    .line 52
    :cond_7
    :goto_4
    invoke-interface {v7}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxw0;

    if-eqz v1, :cond_8

    .line 53
    monitor-enter v0

    .line 54
    :try_start_9
    iput-object v1, v0, Lwj1;->j:Lxw0;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 55
    monitor-exit v0

    goto :goto_5

    :catchall_3
    move-exception v1

    monitor-exit v0

    throw v1

    .line 56
    :cond_8
    :goto_5
    invoke-interface {v8}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldn1;

    .line 57
    iget v3, v2, Ldn1;->a:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_b

    const/4 v4, 0x2

    if-eq v3, v4, :cond_9

    goto :goto_6

    .line 58
    :cond_9
    iget-object v3, v2, Ldn1;->b:Ljava/lang/String;

    iget-object v2, v2, Ldn1;->d:Lh70;

    .line 59
    monitor-enter v0

    if-nez v2, :cond_a

    .line 60
    :try_start_a
    iget-object v2, v0, Lwj1;->r:Lm4;

    invoke-virtual {v2, v3}, Lm4;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    monitor-exit v0

    goto :goto_6

    .line 61
    :cond_a
    :try_start_b
    iget-object v4, v0, Lwj1;->r:Lm4;

    invoke-virtual {v4, v3, v2}, Lm4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 62
    monitor-exit v0

    goto :goto_6

    :catchall_4
    move-exception v1

    monitor-exit v0

    throw v1

    .line 63
    :cond_b
    iget-object v3, v2, Ldn1;->b:Ljava/lang/String;

    iget-object v2, v2, Ldn1;->c:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lwj1;->u(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    return-object v0

    :catchall_5
    move-exception v1

    .line 64
    monitor-exit v0

    throw v1

    :catchall_6
    move-exception v1

    .line 65
    monitor-exit v0

    throw v1

    :catchall_7
    move-exception v1

    .line 66
    monitor-exit v0

    throw v1

    :catchall_8
    move-exception v1

    .line 67
    monitor-exit v0

    throw v1

    :catchall_9
    move-exception v1

    .line 68
    monitor-exit v0

    throw v1

    :catchall_a
    move-exception v1

    .line 69
    monitor-exit v0

    throw v1
.end method
