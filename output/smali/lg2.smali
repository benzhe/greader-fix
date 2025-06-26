.class public final Llg2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrv2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrv2<",
        "TAppOpenAd;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc72;

.field public final synthetic b:Lng2;

.field public final synthetic c:Lgg2;


# direct methods
.method public constructor <init>(Lgg2;Lc72;Lng2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llg2;->c:Lgg2;

    iput-object p2, p0, Llg2;->a:Lc72;

    iput-object p3, p0, Llg2;->b:Lng2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    iget-object v0, p0, Llg2;->c:Lgg2;

    .line 2
    iget-object v0, v0, Lgg2;->e:Lli2;

    .line 3
    invoke-interface {v0}, Lli2;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt31;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4
    invoke-static {p1, v1}, Lc50;->y1(Ljava/lang/Throwable;Lnz1;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object v2

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0}, Ll91;->d()Lh71;

    move-result-object v2

    .line 6
    iget-object v2, v2, Lh71;->l:Lnz1;

    invoke-static {p1, v2}, Lc50;->y1(Ljava/lang/Throwable;Lnz1;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object v2

    .line 7
    :goto_0
    iget-object v3, p0, Llg2;->c:Lgg2;

    monitor-enter v3

    .line 8
    :try_start_0
    iget-object v4, p0, Llg2;->c:Lgg2;

    .line 9
    iput-object v1, v4, Lgg2;->h:Law2;

    if-eqz v0, :cond_1

    .line 10
    invoke-interface {v0}, Lt31;->a()Lba1;

    move-result-object v0

    .line 11
    new-instance v1, Lfa1;

    invoke-direct {v1, v2}, Lfa1;-><init>(Lcom/google/android/gms/internal/ads/zzvh;)V

    invoke-virtual {v0, v1}, Lxd1;->D0(Lzd1;)V

    .line 12
    sget-object v0, Ly40;->M4:Lo40;

    .line 13
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 14
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    iget-object v0, p0, Llg2;->c:Lgg2;

    .line 17
    iget-object v0, v0, Lgg2;->b:Ljava/util/concurrent/Executor;

    .line 18
    new-instance v1, Lkg2;

    invoke-direct {v1, p0, v2}, Lkg2;-><init>(Llg2;Lcom/google/android/gms/internal/ads/zzvh;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 19
    :cond_1
    iget-object v0, v4, Lgg2;->d:Lmg2;

    .line 20
    invoke-virtual {v0, v2}, Lmg2;->Q(Lcom/google/android/gms/internal/ads/zzvh;)V

    .line 21
    iget-object v0, p0, Llg2;->c:Lgg2;

    iget-object v1, p0, Llg2;->b:Lng2;

    .line 22
    invoke-virtual {v0, v1}, Lgg2;->c(Loi2;)Lk91;

    move-result-object v0

    .line 23
    invoke-interface {v0}, Lk91;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt31;

    .line 24
    invoke-interface {v0}, Ll91;->d()Lh71;

    move-result-object v0

    .line 25
    iget-object v0, v0, Lh71;->f:Lmd1;

    .line 26
    sget-object v1, Lsd1;->a:Lzd1;

    invoke-virtual {v0, v1}, Lxd1;->D0(Lzd1;)V

    .line 27
    :cond_2
    :goto_1
    iget v0, v2, Lcom/google/android/gms/internal/ads/zzvh;->e:I

    const-string v1, "AppOpenAdLoader.onFailure"

    invoke-static {v0, p1, v1}, Lc50;->X1(ILjava/lang/Throwable;Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Llg2;->a:Lc72;

    invoke-interface {p1}, Lc72;->a()V

    .line 29
    monitor-exit v3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lf61;

    .line 2
    iget-object v0, p0, Llg2;->c:Lgg2;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Llg2;->c:Lgg2;

    const/4 v2, 0x0

    .line 4
    iput-object v2, v1, Lgg2;->h:Law2;

    .line 5
    sget-object v1, Ly40;->M4:Lo40;

    .line 6
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 7
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 8
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    iget-object v1, p1, Lf61;->g:Lrc1;

    .line 10
    iget-object v1, v1, Lrc1;->e:Lvc1;

    .line 11
    iget-object v2, p0, Llg2;->c:Lgg2;

    .line 12
    iget-object v2, v2, Lgg2;->d:Lmg2;

    .line 13
    iget-object v1, v1, Lvc1;->a:Lrc1;

    .line 14
    iput-object v2, v1, Lrc1;->h:Lmg2;

    .line 15
    :cond_0
    iget-object v1, p0, Llg2;->a:Lc72;

    invoke-interface {v1, p1}, Lc72;->onSuccess(Ljava/lang/Object;)V

    .line 16
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
