.class public final Lco1;
.super Lt80;
.source "SourceFile"


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Lwj1;

.field public g:Ltk1;

.field public h:Lkj1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lwj1;Ltk1;Lkj1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lt80;-><init>()V

    .line 2
    iput-object p1, p0, Lco1;->e:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lco1;->f:Lwj1;

    .line 4
    iput-object p3, p0, Lco1;->g:Ltk1;

    .line 5
    iput-object p4, p0, Lco1;->h:Lkj1;

    return-void
.end method


# virtual methods
.method public final A3(Lx20;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lco1;->g:Ltk1;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    check-cast p1, Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {v0, p1}, Ltk1;->b(Landroid/view/ViewGroup;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    return v1

    .line 5
    :cond_2
    iget-object p1, p0, Lco1;->f:Lwj1;

    .line 6
    invoke-virtual {p1}, Lwj1;->o()Lxw0;

    move-result-object p1

    new-instance v0, Lfo1;

    invoke-direct {v0, p0}, Lfo1;-><init>(Lco1;)V

    .line 7
    invoke-interface {p1, v0}, Lxw0;->K(Lj70;)V

    return v2
.end method

.method public final K2(Lx20;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lco1;->f:Lwj1;

    invoke-virtual {v0}, Lwj1;->q()Lx20;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lco1;->h:Lkj1;

    if-eqz v0, :cond_2

    .line 5
    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Lkj1;->e(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public final L6()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lco1;->f:Lwj1;

    invoke-virtual {v0}, Lwj1;->q()Lx20;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlk()Lrk0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lrk0;->d(Lx20;)V

    .line 3
    sget-object v0, Ly40;->X2:Lo40;

    .line 4
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 5
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco1;->f:Lwj1;

    invoke-virtual {v0}, Lwj1;->p()Lxw0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lco1;->f:Lwj1;

    .line 8
    invoke-virtual {v0}, Lwj1;->p()Lxw0;

    move-result-object v0

    new-instance v1, Lf4;

    invoke-direct {v1}, Lf4;-><init>()V

    const-string v2, "onSdkLoaded"

    .line 9
    invoke-interface {v0, v2, v1}, Lod0;->x(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const-string v0, "Trying to start OMID session before creation."

    .line 10
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final Q1()Lx20;
    .locals 2

    .line 1
    iget-object v0, p0, Lco1;->e:Landroid/content/Context;

    .line 2
    new-instance v1, Ly20;

    invoke-direct {v1, v0}, Ly20;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public final S0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lco1;->h:Lkj1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lkj1;->l:Lak1;

    invoke-virtual {v0}, Lak1;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lco1;->f:Lwj1;

    invoke-virtual {v0}, Lwj1;->p()Lxw0;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Lco1;->f:Lwj1;

    invoke-virtual {v0}, Lwj1;->o()Lxw0;

    move-result-object v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final S1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lco1;->f:Lwj1;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Lwj1;->s:Lm4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {v1, p1, v0}, Lm4;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/String;

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0

    throw p1
.end method

.method public final X5(Ljava/lang/String;)Lu70;
    .locals 2

    .line 1
    iget-object v0, p0, Lco1;->f:Lwj1;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Lwj1;->r:Lm4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {v1, p1, v0}, Lm4;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    check-cast p1, Lu70;

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0

    throw p1
.end method

.method public final destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lco1;->h:Lkj1;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lkj1;->a()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lco1;->h:Lkj1;

    .line 4
    iput-object v0, p0, Lco1;->g:Ltk1;

    return-void
.end method

.method public final getAvailableAssetNames()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lco1;->f:Lwj1;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Lwj1;->r:Lm4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    .line 4
    iget-object v0, p0, Lco1;->f:Lwj1;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_1
    iget-object v2, v0, Lwj1;->s:Lm4;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    .line 7
    iget v0, v1, Lm4;->g:I

    iget v3, v2, Lm4;->g:I

    add-int/2addr v0, v3

    .line 8
    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 9
    :goto_0
    iget v6, v1, Lm4;->g:I

    if-ge v4, v6, :cond_0

    .line 10
    invoke-virtual {v1, v4}, Lm4;->h(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 11
    :cond_0
    :goto_1
    iget v1, v2, Lm4;->g:I

    if-ge v3, v1, :cond_1

    .line 12
    invoke-virtual {v2, v3}, Lm4;->h(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v0, v5

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 13
    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0

    throw v1

    :catchall_1
    move-exception v1

    .line 15
    monitor-exit v0

    throw v1
.end method

.method public final getCustomTemplateId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lco1;->f:Lwj1;

    invoke-virtual {v0}, Lwj1;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoController()Lsu3;
    .locals 1

    .line 1
    iget-object v0, p0, Lco1;->f:Lwj1;

    invoke-virtual {v0}, Lwj1;->h()Lsu3;

    move-result-object v0

    return-object v0
.end method

.method public final performClick(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lco1;->h:Lkj1;

    if-eqz v0, :cond_0

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Lkj1;->j:Lek1;

    invoke-interface {v1, p1}, Lek1;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public final recordImpression()V
    .locals 2

    .line 1
    iget-object v0, p0, Lco1;->h:Lkj1;

    if-eqz v0, :cond_1

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, v0, Lkj1;->t:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 4
    monitor-exit v0

    goto :goto_0

    .line 5
    :cond_0
    :try_start_1
    iget-object v1, v0, Lkj1;->j:Lek1;

    invoke-interface {v1}, Lek1;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public final u1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lco1;->f:Lwj1;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Lwj1;->u:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const-string v0, "Google"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Illegal argument specified for omid partner name."

    .line 5
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lco1;->h:Lkj1;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v1, v2}, Lkj1;->n(Ljava/lang/String;Z)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0

    throw v1
.end method
