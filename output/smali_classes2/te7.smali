.class public final Lte7;
.super Lhe7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lte7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lhe7<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final g:Luc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luc7<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final h:I


# direct methods
.method public constructor <init>(Lmb7;Luc7;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb7<",
            "TT;>;",
            "Luc7<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lhe7;-><init>(Lmb7;)V

    .line 2
    iput-object p2, p0, Lte7;->g:Luc7;

    .line 3
    iput p3, p0, Lte7;->h:I

    return-void
.end method


# virtual methods
.method public t(Lx38;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lmi7;->e:Lmi7;

    iget-object v1, p0, Lhe7;->f:Lmb7;

    instance-of v2, v1, Ljava/util/concurrent/Callable;

    if-eqz v2, :cond_1

    .line 2
    :try_start_0
    check-cast v1, Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 3
    invoke-interface {p1, v0}, Lx38;->e(Ly38;)V

    .line 4
    invoke-interface {p1}, Lx38;->a()V

    return-void

    .line 5
    :cond_0
    :try_start_1
    iget-object v2, p0, Lte7;->g:Luc7;

    invoke-interface {v2, v1}, Luc7;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 6
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    invoke-static {p1, v0}, Lve7;->w(Lx38;Ljava/util/Iterator;)V

    return-void

    :catchall_0
    move-exception v1

    .line 8
    invoke-static {v1}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 9
    invoke-interface {p1, v0}, Lx38;->e(Ly38;)V

    .line 10
    invoke-interface {p1, v1}, Lx38;->b(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception v1

    .line 11
    invoke-static {v1}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 12
    invoke-interface {p1, v0}, Lx38;->e(Ly38;)V

    .line 13
    invoke-interface {p1, v1}, Lx38;->b(Ljava/lang/Throwable;)V

    return-void

    .line 14
    :cond_1
    new-instance v0, Lte7$a;

    iget-object v2, p0, Lte7;->g:Luc7;

    iget v3, p0, Lte7;->h:I

    invoke-direct {v0, p1, v2, v3}, Lte7$a;-><init>(Lx38;Luc7;I)V

    invoke-virtual {v1, v0}, Lmb7;->s(Lpb7;)V

    return-void
.end method
