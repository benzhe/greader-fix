.class public final Lya7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lya7$b;,
        Lya7$c;,
        Lya7$a;,
        Lya7$d;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:Lx27$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx27$a<",
            "Lya7$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lya7;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lya7;->a:Ljava/util/logging/Logger;

    const-string v0, "internal-stub-type"

    .line 2
    invoke-static {v0}, Lx27$a;->a(Ljava/lang/String;)Lx27$a;

    move-result-object v0

    sput-object v0, Lya7;->b:Lx27$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(La37;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La37<",
            "**>;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/lang/RuntimeException;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, v0, p1}, La37;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2
    sget-object v0, Lya7;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "RuntimeException encountered while closing call"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    :goto_0
    instance-of p0, p1, Ljava/lang/RuntimeException;

    if-nez p0, :cond_1

    .line 4
    instance-of p0, p1, Ljava/lang/Error;

    if-eqz p0, :cond_0

    .line 5
    check-cast p1, Ljava/lang/Error;

    throw p1

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 7
    :cond_1
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1
.end method

.method public static b(La37;Ljava/lang/Object;)Lie5;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "La37<",
            "TReqT;TRespT;>;TReqT;)",
            "Lie5<",
            "TRespT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lya7$a;

    invoke-direct {v0, p0}, Lya7$a;-><init>(La37;)V

    .line 2
    new-instance v1, Lya7$d;

    invoke-direct {v1, v0}, Lya7$d;-><init>(Lya7$a;)V

    .line 3
    new-instance v2, Li47;

    invoke-direct {v2}, Li47;-><init>()V

    invoke-virtual {p0, v1, v2}, La37;->e(La37$a;Li47;)V

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p0, v1}, La37;->c(I)V

    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0, p1}, La37;->d(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, La37;->b()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 7
    invoke-static {p0, p1}, Lya7;->a(La37;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    throw v1

    :catch_1
    move-exception p1

    .line 8
    invoke-static {p0, p1}, Lya7;->a(La37;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    throw v1
.end method

.method public static c(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 1
    :try_start_0
    check-cast p0, Lge5;

    invoke-virtual {p0}, Lge5;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_3

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    const-string v0, "t"

    .line 3
    invoke-static {p0, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    :goto_1
    if-eqz v0, :cond_2

    .line 4
    instance-of v1, v0, Ly47;

    if-nez v1, :cond_1

    .line 5
    instance-of v1, v0, Lz47;

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_1

    .line 7
    :cond_0
    check-cast v0, Lz47;

    .line 8
    new-instance p0, Lz47;

    .line 9
    iget-object v1, v0, Lz47;->e:Lx47;

    .line 10
    iget-object v0, v0, Lz47;->f:Li47;

    .line 11
    invoke-direct {p0, v1, v0}, Lz47;-><init>(Lx47;Li47;)V

    goto :goto_2

    .line 12
    :cond_1
    check-cast v0, Ly47;

    .line 13
    new-instance p0, Lz47;

    .line 14
    iget-object v1, v0, Ly47;->e:Lx47;

    .line 15
    iget-object v0, v0, Ly47;->f:Li47;

    .line 16
    invoke-direct {p0, v1, v0}, Lz47;-><init>(Lx47;Li47;)V

    goto :goto_2

    .line 17
    :cond_2
    sget-object v0, Lx47;->h:Lx47;

    const-string v1, "unexpected exception"

    invoke-virtual {v0, v1}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v0

    invoke-virtual {v0, p0}, Lx47;->g(Ljava/lang/Throwable;)Lx47;

    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lx47;->a()Lz47;

    move-result-object p0

    .line 19
    :goto_2
    throw p0

    .line 20
    :goto_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 21
    sget-object v0, Lx47;->g:Lx47;

    const-string v1, "Thread interrupted"

    .line 22
    invoke-virtual {v0, v1}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v0

    .line 23
    invoke-virtual {v0, p0}, Lx47;->g(Ljava/lang/Throwable;)Lx47;

    move-result-object p0

    .line 24
    invoke-virtual {p0}, Lx47;->a()Lz47;

    move-result-object p0

    throw p0
.end method
