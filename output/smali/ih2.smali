.class public final Lih2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La72;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La72<",
        "Lj41;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lsy0;

.field public final d:Lw52;

.field public final e:Lq62;

.field public final f:Landroid/view/ViewGroup;

.field public g:Lt50;

.field public final h:Lkc1;

.field public final i:Lnl2;

.field public j:Law2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Law2<",
            "Lj41;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzvt;Lsy0;Lw52;Lq62;Lnl2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lih2;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lih2;->b:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p4, p0, Lih2;->c:Lsy0;

    .line 5
    iput-object p5, p0, Lih2;->d:Lw52;

    .line 6
    iput-object p6, p0, Lih2;->e:Lq62;

    .line 7
    iput-object p7, p0, Lih2;->i:Lnl2;

    .line 8
    invoke-virtual {p4}, Lsy0;->i()Lkc1;

    move-result-object p2

    iput-object p2, p0, Lih2;->h:Lkc1;

    .line 9
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lih2;->f:Landroid/view/ViewGroup;

    .line 10
    iput-object p3, p7, Lnl2;->b:Lcom/google/android/gms/internal/ads/zzvt;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Lz62;Lc72;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzvq;",
            "Ljava/lang/String;",
            "Lz62;",
            "Lc72<",
            "-",
            "Lj41;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p3, 0x0

    if-nez p2, :cond_0

    const-string p1, "Ad unit ID should not be null for banner ad."

    .line 1
    invoke-static {p1}, Lis0;->zzex(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lih2;->b:Ljava/util/concurrent/Executor;

    new-instance p2, Lhh2;

    invoke-direct {p2, p0}, Lhh2;-><init>(Lih2;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return p3

    .line 3
    :cond_0
    invoke-virtual {p0}, Lih2;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    return p3

    .line 4
    :cond_1
    iget-object v0, p0, Lih2;->i:Lnl2;

    .line 5
    iput-object p2, v0, Lnl2;->d:Ljava/lang/String;

    .line 6
    iput-object p1, v0, Lnl2;->a:Lcom/google/android/gms/internal/ads/zzvq;

    .line 7
    invoke-virtual {v0}, Lnl2;->a()Lll2;

    move-result-object p1

    .line 8
    sget-object p2, Ls60;->b:Le60;

    invoke-virtual {p2}, Le60;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    iget-object p2, p0, Lih2;->i:Lnl2;

    .line 9
    iget-object p2, p2, Lnl2;->b:Lcom/google/android/gms/internal/ads/zzvt;

    .line 10
    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzvt;->o:Z

    if-eqz p2, :cond_3

    .line 11
    iget-object p1, p0, Lih2;->d:Lw52;

    if-eqz p1, :cond_2

    .line 12
    sget-object p2, Ldm2;->k:Ldm2;

    .line 13
    invoke-static {p2, v0, v0}, Lc50;->x1(Ldm2;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvh;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object p2

    .line 14
    invoke-virtual {p1, p2}, Lw52;->Q(Lcom/google/android/gms/internal/ads/zzvh;)V

    :cond_2
    return p3

    .line 15
    :cond_3
    sget-object p2, Ly40;->L4:Lo40;

    .line 16
    sget-object p3, Los3;->j:Los3;

    iget-object p3, p3, Los3;->f:Lu40;

    .line 17
    invoke-virtual {p3, p2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p2

    .line 18
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 19
    iget-object p2, p0, Lih2;->c:Lsy0;

    .line 20
    invoke-virtual {p2}, Lsy0;->l()Lc01;

    move-result-object p2

    new-instance p3, Ln91$a;

    invoke-direct {p3}, Ln91$a;-><init>()V

    iget-object v1, p0, Lih2;->a:Landroid/content/Context;

    .line 21
    iput-object v1, p3, Ln91$a;->a:Landroid/content/Context;

    .line 22
    iput-object p1, p3, Ln91$a;->b:Lll2;

    .line 23
    invoke-virtual {p3}, Ln91$a;->a()Ln91;

    move-result-object p1

    .line 24
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iput-object p1, p2, Lc01;->b:Ln91;

    .line 26
    new-instance p1, Lyd1$a;

    invoke-direct {p1}, Lyd1$a;-><init>()V

    iget-object p3, p0, Lih2;->d:Lw52;

    iget-object v1, p0, Lih2;->b:Ljava/util/concurrent/Executor;

    .line 27
    invoke-virtual {p1, p3, v1}, Lyd1$a;->f(Lsc1;Ljava/util/concurrent/Executor;)Lyd1$a;

    iget-object p3, p0, Lih2;->d:Lw52;

    iget-object v1, p0, Lih2;->b:Ljava/util/concurrent/Executor;

    .line 28
    invoke-virtual {p1, p3, v1}, Lyd1$a;->a(Lcom/google/android/gms/ads/doubleclick/AppEventListener;Ljava/util/concurrent/Executor;)Lyd1$a;

    .line 29
    invoke-virtual {p1}, Lyd1$a;->h()Lyd1;

    move-result-object p1

    .line 30
    iput-object p1, p2, Lc01;->a:Lyd1;

    .line 31
    new-instance p1, Lx42;

    iget-object p3, p0, Lih2;->g:Lt50;

    invoke-direct {p1, p3}, Lx42;-><init>(Lt50;)V

    .line 32
    iput-object p1, p2, Lc01;->c:Lx42;

    .line 33
    new-instance p1, Lgi1;

    sget-object p3, Ldk1;->h:Ldk1;

    invoke-direct {p1, p3, v0}, Lgi1;-><init>(Ldk1;Lus3;)V

    .line 34
    iput-object p1, p2, Lc01;->f:Lgi1;

    .line 35
    new-instance p1, Lc61;

    iget-object p3, p0, Lih2;->h:Lkc1;

    invoke-direct {p1, p3}, Lc61;-><init>(Lkc1;)V

    .line 36
    iput-object p1, p2, Lc01;->d:Lc61;

    .line 37
    new-instance p1, Li41;

    iget-object p3, p0, Lih2;->f:Landroid/view/ViewGroup;

    invoke-direct {p1, p3}, Li41;-><init>(Landroid/view/ViewGroup;)V

    .line 38
    iput-object p1, p2, Lc01;->e:Li41;

    .line 39
    invoke-virtual {p2}, Lc01;->e()Lg51;

    move-result-object p1

    goto/16 :goto_0

    .line 40
    :cond_4
    iget-object p2, p0, Lih2;->c:Lsy0;

    .line 41
    invoke-virtual {p2}, Lsy0;->l()Lc01;

    move-result-object p2

    new-instance p3, Ln91$a;

    invoke-direct {p3}, Ln91$a;-><init>()V

    iget-object v1, p0, Lih2;->a:Landroid/content/Context;

    .line 42
    iput-object v1, p3, Ln91$a;->a:Landroid/content/Context;

    .line 43
    iput-object p1, p3, Ln91$a;->b:Lll2;

    .line 44
    invoke-virtual {p3}, Ln91$a;->a()Ln91;

    move-result-object p1

    .line 45
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iput-object p1, p2, Lc01;->b:Ln91;

    .line 47
    new-instance p1, Lyd1$a;

    invoke-direct {p1}, Lyd1$a;-><init>()V

    iget-object p3, p0, Lih2;->d:Lw52;

    iget-object v1, p0, Lih2;->b:Ljava/util/concurrent/Executor;

    .line 48
    invoke-virtual {p1, p3, v1}, Lyd1$a;->f(Lsc1;Ljava/util/concurrent/Executor;)Lyd1$a;

    iget-object p3, p0, Lih2;->d:Lw52;

    iget-object v1, p0, Lih2;->b:Ljava/util/concurrent/Executor;

    .line 49
    invoke-virtual {p1, p3, v1}, Lyd1$a;->g(Ler3;Ljava/util/concurrent/Executor;)Lyd1$a;

    iget-object p3, p0, Lih2;->e:Lq62;

    iget-object v1, p0, Lih2;->b:Ljava/util/concurrent/Executor;

    .line 50
    invoke-virtual {p1, p3, v1}, Lyd1$a;->g(Ler3;Ljava/util/concurrent/Executor;)Lyd1$a;

    iget-object p3, p0, Lih2;->d:Lw52;

    iget-object v1, p0, Lih2;->b:Ljava/util/concurrent/Executor;

    .line 51
    iget-object v2, p1, Lyd1$a;->d:Ljava/util/Set;

    new-instance v3, Lsf1;

    invoke-direct {v3, p3, v1}, Lsf1;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object p3, p0, Lih2;->d:Lw52;

    iget-object v1, p0, Lih2;->b:Ljava/util/concurrent/Executor;

    .line 53
    invoke-virtual {p1, p3, v1}, Lyd1$a;->b(Lca1;Ljava/util/concurrent/Executor;)Lyd1$a;

    iget-object p3, p0, Lih2;->d:Lw52;

    iget-object v1, p0, Lih2;->b:Ljava/util/concurrent/Executor;

    .line 54
    invoke-virtual {p1, p3, v1}, Lyd1$a;->d(Lob1;Ljava/util/concurrent/Executor;)Lyd1$a;

    iget-object p3, p0, Lih2;->d:Lw52;

    iget-object v1, p0, Lih2;->b:Ljava/util/concurrent/Executor;

    .line 55
    invoke-virtual {p1, p3, v1}, Lyd1$a;->c(Lda1;Ljava/util/concurrent/Executor;)Lyd1$a;

    iget-object p3, p0, Lih2;->d:Lw52;

    iget-object v1, p0, Lih2;->b:Ljava/util/concurrent/Executor;

    .line 56
    invoke-virtual {p1, p3, v1}, Lyd1$a;->a(Lcom/google/android/gms/ads/doubleclick/AppEventListener;Ljava/util/concurrent/Executor;)Lyd1$a;

    iget-object p3, p0, Lih2;->d:Lw52;

    iget-object v1, p0, Lih2;->b:Ljava/util/concurrent/Executor;

    .line 57
    invoke-virtual {p1, p3, v1}, Lyd1$a;->e(Lhc1;Ljava/util/concurrent/Executor;)Lyd1$a;

    .line 58
    invoke-virtual {p1}, Lyd1$a;->h()Lyd1;

    move-result-object p1

    .line 59
    iput-object p1, p2, Lc01;->a:Lyd1;

    .line 60
    new-instance p1, Lx42;

    iget-object p3, p0, Lih2;->g:Lt50;

    invoke-direct {p1, p3}, Lx42;-><init>(Lt50;)V

    .line 61
    iput-object p1, p2, Lc01;->c:Lx42;

    .line 62
    new-instance p1, Lgi1;

    sget-object p3, Ldk1;->h:Ldk1;

    invoke-direct {p1, p3, v0}, Lgi1;-><init>(Ldk1;Lus3;)V

    .line 63
    iput-object p1, p2, Lc01;->f:Lgi1;

    .line 64
    new-instance p1, Lc61;

    iget-object p3, p0, Lih2;->h:Lkc1;

    invoke-direct {p1, p3}, Lc61;-><init>(Lkc1;)V

    .line 65
    iput-object p1, p2, Lc01;->d:Lc61;

    .line 66
    new-instance p1, Li41;

    iget-object p3, p0, Lih2;->f:Landroid/view/ViewGroup;

    invoke-direct {p1, p3}, Li41;-><init>(Landroid/view/ViewGroup;)V

    .line 67
    iput-object p1, p2, Lc01;->e:Li41;

    .line 68
    invoke-virtual {p2}, Lc01;->e()Lg51;

    move-result-object p1

    .line 69
    :goto_0
    invoke-virtual {p1}, Lg51;->c()Lh71;

    move-result-object p2

    invoke-virtual {p2}, Lh71;->b()Law2;

    move-result-object p2

    iput-object p2, p0, Lih2;->j:Law2;

    .line 70
    new-instance p3, Lkh2;

    invoke-direct {p3, p0, p4, p1}, Lkh2;-><init>(Lih2;Lc72;Lg51;)V

    iget-object p1, p0, Lih2;->b:Ljava/util/concurrent/Executor;

    .line 71
    new-instance p4, Lsv2;

    invoke-direct {p4, p2, p3}, Lsv2;-><init>(Ljava/util/concurrent/Future;Lrv2;)V

    check-cast p2, Llo2;

    .line 72
    iget-object p2, p2, Llo2;->g:Law2;

    invoke-interface {p2, p4, p1}, Law2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final isLoading()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lih2;->j:Law2;

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
