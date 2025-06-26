.class public Lnv2;
.super Lsu2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lnv2<",
        "TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsu2;-><init>()V

    return-void
.end method

.method public static A(Law2;)Lnv2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Law2<",
            "TV;>;)",
            "Lnv2<",
            "TV;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lnv2;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lnv2;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lpv2;

    invoke-direct {v0, p0}, Lpv2;-><init>(Law2;)V

    return-object v0
.end method


# virtual methods
.method public final x(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lnv2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lnv2<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lvt2;->d(Law2;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Law2;

    move-result-object p1

    check-cast p1, Lnv2;

    return-object p1
.end method

.method public final y(Lvs2;Ljava/util/concurrent/Executor;)Lnv2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lvs2<",
            "-TV;TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lnv2<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lxu2;

    invoke-direct {v0, p0, p1}, Lxu2;-><init>(Law2;Lvs2;)V

    .line 2
    invoke-static {p2, v0}, Lvt2;->g(Ljava/util/concurrent/Executor;Lsu2;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Law2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public final z(Lcv2;Ljava/util/concurrent/Executor;)Lnv2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcv2<",
            "-TV;TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lnv2<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Luu2;

    invoke-direct {v0, p0, p1}, Luu2;-><init>(Law2;Lcv2;)V

    .line 3
    invoke-static {p2, v0}, Lvt2;->g(Ljava/util/concurrent/Executor;Lsu2;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Law2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
