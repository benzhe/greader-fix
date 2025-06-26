.class public final synthetic Ljq5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lmq5;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:Lf45;

.field public final d:Lex5;


# direct methods
.method public constructor <init>(Lmq5;Ljava/util/concurrent/atomic/AtomicBoolean;Lf45;Lex5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljq5;->a:Lmq5;

    iput-object p2, p0, Ljq5;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Ljq5;->c:Lf45;

    iput-object p4, p0, Ljq5;->d:Lex5;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Ljq5;->a:Lmq5;

    iget-object v1, p0, Ljq5;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Ljq5;->c:Lf45;

    iget-object v3, p0, Ljq5;->d:Lex5;

    check-cast p1, Ltp5;

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1
    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v2, Lf45;->a:Le55;

    .line 3
    invoke-virtual {v0}, Le55;->n()Z

    move-result v0

    xor-int/2addr v0, v5

    new-array v1, v4, [Ljava/lang/Object;

    const-string v3, "Already fulfilled first user task"

    invoke-static {v0, v3, v1}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v0, v2, Lf45;->a:Le55;

    invoke-virtual {v0, p1}, Le55;->s(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lhq5;

    invoke-direct {v1, v0, p1}, Lhq5;-><init>(Lmq5;Ltp5;)V

    .line 6
    new-instance p1, Lcx5;

    invoke-direct {p1, v1}, Lcx5;-><init>(Ljava/lang/Runnable;)V

    .line 7
    invoke-virtual {v3, p1}, Lex5;->a(Ljava/util/concurrent/Callable;)Le45;

    :goto_0
    return-void
.end method
