.class public Lt57$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz57;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt57;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:La37$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La37$a<",
            "TRespT;>;"
        }
    .end annotation
.end field

.field public b:Z

.field public final synthetic c:Lt57;


# direct methods
.method public constructor <init>(Lt57;La37$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La37$a<",
            "TRespT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lt57$b;->c:Lt57;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "observer"

    .line 2
    invoke-static {p2, p1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lt57$b;->a:La37$a;

    return-void
.end method

.method public static f(Lt57$b;Lx47;Li47;)V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lt57$b;->b:Z

    .line 2
    iget-object v1, p0, Lt57$b;->c:Lt57;

    .line 3
    iput-boolean v0, v1, Lt57;->j:Z

    .line 4
    :try_start_0
    iget-object v1, p0, Lt57$b;->c:Lt57;

    iget-object v2, p0, Lt57$b;->a:La37$a;

    .line 5
    iget-boolean v3, v1, Lt57;->u:Z

    if-nez v3, :cond_0

    .line 6
    iput-boolean v0, v1, Lt57;->u:Z

    .line 7
    invoke-virtual {v2, p1, p2}, La37$a;->a(Lx47;Li47;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_0
    iget-object p2, p0, Lt57$b;->c:Lt57;

    .line 9
    invoke-virtual {p2}, Lt57;->i()V

    .line 10
    iget-object p0, p0, Lt57$b;->c:Lt57;

    .line 11
    iget-object p0, p0, Lt57;->d:Lq57;

    .line 12
    invoke-virtual {p1}, Lx47;->f()Z

    move-result p1

    invoke-virtual {p0, p1}, Lq57;->a(Z)V

    return-void

    :catchall_0
    move-exception p2

    .line 13
    iget-object v0, p0, Lt57$b;->c:Lt57;

    .line 14
    invoke-virtual {v0}, Lt57;->i()V

    .line 15
    iget-object p0, p0, Lt57$b;->c:Lt57;

    .line 16
    iget-object p0, p0, Lt57;->d:Lq57;

    .line 17
    invoke-virtual {p1}, Lx47;->f()Z

    move-result p1

    invoke-virtual {p0, p1}, Lq57;->a(Z)V

    throw p2
.end method


# virtual methods
.method public a(Lc97$a;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lt57$b;->c:Lt57;

    .line 2
    iget-object v0, v0, Lt57;->b:Lfb7;

    .line 3
    sget-object v0, Leb7;->a:Lcb7;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Leb7;->a()Ldb7;

    sget-object v1, Lcb7;->b:Ldb7;

    .line 6
    :try_start_0
    iget-object v2, p0, Lt57$b;->c:Lt57;

    .line 7
    iget-object v2, v2, Lt57;->c:Ljava/util/concurrent/Executor;

    .line 8
    new-instance v3, Lt57$b$b;

    invoke-direct {v3, p0, v1, p1}, Lt57$b$b;-><init>(Lt57$b;Ldb7;Lc97$a;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object p1, p0, Lt57$b;->c:Lt57;

    .line 10
    iget-object p1, p1, Lt57;->b:Lfb7;

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    .line 12
    iget-object v0, p0, Lt57$b;->c:Lt57;

    .line 13
    iget-object v0, v0, Lt57;->b:Lfb7;

    .line 14
    sget-object v0, Leb7;->a:Lcb7;

    .line 15
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    throw p1
.end method

.method public b(Lx47;Li47;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lt57$b;->c:Lt57;

    .line 2
    iget-object v0, v0, Lt57;->b:Lfb7;

    .line 3
    sget-object v0, Leb7;->a:Lcb7;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lt57$b;->g(Lx47;Li47;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p1, p0, Lt57$b;->c:Lt57;

    .line 7
    iget-object p1, p1, Lt57;->b:Lfb7;

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    .line 9
    iget-object p2, p0, Lt57$b;->c:Lt57;

    .line 10
    iget-object p2, p2, Lt57;->b:Lfb7;

    .line 11
    sget-object p2, Leb7;->a:Lcb7;

    .line 12
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    throw p1
.end method

.method public c(Li47;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lt57$b;->c:Lt57;

    .line 2
    iget-object v0, v0, Lt57;->b:Lfb7;

    .line 3
    sget-object v0, Leb7;->a:Lcb7;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Leb7;->a()Ldb7;

    sget-object v1, Lcb7;->b:Ldb7;

    .line 6
    :try_start_0
    iget-object v2, p0, Lt57$b;->c:Lt57;

    .line 7
    iget-object v2, v2, Lt57;->c:Ljava/util/concurrent/Executor;

    .line 8
    new-instance v3, Lt57$b$a;

    invoke-direct {v3, p0, v1, p1}, Lt57$b$a;-><init>(Lt57$b;Ldb7;Li47;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object p1, p0, Lt57$b;->c:Lt57;

    .line 10
    iget-object p1, p1, Lt57;->b:Lfb7;

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    .line 12
    iget-object v0, p0, Lt57$b;->c:Lt57;

    .line 13
    iget-object v0, v0, Lt57;->b:Lfb7;

    .line 14
    sget-object v0, Leb7;->a:Lcb7;

    .line 15
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    throw p1
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lt57$b;->c:Lt57;

    .line 2
    iget-object v0, v0, Lt57;->a:Lj47;

    .line 3
    iget-object v0, v0, Lj47;->a:Lj47$d;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lj47$d;->e:Lj47$d;

    if-eq v0, v1, :cond_1

    sget-object v1, Lj47$d;->g:Lj47$d;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lt57$b;->c:Lt57;

    .line 7
    iget-object v0, v0, Lt57;->b:Lfb7;

    .line 8
    sget-object v0, Leb7;->a:Lcb7;

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Leb7;->a()Ldb7;

    sget-object v0, Lcb7;->b:Ldb7;

    .line 11
    :try_start_0
    iget-object v1, p0, Lt57$b;->c:Lt57;

    .line 12
    iget-object v1, v1, Lt57;->c:Ljava/util/concurrent/Executor;

    .line 13
    new-instance v2, Lt57$b$c;

    invoke-direct {v2, p0, v0}, Lt57$b$c;-><init>(Lt57$b;Ldb7;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object v0, p0, Lt57$b;->c:Lt57;

    .line 15
    iget-object v0, v0, Lt57;->b:Lfb7;

    return-void

    :catchall_0
    move-exception v0

    .line 16
    iget-object v1, p0, Lt57$b;->c:Lt57;

    .line 17
    iget-object v1, v1, Lt57;->b:Lfb7;

    .line 18
    sget-object v1, Leb7;->a:Lcb7;

    .line 19
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    throw v0
.end method

.method public e(Lx47;Lz57$a;Li47;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lt57$b;->c:Lt57;

    .line 2
    iget-object p2, p2, Lt57;->b:Lfb7;

    .line 3
    sget-object p2, Leb7;->a:Lcb7;

    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lt57$b;->g(Lx47;Li47;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p1, p0, Lt57$b;->c:Lt57;

    .line 7
    iget-object p1, p1, Lt57;->b:Lfb7;

    .line 8
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    .line 9
    iget-object p2, p0, Lt57$b;->c:Lt57;

    .line 10
    iget-object p2, p2, Lt57;->b:Lfb7;

    .line 11
    sget-object p2, Leb7;->a:Lcb7;

    .line 12
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    throw p1
.end method

.method public final g(Lx47;Li47;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lt57$b;->c:Lt57;

    .line 2
    invoke-virtual {v0}, Lt57;->h()Lm37;

    move-result-object v0

    .line 3
    iget-object v1, p1, Lx47;->a:Lx47$b;

    .line 4
    sget-object v2, Lx47$b;->h:Lx47$b;

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lm37;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    new-instance p1, Lc77;

    invoke-direct {p1}, Lc77;-><init>()V

    .line 7
    iget-object p2, p0, Lt57$b;->c:Lt57;

    .line 8
    iget-object p2, p2, Lt57;->i:Ly57;

    .line 9
    invoke-interface {p2, p1}, Ly57;->h(Lc77;)V

    .line 10
    sget-object p2, Lx47;->i:Lx47;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClientCall was cancelled at or after deadline. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lx47;->b(Ljava/lang/String;)Lx47;

    move-result-object p1

    .line 11
    new-instance p2, Li47;

    invoke-direct {p2}, Li47;-><init>()V

    .line 12
    :cond_0
    invoke-static {}, Leb7;->a()Ldb7;

    sget-object v0, Lcb7;->b:Ldb7;

    .line 13
    iget-object v1, p0, Lt57$b;->c:Lt57;

    .line 14
    iget-object v1, v1, Lt57;->c:Ljava/util/concurrent/Executor;

    .line 15
    new-instance v2, Lx57;

    invoke-direct {v2, p0, v0, p1, p2}, Lx57;-><init>(Lt57$b;Ldb7;Lx47;Li47;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
