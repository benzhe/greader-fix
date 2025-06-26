.class public final synthetic Lfw5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final e:Liw5;


# direct methods
.method public constructor <init>(Liw5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfw5;->e:Liw5;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lfw5;->e:Liw5;

    const-string v1, "GrpcCallProvider"

    .line 1
    iget-object v2, v0, Liw5;->e:Landroid/content/Context;

    iget-object v3, v0, Liw5;->f:Laq5;

    const/4 v4, 0x0

    .line 2
    :try_start_0
    invoke-static {v2}, Lg35;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Lhy; {:try_start_0 .. :try_end_0} :catch_2
    .catch Liy; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_0

    :catch_1
    move-exception v5

    goto :goto_0

    :catch_2
    move-exception v5

    :goto_0
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v4

    .line 3
    sget-object v5, Lqx5$a;->f:Lqx5$a;

    const-string v7, "Failed to update ssl context: %s"

    invoke-static {v5, v1, v7, v6}, Lqx5;->a(Lqx5$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_1
    iget-object v5, v3, Laq5;->c:Ljava/lang/String;

    .line 5
    sget-object v6, Lh47;->b:Lh47;

    if-eqz v6, :cond_1

    .line 6
    invoke-virtual {v6, v5}, Lh47;->a(Ljava/lang/String;)Lg47;

    move-result-object v5

    .line 7
    iget-boolean v3, v3, Laq5;->d:Z

    if-nez v3, :cond_0

    .line 8
    invoke-virtual {v5}, Lg47;->c()Lg47;

    :cond_0
    const-wide/16 v6, 0x1e

    .line 9
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v3}, Lg47;->b(JLjava/util/concurrent/TimeUnit;)Lg47;

    .line 10
    new-instance v3, Ld57;

    invoke-direct {v3, v5}, Ld57;-><init>(Lg47;)V

    .line 11
    iput-object v2, v3, Ld57;->b:Landroid/content/Context;

    .line 12
    invoke-virtual {v3}, Ld57;->a()Lf47;

    move-result-object v2

    .line 13
    iget-object v3, v0, Liw5;->b:Lex5;

    .line 14
    new-instance v5, Lgw5;

    invoke-direct {v5, v0, v2}, Lgw5;-><init>(Liw5;Lf47;)V

    .line 15
    new-instance v6, Lcx5;

    invoke-direct {v6, v5}, Lcx5;-><init>(Ljava/lang/Runnable;)V

    .line 16
    invoke-virtual {v3, v6}, Lex5;->a(Ljava/util/concurrent/Callable;)Le45;

    .line 17
    sget-object v3, Lx27;->k:Lx27;

    .line 18
    sget-object v5, Lya7;->b:Lx27$a;

    sget-object v6, Lya7$b;->g:Lya7$b;

    .line 19
    invoke-virtual {v3, v5, v6}, Lx27;->e(Lx27$a;Ljava/lang/Object;)Lx27;

    move-result-object v3

    const-string v5, "channel"

    .line 20
    invoke-static {v2, v5}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "callOptions"

    .line 21
    invoke-static {v3, v6}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v7, v0, Liw5;->g:Lw27;

    .line 23
    new-instance v8, Lx27;

    invoke-direct {v8, v3}, Lx27;-><init>(Lx27;)V

    .line 24
    iput-object v7, v8, Lx27;->d:Lw27;

    .line 25
    invoke-static {v2, v5}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {v8, v6}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v3, v0, Liw5;->b:Lex5;

    .line 28
    iget-object v3, v3, Lex5;->a:Lex5$c;

    .line 29
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v5, Lx27;

    invoke-direct {v5, v8}, Lx27;-><init>(Lx27;)V

    .line 31
    iput-object v3, v5, Lx27;->b:Ljava/util/concurrent/Executor;

    .line 32
    new-instance v3, Ltc6$a;

    invoke-direct {v3, v2, v5}, Ltc6$a;-><init>(Ly27;Lx27;)V

    .line 33
    iget-object v3, v3, Lxa7;->b:Lx27;

    .line 34
    iput-object v3, v0, Liw5;->c:Lx27;

    new-array v0, v4, [Ljava/lang/Object;

    .line 35
    sget-object v3, Lqx5$a;->e:Lqx5$a;

    const-string v4, "Channel successfully reset."

    invoke-static {v3, v1, v4, v0}, Lqx5;->a(Lqx5$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 36
    :cond_1
    new-instance v0, Lh47$c;

    const-string v1, "No functional channel service provider found. Try adding a dependency on the grpc-okhttp, grpc-netty, or grpc-netty-shaded artifact"

    invoke-direct {v0, v1}, Lh47$c;-><init>(Ljava/lang/String;)V

    throw v0
.end method
