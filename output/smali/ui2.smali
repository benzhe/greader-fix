.class public final Lui2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La72;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La72<",
        "Lqg1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lsy0;

.field public final d:Lw52;

.field public final e:Lej2;

.field public f:Lt50;

.field public final g:Lnl2;

.field public h:Law2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Law2<",
            "Lqg1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lsy0;Lw52;Lej2;Lnl2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lui2;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lui2;->b:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lui2;->c:Lsy0;

    .line 5
    iput-object p4, p0, Lui2;->d:Lw52;

    .line 6
    iput-object p6, p0, Lui2;->g:Lnl2;

    .line 7
    iput-object p5, p0, Lui2;->e:Lej2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Lz62;Lc72;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzvq;",
            "Ljava/lang/String;",
            "Lz62;",
            "Lc72<",
            "-",
            "Lqg1;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string p1, "Ad unit ID should not be null for interstitial ad."

    .line 1
    invoke-static {p1}, Lis0;->zzex(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lui2;->b:Ljava/util/concurrent/Executor;

    new-instance p2, Lxi2;

    invoke-direct {p2, p0}, Lxi2;-><init>(Lui2;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lui2;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 4
    :cond_1
    instance-of v0, p3, Lvi2;

    if-eqz v0, :cond_2

    .line 5
    check-cast p3, Lvi2;

    iget-object p3, p3, Lvi2;->a:Lcom/google/android/gms/internal/ads/zzvt;

    goto :goto_0

    .line 6
    :cond_2
    new-instance p3, Lcom/google/android/gms/internal/ads/zzvt;

    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/zzvt;-><init>()V

    .line 7
    :goto_0
    iget-object v0, p0, Lui2;->g:Lnl2;

    .line 8
    iput-object p2, v0, Lnl2;->d:Ljava/lang/String;

    .line 9
    iput-object p3, v0, Lnl2;->b:Lcom/google/android/gms/internal/ads/zzvt;

    .line 10
    iput-object p1, v0, Lnl2;->a:Lcom/google/android/gms/internal/ads/zzvq;

    .line 11
    invoke-virtual {v0}, Lnl2;->a()Lll2;

    move-result-object p1

    .line 12
    sget-object p2, Ly40;->N4:Lo40;

    .line 13
    sget-object p3, Los3;->j:Los3;

    iget-object p3, p3, Los3;->f:Lu40;

    .line 14
    invoke-virtual {p3, p2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p2

    .line 15
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 16
    iget-object p2, p0, Lui2;->c:Lsy0;

    .line 17
    invoke-virtual {p2}, Lsy0;->q()Lk01;

    move-result-object p2

    new-instance p3, Ln91$a;

    invoke-direct {p3}, Ln91$a;-><init>()V

    iget-object v0, p0, Lui2;->a:Landroid/content/Context;

    .line 18
    iput-object v0, p3, Ln91$a;->a:Landroid/content/Context;

    .line 19
    iput-object p1, p3, Ln91$a;->b:Lll2;

    .line 20
    invoke-virtual {p3}, Ln91$a;->a()Ln91;

    move-result-object p1

    .line 21
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iput-object p1, p2, Lk01;->b:Ln91;

    .line 23
    new-instance p1, Lyd1$a;

    invoke-direct {p1}, Lyd1$a;-><init>()V

    iget-object p3, p0, Lui2;->d:Lw52;

    iget-object v0, p0, Lui2;->b:Ljava/util/concurrent/Executor;

    .line 24
    invoke-virtual {p1, p3, v0}, Lyd1$a;->f(Lsc1;Ljava/util/concurrent/Executor;)Lyd1$a;

    iget-object p3, p0, Lui2;->d:Lw52;

    iget-object v0, p0, Lui2;->b:Ljava/util/concurrent/Executor;

    .line 25
    invoke-virtual {p1, p3, v0}, Lyd1$a;->a(Lcom/google/android/gms/ads/doubleclick/AppEventListener;Ljava/util/concurrent/Executor;)Lyd1$a;

    .line 26
    invoke-virtual {p1}, Lyd1$a;->h()Lyd1;

    move-result-object p1

    .line 27
    iput-object p1, p2, Lk01;->a:Lyd1;

    .line 28
    new-instance p1, Lx42;

    iget-object p3, p0, Lui2;->f:Lt50;

    invoke-direct {p1, p3}, Lx42;-><init>(Lt50;)V

    .line 29
    iput-object p1, p2, Lk01;->c:Lx42;

    .line 30
    invoke-virtual {p2}, Lk01;->e()Loh1;

    move-result-object p1

    goto/16 :goto_1

    .line 31
    :cond_3
    new-instance p2, Lyd1$a;

    invoke-direct {p2}, Lyd1$a;-><init>()V

    .line 32
    iget-object p3, p0, Lui2;->e:Lej2;

    if-eqz p3, :cond_4

    .line 33
    iget-object v0, p0, Lui2;->b:Ljava/util/concurrent/Executor;

    .line 34
    iget-object v1, p2, Lyd1$a;->c:Ljava/util/Set;

    new-instance v2, Lsf1;

    invoke-direct {v2, p3, v0}, Lsf1;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object p3, p0, Lui2;->e:Lej2;

    iget-object v0, p0, Lui2;->b:Ljava/util/concurrent/Executor;

    .line 36
    invoke-virtual {p2, p3, v0}, Lyd1$a;->d(Lob1;Ljava/util/concurrent/Executor;)Lyd1$a;

    iget-object p3, p0, Lui2;->e:Lej2;

    iget-object v0, p0, Lui2;->b:Ljava/util/concurrent/Executor;

    .line 37
    invoke-virtual {p2, p3, v0}, Lyd1$a;->c(Lda1;Ljava/util/concurrent/Executor;)Lyd1$a;

    .line 38
    :cond_4
    iget-object p3, p0, Lui2;->c:Lsy0;

    .line 39
    invoke-virtual {p3}, Lsy0;->q()Lk01;

    move-result-object p3

    new-instance v0, Ln91$a;

    invoke-direct {v0}, Ln91$a;-><init>()V

    iget-object v1, p0, Lui2;->a:Landroid/content/Context;

    .line 40
    iput-object v1, v0, Ln91$a;->a:Landroid/content/Context;

    .line 41
    iput-object p1, v0, Ln91$a;->b:Lll2;

    .line 42
    invoke-virtual {v0}, Ln91$a;->a()Ln91;

    move-result-object p1

    .line 43
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iput-object p1, p3, Lk01;->b:Ln91;

    .line 45
    iget-object p1, p0, Lui2;->d:Lw52;

    iget-object v0, p0, Lui2;->b:Ljava/util/concurrent/Executor;

    .line 46
    invoke-virtual {p2, p1, v0}, Lyd1$a;->f(Lsc1;Ljava/util/concurrent/Executor;)Lyd1$a;

    iget-object p1, p0, Lui2;->d:Lw52;

    iget-object v0, p0, Lui2;->b:Ljava/util/concurrent/Executor;

    .line 47
    invoke-virtual {p2, p1, v0}, Lyd1$a;->b(Lca1;Ljava/util/concurrent/Executor;)Lyd1$a;

    iget-object p1, p0, Lui2;->d:Lw52;

    iget-object v0, p0, Lui2;->b:Ljava/util/concurrent/Executor;

    .line 48
    invoke-virtual {p2, p1, v0}, Lyd1$a;->d(Lob1;Ljava/util/concurrent/Executor;)Lyd1$a;

    iget-object p1, p0, Lui2;->d:Lw52;

    iget-object v0, p0, Lui2;->b:Ljava/util/concurrent/Executor;

    .line 49
    invoke-virtual {p2, p1, v0}, Lyd1$a;->c(Lda1;Ljava/util/concurrent/Executor;)Lyd1$a;

    iget-object p1, p0, Lui2;->d:Lw52;

    iget-object v0, p0, Lui2;->b:Ljava/util/concurrent/Executor;

    .line 50
    invoke-virtual {p2, p1, v0}, Lyd1$a;->g(Ler3;Ljava/util/concurrent/Executor;)Lyd1$a;

    iget-object p1, p0, Lui2;->d:Lw52;

    iget-object v0, p0, Lui2;->b:Ljava/util/concurrent/Executor;

    .line 51
    invoke-virtual {p2, p1, v0}, Lyd1$a;->a(Lcom/google/android/gms/ads/doubleclick/AppEventListener;Ljava/util/concurrent/Executor;)Lyd1$a;

    iget-object p1, p0, Lui2;->d:Lw52;

    iget-object v0, p0, Lui2;->b:Ljava/util/concurrent/Executor;

    .line 52
    invoke-virtual {p2, p1, v0}, Lyd1$a;->e(Lhc1;Ljava/util/concurrent/Executor;)Lyd1$a;

    iget-object p1, p0, Lui2;->d:Lw52;

    iget-object v0, p0, Lui2;->b:Ljava/util/concurrent/Executor;

    .line 53
    iget-object v1, p2, Lyd1$a;->j:Ljava/util/Set;

    new-instance v2, Lsf1;

    invoke-direct {v2, p1, v0}, Lsf1;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {p2}, Lyd1$a;->h()Lyd1;

    move-result-object p1

    .line 55
    iput-object p1, p3, Lk01;->a:Lyd1;

    .line 56
    new-instance p1, Lx42;

    iget-object p2, p0, Lui2;->f:Lt50;

    invoke-direct {p1, p2}, Lx42;-><init>(Lt50;)V

    .line 57
    iput-object p1, p3, Lk01;->c:Lx42;

    .line 58
    invoke-virtual {p3}, Lk01;->e()Loh1;

    move-result-object p1

    .line 59
    :goto_1
    invoke-virtual {p1}, Loh1;->b()Lh71;

    move-result-object p2

    invoke-virtual {p2}, Lh71;->b()Law2;

    move-result-object p2

    iput-object p2, p0, Lui2;->h:Law2;

    .line 60
    new-instance p3, Lwi2;

    invoke-direct {p3, p0, p4, p1}, Lwi2;-><init>(Lui2;Lc72;Loh1;)V

    iget-object p1, p0, Lui2;->b:Ljava/util/concurrent/Executor;

    .line 61
    new-instance p4, Lsv2;

    invoke-direct {p4, p2, p3}, Lsv2;-><init>(Ljava/util/concurrent/Future;Lrv2;)V

    check-cast p2, Llo2;

    .line 62
    iget-object p2, p2, Llo2;->g:Law2;

    invoke-interface {p2, p4, p1}, Law2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final isLoading()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lui2;->h:Law2;

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
