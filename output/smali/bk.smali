.class public abstract Lbk;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lck;)Lyj;
    .locals 5

    .line 1
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Lnk;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    new-instance v1, Lkk;

    invoke-direct {v1, v0, p1}, Lkk;-><init>(Lnk;Ljava/util/List;)V

    .line 4
    iget-boolean p1, v1, Lkk;->h:Z

    if-nez p1, :cond_0

    .line 5
    new-instance p1, Lmm;

    invoke-direct {p1, v1}, Lmm;-><init>(Lkk;)V

    .line 6
    iget-object v0, v1, Lkk;->a:Lnk;

    .line 7
    iget-object v0, v0, Lnk;->d:Lxm;

    .line 8
    check-cast v0, Lym;

    .line 9
    iget-object v0, v0, Lym;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    iget-object p1, p1, Lmm;->f:Lgk;

    .line 11
    iput-object p1, v1, Lkk;->i:Lyj;

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object p1

    sget-object v0, Lkk;->j:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v1, Lkk;->e:Ljava/util/List;

    const-string v4, ", "

    .line 13
    invoke-static {v4, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Already enqueued work ids (%s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Throwable;

    .line 14
    invoke-virtual {p1, v0, v2, v3}, Lvj;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 15
    :goto_0
    iget-object p1, v1, Lkk;->i:Lyj;

    return-object p1

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enqueue needs at least one WorkRequest."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
