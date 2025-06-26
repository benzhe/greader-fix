.class public final Lqo2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public final c:Law2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Law2<",
            "*>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Law2<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final e:Law2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Law2<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final synthetic f:Lko2;


# direct methods
.method public synthetic constructor <init>(Lko2;Ljava/lang/Object;Law2;Ljava/util/List;Law2;)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 7
    invoke-direct/range {v0 .. v6}, Lqo2;-><init>(Lko2;Ljava/lang/Object;Ljava/lang/String;Law2;Ljava/util/List;Law2;)V

    return-void
.end method

.method public constructor <init>(Lko2;Ljava/lang/Object;Ljava/lang/String;Law2;Ljava/util/List;Law2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/String;",
            "Law2<",
            "*>;",
            "Ljava/util/List<",
            "Law2<",
            "*>;>;",
            "Law2<",
            "TO;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lqo2;->f:Lko2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lqo2;->a:Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lqo2;->b:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lqo2;->c:Law2;

    .line 5
    iput-object p5, p0, Lqo2;->d:Ljava/util/List;

    .line 6
    iput-object p6, p0, Lqo2;->e:Law2;

    return-void
.end method


# virtual methods
.method public final a(JLjava/util/concurrent/TimeUnit;)Lqo2;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lqo2<",
            "TO;>;"
        }
    .end annotation

    .line 1
    new-instance v7, Lqo2;

    iget-object v1, p0, Lqo2;->f:Lko2;

    iget-object v2, p0, Lqo2;->a:Ljava/lang/Object;

    iget-object v3, p0, Lqo2;->b:Ljava/lang/String;

    iget-object v4, p0, Lqo2;->c:Law2;

    iget-object v5, p0, Lqo2;->d:Ljava/util/List;

    iget-object v0, p0, Lqo2;->e:Law2;

    .line 2
    iget-object v6, v1, Lko2;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 3
    invoke-static {v0, p1, p2, p3, v6}, Lvt2;->d(Law2;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Law2;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lqo2;-><init>(Lko2;Ljava/lang/Object;Ljava/lang/String;Law2;Ljava/util/List;Law2;)V

    return-object v7
.end method

.method public final b(Lcv2;)Lqo2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcv2<",
            "TO;TO2;>;)",
            "Lqo2<",
            "TO2;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lqo2;->f:Lko2;

    .line 2
    iget-object v0, v0, Lko2;->a:Lzv2;

    .line 3
    invoke-virtual {p0, p1, v0}, Lqo2;->c(Lcv2;Ljava/util/concurrent/Executor;)Lqo2;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcv2;Ljava/util/concurrent/Executor;)Lqo2;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcv2<",
            "TO;TO2;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lqo2<",
            "TO2;>;"
        }
    .end annotation

    .line 1
    new-instance v7, Lqo2;

    iget-object v1, p0, Lqo2;->f:Lko2;

    iget-object v2, p0, Lqo2;->a:Ljava/lang/Object;

    iget-object v3, p0, Lqo2;->b:Ljava/lang/String;

    iget-object v4, p0, Lqo2;->c:Law2;

    iget-object v5, p0, Lqo2;->d:Ljava/util/List;

    iget-object v0, p0, Lqo2;->e:Law2;

    .line 2
    invoke-static {v0, p1, p2}, Lvt2;->m(Law2;Lcv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lqo2;-><init>(Lko2;Ljava/lang/Object;Ljava/lang/String;Law2;Ljava/util/List;Law2;)V

    return-object v7
.end method

.method public final d(Ljava/lang/Class;Lcv2;)Lqo2;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcv2<",
            "TT;TO;>;)",
            "Lqo2<",
            "TO;>;"
        }
    .end annotation

    .line 1
    new-instance v7, Lqo2;

    iget-object v1, p0, Lqo2;->f:Lko2;

    iget-object v2, p0, Lqo2;->a:Ljava/lang/Object;

    iget-object v3, p0, Lqo2;->b:Ljava/lang/String;

    iget-object v4, p0, Lqo2;->c:Law2;

    iget-object v5, p0, Lqo2;->d:Ljava/util/List;

    iget-object v0, p0, Lqo2;->e:Law2;

    .line 2
    iget-object v6, v1, Lko2;->a:Lzv2;

    .line 3
    invoke-static {v0, p1, p2, v6}, Lvt2;->n(Law2;Ljava/lang/Class;Lcv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lqo2;-><init>(Lko2;Ljava/lang/Object;Ljava/lang/String;Law2;Ljava/util/List;Law2;)V

    return-object v7
.end method

.method public final e()Llo2;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Llo2<",
            "TE;TO;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Llo2;

    iget-object v1, p0, Lqo2;->a:Ljava/lang/Object;

    .line 2
    iget-object v2, p0, Lqo2;->b:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lqo2;->f:Lko2;

    check-cast v2, Lzo2;

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-object v2, v1

    check-cast v2, Lap2;

    .line 5
    iget-object v2, v2, Lap2;->e:Ljava/lang/String;

    .line 6
    :cond_0
    iget-object v3, p0, Lqo2;->e:Law2;

    invoke-direct {v0, v1, v2, v3}, Llo2;-><init>(Ljava/lang/Object;Ljava/lang/String;Law2;)V

    .line 7
    iget-object v1, p0, Lqo2;->f:Lko2;

    .line 8
    iget-object v1, v1, Lko2;->c:Lxo2;

    .line 9
    invoke-interface {v1, v0}, Lxo2;->Z(Llo2;)V

    .line 10
    iget-object v1, p0, Lqo2;->c:Law2;

    new-instance v2, Lvo2;

    invoke-direct {v2, p0, v0}, Lvo2;-><init>(Lqo2;Llo2;)V

    .line 11
    sget-object v3, Lms0;->f:Lzv2;

    .line 12
    invoke-interface {v1, v2, v3}, Law2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 13
    new-instance v1, Lyo2;

    invoke-direct {v1, p0, v0}, Lyo2;-><init>(Lqo2;Llo2;)V

    .line 14
    new-instance v2, Lsv2;

    invoke-direct {v2, v0, v1}, Lsv2;-><init>(Ljava/util/concurrent/Future;Lrv2;)V

    invoke-virtual {v0, v2, v3}, Llo2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public final f(Law2;)Lqo2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O2:",
            "Ljava/lang/Object;",
            ">(",
            "Law2<",
            "TO2;>;)",
            "Lqo2<",
            "TO2;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lto2;

    invoke-direct {v0, p1}, Lto2;-><init>(Law2;)V

    .line 2
    sget-object p1, Lms0;->f:Lzv2;

    .line 3
    invoke-virtual {p0, v0, p1}, Lqo2;->c(Lcv2;Ljava/util/concurrent/Executor;)Lqo2;

    move-result-object p1

    return-object p1
.end method
