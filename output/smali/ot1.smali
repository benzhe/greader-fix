.class public final synthetic Lot1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lmt1;


# direct methods
.method public constructor <init>(Lmt1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lot1;->e:Lmt1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lot1;->e:Lmt1;

    .line 1
    iget-object v1, v0, Lmt1;->l:Lws1;

    .line 2
    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v2, Ly40;->o1:Lo40;

    .line 4
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->f:Lu40;

    .line 5
    invoke-virtual {v3, v2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    sget-object v2, Ly40;->e5:Lo40;

    .line 7
    sget-object v4, Los3;->j:Los3;

    iget-object v4, v4, Los3;->f:Lu40;

    .line 8
    invoke-virtual {v4, v2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 9
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    iget-boolean v2, v1, Lws1;->d:Z

    if-nez v2, :cond_2

    .line 11
    invoke-virtual {v1}, Lws1;->b()Ljava/util/Map;

    move-result-object v2

    const-string v4, "action"

    const-string v5, "init_finished"

    .line 12
    move-object v6, v2

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v4, v1, Lws1;->b:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v2, v1, Lws1;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 15
    iget-object v5, v1, Lws1;->f:Lss1;

    invoke-virtual {v5, v4}, Lvs1;->a(Ljava/util/Map;)V

    goto :goto_0

    .line 16
    :cond_1
    iput-boolean v3, v1, Lws1;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :cond_2
    monitor-exit v1

    goto :goto_2

    .line 18
    :cond_3
    :goto_1
    monitor-exit v1

    .line 19
    :goto_2
    iget-object v1, v0, Lmt1;->o:Lye1;

    .line 20
    sget-object v2, Lbf1;->a:Lzd1;

    invoke-virtual {v1, v2}, Lxd1;->D0(Lzd1;)V

    .line 21
    iput-boolean v3, v0, Lmt1;->b:Z

    return-void

    :catchall_0
    move-exception v0

    .line 22
    monitor-exit v1

    throw v0
.end method
