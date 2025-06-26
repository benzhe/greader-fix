.class public final Lij1;
.super Ls70;
.source "SourceFile"


# instance fields
.field public final f:Lwj1;

.field public g:Lx20;


# direct methods
.method public constructor <init>(Lwj1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls70;-><init>()V

    .line 2
    iput-object p1, p0, Lij1;->f:Lwj1;

    return-void
.end method

.method public static W6(Lx20;)F
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {p0}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    :cond_1
    return v0
.end method


# virtual methods
.method public final c1(Lx20;)V
    .locals 2

    .line 1
    sget-object v0, Ly40;->X1:Lo40;

    .line 2
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 3
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iput-object p1, p0, Lij1;->g:Lx20;

    :cond_0
    return-void
.end method

.method public final getAspectRatio()F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    sget-object v0, Ly40;->P3:Lo40;

    .line 2
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 3
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5
    :cond_0
    iget-object v0, p0, Lij1;->f:Lwj1;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget v2, v0, Lwj1;->t:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    cmpl-float v0, v2, v1

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lij1;->f:Lwj1;

    .line 9
    monitor-enter v0

    .line 10
    :try_start_1
    iget v1, v0, Lwj1;->t:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 11
    :cond_1
    iget-object v0, p0, Lij1;->f:Lwj1;

    invoke-virtual {v0}, Lwj1;->h()Lsu3;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 12
    :try_start_2
    iget-object v0, p0, Lij1;->f:Lwj1;

    invoke-virtual {v0}, Lwj1;->h()Lsu3;

    move-result-object v0

    invoke-interface {v0}, Lsu3;->getAspectRatio()F

    move-result v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Remote exception getting video controller aspect ratio."

    .line 13
    invoke-static {v2, v0}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return v1

    .line 14
    :cond_2
    iget-object v0, p0, Lij1;->g:Lx20;

    if-eqz v0, :cond_3

    .line 15
    invoke-static {v0}, Lij1;->W6(Lx20;)F

    move-result v0

    return v0

    .line 16
    :cond_3
    iget-object v0, p0, Lij1;->f:Lwj1;

    invoke-virtual {v0}, Lwj1;->l()Lu70;

    move-result-object v0

    if-nez v0, :cond_4

    return v1

    .line 17
    :cond_4
    invoke-interface {v0}, Lu70;->getWidth()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    invoke-interface {v0}, Lu70;->getHeight()I

    move-result v2

    if-eq v2, v3, :cond_5

    .line 18
    invoke-interface {v0}, Lu70;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v0}, Lu70;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    cmpl-float v1, v2, v1

    if-eqz v1, :cond_6

    return v2

    .line 19
    :cond_6
    invoke-interface {v0}, Lu70;->q2()Lx20;

    move-result-object v0

    invoke-static {v0}, Lij1;->W6(Lx20;)F

    move-result v0

    return v0

    :catchall_1
    move-exception v1

    .line 20
    monitor-exit v0

    throw v1
.end method

.method public final getCurrentTime()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    sget-object v0, Ly40;->Q3:Lo40;

    .line 2
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 3
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5
    :cond_0
    iget-object v0, p0, Lij1;->f:Lwj1;

    invoke-virtual {v0}, Lwj1;->h()Lsu3;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lij1;->f:Lwj1;

    invoke-virtual {v0}, Lwj1;->h()Lsu3;

    move-result-object v0

    invoke-interface {v0}, Lsu3;->getCurrentTime()F

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public final getDuration()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    sget-object v0, Ly40;->Q3:Lo40;

    .line 2
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 3
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5
    :cond_0
    iget-object v0, p0, Lij1;->f:Lwj1;

    invoke-virtual {v0}, Lwj1;->h()Lsu3;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lij1;->f:Lwj1;

    invoke-virtual {v0}, Lwj1;->h()Lsu3;

    move-result-object v0

    invoke-interface {v0}, Lsu3;->getDuration()F

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public final getVideoController()Lsu3;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    sget-object v0, Ly40;->Q3:Lo40;

    .line 2
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 3
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Lij1;->f:Lwj1;

    invoke-virtual {v0}, Lwj1;->h()Lsu3;

    move-result-object v0

    return-object v0
.end method

.method public final hasVideoContent()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    sget-object v0, Ly40;->Q3:Lo40;

    .line 2
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 3
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5
    :cond_0
    iget-object v0, p0, Lij1;->f:Lwj1;

    invoke-virtual {v0}, Lwj1;->h()Lsu3;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public final w5()Lx20;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lij1;->g:Lx20;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lij1;->f:Lwj1;

    invoke-virtual {v0}, Lwj1;->l()Lu70;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_1
    invoke-interface {v0}, Lu70;->q2()Lx20;

    move-result-object v0

    return-object v0
.end method
