.class public final Lre7$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Ltb7;
.implements Lic7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lre7$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lic7;",
        ">;",
        "Ltb7<",
        "TR;>;",
        "Lic7;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lre7$a;


# direct methods
.method public constructor <init>(Lre7$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lre7$a$a;->e:Lre7$a;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lre7$a$a;->e:Lre7$a;

    .line 2
    iget-object v1, v0, Lre7$a;->i:Lhc7;

    invoke-virtual {v1, p0}, Lhc7;->c(Lic7;)Z

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const-wide/16 v2, 0x1

    const v4, 0x7fffffff

    if-nez v1, :cond_6

    const/4 v1, 0x0

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4
    iget-object v6, v0, Lre7$a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v6

    if-nez v6, :cond_0

    const/4 v1, 0x1

    .line 5
    :cond_0
    iget-object v5, v0, Lre7$a;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Luh7;

    if-eqz v1, :cond_3

    if-eqz v5, :cond_1

    .line 6
    invoke-virtual {v5}, Luh7;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    :cond_1
    iget-object v1, v0, Lre7$a;->k:Lsi7;

    .line 8
    invoke-static {v1}, Lvi7;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 9
    iget-object v0, v0, Lre7$a;->e:Lx38;

    invoke-interface {v0, v1}, Lx38;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, v0, Lre7$a;->e:Lx38;

    invoke-interface {v0}, Lx38;->a()V

    goto :goto_0

    .line 11
    :cond_3
    iget v1, v0, Lre7$a;->g:I

    if-eq v1, v4, :cond_4

    .line 12
    iget-object v1, v0, Lre7$a;->n:Ly38;

    invoke-interface {v1, v2, v3}, Ly38;->l(J)V

    .line 13
    :cond_4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    .line 14
    :cond_5
    invoke-virtual {v0}, Lre7$a;->h()V

    goto :goto_0

    .line 15
    :cond_6
    iget-object v1, v0, Lre7$a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 16
    iget v1, v0, Lre7$a;->g:I

    if-eq v1, v4, :cond_7

    .line 17
    iget-object v1, v0, Lre7$a;->n:Ly38;

    invoke-interface {v1, v2, v3}, Ly38;->l(J)V

    .line 18
    :cond_7
    invoke-virtual {v0}, Lre7$a;->g()V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lre7$a$a;->e:Lre7$a;

    .line 2
    iget-object v1, v0, Lre7$a;->i:Lhc7;

    invoke-virtual {v1, p0}, Lhc7;->c(Lic7;)Z

    .line 3
    iget-object v1, v0, Lre7$a;->k:Lsi7;

    .line 4
    invoke-static {v1, p1}, Lvi7;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    iget-boolean p1, v0, Lre7$a;->f:Z

    if-nez p1, :cond_0

    .line 6
    iget-object p1, v0, Lre7$a;->n:Ly38;

    invoke-interface {p1}, Ly38;->cancel()V

    .line 7
    iget-object p1, v0, Lre7$a;->i:Lhc7;

    invoke-virtual {p1}, Lhc7;->k()V

    goto :goto_0

    .line 8
    :cond_0
    iget p1, v0, Lre7$a;->g:I

    const v1, 0x7fffffff

    if-eq p1, v1, :cond_1

    .line 9
    iget-object p1, v0, Lre7$a;->n:Ly38;

    const-wide/16 v1, 0x1

    invoke-interface {p1, v1, v2}, Ly38;->l(J)V

    .line 10
    :cond_1
    :goto_0
    iget-object p1, v0, Lre7$a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 11
    invoke-virtual {v0}, Lre7$a;->g()V

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {p1}, Ln56;->z1(Ljava/lang/Throwable;)V

    :goto_1
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

.method public onSuccess(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lre7$a$a;->e:Lre7$a;

    .line 2
    iget-object v1, v0, Lre7$a;->i:Lhc7;

    invoke-virtual {v1, p0}, Lhc7;->c(Lic7;)Z

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4
    iget-object v3, v0, Lre7$a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    .line 5
    :cond_0
    iget-object v2, v0, Lre7$a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    .line 6
    iget-object v2, v0, Lre7$a;->e:Lx38;

    invoke-interface {v2, p1}, Lx38;->d(Ljava/lang/Object;)V

    .line 7
    iget-object p1, v0, Lre7$a;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Luh7;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Luh7;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    :cond_1
    iget-object p1, v0, Lre7$a;->k:Lsi7;

    .line 10
    invoke-static {p1}, Lvi7;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 11
    iget-object v0, v0, Lre7$a;->e:Lx38;

    invoke-interface {v0, p1}, Lx38;->b(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 12
    :cond_2
    iget-object p1, v0, Lre7$a;->e:Lx38;

    invoke-interface {p1}, Lx38;->a()V

    goto :goto_1

    .line 13
    :cond_3
    iget-object p1, v0, Lre7$a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-static {p1, v1, v2}, Ln56;->E1(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 14
    iget p1, v0, Lre7$a;->g:I

    const v3, 0x7fffffff

    if-eq p1, v3, :cond_5

    .line 15
    iget-object p1, v0, Lre7$a;->n:Ly38;

    invoke-interface {p1, v1, v2}, Ly38;->l(J)V

    goto :goto_0

    .line 16
    :cond_4
    invoke-virtual {v0}, Lre7$a;->i()Luh7;

    move-result-object v1

    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    invoke-virtual {v1, p1}, Luh7;->offer(Ljava/lang/Object;)Z

    .line 19
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_5
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 21
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 22
    :cond_6
    invoke-virtual {v0}, Lre7$a;->i()Luh7;

    move-result-object v1

    .line 23
    monitor-enter v1

    .line 24
    :try_start_2
    invoke-virtual {v1, p1}, Luh7;->offer(Ljava/lang/Object;)Z

    .line 25
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 26
    iget-object p1, v0, Lre7$a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    .line 28
    :cond_7
    invoke-virtual {v0}, Lre7$a;->h()V

    :goto_1
    return-void

    :catchall_1
    move-exception p1

    .line 29
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method
