.class public abstract Lgg2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La72;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AppOpenAd:",
        "Lf61;",
        "AppOpenRequestComponent::",
        "Lt31<",
        "TAppOpenAd;>;AppOpenRequestComponentBuilder::",
        "Lk91<",
        "TAppOpenRequestComponent;>;>",
        "Ljava/lang/Object;",
        "La72<",
        "TAppOpenAd;>;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lsy0;

.field public final d:Lmg2;

.field public final e:Lli2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lli2<",
            "TAppOpenRequestComponent;TAppOpenAd;>;"
        }
    .end annotation
.end field

.field public final f:Landroid/view/ViewGroup;

.field public final g:Lnl2;

.field public h:Law2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Law2<",
            "TAppOpenAd;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lsy0;Lli2;Lmg2;Lnl2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lsy0;",
            "Lli2<",
            "TAppOpenRequestComponent;TAppOpenAd;>;",
            "Lmg2;",
            "Lnl2;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lgg2;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lgg2;->b:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lgg2;->c:Lsy0;

    .line 5
    iput-object p4, p0, Lgg2;->e:Lli2;

    .line 6
    iput-object p5, p0, Lgg2;->d:Lmg2;

    .line 7
    iput-object p6, p0, Lgg2;->g:Lnl2;

    .line 8
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lgg2;->f:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Lz62;Lc72;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzvq;",
            "Ljava/lang/String;",
            "Lz62;",
            "Lc72<",
            "-TAppOpenAd;>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string p3, "loadAd must be called on the main UI thread."

    .line 1
    invoke-static {p3}, Lbi;->f(Ljava/lang/String;)V

    const/4 p3, 0x0

    if-nez p2, :cond_0

    const-string p1, "Ad unit ID should not be null for app open ad."

    .line 2
    invoke-static {p1}, Lis0;->zzex(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lgg2;->b:Ljava/util/concurrent/Executor;

    new-instance p2, Ljg2;

    invoke-direct {p2, p0}, Ljg2;-><init>(Lgg2;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return p3

    .line 5
    :cond_0
    :try_start_1
    iget-object v0, p0, Lgg2;->h:Law2;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 6
    monitor-exit p0

    return p3

    .line 7
    :cond_1
    :try_start_2
    iget-object p3, p0, Lgg2;->a:Landroid/content/Context;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzvq;->j:Z

    invoke-static {p3, v0}, Lc50;->Q3(Landroid/content/Context;Z)V

    .line 8
    iget-object p3, p0, Lgg2;->g:Lnl2;

    .line 9
    iput-object p2, p3, Lnl2;->d:Ljava/lang/String;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvt;->L0()Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object p2

    .line 11
    iput-object p2, p3, Lnl2;->b:Lcom/google/android/gms/internal/ads/zzvt;

    .line 12
    iput-object p1, p3, Lnl2;->a:Lcom/google/android/gms/internal/ads/zzvq;

    .line 13
    invoke-virtual {p3}, Lnl2;->a()Lll2;

    move-result-object p1

    .line 14
    new-instance p2, Lng2;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lng2;-><init>(Llg2;)V

    .line 15
    iput-object p1, p2, Lng2;->a:Lll2;

    .line 16
    iget-object p1, p0, Lgg2;->e:Lli2;

    new-instance p3, Lpi2;

    invoke-direct {p3, p2}, Lpi2;-><init>(Loi2;)V

    new-instance v0, Lhg2;

    invoke-direct {v0, p0}, Lhg2;-><init>(Lgg2;)V

    .line 17
    invoke-interface {p1, p3, v0}, Lli2;->a(Lpi2;Lni2;)Law2;

    move-result-object p1

    iput-object p1, p0, Lgg2;->h:Law2;

    .line 18
    new-instance p3, Llg2;

    invoke-direct {p3, p0, p4, p2}, Llg2;-><init>(Lgg2;Lc72;Lng2;)V

    iget-object p2, p0, Lgg2;->b:Ljava/util/concurrent/Executor;

    .line 19
    new-instance p4, Lsv2;

    invoke-direct {p4, p1, p3}, Lsv2;-><init>(Ljava/util/concurrent/Future;Lrv2;)V

    invoke-interface {p1, p4, p2}, Law2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x1

    .line 20
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract b(Li41;Ln91;Lyd1;)Lk91;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li41;",
            "Ln91;",
            "Lyd1;",
            ")TAppOpenRequestComponentBuilder;"
        }
    .end annotation
.end method

.method public final declared-synchronized c(Loi2;)Lk91;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Loi2;",
            ")TAppOpenRequestComponentBuilder;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    check-cast p1, Lng2;

    .line 2
    sget-object v0, Ly40;->M4:Lo40;

    .line 3
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 4
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Li41;

    iget-object v1, p0, Lgg2;->f:Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Li41;-><init>(Landroid/view/ViewGroup;)V

    new-instance v1, Ln91$a;

    invoke-direct {v1}, Ln91$a;-><init>()V

    iget-object v2, p0, Lgg2;->a:Landroid/content/Context;

    .line 7
    iput-object v2, v1, Ln91$a;->a:Landroid/content/Context;

    .line 8
    iget-object p1, p1, Lng2;->a:Lll2;

    .line 9
    iput-object p1, v1, Ln91$a;->b:Lll2;

    .line 10
    invoke-virtual {v1}, Ln91$a;->a()Ln91;

    move-result-object p1

    new-instance v1, Lyd1$a;

    invoke-direct {v1}, Lyd1$a;-><init>()V

    .line 11
    invoke-virtual {v1}, Lyd1$a;->h()Lyd1;

    move-result-object v1

    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lgg2;->b(Li41;Ln91;Lyd1;)Lk91;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 13
    :cond_0
    :try_start_1
    iget-object v0, p0, Lgg2;->d:Lmg2;

    .line 14
    new-instance v1, Lmg2;

    iget-object v2, v0, Lmg2;->e:Lmm2;

    invoke-direct {v1, v2}, Lmg2;-><init>(Lmm2;)V

    .line 15
    iput-object v0, v1, Lmg2;->l:Lmg2;

    .line 16
    new-instance v0, Lyd1$a;

    invoke-direct {v0}, Lyd1$a;-><init>()V

    .line 17
    iget-object v2, p0, Lgg2;->b:Ljava/util/concurrent/Executor;

    .line 18
    iget-object v3, v0, Lyd1$a;->g:Ljava/util/Set;

    new-instance v4, Lsf1;

    invoke-direct {v4, v1, v2}, Lsf1;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v2, p0, Lgg2;->b:Ljava/util/concurrent/Executor;

    .line 20
    iget-object v3, v0, Lyd1$a;->e:Ljava/util/Set;

    new-instance v4, Lsf1;

    invoke-direct {v4, v1, v2}, Lsf1;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v2, p0, Lgg2;->b:Ljava/util/concurrent/Executor;

    .line 22
    iget-object v3, v0, Lyd1$a;->l:Ljava/util/Set;

    new-instance v4, Lsf1;

    invoke-direct {v4, v1, v2}, Lsf1;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v2, p0, Lgg2;->b:Ljava/util/concurrent/Executor;

    .line 24
    iget-object v3, v0, Lyd1$a;->k:Ljava/util/Set;

    new-instance v4, Lsf1;

    invoke-direct {v4, v1, v2}, Lsf1;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 25
    iput-object v1, v0, Lyd1$a;->m:Lmi2;

    .line 26
    new-instance v1, Li41;

    iget-object v2, p0, Lgg2;->f:Landroid/view/ViewGroup;

    invoke-direct {v1, v2}, Li41;-><init>(Landroid/view/ViewGroup;)V

    new-instance v2, Ln91$a;

    invoke-direct {v2}, Ln91$a;-><init>()V

    iget-object v3, p0, Lgg2;->a:Landroid/content/Context;

    .line 27
    iput-object v3, v2, Ln91$a;->a:Landroid/content/Context;

    .line 28
    iget-object p1, p1, Lng2;->a:Lll2;

    .line 29
    iput-object p1, v2, Ln91$a;->b:Lll2;

    .line 30
    invoke-virtual {v2}, Ln91$a;->a()Ln91;

    move-result-object p1

    .line 31
    invoke-virtual {v0}, Lyd1$a;->h()Lyd1;

    move-result-object v0

    .line 32
    invoke-virtual {p0, v1, p1, v0}, Lgg2;->b(Li41;Ln91;Lyd1;)Lk91;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final isLoading()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgg2;->h:Law2;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
