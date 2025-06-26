.class public Lrk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lik;
.implements Ldl;
.implements Lfk;


# static fields
.field public static final j:Ljava/lang/String;


# instance fields
.field public e:Lnk;

.field public f:Lel;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldm;",
            ">;"
        }
    .end annotation
.end field

.field public h:Z

.field public final i:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "GreedyScheduler"

    .line 1
    invoke-static {v0}, Lvj;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrk;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lxm;Lnk;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrk;->g:Ljava/util/List;

    .line 3
    iput-object p3, p0, Lrk;->e:Lnk;

    .line 4
    new-instance p3, Lel;

    invoke-direct {p3, p1, p2, p0}, Lel;-><init>(Landroid/content/Context;Lxm;Ldl;)V

    iput-object p3, p0, Lrk;->f:Lel;

    .line 5
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrk;->i:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public varargs a([Ldm;)V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lrk;->h:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lrk;->e:Lnk;

    .line 3
    iget-object v0, v0, Lnk;->f:Lhk;

    .line 4
    invoke-virtual {v0, p0}, Lhk;->a(Lfk;)V

    .line 5
    iput-boolean v1, p0, Lrk;->h:Z

    .line 6
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    array-length v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_5

    aget-object v6, p1, v5

    .line 9
    iget-object v7, v6, Ldm;->b:Lak;

    sget-object v8, Lak;->e:Lak;

    if-ne v7, v8, :cond_4

    .line 10
    invoke-virtual {v6}, Ldm;->d()Z

    move-result v7

    if-nez v7, :cond_4

    iget-wide v7, v6, Ldm;->g:J

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-nez v11, :cond_4

    .line 11
    invoke-virtual {v6}, Ldm;->c()Z

    move-result v7

    if-nez v7, :cond_4

    .line 12
    invoke-virtual {v6}, Ldm;->b()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 13
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x18

    if-lt v7, v8, :cond_2

    iget-object v7, v6, Ldm;->j:Lqj;

    .line 14
    iget-object v7, v7, Lqj;->h:Lrj;

    invoke-virtual {v7}, Lrj;->a()I

    move-result v7

    if-lez v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-nez v7, :cond_4

    .line 15
    :cond_2
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v6, v6, Ldm;->a:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 17
    :cond_3
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object v7

    sget-object v8, Lrk;->j:Ljava/lang/String;

    const-string v9, "Starting work for %s"

    new-array v10, v1, [Ljava/lang/Object;

    iget-object v11, v6, Ldm;->a:Ljava/lang/String;

    aput-object v11, v10, v4

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-array v10, v4, [Ljava/lang/Throwable;

    invoke-virtual {v7, v8, v9, v10}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 18
    iget-object v7, p0, Lrk;->e:Lnk;

    iget-object v6, v6, Ldm;->a:Ljava/lang/String;

    .line 19
    iget-object v8, v7, Lnk;->d:Lxm;

    new-instance v9, Lrm;

    const/4 v10, 0x0

    invoke-direct {v9, v7, v6, v10}, Lrm;-><init>(Lnk;Ljava/lang/String;Landroidx/work/WorkerParameters$a;)V

    .line 20
    check-cast v8, Lym;

    .line 21
    iget-object v6, v8, Lym;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v6, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 22
    :cond_5
    iget-object p1, p0, Lrk;->i:Ljava/lang/Object;

    monitor-enter p1

    .line 23
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 24
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object v3

    sget-object v5, Lrk;->j:Ljava/lang/String;

    const-string v6, "Starting tracking for [%s]"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v7, ","

    .line 25
    invoke-static {v7, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 26
    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Throwable;

    invoke-virtual {v3, v5, v1, v2}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 27
    iget-object v1, p0, Lrk;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28
    iget-object v0, p0, Lrk;->f:Lel;

    iget-object v1, p0, Lrk;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Lel;->b(Ljava/util/List;)V

    .line 29
    :cond_6
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object v1

    sget-object v2, Lrk;->j:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v5, "Constraints not met: Cancelling work ID %s"

    .line 3
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Throwable;

    .line 4
    invoke-virtual {v1, v2, v3, v4}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 5
    iget-object v1, p0, Lrk;->e:Lnk;

    invoke-virtual {v1, v0}, Lnk;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 6

    .line 1
    iget-object p2, p0, Lrk;->i:Ljava/lang/Object;

    monitor-enter p2

    .line 2
    :try_start_0
    iget-object v0, p0, Lrk;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3
    iget-object v3, p0, Lrk;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldm;

    iget-object v3, v3, Ldm;->a:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object v0

    sget-object v3, Lrk;->j:Ljava/lang/String;

    const-string v4, "Stopping tracking for %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, v3, p1, v1}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 5
    iget-object p1, p0, Lrk;->g:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lrk;->f:Lel;

    iget-object v0, p0, Lrk;->g:Ljava/util/List;

    invoke-virtual {p1, v0}, Lel;->b(Ljava/util/List;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lrk;->h:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lrk;->e:Lnk;

    .line 3
    iget-object v0, v0, Lnk;->f:Lhk;

    .line 4
    invoke-virtual {v0, p0}, Lhk;->a(Lfk;)V

    .line 5
    iput-boolean v1, p0, Lrk;->h:Z

    .line 6
    :cond_0
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object v0

    sget-object v2, Lrk;->j:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    const-string v4, "Cancelling work ID %s"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v1, v3}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 7
    iget-object v0, p0, Lrk;->e:Lnk;

    .line 8
    iget-object v1, v0, Lnk;->d:Lxm;

    new-instance v2, Lsm;

    invoke-direct {v2, v0, p1}, Lsm;-><init>(Lnk;Ljava/lang/String;)V

    check-cast v1, Lym;

    .line 9
    iget-object p1, v1, Lym;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object v1

    sget-object v2, Lrk;->j:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v5, "Constraints met: Scheduling work ID %s"

    .line 3
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Throwable;

    .line 4
    invoke-virtual {v1, v2, v3, v4}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 5
    iget-object v1, p0, Lrk;->e:Lnk;

    .line 6
    iget-object v2, v1, Lnk;->d:Lxm;

    new-instance v3, Lrm;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v0, v4}, Lrm;-><init>(Lnk;Ljava/lang/String;Landroidx/work/WorkerParameters$a;)V

    .line 7
    check-cast v2, Lym;

    .line 8
    iget-object v0, v2, Lym;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method
