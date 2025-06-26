.class public final synthetic Lqc2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldv2;


# instance fields
.field public final a:Lrc2;


# direct methods
.method public constructor <init>(Lrc2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqc2;->a:Lrc2;

    return-void
.end method


# virtual methods
.method public final a()Law2;
    .locals 9

    iget-object v0, p0, Lqc2;->a:Lrc2;

    .line 1
    iget-object v1, v0, Lrc2;->c:Ll52;

    iget-object v2, v0, Lrc2;->g:Ljava/lang/String;

    iget-object v3, v0, Lrc2;->e:Lll2;

    iget-object v3, v3, Lll2;->f:Ljava/lang/String;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v4, v1, Ll52;->b:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_1

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_2

    .line 6
    :cond_1
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_2

    .line 7
    iget-object v1, v1, Ll52;->d:Lorg/json/JSONObject;

    invoke-static {v1, v3, v2}, Lc50;->O1(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/util/List;

    :cond_2
    if-nez v5, :cond_3

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_2

    .line 10
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo52;

    .line 12
    iget-object v4, v3, Lo52;->a:Ljava/lang/String;

    .line 13
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 14
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_4
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 16
    iget-object v3, v3, Lo52;->b:Landroid/os/Bundle;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_5
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 18
    :cond_6
    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 20
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 21
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 22
    iget-object v5, v0, Lrc2;->e:Lll2;

    iget-object v5, v5, Lll2;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzvq;->q:Landroid/os/Bundle;

    if-eqz v5, :cond_7

    .line 23
    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    .line 24
    :goto_4
    new-instance v6, Ltc2;

    invoke-direct {v6, v0, v4, v3, v5}, Ltc2;-><init>(Lrc2;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    iget-object v3, v0, Lrc2;->a:Lzv2;

    .line 25
    invoke-static {v6, v3}, Lvt2;->c(Ldv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v3

    .line 26
    invoke-static {v3}, Lnv2;->A(Law2;)Lnv2;

    move-result-object v3

    sget-object v5, Ly40;->V0:Lo40;

    .line 27
    sget-object v6, Los3;->j:Los3;

    iget-object v6, v6, Los3;->f:Lu40;

    .line 28
    invoke-virtual {v6, v5}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v5

    .line 29
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v8, v0, Lrc2;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 30
    invoke-virtual {v3, v5, v6, v7, v8}, Lnv2;->x(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lnv2;

    move-result-object v3

    const-class v5, Ljava/lang/Throwable;

    new-instance v6, Lsc2;

    invoke-direct {v6, v4}, Lsc2;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lrc2;->a:Lzv2;

    .line 31
    new-instance v7, Lqu2;

    invoke-direct {v7, v3, v5, v6}, Lqu2;-><init>(Law2;Ljava/lang/Class;Lvs2;)V

    .line 32
    invoke-static {v4, v7}, Lvt2;->g(Ljava/util/concurrent/Executor;Lsu2;)Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-interface {v3, v7, v4}, Law2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 33
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 34
    :cond_8
    invoke-static {v2}, Lnt2;->y(Ljava/lang/Iterable;)Lnt2;

    move-result-object v1

    const/4 v3, 0x1

    .line 35
    new-instance v4, Lvc2;

    invoke-direct {v4, v2}, Lvc2;-><init>(Ljava/util/List;)V

    iget-object v0, v0, Lrc2;->a:Lzv2;

    .line 36
    new-instance v2, Lgv2;

    invoke-direct {v2, v1, v3, v0, v4}, Lgv2;-><init>(Lit2;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V

    return-object v2
.end method
