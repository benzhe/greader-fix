.class public final Lmq5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Laq5;

.field public final b:Lop5;

.field public final c:Lex5;

.field public d:Lfs5;

.field public e:Lcr5;

.field public f:Ldq5;

.field public final g:Ljw5;

.field public h:Lrr5;


# direct methods
.method public constructor <init>(Landroid/content/Context;Laq5;Lap5;Lop5;Lex5;Ljw5;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lmq5;->a:Laq5;

    .line 3
    iput-object p4, p0, Lmq5;->b:Lop5;

    .line 4
    iput-object p5, p0, Lmq5;->c:Lex5;

    .line 5
    iput-object p6, p0, Lmq5;->g:Ljw5;

    .line 6
    new-instance p2, Lf45;

    invoke-direct {p2}, Lf45;-><init>()V

    .line 7
    new-instance p6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    new-instance v0, Liq5;

    invoke-direct {v0, p0, p2, p1, p3}, Liq5;-><init>(Lmq5;Lf45;Landroid/content/Context;Lap5;)V

    .line 9
    new-instance p1, Lcx5;

    invoke-direct {p1, v0}, Lcx5;-><init>(Ljava/lang/Runnable;)V

    .line 10
    invoke-virtual {p5, p1}, Lex5;->a(Ljava/util/concurrent/Callable;)Le45;

    .line 11
    new-instance p1, Ljq5;

    invoke-direct {p1, p0, p6, p2, p5}, Ljq5;-><init>(Lmq5;Ljava/util/concurrent/atomic/AtomicBoolean;Lf45;Lex5;)V

    .line 12
    invoke-virtual {p4, p1}, Lop5;->c(Ljq5;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ltp5;Lap5;)V
    .locals 12

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p2, Ltp5;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    sget-object v1, Lqx5$a;->e:Lqx5$a;

    const-string v2, "FirestoreClient"

    const-string v3, "Initializing. user=%s"

    invoke-static {v1, v2, v3, v0}, Lqx5;->a(Lqx5$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lqv5;

    iget-object v5, p0, Lmq5;->a:Laq5;

    iget-object v6, p0, Lmq5;->c:Lex5;

    iget-object v7, p0, Lmq5;->b:Lop5;

    iget-object v9, p0, Lmq5;->g:Ljw5;

    move-object v4, v0

    move-object v8, p1

    invoke-direct/range {v4 .. v9}, Lqv5;-><init>(Laq5;Lex5;Lop5;Landroid/content/Context;Ljw5;)V

    .line 4
    new-instance v1, Lzp5$a;

    iget-object v6, p0, Lmq5;->c:Lex5;

    iget-object v7, p0, Lmq5;->a:Laq5;

    const/16 v10, 0x64

    move-object v4, v1

    move-object v5, p1

    move-object v8, v0

    move-object v9, p2

    move-object v11, p3

    invoke-direct/range {v4 .. v11}, Lzp5$a;-><init>(Landroid/content/Context;Lex5;Laq5;Lqv5;Ltp5;ILap5;)V

    .line 5
    iget-boolean p1, p3, Lap5;->c:Z

    if-eqz p1, :cond_0

    .line 6
    new-instance p1, Lbr5;

    invoke-direct {p1}, Lbr5;-><init>()V

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Luq5;

    invoke-direct {p1}, Luq5;-><init>()V

    .line 8
    :goto_0
    invoke-virtual {p1, v1}, Luq5;->b(Lzp5$a;)Lts5;

    move-result-object p2

    iput-object p2, p1, Lzp5;->a:Lts5;

    .line 9
    invoke-virtual {p2}, Lts5;->i()V

    .line 10
    new-instance p2, Lfs5;

    .line 11
    iget-object p3, p1, Lzp5;->a:Lts5;

    .line 12
    new-instance v0, Lnr5;

    invoke-direct {v0}, Lnr5;-><init>()V

    .line 13
    iget-object v2, v1, Lzp5$a;->e:Ltp5;

    .line 14
    invoke-direct {p2, p3, v0, v2}, Lfs5;-><init>(Lts5;Lus5;Ltp5;)V

    .line 15
    iput-object p2, p1, Lzp5;->b:Lfs5;

    .line 16
    new-instance v8, Lov5;

    .line 17
    iget-object p2, v1, Lzp5$a;->a:Landroid/content/Context;

    .line 18
    invoke-direct {v8, p2}, Lov5;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object v8, p1, Lzp5;->f:Lpv5;

    .line 20
    new-instance p2, Lsw5;

    new-instance v4, Luq5$b;

    const/4 p3, 0x0

    invoke-direct {v4, p1, p3}, Luq5$b;-><init>(Luq5;Luq5$a;)V

    .line 21
    iget-object v5, p1, Lzp5;->b:Lfs5;

    .line 22
    iget-object v6, v1, Lzp5$a;->d:Lqv5;

    .line 23
    iget-object v7, v1, Lzp5$a;->b:Lex5;

    move-object v3, p2

    .line 24
    invoke-direct/range {v3 .. v8}, Lsw5;-><init>(Lsw5$c;Lfs5;Lqv5;Lex5;Lpv5;)V

    .line 25
    iput-object p2, p1, Lzp5;->d:Lsw5;

    .line 26
    new-instance p2, Lcr5;

    .line 27
    iget-object p3, p1, Lzp5;->b:Lfs5;

    .line 28
    iget-object v0, p1, Lzp5;->d:Lsw5;

    .line 29
    iget-object v2, v1, Lzp5$a;->e:Ltp5;

    const/16 v3, 0x64

    .line 30
    invoke-direct {p2, p3, v0, v2, v3}, Lcr5;-><init>(Lfs5;Lsw5;Ltp5;I)V

    .line 31
    iput-object p2, p1, Lzp5;->c:Lcr5;

    .line 32
    new-instance p3, Ldq5;

    invoke-direct {p3, p2}, Ldq5;-><init>(Lcr5;)V

    .line 33
    iput-object p3, p1, Lzp5;->e:Ldq5;

    .line 34
    iget-object p2, p1, Lzp5;->b:Lfs5;

    .line 35
    iget-object p3, p2, Lfs5;->a:Lts5;

    .line 36
    new-instance v0, Lwr5;

    invoke-direct {v0, p2}, Lwr5;-><init>(Lfs5;)V

    const-string p2, "Start MutationQueue"

    .line 37
    invoke-virtual {p3, p2, v0}, Lts5;->h(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 38
    iget-object p2, p1, Lzp5;->d:Lsw5;

    .line 39
    invoke-virtual {p2}, Lsw5;->b()V

    .line 40
    invoke-virtual {p1, v1}, Luq5;->a(Lzp5$a;)Lrr5;

    move-result-object p2

    iput-object p2, p1, Lzp5;->g:Lrr5;

    .line 41
    iput-object p2, p0, Lmq5;->h:Lrr5;

    .line 42
    iget-object p3, p1, Lzp5;->b:Lfs5;

    .line 43
    iput-object p3, p0, Lmq5;->d:Lfs5;

    .line 44
    iget-object p3, p1, Lzp5;->c:Lcr5;

    .line 45
    iput-object p3, p0, Lmq5;->e:Lcr5;

    .line 46
    iget-object p1, p1, Lzp5;->e:Ldq5;

    .line 47
    iput-object p1, p0, Lmq5;->f:Ldq5;

    if-eqz p2, :cond_1

    .line 48
    check-cast p2, Ljs5$d;

    .line 49
    iget-object p1, p2, Ljs5$d;->d:Ljs5;

    .line 50
    iget-object p1, p1, Ljs5;->b:Ljs5$a;

    .line 51
    iget-wide v0, p1, Ljs5$a;->a:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    .line 52
    invoke-virtual {p2}, Ljs5$d;->a()V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmq5;->c:Lex5;

    .line 2
    iget-object v0, v0, Lex5;->a:Lex5$c;

    .line 3
    monitor-enter v0

    .line 4
    monitor-exit v0

    return-void
.end method
