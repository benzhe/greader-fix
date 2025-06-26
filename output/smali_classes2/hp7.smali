.class public final Lhp7;
.super Ljp7;
.source "SourceFile"

# interfaces
.implements Lwk7;
.implements Lpk7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljp7<",
        "TT;>;",
        "Lwk7;",
        "Lpk7<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _reusableCancellableContinuation:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public final i:Lwk7;

.field public final j:Ljava/lang/Object;

.field public final k:Lcp7;

.field public final l:Lpk7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpk7<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Lhp7;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_reusableCancellableContinuation"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lhp7;->m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lcp7;Lpk7;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcp7;",
            "Lpk7<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ljp7;-><init>(I)V

    iput-object p1, p0, Lhp7;->k:Lcp7;

    iput-object p2, p0, Lhp7;->l:Lpk7;

    .line 2
    sget-object p1, Lip7;->a:Lyq7;

    iput-object p1, p0, Lhp7;->h:Ljava/lang/Object;

    .line 3
    instance-of p1, p2, Lwk7;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object p2, v1

    :cond_0
    check-cast p2, Lwk7;

    iput-object p2, p0, Lhp7;->i:Lwk7;

    .line 4
    invoke-virtual {p0}, Lhp7;->getContext()Lrk7;

    move-result-object p1

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Lk;->b:Ltl7;

    invoke-interface {p1, p2, v0}, Lrk7;->m(Ljava/lang/Object;Ltl7;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lim7;->c(Ljava/lang/Object;)V

    .line 6
    iput-object p1, p0, Lhp7;->j:Ljava/lang/Object;

    .line 7
    iput-object v1, p0, Lhp7;->_reusableCancellableContinuation:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public c()Lpk7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lpk7<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method

.method public f()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lhp7;->h:Ljava/lang/Object;

    .line 2
    sget-boolean v1, Lfp7;->a:Z

    .line 3
    sget-object v1, Lip7;->a:Lyq7;

    iput-object v1, p0, Lhp7;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public final g(Loo7;)Ljava/lang/Throwable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Loo7<",
            "*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lhp7;->_reusableCancellableContinuation:Ljava/lang/Object;

    .line 2
    sget-object v1, Lip7;->b:Lyq7;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 3
    sget-object v0, Lhp7;->m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v2

    :cond_1
    if-nez v0, :cond_2

    return-object v2

    .line 4
    :cond_2
    instance-of p1, v0, Ljava/lang/Throwable;

    if-eqz p1, :cond_4

    .line 5
    sget-object p1, Lhp7;->m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    .line 7
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inconsistent state "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCallerFrame()Lwk7;
    .locals 1

    .line 1
    iget-object v0, p0, Lhp7;->i:Lwk7;

    return-object v0
.end method

.method public getContext()Lrk7;
    .locals 1

    iget-object v0, p0, Lhp7;->l:Lpk7;

    invoke-interface {v0}, Lpk7;->getContext()Lrk7;

    move-result-object v0

    return-object v0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final h()Lpo7;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lpo7<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhp7;->_reusableCancellableContinuation:Ljava/lang/Object;

    instance-of v1, v0, Lpo7;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lpo7;

    return-object v0
.end method

.method public final i(Lpo7;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpo7<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhp7;->_reusableCancellableContinuation:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    instance-of v2, v0, Lpo7;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v3

    :cond_2
    return v1
.end method

.method public final j(Ljava/lang/Throwable;)Z
    .locals 4

    .line 1
    :cond_0
    iget-object v0, p0, Lhp7;->_reusableCancellableContinuation:Ljava/lang/Object;

    .line 2
    sget-object v1, Lip7;->b:Lyq7;

    invoke-static {v0, v1}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 3
    sget-object v0, Lhp7;->m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    .line 4
    :cond_1
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    return v3

    .line 5
    :cond_2
    sget-object v1, Lhp7;->m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lhp7;->l:Lpk7;

    invoke-interface {v0}, Lpk7;->getContext()Lrk7;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lsj7;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v3, p1

    goto :goto_0

    :cond_0
    new-instance v3, Luo7;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v2, v4}, Luo7;-><init>(Ljava/lang/Throwable;ZI)V

    .line 3
    :goto_0
    iget-object v1, p0, Lhp7;->k:Lcp7;

    invoke-virtual {v1, v0}, Lcp7;->w(Lrk7;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iput-object v3, p0, Lhp7;->h:Ljava/lang/Object;

    .line 5
    iput v2, p0, Ljp7;->g:I

    .line 6
    iget-object p1, p0, Lhp7;->k:Lcp7;

    invoke-virtual {p1, v0, p0}, Lcp7;->t(Lrk7;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 7
    :cond_1
    sget-object v0, Liq7;->b:Liq7;

    invoke-static {}, Liq7;->a()Lnp7;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lnp7;->I()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    iput-object v3, p0, Lhp7;->h:Ljava/lang/Object;

    .line 10
    iput v2, p0, Ljp7;->g:I

    .line 11
    invoke-virtual {v0, p0}, Lnp7;->E(Ljp7;)V

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Lnp7;->F(Z)V

    .line 13
    :try_start_0
    invoke-virtual {p0}, Lhp7;->getContext()Lrk7;

    move-result-object v2

    iget-object v3, p0, Lhp7;->j:Ljava/lang/Object;

    .line 14
    invoke-static {v2, v3}, Lk;->b(Lrk7;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    :try_start_1
    iget-object v4, p0, Lhp7;->l:Lpk7;

    invoke-interface {v4, p1}, Lpk7;->resumeWith(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :try_start_2
    invoke-static {v2, v3}, Lk;->a(Lrk7;Ljava/lang/Object;)V

    .line 17
    :cond_3
    invoke-virtual {v0}, Lnp7;->L()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 18
    invoke-static {v2, v3}, Lk;->a(Lrk7;Ljava/lang/Object;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    const/4 v2, 0x0

    .line 19
    :try_start_3
    invoke-virtual {p0, p1, v2}, Ljp7;->e(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 20
    :goto_1
    invoke-virtual {v0, v1}, Lnp7;->x(Z)V

    :goto_2
    return-void

    :catchall_2
    move-exception p1

    invoke-virtual {v0, v1}, Lnp7;->x(Z)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "DispatchedContinuation["

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lhp7;->k:Lcp7;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lhp7;->l:Lpk7;

    invoke-static {v1}, Ln56;->s2(Lpk7;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
