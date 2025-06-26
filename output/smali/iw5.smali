.class public Liw5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Le45;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le45<",
            "Lf47;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lex5;

.field public c:Lx27;

.field public d:Lex5$b;

.field public final e:Landroid/content/Context;

.field public final f:Laq5;

.field public final g:Lw27;


# direct methods
.method public constructor <init>(Lex5;Landroid/content/Context;Laq5;Lw27;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Liw5;->b:Lex5;

    .line 3
    iput-object p2, p0, Liw5;->e:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Liw5;->f:Laq5;

    .line 5
    iput-object p4, p0, Liw5;->g:Lw27;

    .line 6
    sget-object p1, Lnx5;->c:Ljava/util/concurrent/Executor;

    .line 7
    new-instance p2, Lfw5;

    invoke-direct {p2, p0}, Lfw5;-><init>(Liw5;)V

    .line 8
    invoke-static {p1, p2}, Lc50;->i(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Le45;

    move-result-object p1

    iput-object p1, p0, Liw5;->a:Le45;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Liw5;->d:Lex5$b;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    sget-object v1, Lqx5$a;->e:Lqx5$a;

    const-string v2, "GrpcCallProvider"

    const-string v3, "Clearing the connectivityAttemptTimer"

    invoke-static {v1, v2, v3, v0}, Lqx5;->a(Lqx5$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Liw5;->d:Lex5$b;

    invoke-virtual {v0}, Lex5$b;->a()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Liw5;->d:Lex5$b;

    :cond_0
    return-void
.end method

.method public final b(Lf47;)V
    .locals 6

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Lf47;->j(Z)Li37;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current gRPC connectivity state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 3
    sget-object v4, Lqx5$a;->e:Lqx5$a;

    const-string v5, "GrpcCallProvider"

    invoke-static {v4, v5, v1, v3}, Lqx5;->a(Lqx5$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Liw5;->a()V

    .line 5
    sget-object v1, Li37;->e:Li37;

    if-ne v0, v1, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Setting the connectivityAttemptTimer"

    .line 6
    invoke-static {v4, v5, v2, v1}, Lqx5;->a(Lqx5$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iget-object v1, p0, Liw5;->b:Lex5;

    sget-object v2, Lex5$d;->m:Lex5$d;

    const-wide/16 v3, 0x3a98

    .line 8
    new-instance v5, Lcw5;

    invoke-direct {v5, p0, p1}, Lcw5;-><init>(Liw5;Lf47;)V

    .line 9
    invoke-virtual {v1, v2, v3, v4, v5}, Lex5;->b(Lex5$d;JLjava/lang/Runnable;)Lex5$b;

    move-result-object v1

    iput-object v1, p0, Liw5;->d:Lex5$b;

    .line 10
    :cond_0
    new-instance v1, Ldw5;

    invoke-direct {v1, p0, p1}, Ldw5;-><init>(Liw5;Lf47;)V

    .line 11
    invoke-virtual {p1, v0, v1}, Lf47;->k(Li37;Ljava/lang/Runnable;)V

    return-void
.end method
