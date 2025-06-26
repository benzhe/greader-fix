.class public final Lqf7;
.super Lmb7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lmb7<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final g:Luc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luc7<",
            "-TT;+",
            "Lw38<",
            "+TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Luc7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Luc7<",
            "-TT;+",
            "Lw38<",
            "+TR;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lmb7;-><init>()V

    .line 2
    iput-object p1, p0, Lqf7;->f:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lqf7;->g:Luc7;

    return-void
.end method


# virtual methods
.method public t(Lx38;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lmi7;->e:Lmi7;

    :try_start_0
    iget-object v1, p0, Lqf7;->g:Luc7;

    iget-object v2, p0, Lqf7;->f:Ljava/lang/Object;

    invoke-interface {v1, v2}, Luc7;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The mapper returned a null Publisher"

    .line 2
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    check-cast v1, Lw38;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    instance-of v2, v1, Ljava/util/concurrent/Callable;

    if-eqz v2, :cond_1

    .line 5
    :try_start_1
    check-cast v1, Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 6
    invoke-interface {p1, v0}, Lx38;->e(Ly38;)V

    .line 7
    invoke-interface {p1}, Lx38;->a()V

    return-void

    .line 8
    :cond_0
    new-instance v0, Lni7;

    invoke-direct {v0, p1, v1}, Lni7;-><init>(Lx38;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lx38;->e(Ly38;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 9
    invoke-static {v1}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 10
    invoke-interface {p1, v0}, Lx38;->e(Ly38;)V

    .line 11
    invoke-interface {p1, v1}, Lx38;->b(Ljava/lang/Throwable;)V

    return-void

    .line 12
    :cond_1
    invoke-interface {v1, p1}, Lw38;->i(Lx38;)V

    :goto_0
    return-void

    :catchall_1
    move-exception v1

    .line 13
    invoke-interface {p1, v0}, Lx38;->e(Ly38;)V

    .line 14
    invoke-interface {p1, v1}, Lx38;->b(Ljava/lang/Throwable;)V

    return-void
.end method
