.class public abstract Lrb7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvb7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lvb7<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static i(Ljava/lang/Object;)Lrb7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrb7<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lkg7;

    invoke-direct {v0, p0}, Lkg7;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ltb7;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltb7<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observer is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lrb7;->m(Ltb7;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "subscribeActual failed"

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

.method public final b(Ljava/lang/Object;)Lrb7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lrb7<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "defaultItem is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lkg7;

    invoke-direct {v0, p1}, Lkg7;-><init>(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, v0}, Lrb7;->o(Lvb7;)Lrb7;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ltc7;)Lrb7;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltc7<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrb7<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v8, Log7;

    .line 2
    sget-object v3, Ldd7;->d:Ltc7;

    .line 3
    sget-object v7, Ldd7;->c:Lqc7;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v3

    move-object v4, p1

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v7}, Log7;-><init>(Lvb7;Ltc7;Ltc7;Ltc7;Lqc7;Lqc7;Lqc7;)V

    return-object v8
.end method

.method public final e(Ltc7;)Lrb7;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltc7<",
            "-TT;>;)",
            "Lrb7<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v8, Log7;

    .line 2
    sget-object v4, Ldd7;->d:Ltc7;

    .line 3
    sget-object v7, Ldd7;->c:Lqc7;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v4

    move-object v3, p1

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v7}, Log7;-><init>(Lvb7;Ltc7;Ltc7;Ltc7;Lqc7;Lqc7;Lqc7;)V

    return-object v8
.end method

.method public final f(Lvc7;)Lrb7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvc7<",
            "-TT;>;)",
            "Lrb7<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcg7;

    invoke-direct {v0, p0, p1}, Lcg7;-><init>(Lvb7;Lvc7;)V

    return-object v0
.end method

.method public final g(Luc7;)Lrb7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Luc7<",
            "-TT;+",
            "Lvb7<",
            "+TR;>;>;)",
            "Lrb7<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lfg7;

    invoke-direct {v0, p0, p1}, Lfg7;-><init>(Lvb7;Luc7;)V

    return-object v0
.end method

.method public final h(Luc7;)Lhb7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luc7<",
            "-TT;+",
            "Llb7;",
            ">;)",
            "Lhb7;"
        }
    .end annotation

    .line 1
    new-instance v0, Leg7;

    invoke-direct {v0, p0, p1}, Leg7;-><init>(Lvb7;Luc7;)V

    return-object v0
.end method

.method public final j(Luc7;)Lrb7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Luc7<",
            "-TT;+TR;>;)",
            "Lrb7<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Llg7;

    invoke-direct {v0, p0, p1}, Llg7;-><init>(Lvb7;Luc7;)V

    return-object v0
.end method

.method public final k(Lzb7;)Lrb7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzb7;",
            ")",
            "Lrb7<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lmg7;

    invoke-direct {v0, p0, p1}, Lmg7;-><init>(Lvb7;Lzb7;)V

    return-object v0
.end method

.method public final l(Lvb7;)Lrb7;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvb7<",
            "+TT;>;)",
            "Lrb7<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ldd7$g;

    invoke-direct {v0, p1}, Ldd7$g;-><init>(Ljava/lang/Object;)V

    .line 2
    new-instance p1, Lng7;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v0, v1}, Lng7;-><init>(Lvb7;Luc7;Z)V

    return-object p1
.end method

.method public abstract m(Ltb7;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltb7<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public final n(Lzb7;)Lrb7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzb7;",
            ")",
            "Lrb7<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lpg7;

    invoke-direct {v0, p0, p1}, Lpg7;-><init>(Lvb7;Lzb7;)V

    return-object v0
.end method

.method public final o(Lvb7;)Lrb7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvb7<",
            "+TT;>;)",
            "Lrb7<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lqg7;

    invoke-direct {v0, p0, p1}, Lqg7;-><init>(Lvb7;Lvb7;)V

    return-object v0
.end method

.method public final p()Lmb7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmb7<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lgd7;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Lgd7;

    invoke-interface {v0}, Lgd7;->c()Lmb7;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lrg7;

    invoke-direct {v0, p0}, Lrg7;-><init>(Lvb7;)V

    return-object v0
.end method
