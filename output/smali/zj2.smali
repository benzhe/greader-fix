.class public final Lzj2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La72;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La72<",
        "Ldp1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lsy0;

.field public final d:Lej2;

.field public final e:Lli2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lli2<",
            "Lgp1;",
            "Ldp1;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lgl2;

.field public final g:Lnl2;

.field public h:Law2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Law2<",
            "Ldp1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lsy0;Lli2;Lej2;Lnl2;Lgl2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lsy0;",
            "Lli2<",
            "Lgp1;",
            "Ldp1;",
            ">;",
            "Lej2;",
            "Lnl2;",
            "Lgl2;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzj2;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lzj2;->b:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lzj2;->c:Lsy0;

    .line 5
    iput-object p4, p0, Lzj2;->e:Lli2;

    .line 6
    iput-object p5, p0, Lzj2;->d:Lej2;

    .line 7
    iput-object p6, p0, Lzj2;->g:Lnl2;

    .line 8
    iput-object p7, p0, Lzj2;->f:Lgl2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Lz62;Lc72;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzvq;",
            "Ljava/lang/String;",
            "Lz62;",
            "Lc72<",
            "-",
            "Ldp1;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzavt;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzavt;-><init>(Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;)V

    .line 2
    instance-of p1, p3, Lbk2;

    if-eqz p1, :cond_0

    .line 3
    check-cast p3, Lbk2;

    .line 4
    :cond_0
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzavt;->f:Ljava/lang/String;

    const/4 p2, 0x0

    if-nez p1, :cond_1

    const-string p1, "Ad unit ID should not be null for rewarded video ad."

    .line 5
    invoke-static {p1}, Lis0;->zzex(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lzj2;->b:Ljava/util/concurrent/Executor;

    new-instance p3, Ldk2;

    invoke-direct {p3, p0}, Ldk2;-><init>(Lzj2;)V

    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return p2

    .line 7
    :cond_1
    iget-object p1, p0, Lzj2;->h:Law2;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p1

    if-nez p1, :cond_2

    return p2

    .line 8
    :cond_2
    iget-object p1, p0, Lzj2;->a:Landroid/content/Context;

    iget-object p2, v0, Lcom/google/android/gms/internal/ads/zzavt;->e:Lcom/google/android/gms/internal/ads/zzvq;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzvq;->j:Z

    invoke-static {p1, p2}, Lc50;->Q3(Landroid/content/Context;Z)V

    .line 9
    iget-object p1, p0, Lzj2;->g:Lnl2;

    iget-object p2, v0, Lcom/google/android/gms/internal/ads/zzavt;->f:Ljava/lang/String;

    .line 10
    iput-object p2, p1, Lnl2;->d:Ljava/lang/String;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvt;->K0()Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object p2

    .line 12
    iput-object p2, p1, Lnl2;->b:Lcom/google/android/gms/internal/ads/zzvt;

    .line 13
    iget-object p2, v0, Lcom/google/android/gms/internal/ads/zzavt;->e:Lcom/google/android/gms/internal/ads/zzvq;

    .line 14
    iput-object p2, p1, Lnl2;->a:Lcom/google/android/gms/internal/ads/zzvq;

    .line 15
    invoke-virtual {p1}, Lnl2;->a()Lll2;

    move-result-object p1

    .line 16
    new-instance p2, Lgk2;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lgk2;-><init>(Lfk2;)V

    .line 17
    iput-object p1, p2, Lgk2;->a:Lll2;

    .line 18
    iget-object p1, p0, Lzj2;->e:Lli2;

    new-instance p3, Lpi2;

    invoke-direct {p3, p2}, Lpi2;-><init>(Loi2;)V

    new-instance v0, Lck2;

    invoke-direct {v0, p0}, Lck2;-><init>(Lzj2;)V

    .line 19
    invoke-interface {p1, p3, v0}, Lli2;->a(Lpi2;Lni2;)Law2;

    move-result-object p1

    iput-object p1, p0, Lzj2;->h:Law2;

    .line 20
    new-instance p3, Lfk2;

    invoke-direct {p3, p0, p4, p2}, Lfk2;-><init>(Lzj2;Lc72;Lgk2;)V

    iget-object p2, p0, Lzj2;->b:Ljava/util/concurrent/Executor;

    .line 21
    new-instance p4, Lsv2;

    invoke-direct {p4, p1, p3}, Lsv2;-><init>(Ljava/util/concurrent/Future;Lrv2;)V

    invoke-interface {p1, p4, p2}, Law2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final b(Loi2;)Lp01;
    .locals 3

    .line 1
    check-cast p1, Lgk2;

    .line 2
    iget-object v0, p0, Lzj2;->c:Lsy0;

    .line 3
    invoke-virtual {v0}, Lsy0;->t()Lp01;

    move-result-object v0

    new-instance v1, Ln91$a;

    invoke-direct {v1}, Ln91$a;-><init>()V

    iget-object v2, p0, Lzj2;->a:Landroid/content/Context;

    .line 4
    iput-object v2, v1, Ln91$a;->a:Landroid/content/Context;

    .line 5
    iget-object p1, p1, Lgk2;->a:Lll2;

    .line 6
    iput-object p1, v1, Ln91$a;->b:Lll2;

    const/4 p1, 0x0

    .line 7
    iput-object p1, v1, Ln91$a;->d:Ljava/lang/String;

    .line 8
    iget-object p1, p0, Lzj2;->f:Lgl2;

    .line 9
    iput-object p1, v1, Ln91$a;->e:Lgl2;

    .line 10
    invoke-virtual {v1}, Ln91$a;->a()Ln91;

    move-result-object p1

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iput-object p1, v0, Lp01;->b:Ln91;

    .line 13
    new-instance p1, Lyd1$a;

    invoke-direct {p1}, Lyd1$a;-><init>()V

    .line 14
    invoke-virtual {p1}, Lyd1$a;->h()Lyd1;

    move-result-object p1

    .line 15
    iput-object p1, v0, Lp01;->a:Lyd1;

    return-object v0
.end method

.method public final isLoading()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lzj2;->h:Law2;

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
