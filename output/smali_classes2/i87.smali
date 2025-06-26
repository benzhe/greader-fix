.class public final Li87;
.super Lf47;
.source "SourceFile"

# interfaces
.implements Lx37;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf47;",
        "Lx37<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Li87;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Ly37;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public h(Lj47;Lx27;)La37;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RequestT:",
            "Ljava/lang/Object;",
            "ResponseT:",
            "Ljava/lang/Object;",
            ">(",
            "Lj47<",
            "TRequestT;TResponseT;>;",
            "Lx27;",
            ")",
            "La37<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation

    .line 1
    new-instance v8, Lt57;

    .line 2
    iget-object v0, p2, Lx27;->b:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    move-object v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v3, p2

    .line 3
    invoke-direct/range {v0 .. v7}, Lt57;-><init>(Lj47;Ljava/util/concurrent/Executor;Lx27;Lt57$c;Ljava/util/concurrent/ScheduledExecutorService;Lq57;Z)V

    return-object v8
.end method

.method public j(Z)Li37;
    .locals 0

    .line 1
    sget-object p1, Li37;->h:Li37;

    return-object p1
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    throw v0
.end method

.method public m()Lf47;
    .locals 2

    .line 1
    sget-object v0, Lx47;->n:Lx47;

    const-string v1, "OobChannel.shutdownNow() called"

    .line 2
    invoke-virtual {v0, v1}, Lx47;->h(Ljava/lang/String;)Lx47;

    const/4 v0, 0x0

    .line 3
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lc50;->K0(Ljava/lang/Object;)Lnd5;

    const/4 v0, 0x0

    .line 2
    throw v0
.end method
