.class public abstract Lhb7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llb7;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lhb7;
    .locals 1

    .line 1
    sget-object v0, Lxd7;->a:Lhb7;

    return-object v0
.end method


# virtual methods
.method public final a(Ljb7;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lhb7;->i(Ljb7;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 2
    invoke-static {p1}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 3
    invoke-static {p1}, Ln56;->z1(Ljava/lang/Throwable;)V

    .line 4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t pass out an exception otherwise..."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 6
    throw v0

    :catch_0
    move-exception p1

    .line 7
    throw p1
.end method

.method public final b(Llb7;)Lhb7;
    .locals 1

    const-string v0, "next is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lvd7;

    invoke-direct {v0, p0, p1}, Lvd7;-><init>(Llb7;Llb7;)V

    return-object v0
.end method

.method public final d(Lqc7;)Lhb7;
    .locals 7

    .line 1
    sget-object v2, Ldd7;->d:Ltc7;

    sget-object v6, Ldd7;->c:Lqc7;

    move-object v0, p0

    move-object v1, v2

    move-object v3, p1

    move-object v4, v6

    move-object v5, v6

    invoke-virtual/range {v0 .. v6}, Lhb7;->f(Ltc7;Ltc7;Lqc7;Lqc7;Lqc7;Lqc7;)Lhb7;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ltc7;)Lhb7;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltc7<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lhb7;"
        }
    .end annotation

    .line 1
    sget-object v1, Ldd7;->d:Ltc7;

    sget-object v6, Ldd7;->c:Lqc7;

    move-object v0, p0

    move-object v2, p1

    move-object v3, v6

    move-object v4, v6

    move-object v5, v6

    invoke-virtual/range {v0 .. v6}, Lhb7;->f(Ltc7;Ltc7;Lqc7;Lqc7;Lqc7;Lqc7;)Lhb7;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ltc7;Ltc7;Lqc7;Lqc7;Lqc7;Lqc7;)Lhb7;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltc7<",
            "-",
            "Lic7;",
            ">;",
            "Ltc7<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lqc7;",
            "Lqc7;",
            "Lqc7;",
            "Lqc7;",
            ")",
            "Lhb7;"
        }
    .end annotation

    const-string v0, "onError is null"

    .line 1
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 2
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lee7;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lee7;-><init>(Llb7;Ltc7;Ltc7;Lqc7;Lqc7;Lqc7;Lqc7;)V

    return-object v0
.end method

.method public final g(Lzb7;)Lhb7;
    .locals 1

    .line 1
    new-instance v0, Lce7;

    invoke-direct {v0, p0, p1}, Lce7;-><init>(Llb7;Lzb7;)V

    return-object v0
.end method

.method public final h()Lic7;
    .locals 1

    .line 1
    new-instance v0, Ltd7;

    invoke-direct {v0}, Ltd7;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lhb7;->a(Ljb7;)V

    return-object v0
.end method

.method public abstract i(Ljb7;)V
.end method

.method public final j(Lzb7;)Lhb7;
    .locals 1

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lge7;

    invoke-direct {v0, p0, p1}, Lge7;-><init>(Llb7;Lzb7;)V

    return-object v0
.end method

.method public final k()Lrb7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrb7<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lhd7;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Lhd7;

    invoke-interface {v0}, Lhd7;->b()Lrb7;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lhg7;

    invoke-direct {v0, p0}, Lhg7;-><init>(Llb7;)V

    return-object v0
.end method
