.class public final Lkh2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrv2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrv2<",
        "Lj41;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc72;

.field public final synthetic b:Lg51;

.field public final synthetic c:Lih2;


# direct methods
.method public constructor <init>(Lih2;Lc72;Lg51;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkh2;->c:Lih2;

    iput-object p2, p0, Lkh2;->a:Lc72;

    iput-object p3, p0, Lkh2;->b:Lg51;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lkh2;->b:Lg51;

    invoke-virtual {v0}, Lg51;->c()Lh71;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lh71;->l:Lnz1;

    invoke-static {p1, v0}, Lc50;->y1(Ljava/lang/Throwable;Lnz1;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lkh2;->c:Lih2;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, p0, Lkh2;->c:Lih2;

    const/4 v3, 0x0

    .line 5
    iput-object v3, v2, Lih2;->j:Law2;

    .line 6
    iget-object v2, p0, Lkh2;->b:Lg51;

    invoke-virtual {v2}, Lg51;->d()Lba1;

    move-result-object v2

    .line 7
    new-instance v3, Lfa1;

    invoke-direct {v3, v0}, Lfa1;-><init>(Lcom/google/android/gms/internal/ads/zzvh;)V

    invoke-virtual {v2, v3}, Lxd1;->D0(Lzd1;)V

    .line 8
    sget-object v2, Ly40;->L4:Lo40;

    .line 9
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->f:Lu40;

    .line 10
    invoke-virtual {v3, v2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 11
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12
    iget-object v2, p0, Lkh2;->c:Lih2;

    .line 13
    iget-object v2, v2, Lih2;->b:Ljava/util/concurrent/Executor;

    .line 14
    new-instance v3, Lmh2;

    invoke-direct {v3, p0, v0}, Lmh2;-><init>(Lkh2;Lcom/google/android/gms/internal/ads/zzvh;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 15
    :cond_0
    iget-object v2, p0, Lkh2;->c:Lih2;

    .line 16
    iget-object v2, v2, Lih2;->h:Lkc1;

    const/16 v3, 0x3c

    .line 17
    invoke-virtual {v2, v3}, Lkc1;->G0(I)V

    .line 18
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvh;->e:I

    const-string v2, "BannerAdLoader.onFailure"

    invoke-static {v0, p1, v2}, Lc50;->X1(ILjava/lang/Throwable;Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Lkh2;->a:Lc72;

    invoke-interface {p1}, Lc72;->a()V

    .line 20
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lj41;

    .line 2
    iget-object v0, p0, Lkh2;->c:Lih2;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lkh2;->c:Lih2;

    const/4 v2, 0x0

    .line 4
    iput-object v2, v1, Lih2;->j:Law2;

    .line 5
    iget-object v1, v1, Lih2;->f:Landroid/view/ViewGroup;

    .line 6
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 7
    invoke-virtual {p1}, Lj41;->f()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p1}, Lj41;->f()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 9
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    const-string v2, ""

    .line 10
    iget-object v3, p1, Lf61;->f:Lt91;

    if-eqz v3, :cond_0

    .line 11
    iget-object v2, v3, Lt91;->e:Ljava/lang/String;

    .line 12
    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Banner view provided from "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already has a parent view. Removing its old parent."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lis0;->zzez(Ljava/lang/String;)V

    .line 13
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lj41;->f()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 14
    :cond_1
    sget-object v1, Ly40;->L4:Lo40;

    .line 15
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 16
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 17
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 18
    iget-object v2, p1, Lf61;->g:Lrc1;

    .line 19
    iget-object v2, v2, Lrc1;->e:Lvc1;

    .line 20
    iget-object v3, p0, Lkh2;->c:Lih2;

    .line 21
    iget-object v4, v3, Lih2;->d:Lw52;

    .line 22
    iget-object v2, v2, Lvc1;->a:Lrc1;

    .line 23
    iput-object v4, v2, Lrc1;->f:Lw52;

    .line 24
    iget-object v3, v3, Lih2;->e:Lq62;

    .line 25
    iput-object v3, v2, Lrc1;->g:Lq62;

    .line 26
    :cond_2
    iget-object v2, p0, Lkh2;->c:Lih2;

    .line 27
    iget-object v2, v2, Lih2;->f:Landroid/view/ViewGroup;

    .line 28
    invoke-virtual {p1}, Lj41;->f()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 29
    iget-object v2, p0, Lkh2;->a:Lc72;

    invoke-interface {v2, p1}, Lc72;->onSuccess(Ljava/lang/Object;)V

    .line 30
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 31
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 32
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 33
    iget-object v1, p0, Lkh2;->c:Lih2;

    .line 34
    iget-object v2, v1, Lih2;->b:Ljava/util/concurrent/Executor;

    .line 35
    iget-object v1, v1, Lih2;->d:Lw52;

    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    new-instance v3, Ljh2;

    invoke-direct {v3, v1}, Ljh2;-><init>(Lw52;)V

    .line 38
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 39
    :cond_3
    iget-object v1, p0, Lkh2;->c:Lih2;

    .line 40
    iget-object v1, v1, Lih2;->h:Lkc1;

    .line 41
    invoke-virtual {p1}, Lj41;->h()I

    move-result p1

    invoke-virtual {v1, p1}, Lkc1;->G0(I)V

    .line 42
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
