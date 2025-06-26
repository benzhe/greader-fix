.class public abstract Lwu2;
.super Lav2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwu2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InputT:",
        "Ljava/lang/Object;",
        "OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Lav2<",
        "TOutputT;>;"
    }
.end annotation


# static fields
.field public static final s:Ljava/util/logging/Logger;


# instance fields
.field public p:Lit2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lit2<",
            "+",
            "Law2<",
            "+TInputT;>;>;"
        }
    .end annotation
.end field

.field public final q:Z

.field public final r:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lwu2;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lwu2;->s:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lit2;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lit2<",
            "+",
            "Law2<",
            "+TInputT;>;>;ZZ)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lav2;-><init>(I)V

    .line 2
    iput-object p1, p0, Lwu2;->p:Lit2;

    .line 3
    iput-boolean p2, p0, Lwu2;->q:Z

    .line 4
    iput-boolean p3, p0, Lwu2;->r:Z

    return-void
.end method

.method public static G(Ljava/util/Set;Ljava/lang/Throwable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static I(Lwu2;Lit2;)V
    .locals 3

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lav2;->n:Lav2$a;

    invoke-virtual {v0, p0}, Lav2$a;->b(Lav2;)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Lit2;->iterator()Ljava/util/Iterator;

    move-result-object p1

    check-cast p1, Lhu2;

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {p0, v1, v0}, Lwu2;->E(ILjava/util/concurrent/Future;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p0}, Lav2;->B()V

    .line 7
    invoke-virtual {p0}, Lwu2;->K()V

    .line 8
    sget-object p1, Lwu2$a;->f:Lwu2$a;

    invoke-virtual {p0, p1}, Lwu2;->F(Lwu2$a;)V

    :cond_3
    return-void

    .line 9
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Less than 0 remaining futures"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static L(Ljava/lang/Throwable;)V
    .locals 7

    .line 1
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_0

    const-string v0, "Input Future failed with Error"

    goto :goto_0

    :cond_0
    const-string v0, "Got more than one input Future failure. Logging failures after the first"

    :goto_0
    move-object v5, v0

    .line 2
    sget-object v1, Lwu2;->s:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "com.google.common.util.concurrent.AggregateFuture"

    const-string v4, "log"

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final C(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lsu2;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lsu2;->a()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {p1, v0}, Lwu2;->G(Ljava/util/Set;Ljava/lang/Throwable;)Z

    :cond_0
    return-void
.end method

.method public final D(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p0, Lwu2;->q:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lsu2;->j(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lav2;->A()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lwu2;->G(Ljava/util/Set;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p1}, Lwu2;->L(Ljava/lang/Throwable;)V

    return-void

    .line 6
    :cond_0
    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_1

    .line 7
    invoke-static {p1}, Lwu2;->L(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final E(ILjava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Future<",
            "+TInputT;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p2}, Lvt2;->e(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lwu2;->H(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p0, p1}, Lwu2;->D(Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lwu2;->D(Ljava/lang/Throwable;)V

    return-void
.end method

.method public F(Lwu2$a;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lwu2;->p:Lit2;

    return-void
.end method

.method public abstract H(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITInputT;)V"
        }
    .end annotation
.end method

.method public final J()V
    .locals 6

    .line 1
    sget-object v0, Llv2;->e:Llv2;

    iget-object v1, p0, Lwu2;->p:Lit2;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lwu2;->K()V

    return-void

    .line 3
    :cond_0
    iget-boolean v1, p0, Lwu2;->q:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lwu2;->p:Lit2;

    invoke-virtual {v2}, Lit2;->iterator()Ljava/util/Iterator;

    move-result-object v2

    check-cast v2, Lhu2;

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Law2;

    add-int/lit8 v4, v1, 0x1

    .line 5
    new-instance v5, Lzu2;

    invoke-direct {v5, p0, v3, v1}, Lzu2;-><init>(Lwu2;Law2;I)V

    .line 6
    invoke-interface {v3, v5, v0}, Law2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move v1, v4

    goto :goto_0

    :cond_1
    return-void

    .line 7
    :cond_2
    iget-boolean v1, p0, Lwu2;->r:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lwu2;->p:Lit2;

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 8
    :goto_1
    new-instance v2, Lyu2;

    invoke-direct {v2, p0, v1}, Lyu2;-><init>(Lwu2;Lit2;)V

    .line 9
    iget-object v1, p0, Lwu2;->p:Lit2;

    invoke-virtual {v1}, Lit2;->iterator()Ljava/util/Iterator;

    move-result-object v1

    check-cast v1, Lhu2;

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Law2;

    .line 10
    invoke-interface {v3, v2, v0}, Law2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public abstract K()V
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lwu2;->p:Lit2;

    .line 2
    sget-object v1, Lwu2$a;->e:Lwu2$a;

    invoke-virtual {p0, v1}, Lwu2;->F(Lwu2$a;)V

    .line 3
    invoke-virtual {p0}, Lsu2;->isCancelled()Z

    move-result v1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lsu2;->l()Z

    move-result v1

    .line 5
    invoke-virtual {v0}, Lit2;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lhu2;

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 6
    invoke-interface {v2, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lwu2;->p:Lit2;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    const-string v2, "futures="

    invoke-static {v1, v2, v0}, Ljo;->O(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Lsu2;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
