.class public final Lrd7;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Ljb7;
.implements Lic7;
.implements Ltc7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lic7;",
        ">;",
        "Ljb7;",
        "Lic7;",
        "Ltc7<",
        "Ljava/lang/Throwable;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final e:Ltc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltc7<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lqc7;


# direct methods
.method public constructor <init>(Lqc7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p0, p0, Lrd7;->e:Ltc7;

    .line 3
    iput-object p1, p0, Lrd7;->f:Lqc7;

    return-void
.end method

.method public constructor <init>(Ltc7;Lqc7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltc7<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lqc7;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 5
    iput-object p1, p0, Lrd7;->e:Ltc7;

    .line 6
    iput-object p2, p0, Lrd7;->f:Lqc7;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lrd7;->f:Lqc7;

    invoke-interface {v0}, Lqc7;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {v0}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 3
    invoke-static {v0}, Ln56;->z1(Ljava/lang/Throwable;)V

    .line 4
    :goto_0
    sget-object v0, Lyc7;->e:Lyc7;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    new-instance v0, Lmc7;

    invoke-direct {v0, p1}, Lmc7;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Ln56;->z1(Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lrd7;->e:Ltc7;

    invoke-interface {v0, p1}, Ltc7;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-static {p1}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 3
    invoke-static {p1}, Ln56;->z1(Ljava/lang/Throwable;)V

    .line 4
    :goto_0
    sget-object p1, Lyc7;->e:Lyc7;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void
.end method

.method public c(Lic7;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lyc7;->w(Ljava/util/concurrent/atomic/AtomicReference;Lic7;)Z

    return-void
.end method

.method public k()V
    .locals 0

    .line 1
    invoke-static {p0}, Lyc7;->i(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method
