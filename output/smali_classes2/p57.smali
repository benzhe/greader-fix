.class public final Lp57;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb67;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp57$a;
    }
.end annotation


# instance fields
.field public final e:Lb67;

.field public final f:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lb67;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "delegate"

    .line 2
    invoke-static {p1, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lp57;->e:Lb67;

    const-string p1, "appExecutor"

    .line 3
    invoke-static {p2, p1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lp57;->f:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public Y(Ljava/net/SocketAddress;Lb67$a;Lz27;)Ld67;
    .locals 2

    .line 1
    new-instance v0, Lp57$a;

    iget-object v1, p0, Lp57;->e:Lb67;

    .line 2
    invoke-interface {v1, p1, p2, p3}, Lb67;->Y(Ljava/net/SocketAddress;Lb67$a;Lz27;)Ld67;

    move-result-object p1

    .line 3
    iget-object p2, p2, Lb67$a;->a:Ljava/lang/String;

    .line 4
    invoke-direct {v0, p0, p1, p2}, Lp57$a;-><init>(Lp57;Ld67;Ljava/lang/String;)V

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lp57;->e:Lb67;

    invoke-interface {v0}, Lb67;->close()V

    return-void
.end method

.method public x0()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lp57;->e:Lb67;

    invoke-interface {v0}, Lb67;->x0()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method
