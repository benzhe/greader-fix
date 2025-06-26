.class public Lqk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqk$a;
    }
.end annotation


# static fields
.field public static final w:Ljava/lang/String;


# instance fields
.field public e:Landroid/content/Context;

.field public f:Ljava/lang/String;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lik;",
            ">;"
        }
    .end annotation
.end field

.field public h:Landroidx/work/WorkerParameters$a;

.field public i:Ldm;

.field public j:Landroidx/work/ListenableWorker;

.field public k:Landroidx/work/ListenableWorker$a;

.field public l:Lpj;

.field public m:Lxm;

.field public n:Landroidx/work/impl/WorkDatabase;

.field public o:Lem;

.field public p:Lvl;

.field public q:Lhm;

.field public r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ljava/lang/String;

.field public t:Lwm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwm<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public u:Lie5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lie5<",
            "Landroidx/work/ListenableWorker$a;",
            ">;"
        }
    .end annotation
.end field

.field public volatile v:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkerWrapper"

    .line 1
    invoke-static {v0}, Lvj;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lqk;->w:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lqk$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/work/ListenableWorker$a$a;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$a;-><init>()V

    .line 3
    iput-object v0, p0, Lqk;->k:Landroidx/work/ListenableWorker$a;

    .line 4
    new-instance v0, Lwm;

    invoke-direct {v0}, Lwm;-><init>()V

    .line 5
    iput-object v0, p0, Lqk;->t:Lwm;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lqk;->u:Lie5;

    .line 7
    iget-object v1, p1, Lqk$a;->a:Landroid/content/Context;

    iput-object v1, p0, Lqk;->e:Landroid/content/Context;

    .line 8
    iget-object v1, p1, Lqk$a;->b:Lxm;

    iput-object v1, p0, Lqk;->m:Lxm;

    .line 9
    iget-object v1, p1, Lqk$a;->e:Ljava/lang/String;

    iput-object v1, p0, Lqk;->f:Ljava/lang/String;

    .line 10
    iget-object v1, p1, Lqk$a;->f:Ljava/util/List;

    iput-object v1, p0, Lqk;->g:Ljava/util/List;

    .line 11
    iget-object v1, p1, Lqk$a;->g:Landroidx/work/WorkerParameters$a;

    iput-object v1, p0, Lqk;->h:Landroidx/work/WorkerParameters$a;

    .line 12
    iput-object v0, p0, Lqk;->j:Landroidx/work/ListenableWorker;

    .line 13
    iget-object v0, p1, Lqk$a;->c:Lpj;

    iput-object v0, p0, Lqk;->l:Lpj;

    .line 14
    iget-object p1, p1, Lqk$a;->d:Landroidx/work/impl/WorkDatabase;

    iput-object p1, p0, Lqk;->n:Landroidx/work/impl/WorkDatabase;

    .line 15
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->n()Lem;

    move-result-object p1

    iput-object p1, p0, Lqk;->o:Lem;

    .line 16
    iget-object p1, p0, Lqk;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->k()Lvl;

    move-result-object p1

    iput-object p1, p0, Lqk;->p:Lvl;

    .line 17
    iget-object p1, p0, Lqk;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->o()Lhm;

    move-result-object p1

    iput-object p1, p0, Lqk;->q:Lhm;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/work/ListenableWorker$a;)V
    .locals 9

    .line 1
    instance-of v0, p1, Landroidx/work/ListenableWorker$a$c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object p1

    sget-object v0, Lqk;->w:Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lqk;->s:Ljava/lang/String;

    aput-object v4, v3, v2

    const-string v4, "Worker result SUCCESS for %s"

    .line 3
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Throwable;

    .line 4
    invoke-virtual {p1, v0, v3, v4}, Lvj;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 5
    iget-object p1, p0, Lqk;->i:Ldm;

    invoke-virtual {p1}, Ldm;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lqk;->e()V

    goto/16 :goto_1

    .line 7
    :cond_0
    iget-object p1, p0, Lqk;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Llg;->c()V

    .line 8
    :try_start_0
    iget-object p1, p0, Lqk;->o:Lem;

    sget-object v0, Lak;->g:Lak;

    new-array v3, v1, [Ljava/lang/String;

    iget-object v4, p0, Lqk;->f:Ljava/lang/String;

    aput-object v4, v3, v2

    check-cast p1, Lfm;

    invoke-virtual {p1, v0, v3}, Lfm;->n(Lak;[Ljava/lang/String;)I

    .line 9
    iget-object p1, p0, Lqk;->k:Landroidx/work/ListenableWorker$a;

    check-cast p1, Landroidx/work/ListenableWorker$a$c;

    .line 10
    iget-object p1, p1, Landroidx/work/ListenableWorker$a$c;->a:Lsj;

    .line 11
    iget-object v0, p0, Lqk;->o:Lem;

    iget-object v3, p0, Lqk;->f:Ljava/lang/String;

    check-cast v0, Lfm;

    invoke-virtual {v0, v3, p1}, Lfm;->l(Ljava/lang/String;Lsj;)V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 13
    iget-object p1, p0, Lqk;->p:Lvl;

    iget-object v0, p0, Lqk;->f:Ljava/lang/String;

    check-cast p1, Lwl;

    invoke-virtual {p1, v0}, Lwl;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 14
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 15
    iget-object v5, p0, Lqk;->o:Lem;

    check-cast v5, Lfm;

    invoke-virtual {v5, v0}, Lfm;->e(Ljava/lang/String;)Lak;

    move-result-object v5

    sget-object v6, Lak;->i:Lak;

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lqk;->p:Lvl;

    .line 16
    check-cast v5, Lwl;

    invoke-virtual {v5, v0}, Lwl;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 17
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object v5

    sget-object v6, Lqk;->w:Ljava/lang/String;

    const-string v7, "Setting status to enqueued for %s"

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v0, v8, v2

    .line 18
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Throwable;

    .line 19
    invoke-virtual {v5, v6, v7, v8}, Lvj;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 20
    iget-object v5, p0, Lqk;->o:Lem;

    sget-object v6, Lak;->e:Lak;

    new-array v7, v1, [Ljava/lang/String;

    aput-object v0, v7, v2

    check-cast v5, Lfm;

    invoke-virtual {v5, v6, v7}, Lfm;->n(Lak;[Ljava/lang/String;)I

    .line 21
    iget-object v5, p0, Lqk;->o:Lem;

    check-cast v5, Lfm;

    invoke-virtual {v5, v0, v3, v4}, Lfm;->m(Ljava/lang/String;J)V

    goto :goto_0

    .line 22
    :cond_2
    iget-object p1, p0, Lqk;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Llg;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iget-object p1, p0, Lqk;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Llg;->g()V

    .line 24
    invoke-virtual {p0, v2}, Lqk;->f(Z)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 25
    iget-object v0, p0, Lqk;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Llg;->g()V

    .line 26
    invoke-virtual {p0, v2}, Lqk;->f(Z)V

    .line 27
    throw p1

    .line 28
    :cond_3
    instance-of p1, p1, Landroidx/work/ListenableWorker$a$b;

    if-eqz p1, :cond_4

    .line 29
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object p1

    sget-object v0, Lqk;->w:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lqk;->s:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v3, "Worker result RETRY for %s"

    .line 30
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    .line 31
    invoke-virtual {p1, v0, v1, v2}, Lvj;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 32
    invoke-virtual {p0}, Lqk;->d()V

    goto :goto_1

    .line 33
    :cond_4
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object p1

    sget-object v0, Lqk;->w:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lqk;->s:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v3, "Worker result FAILURE for %s"

    .line 34
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    .line 35
    invoke-virtual {p1, v0, v1, v2}, Lvj;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 36
    iget-object p1, p0, Lqk;->i:Ldm;

    invoke-virtual {p1}, Ldm;->d()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 37
    invoke-virtual {p0}, Lqk;->e()V

    goto :goto_1

    .line 38
    :cond_5
    invoke-virtual {p0}, Lqk;->h()V

    :goto_1
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3
    :goto_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lqk;->o:Lem;

    check-cast v1, Lfm;

    invoke-virtual {v1, p1}, Lfm;->e(Ljava/lang/String;)Lak;

    move-result-object v1

    sget-object v2, Lak;->j:Lak;

    if-eq v1, v2, :cond_0

    .line 6
    iget-object v1, p0, Lqk;->o:Lem;

    sget-object v2, Lak;->h:Lak;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    check-cast v1, Lfm;

    invoke-virtual {v1, v2, v3}, Lfm;->n(Lak;[Ljava/lang/String;)I

    .line 7
    :cond_0
    iget-object v1, p0, Lqk;->p:Lvl;

    check-cast v1, Lwl;

    invoke-virtual {v1, p1}, Lwl;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lqk;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lqk;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Llg;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lqk;->o:Lem;

    iget-object v2, p0, Lqk;->f:Ljava/lang/String;

    check-cast v0, Lfm;

    invoke-virtual {v0, v2}, Lfm;->e(Ljava/lang/String;)Lak;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lqk;->f(Z)V

    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    sget-object v2, Lak;->f:Lak;

    if-ne v0, v2, :cond_1

    .line 6
    iget-object v0, p0, Lqk;->k:Landroidx/work/ListenableWorker$a;

    invoke-virtual {p0, v0}, Lqk;->a(Landroidx/work/ListenableWorker$a;)V

    .line 7
    iget-object v0, p0, Lqk;->o:Lem;

    iget-object v1, p0, Lqk;->f:Ljava/lang/String;

    check-cast v0, Lfm;

    invoke-virtual {v0, v1}, Lfm;->e(Ljava/lang/String;)Lak;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lak;->i()Z

    move-result v0

    move v1, v0

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0}, Lak;->i()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    invoke-virtual {p0}, Lqk;->d()V

    .line 11
    :cond_2
    :goto_0
    iget-object v0, p0, Lqk;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Llg;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v0, p0, Lqk;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Llg;->g()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lqk;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Llg;->g()V

    .line 13
    throw v0

    .line 14
    :cond_3
    :goto_1
    iget-object v0, p0, Lqk;->g:Ljava/util/List;

    if-eqz v0, :cond_5

    if-eqz v1, :cond_4

    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lik;

    .line 16
    iget-object v2, p0, Lqk;->f:Ljava/lang/String;

    invoke-interface {v1, v2}, Lik;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 17
    :cond_4
    iget-object v0, p0, Lqk;->l:Lpj;

    iget-object v1, p0, Lqk;->n:Landroidx/work/impl/WorkDatabase;

    iget-object v2, p0, Lqk;->g:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ljk;->a(Lpj;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    :cond_5
    return-void
.end method

.method public final d()V
    .locals 6

    .line 1
    iget-object v0, p0, Lqk;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Llg;->c()V

    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lqk;->o:Lem;

    sget-object v2, Lak;->e:Lak;

    new-array v3, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lqk;->f:Ljava/lang/String;

    aput-object v5, v3, v4

    check-cast v1, Lfm;

    invoke-virtual {v1, v2, v3}, Lfm;->n(Lak;[Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lqk;->o:Lem;

    iget-object v2, p0, Lqk;->f:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    check-cast v1, Lfm;

    invoke-virtual {v1, v2, v3, v4}, Lfm;->m(Ljava/lang/String;J)V

    .line 4
    iget-object v1, p0, Lqk;->o:Lem;

    iget-object v2, p0, Lqk;->f:Ljava/lang/String;

    const-wide/16 v3, -0x1

    check-cast v1, Lfm;

    invoke-virtual {v1, v2, v3, v4}, Lfm;->j(Ljava/lang/String;J)I

    .line 5
    iget-object v1, p0, Lqk;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Llg;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, p0, Lqk;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Llg;->g()V

    .line 7
    invoke-virtual {p0, v0}, Lqk;->f(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 8
    iget-object v2, p0, Lqk;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Llg;->g()V

    .line 9
    invoke-virtual {p0, v0}, Lqk;->f(Z)V

    .line 10
    throw v1
.end method

.method public final e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lqk;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Llg;->c()V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lqk;->o:Lem;

    iget-object v2, p0, Lqk;->f:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    check-cast v1, Lfm;

    invoke-virtual {v1, v2, v3, v4}, Lfm;->m(Ljava/lang/String;J)V

    .line 3
    iget-object v1, p0, Lqk;->o:Lem;

    sget-object v2, Lak;->e:Lak;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lqk;->f:Ljava/lang/String;

    aput-object v4, v3, v0

    check-cast v1, Lfm;

    invoke-virtual {v1, v2, v3}, Lfm;->n(Lak;[Ljava/lang/String;)I

    .line 4
    iget-object v1, p0, Lqk;->o:Lem;

    iget-object v2, p0, Lqk;->f:Ljava/lang/String;

    check-cast v1, Lfm;

    invoke-virtual {v1, v2}, Lfm;->k(Ljava/lang/String;)I

    .line 5
    iget-object v1, p0, Lqk;->o:Lem;

    iget-object v2, p0, Lqk;->f:Ljava/lang/String;

    const-wide/16 v3, -0x1

    check-cast v1, Lfm;

    invoke-virtual {v1, v2, v3, v4}, Lfm;->j(Ljava/lang/String;J)I

    .line 6
    iget-object v1, p0, Lqk;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Llg;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v1, p0, Lqk;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Llg;->g()V

    .line 8
    invoke-virtual {p0, v0}, Lqk;->f(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 9
    iget-object v2, p0, Lqk;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Llg;->g()V

    .line 10
    invoke-virtual {p0, v0}, Lqk;->f(Z)V

    .line 11
    throw v1
.end method

.method public final f(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lqk;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Llg;->c()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lqk;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->n()Lem;

    move-result-object v0

    check-cast v0, Lfm;

    invoke-virtual {v0}, Lfm;->a()Ljava/util/List;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lqk;->e:Landroid/content/Context;

    const-class v2, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    invoke-static {v0, v2, v1}, Lom;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 5
    :cond_1
    iget-object v0, p0, Lqk;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Llg;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Lqk;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Llg;->g()V

    .line 7
    iget-object v0, p0, Lqk;->t:Lwm;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lwm;->j(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 8
    iget-object v0, p0, Lqk;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Llg;->g()V

    .line 9
    throw p1
.end method

.method public final g()V
    .locals 7

    .line 1
    iget-object v0, p0, Lqk;->o:Lem;

    iget-object v1, p0, Lqk;->f:Ljava/lang/String;

    check-cast v0, Lfm;

    invoke-virtual {v0, v1}, Lfm;->e(Ljava/lang/String;)Lak;

    move-result-object v0

    .line 2
    sget-object v1, Lak;->f:Lak;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object v0

    sget-object v1, Lqk;->w:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lqk;->f:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v5, "Status for %s is RUNNING;not doing any work and rescheduling for later execution"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v4, v3}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 4
    invoke-virtual {p0, v2}, Lqk;->f(Z)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object v1

    sget-object v4, Lqk;->w:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lqk;->f:Ljava/lang/String;

    aput-object v6, v5, v3

    aput-object v0, v5, v2

    const-string v0, "Status for %s is %s; not doing any work"

    .line 6
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Throwable;

    .line 7
    invoke-virtual {v1, v4, v0, v2}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 8
    invoke-virtual {p0, v3}, Lqk;->f(Z)V

    :goto_0
    return-void
.end method

.method public h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lqk;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Llg;->c()V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lqk;->f:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lqk;->b(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lqk;->k:Landroidx/work/ListenableWorker$a;

    check-cast v1, Landroidx/work/ListenableWorker$a$a;

    .line 4
    iget-object v1, v1, Landroidx/work/ListenableWorker$a$a;->a:Lsj;

    .line 5
    iget-object v2, p0, Lqk;->o:Lem;

    iget-object v3, p0, Lqk;->f:Ljava/lang/String;

    check-cast v2, Lfm;

    invoke-virtual {v2, v3, v1}, Lfm;->l(Ljava/lang/String;Lsj;)V

    .line 6
    iget-object v1, p0, Lqk;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Llg;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v1, p0, Lqk;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Llg;->g()V

    .line 8
    invoke-virtual {p0, v0}, Lqk;->f(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 9
    iget-object v2, p0, Lqk;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Llg;->g()V

    .line 10
    invoke-virtual {p0, v0}, Lqk;->f(Z)V

    .line 11
    throw v1
.end method

.method public final i()Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lqk;->v:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object v0

    sget-object v2, Lqk;->w:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lqk;->s:Ljava/lang/String;

    aput-object v5, v4, v1

    const-string v5, "Work interrupted for %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v4, v5}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 3
    iget-object v0, p0, Lqk;->o:Lem;

    iget-object v2, p0, Lqk;->f:Ljava/lang/String;

    check-cast v0, Lfm;

    invoke-virtual {v0, v2}, Lfm;->e(Ljava/lang/String;)Lak;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lqk;->f(Z)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lak;->i()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lqk;->f(Z)V

    :goto_0
    return v3

    :cond_1
    return v1
.end method

.method public run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lqk;->q:Lhm;

    iget-object v1, p0, Lqk;->f:Ljava/lang/String;

    check-cast v0, Lim;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?"

    const/4 v3, 0x1

    .line 3
    invoke-static {v2, v3}, Lng;->c(Ljava/lang/String;I)Lng;

    move-result-object v2

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {v2, v3}, Lng;->f(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v2, v3, v1}, Lng;->g(ILjava/lang/String;)V

    .line 6
    :goto_0
    iget-object v1, v0, Lim;->a:Llg;

    invoke-virtual {v1}, Llg;->b()V

    .line 7
    iget-object v0, v0, Lim;->a:Llg;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lqg;->a(Llg;Lzg;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 8
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 10
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    goto :goto_1

    .line 12
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 13
    invoke-virtual {v2}, Lng;->i()V

    .line 14
    iput-object v4, p0, Lqk;->r:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Work [ id="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lqk;->f:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", tags={ "

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x1

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_3

    :cond_2
    const-string v6, ", "

    .line 19
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    :goto_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const-string v2, " } ]"

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    iput-object v0, p0, Lqk;->s:Ljava/lang/String;

    .line 24
    sget-object v0, Lak;->e:Lak;

    invoke-virtual {p0}, Lqk;->i()Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_c

    .line 25
    :cond_4
    iget-object v2, p0, Lqk;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Llg;->c()V

    .line 26
    :try_start_1
    iget-object v2, p0, Lqk;->o:Lem;

    iget-object v4, p0, Lqk;->f:Ljava/lang/String;

    check-cast v2, Lfm;

    invoke-virtual {v2, v4}, Lfm;->h(Ljava/lang/String;)Ldm;

    move-result-object v2

    iput-object v2, p0, Lqk;->i:Ldm;

    if-nez v2, :cond_5

    .line 27
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object v0

    sget-object v2, Lqk;->w:Ljava/lang/String;

    const-string v4, "Didn\'t find WorkSpec for id %s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lqk;->f:Ljava/lang/String;

    aput-object v5, v3, v1

    .line 28
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Throwable;

    .line 29
    invoke-virtual {v0, v2, v3, v4}, Lvj;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 30
    invoke-virtual {p0, v1}, Lqk;->f(Z)V

    goto :goto_5

    .line 31
    :cond_5
    iget-object v4, v2, Ldm;->b:Lak;

    if-eq v4, v0, :cond_6

    .line 32
    invoke-virtual {p0}, Lqk;->g()V

    .line 33
    iget-object v0, p0, Lqk;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Llg;->j()V

    .line 34
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object v0

    sget-object v2, Lqk;->w:Ljava/lang/String;

    const-string v4, "%s is not in ENQUEUED state. Nothing more to do."

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lqk;->i:Ldm;

    iget-object v5, v5, Ldm;->c:Ljava/lang/String;

    aput-object v5, v3, v1

    .line 35
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Throwable;

    .line 36
    invoke-virtual {v0, v2, v3, v1}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_5

    .line 37
    :cond_6
    invoke-virtual {v2}, Ldm;->d()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lqk;->i:Ldm;

    invoke-virtual {v2}, Ldm;->c()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 38
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 39
    iget-object v2, p0, Lqk;->i:Ldm;

    iget-wide v6, v2, Ldm;->n:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-nez v10, :cond_8

    const/4 v6, 0x1

    goto :goto_4

    :cond_8
    const/4 v6, 0x0

    :goto_4
    if-nez v6, :cond_9

    .line 40
    invoke-virtual {v2}, Ldm;->a()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-gez v2, :cond_9

    .line 41
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object v0

    sget-object v2, Lqk;->w:Ljava/lang/String;

    const-string v4, "Delaying execution for %s because it is being executed before schedule."

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lqk;->i:Ldm;

    iget-object v6, v6, Ldm;->c:Ljava/lang/String;

    aput-object v6, v5, v1

    .line 42
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Throwable;

    .line 43
    invoke-virtual {v0, v2, v4, v1}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 44
    invoke-virtual {p0, v3}, Lqk;->f(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 45
    :goto_5
    iget-object v0, p0, Lqk;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Llg;->g()V

    goto/16 :goto_c

    .line 46
    :cond_9
    :try_start_2
    iget-object v2, p0, Lqk;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Llg;->j()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 47
    iget-object v2, p0, Lqk;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Llg;->g()V

    .line 48
    iget-object v2, p0, Lqk;->i:Ldm;

    invoke-virtual {v2}, Ldm;->d()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 49
    iget-object v2, p0, Lqk;->i:Ldm;

    iget-object v2, v2, Ldm;->e:Lsj;

    :goto_6
    move-object v6, v2

    goto/16 :goto_a

    .line 50
    :cond_a
    iget-object v2, p0, Lqk;->i:Ldm;

    iget-object v2, v2, Ldm;->d:Ljava/lang/String;

    .line 51
    sget-object v4, Luj;->a:Ljava/lang/String;

    .line 52
    :try_start_3
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 53
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Luj;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_7

    :catch_0
    move-exception v4

    .line 54
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object v5

    sget-object v6, Luj;->a:Ljava/lang/String;

    const-string v7, "Trouble instantiating + "

    invoke-static {v7, v2}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v7, v3, [Ljava/lang/Throwable;

    aput-object v4, v7, v1

    invoke-virtual {v5, v6, v2, v7}, Lvj;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    const/4 v4, 0x0

    :goto_7
    if-nez v4, :cond_b

    .line 55
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object v0

    sget-object v2, Lqk;->w:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lqk;->i:Ldm;

    iget-object v4, v4, Ldm;->d:Ljava/lang/String;

    aput-object v4, v3, v1

    const-string v4, "Could not create Input Merger %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v3, v1}, Lvj;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 56
    invoke-virtual {p0}, Lqk;->h()V

    goto/16 :goto_c

    .line 57
    :cond_b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    iget-object v5, p0, Lqk;->i:Ldm;

    iget-object v5, v5, Ldm;->e:Lsj;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v5, p0, Lqk;->o:Lem;

    iget-object v6, p0, Lqk;->f:Ljava/lang/String;

    check-cast v5, Lfm;

    .line 60
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "SELECT output FROM workspec WHERE id IN (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    .line 61
    invoke-static {v7, v3}, Lng;->c(Ljava/lang/String;I)Lng;

    move-result-object v7

    if-nez v6, :cond_c

    .line 62
    invoke-virtual {v7, v3}, Lng;->f(I)V

    goto :goto_8

    .line 63
    :cond_c
    invoke-virtual {v7, v3, v6}, Lng;->g(ILjava/lang/String;)V

    .line 64
    :goto_8
    iget-object v6, v5, Lfm;->a:Llg;

    invoke-virtual {v6}, Llg;->b()V

    .line 65
    iget-object v5, v5, Lfm;->a:Llg;

    invoke-static {v5, v7, v1}, Lqg;->a(Llg;Lzg;Z)Landroid/database/Cursor;

    move-result-object v5

    .line 66
    :try_start_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    :goto_9
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 68
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 69
    invoke-static {v8}, Lsj;->a([B)Lsj;

    move-result-object v8

    .line 70
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_9

    .line 71
    :cond_d
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 72
    invoke-virtual {v7}, Lng;->i()V

    .line 73
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 74
    invoke-virtual {v4, v2}, Luj;->a(Ljava/util/List;)Lsj;

    move-result-object v2

    goto/16 :goto_6

    .line 75
    :goto_a
    new-instance v2, Landroidx/work/WorkerParameters;

    iget-object v4, p0, Lqk;->f:Ljava/lang/String;

    .line 76
    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    iget-object v7, p0, Lqk;->r:Ljava/util/List;

    iget-object v8, p0, Lqk;->h:Landroidx/work/WorkerParameters$a;

    iget-object v4, p0, Lqk;->i:Ldm;

    iget v9, v4, Ldm;->k:I

    iget-object v4, p0, Lqk;->l:Lpj;

    .line 77
    iget-object v10, v4, Lpj;->a:Ljava/util/concurrent/Executor;

    .line 78
    iget-object v11, p0, Lqk;->m:Lxm;

    .line 79
    iget-object v12, v4, Lpj;->c:Lek;

    move-object v4, v2

    .line 80
    invoke-direct/range {v4 .. v12}, Landroidx/work/WorkerParameters;-><init>(Ljava/util/UUID;Lsj;Ljava/util/Collection;Landroidx/work/WorkerParameters$a;ILjava/util/concurrent/Executor;Lxm;Lek;)V

    .line 81
    iget-object v4, p0, Lqk;->j:Landroidx/work/ListenableWorker;

    if-nez v4, :cond_e

    .line 82
    iget-object v4, p0, Lqk;->l:Lpj;

    .line 83
    iget-object v4, v4, Lpj;->c:Lek;

    .line 84
    iget-object v5, p0, Lqk;->e:Landroid/content/Context;

    iget-object v6, p0, Lqk;->i:Ldm;

    iget-object v6, v6, Ldm;->c:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v2}, Lek;->a(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;

    move-result-object v2

    iput-object v2, p0, Lqk;->j:Landroidx/work/ListenableWorker;

    .line 85
    :cond_e
    iget-object v2, p0, Lqk;->j:Landroidx/work/ListenableWorker;

    if-nez v2, :cond_f

    .line 86
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object v0

    sget-object v2, Lqk;->w:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lqk;->i:Ldm;

    iget-object v4, v4, Ldm;->c:Ljava/lang/String;

    aput-object v4, v3, v1

    const-string v4, "Could not create Worker %s"

    .line 87
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Throwable;

    .line 88
    invoke-virtual {v0, v2, v3, v1}, Lvj;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 89
    invoke-virtual {p0}, Lqk;->h()V

    goto/16 :goto_c

    .line 90
    :cond_f
    invoke-virtual {v2}, Landroidx/work/ListenableWorker;->isUsed()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 91
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object v0

    sget-object v2, Lqk;->w:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lqk;->i:Ldm;

    iget-object v4, v4, Ldm;->c:Ljava/lang/String;

    aput-object v4, v3, v1

    const-string v4, "Received an already-used Worker %s; WorkerFactory should return new instances"

    .line 92
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Throwable;

    .line 93
    invoke-virtual {v0, v2, v3, v1}, Lvj;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 94
    invoke-virtual {p0}, Lqk;->h()V

    goto :goto_c

    .line 95
    :cond_10
    iget-object v2, p0, Lqk;->j:Landroidx/work/ListenableWorker;

    invoke-virtual {v2}, Landroidx/work/ListenableWorker;->setUsed()V

    .line 96
    iget-object v2, p0, Lqk;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Llg;->c()V

    .line 97
    :try_start_5
    iget-object v2, p0, Lqk;->o:Lem;

    iget-object v4, p0, Lqk;->f:Ljava/lang/String;

    check-cast v2, Lfm;

    invoke-virtual {v2, v4}, Lfm;->e(Ljava/lang/String;)Lak;

    move-result-object v2

    if-ne v2, v0, :cond_11

    .line 98
    iget-object v0, p0, Lqk;->o:Lem;

    sget-object v2, Lak;->f:Lak;

    new-array v4, v3, [Ljava/lang/String;

    iget-object v5, p0, Lqk;->f:Ljava/lang/String;

    aput-object v5, v4, v1

    check-cast v0, Lfm;

    invoke-virtual {v0, v2, v4}, Lfm;->n(Lak;[Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lqk;->o:Lem;

    iget-object v1, p0, Lqk;->f:Ljava/lang/String;

    check-cast v0, Lfm;

    invoke-virtual {v0, v1}, Lfm;->i(Ljava/lang/String;)I

    goto :goto_b

    :cond_11
    const/4 v3, 0x0

    .line 100
    :goto_b
    iget-object v0, p0, Lqk;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Llg;->j()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 101
    iget-object v0, p0, Lqk;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Llg;->g()V

    if-eqz v3, :cond_13

    .line 102
    invoke-virtual {p0}, Lqk;->i()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_c

    .line 103
    :cond_12
    new-instance v0, Lwm;

    invoke-direct {v0}, Lwm;-><init>()V

    .line 104
    iget-object v1, p0, Lqk;->m:Lxm;

    check-cast v1, Lym;

    .line 105
    iget-object v1, v1, Lym;->c:Ljava/util/concurrent/Executor;

    .line 106
    new-instance v2, Lok;

    invoke-direct {v2, p0, v0}, Lok;-><init>(Lqk;Lwm;)V

    .line 107
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 108
    iget-object v1, p0, Lqk;->s:Ljava/lang/String;

    .line 109
    new-instance v2, Lpk;

    invoke-direct {v2, p0, v0, v1}, Lpk;-><init>(Lqk;Lwm;Ljava/lang/String;)V

    iget-object v1, p0, Lqk;->m:Lxm;

    .line 110
    check-cast v1, Lym;

    .line 111
    iget-object v1, v1, Lym;->a:Ljava/util/concurrent/Executor;

    .line 112
    invoke-virtual {v0, v2, v1}, Lum;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_c

    .line 113
    :cond_13
    invoke-virtual {p0}, Lqk;->g()V

    :goto_c
    return-void

    :catchall_0
    move-exception v0

    .line 114
    iget-object v1, p0, Lqk;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Llg;->g()V

    .line 115
    throw v0

    :catchall_1
    move-exception v0

    .line 116
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 117
    invoke-virtual {v7}, Lng;->i()V

    .line 118
    throw v0

    :catchall_2
    move-exception v0

    .line 119
    iget-object v1, p0, Lqk;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Llg;->g()V

    .line 120
    throw v0

    :catchall_3
    move-exception v1

    .line 121
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 122
    invoke-virtual {v2}, Lng;->i()V

    .line 123
    throw v1
.end method
