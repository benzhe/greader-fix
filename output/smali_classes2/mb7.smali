.class public abstract Lmb7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw38;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lw38<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "rx2.buffer-size"

    const/16 v1, 0x80

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lmb7;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static n(Ljava/lang/Object;)Lmb7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lmb7<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lze7;

    invoke-direct {v0, p0}, Lze7;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static q(II)Lmb7;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lmb7<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-ltz p1, :cond_3

    if-nez p1, :cond_0

    .line 1
    sget-object p0, Loe7;->f:Lmb7;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lmb7;->n(Ljava/lang/Object;)Lmb7;

    move-result-object p0

    return-object p0

    :cond_1
    int-to-long v0, p0

    add-int/lit8 v2, p1, -0x1

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 3
    new-instance v0, Ljf7;

    invoke-direct {v0, p0, p1}, Ljf7;-><init>(II)V

    return-object v0

    .line 4
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Integer overflow"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "count >= 0 required but it was "

    invoke-static {v0, p1}, Ljo;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static u(JLjava/util/concurrent/TimeUnit;)Lmb7;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lmb7<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lej7;->a:Lzb7;

    const-string v1, "unit is null"

    .line 2
    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "scheduler is null"

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v1, Lvf7;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-direct {v1, p0, p1, p2, v0}, Lvf7;-><init>(JLjava/util/concurrent/TimeUnit;Lzb7;)V

    return-object v1
.end method


# virtual methods
.method public final i(Lx38;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lpb7;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lpb7;

    invoke-virtual {p0, p1}, Lmb7;->s(Lpb7;)V

    goto :goto_0

    :cond_0
    const-string v0, "s is null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lii7;

    invoke-direct {v0, p1}, Lii7;-><init>(Lx38;)V

    invoke-virtual {p0, v0}, Lmb7;->s(Lpb7;)V

    :goto_0
    return-void
.end method

.method public final j()Lac7;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lac7<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lne7;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, p0, v2, v3, v1}, Lne7;-><init>(Lmb7;JLjava/lang/Object;)V

    return-object v0
.end method

.method public final k(Luc7;ZII)Lmb7;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Luc7<",
            "-TT;+",
            "Lw38<",
            "+TR;>;>;ZII)",
            "Lmb7<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 2
    invoke-static {p3, v0}, Led7;->a(ILjava/lang/String;)I

    const-string v0, "bufferSize"

    .line 3
    invoke-static {p4, v0}, Led7;->a(ILjava/lang/String;)I

    .line 4
    instance-of v0, p0, Lld7;

    if-eqz v0, :cond_1

    .line 5
    move-object p2, p0

    check-cast p2, Lld7;

    invoke-interface {p2}, Lld7;->call()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 6
    sget-object p1, Loe7;->f:Lmb7;

    return-object p1

    .line 7
    :cond_0
    new-instance p3, Lqf7;

    invoke-direct {p3, p2, p1}, Lqf7;-><init>(Ljava/lang/Object;Luc7;)V

    return-object p3

    .line 8
    :cond_1
    new-instance v6, Lqe7;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lqe7;-><init>(Lmb7;Luc7;ZII)V

    return-object v6
.end method

.method public final l(Luc7;)Lmb7;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Luc7<",
            "-TT;+",
            "Lvb7<",
            "+TR;>;>;)",
            "Lmb7<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const v0, 0x7fffffff

    const-string v1, "maxConcurrency"

    .line 2
    invoke-static {v0, v1}, Led7;->a(ILjava/lang/String;)I

    .line 3
    new-instance v1, Lre7;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2, v0}, Lre7;-><init>(Lmb7;Luc7;ZI)V

    return-object v1
.end method

.method public final m(Luc7;)Lmb7;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Luc7<",
            "-TT;+",
            "Lec7<",
            "+TR;>;>;)",
            "Lmb7<",
            "TR;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    const-string v1, "maxConcurrency"

    .line 1
    invoke-static {v0, v1}, Led7;->a(ILjava/lang/String;)I

    .line 2
    new-instance v1, Lse7;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2, v0}, Lse7;-><init>(Lmb7;Luc7;ZI)V

    return-object v1
.end method

.method public final o(Lzb7;)Lmb7;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzb7;",
            ")",
            "Lmb7<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget v0, Lmb7;->e:I

    const-string v1, "scheduler is null"

    .line 2
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "bufferSize"

    .line 3
    invoke-static {v0, v1}, Led7;->a(ILjava/lang/String;)I

    .line 4
    new-instance v1, Lbf7;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2, v0}, Lbf7;-><init>(Lmb7;Lzb7;ZI)V

    return-object v1
.end method

.method public final p()Lpc7;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lpc7<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget v0, Lmb7;->e:I

    const-string v1, "bufferSize"

    .line 2
    invoke-static {v0, v1}, Led7;->a(ILjava/lang/String;)I

    .line 3
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 4
    new-instance v2, Lgf7$a;

    invoke-direct {v2, v1, v0}, Lgf7$a;-><init>(Ljava/util/concurrent/atomic/AtomicReference;I)V

    .line 5
    new-instance v3, Lgf7;

    invoke-direct {v3, v2, p0, v1, v0}, Lgf7;-><init>(Lw38;Lmb7;Ljava/util/concurrent/atomic/AtomicReference;I)V

    return-object v3
.end method

.method public final r(Ltc7;Ltc7;Lqc7;Ltc7;)Lic7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltc7<",
            "-TT;>;",
            "Ltc7<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lqc7;",
            "Ltc7<",
            "-",
            "Ly38;",
            ">;)",
            "Lic7;"
        }
    .end annotation

    const-string v0, "onNext is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 3
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lhi7;

    invoke-direct {v0, p1, p2, p3, p4}, Lhi7;-><init>(Ltc7;Ltc7;Lqc7;Ltc7;)V

    .line 5
    invoke-virtual {p0, v0}, Lmb7;->s(Lpb7;)V

    return-object v0
.end method

.method public final s(Lpb7;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpb7<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "s is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lmb7;->t(Lx38;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 4
    invoke-static {p1}, Ln56;->z1(Ljava/lang/Throwable;)V

    .line 5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t throw other exceptions due to RS"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 7
    throw v0

    :catch_0
    move-exception p1

    .line 8
    throw p1
.end method

.method public abstract t(Lx38;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public final v(Lw38;Lrc7;)Lmb7;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw38<",
            "+TU;>;",
            "Lrc7<",
            "-TT;-TU;+TR;>;)",
            "Lmb7<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v3, Ldd7$a;

    invoke-direct {v3, p2}, Ldd7$a;-><init>(Lrc7;)V

    .line 2
    sget v4, Lmb7;->e:I

    const/4 p2, 0x2

    new-array v1, p2, [Lw38;

    const/4 p2, 0x0

    aput-object p0, v1, p2

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "bufferSize"

    .line 3
    invoke-static {v4, p1}, Led7;->a(ILjava/lang/String;)I

    .line 4
    new-instance p1, Lxf7;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lxf7;-><init>([Lw38;Ljava/lang/Iterable;Luc7;IZ)V

    return-object p1
.end method
