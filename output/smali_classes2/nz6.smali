.class public final Lnz6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lo07;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz6$b;
    }
.end annotation


# instance fields
.field public final e:Lkz6;

.field public final f:Llz6;

.field public final g:Landroid/os/Handler;

.field public final h:Liz6;

.field public final i:Lf07;

.field public final j:Lf07;

.field public final k:Lf07;

.field public final l:Lb07;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Lg07;

.field public final p:Luz6;

.field public final q:Lgz6;

.field public final r:Ll07;

.field public final s:Lk07;

.field public final t:Z

.field public u:Lvz6;


# direct methods
.method public constructor <init>(Lkz6;Llz6;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lvz6;->e:Lvz6;

    iput-object v0, p0, Lnz6;->u:Lvz6;

    .line 3
    iput-object p1, p0, Lnz6;->e:Lkz6;

    .line 4
    iput-object p2, p0, Lnz6;->f:Llz6;

    .line 5
    iput-object p3, p0, Lnz6;->g:Landroid/os/Handler;

    .line 6
    iget-object p1, p1, Lkz6;->a:Liz6;

    iput-object p1, p0, Lnz6;->h:Liz6;

    .line 7
    iget-object p3, p1, Liz6;->k:Lf07;

    iput-object p3, p0, Lnz6;->i:Lf07;

    .line 8
    iget-object p3, p1, Liz6;->n:Lf07;

    iput-object p3, p0, Lnz6;->j:Lf07;

    .line 9
    iget-object p3, p1, Liz6;->o:Lf07;

    iput-object p3, p0, Lnz6;->k:Lf07;

    .line 10
    iget-object p1, p1, Liz6;->l:Lb07;

    iput-object p1, p0, Lnz6;->l:Lb07;

    .line 11
    iget-object p1, p2, Llz6;->a:Ljava/lang/String;

    iput-object p1, p0, Lnz6;->m:Ljava/lang/String;

    .line 12
    iget-object p1, p2, Llz6;->b:Ljava/lang/String;

    iput-object p1, p0, Lnz6;->n:Ljava/lang/String;

    .line 13
    iget-object p1, p2, Llz6;->c:Lg07;

    iput-object p1, p0, Lnz6;->o:Lg07;

    .line 14
    iget-object p1, p2, Llz6;->d:Luz6;

    iput-object p1, p0, Lnz6;->p:Luz6;

    .line 15
    iget-object p1, p2, Llz6;->e:Lgz6;

    iput-object p1, p0, Lnz6;->q:Lgz6;

    .line 16
    iget-object p3, p2, Llz6;->f:Ll07;

    iput-object p3, p0, Lnz6;->r:Ll07;

    .line 17
    iget-object p2, p2, Llz6;->g:Lk07;

    iput-object p2, p0, Lnz6;->s:Lk07;

    .line 18
    iget-boolean p1, p1, Lgz6;->s:Z

    .line 19
    iput-boolean p1, p0, Lnz6;->t:Z

    return-void
.end method

.method public static j(Ljava/lang/Runnable;ZLandroid/os/Handler;Lkz6;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 2
    iget-object p1, p3, Lkz6;->d:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnz6$b;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnz6;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lnz6;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lnz6$b;

    invoke-direct {v0, p0}, Lnz6$b;-><init>(Lnz6;)V

    throw v0

    .line 4
    :cond_1
    new-instance v0, Lnz6$b;

    invoke-direct {v0, p0}, Lnz6$b;-><init>(Lnz6;)V

    throw v0
.end method

.method public final b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnz6;->o:Lg07;

    invoke-interface {v0}, Lg07;->d()Lxz6;

    move-result-object v6

    .line 2
    new-instance v0, Lc07;

    iget-object v2, p0, Lnz6;->n:Ljava/lang/String;

    iget-object v4, p0, Lnz6;->m:Ljava/lang/String;

    iget-object v5, p0, Lnz6;->p:Luz6;

    invoke-virtual {p0}, Lnz6;->e()Lf07;

    move-result-object v7

    iget-object v8, p0, Lnz6;->q:Lgz6;

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lc07;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Luz6;Lxz6;Lf07;Lgz6;)V

    .line 3
    iget-object p1, p0, Lnz6;->l:Lb07;

    check-cast p1, La07;

    invoke-virtual {p1, v0}, La07;->a(Lc07;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final c()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnz6;->e()Lf07;

    move-result-object v0

    iget-object v1, p0, Lnz6;->m:Ljava/lang/String;

    iget-object v2, p0, Lnz6;->q:Lgz6;

    .line 2
    iget-object v2, v2, Lgz6;->n:Ljava/lang/Object;

    .line 3
    invoke-interface {v0, v1, v2}, Lf07;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lnz6;->n:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "No stream for image [%s]"

    invoke-static {v1, v0}, Lp07;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 5
    :cond_0
    :try_start_0
    iget-object v1, p0, Lnz6;->h:Liz6;

    iget-object v1, v1, Liz6;->j:Lty6;

    iget-object v2, p0, Lnz6;->m:Ljava/lang/String;

    invoke-interface {v1, v2, v0, p0}, Lty6;->b(Ljava/lang/String;Ljava/io/InputStream;Lo07;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return v1

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 7
    :catch_1
    throw v1
.end method

.method public final d(Lrz6;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lnz6;->t:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnz6;->f()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnz6;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lnz6$a;

    invoke-direct {v0, p0, p1, p2}, Lnz6$a;-><init>(Lnz6;Lrz6;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 3
    iget-object p2, p0, Lnz6;->g:Landroid/os/Handler;

    iget-object v1, p0, Lnz6;->e:Lkz6;

    invoke-static {v0, p1, p2, v1}, Lnz6;->j(Ljava/lang/Runnable;ZLandroid/os/Handler;Lkz6;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final e()Lf07;
    .locals 1

    .line 1
    iget-object v0, p0, Lnz6;->e:Lkz6;

    .line 2
    iget-object v0, v0, Lkz6;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lnz6;->j:Lf07;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lnz6;->e:Lkz6;

    .line 5
    iget-object v0, v0, Lkz6;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lnz6;->k:Lf07;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lnz6;->i:Lf07;

    :goto_0
    return-object v0
.end method

.method public final f()Z
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    .line 2
    iget-object v3, p0, Lnz6;->n:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v1, "Task was interrupted [%s]"

    invoke-static {v1, v2}, Lp07;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    return v1
.end method

.method public final g()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnz6;->h()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnz6;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final h()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lnz6;->o:Lg07;

    invoke-interface {v0}, Lg07;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    .line 2
    iget-object v3, p0, Lnz6;->n:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v1, "ImageAware was collected by GC. Task is cancelled. [%s]"

    invoke-static {v1, v2}, Lp07;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    return v1
.end method

.method public final i()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lnz6;->e:Lkz6;

    iget-object v1, p0, Lnz6;->o:Lg07;

    .line 2
    iget-object v0, v0, Lkz6;->e:Ljava/util/Map;

    invoke-interface {v1}, Lg07;->n()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lnz6;->n:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    .line 4
    iget-object v3, p0, Lnz6;->n:Ljava/lang/String;

    aput-object v3, v0, v2

    const-string v2, "ImageAware is reused for another image. Task is cancelled. [%s]"

    invoke-static {v2, v0}, Lp07;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    return v2
.end method

.method public final k()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnz6$b;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lnz6;->n:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Cache image on disk [%s]"

    invoke-static {v1, v0}, Lp07;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lnz6;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lnz6;->h:Liz6;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lnz6;->h:Liz6;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-static {v0}, Lp07;->c(Ljava/lang/Throwable;)V

    :goto_0
    return v2
.end method

.method public final l()Landroid/graphics/Bitmap;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnz6$b;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lnz6;->h:Liz6;

    iget-object v1, v1, Liz6;->j:Lty6;

    iget-object v2, p0, Lnz6;->m:Ljava/lang/String;

    invoke-interface {v1, v2}, Lty6;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    const-string v4, "Load image from disk cache [%s]"

    new-array v5, v3, [Ljava/lang/Object;

    .line 3
    iget-object v6, p0, Lnz6;->n:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Lp07;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    sget-object v4, Lvz6;->f:Lvz6;

    iput-object v4, p0, Lnz6;->u:Lvz6;

    .line 5
    invoke-virtual {p0}, Lnz6;->a()V

    .line 6
    sget-object v4, Lf07$a;->i:Lf07$a;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lf07$a;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnz6;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lnz6$b; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 7
    :try_start_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-gtz v4, :cond_4

    :cond_1
    const-string v4, "Load image from network [%s]"

    new-array v3, v3, [Ljava/lang/Object;

    .line 8
    iget-object v5, p0, Lnz6;->n:Ljava/lang/String;

    aput-object v5, v3, v2

    invoke-static {v4, v3}, Lp07;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    sget-object v2, Lvz6;->e:Lvz6;

    iput-object v2, p0, Lnz6;->u:Lvz6;

    .line 10
    iget-object v2, p0, Lnz6;->m:Ljava/lang/String;

    .line 11
    iget-object v3, p0, Lnz6;->q:Lgz6;

    .line 12
    iget-boolean v3, v3, Lgz6;->i:Z

    if-eqz v3, :cond_2

    .line 13
    invoke-virtual {p0}, Lnz6;->k()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 14
    iget-object v3, p0, Lnz6;->h:Liz6;

    iget-object v3, v3, Liz6;->j:Lty6;

    iget-object v4, p0, Lnz6;->m:Ljava/lang/String;

    invoke-interface {v3, v4}, Lty6;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 15
    sget-object v2, Lf07$a;->i:Lf07$a;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lf07$a;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 16
    :cond_2
    invoke-virtual {p0}, Lnz6;->a()V

    .line 17
    invoke-virtual {p0, v2}, Lnz6;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 18
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gtz v2, :cond_4

    .line 19
    :cond_3
    sget-object v2, Lrz6;->f:Lrz6;

    invoke-virtual {p0, v2, v0}, Lnz6;->d(Lrz6;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lnz6$b; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_3

    :catchall_1
    move-exception v1

    .line 20
    :goto_1
    invoke-static {v1}, Lp07;->c(Ljava/lang/Throwable;)V

    .line 21
    sget-object v2, Lrz6;->i:Lrz6;

    invoke-virtual {p0, v2, v1}, Lnz6;->d(Lrz6;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_2
    move-exception v1

    .line 22
    :goto_2
    invoke-static {v1}, Lp07;->c(Ljava/lang/Throwable;)V

    .line 23
    sget-object v2, Lrz6;->h:Lrz6;

    invoke-virtual {p0, v2, v1}, Lnz6;->d(Lrz6;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_3
    move-exception v1

    .line 24
    :goto_3
    invoke-static {v1}, Lp07;->c(Ljava/lang/Throwable;)V

    .line 25
    sget-object v2, Lrz6;->e:Lrz6;

    invoke-virtual {p0, v2, v1}, Lnz6;->d(Lrz6;Ljava/lang/Throwable;)V

    :goto_4
    move-object v1, v0

    goto :goto_5

    :catch_4
    move-exception v0

    .line 26
    throw v0

    :catch_5
    move-object v1, v0

    .line 27
    :catch_6
    sget-object v2, Lrz6;->g:Lrz6;

    invoke-virtual {p0, v2, v0}, Lnz6;->d(Lrz6;Ljava/lang/Throwable;)V

    :cond_4
    :goto_5
    return-object v1
.end method

.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lnz6;->e:Lkz6;

    .line 2
    iget-object v0, v0, Lkz6;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lnz6;->e:Lkz6;

    .line 5
    iget-object v1, v1, Lkz6;->j:Ljava/lang/Object;

    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ImageLoader is paused. Waiting...  [%s]"

    new-array v4, v3, [Ljava/lang/Object;

    .line 8
    iget-object v5, p0, Lnz6;->n:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v0, v4}, Lp07;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    iget-object v0, p0, Lnz6;->e:Lkz6;

    .line 10
    iget-object v0, v0, Lkz6;->j:Ljava/lang/Object;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v0, ".. Resume loading [%s]"

    new-array v4, v3, [Ljava/lang/Object;

    .line 12
    iget-object v5, p0, Lnz6;->n:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v0, v4}, Lp07;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    const-string v0, "Task was interrupted [%s]"

    new-array v4, v3, [Ljava/lang/Object;

    .line 13
    iget-object v5, p0, Lnz6;->n:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v0, v4}, Lp07;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    monitor-exit v1

    const/4 v0, 0x1

    goto :goto_2

    .line 15
    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 16
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lnz6;->g()Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_2

    return-void

    .line 17
    :cond_2
    iget-object v0, p0, Lnz6;->q:Lgz6;

    .line 18
    iget v0, v0, Lgz6;->l:I

    if-lez v0, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_4

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    iget-object v0, p0, Lnz6;->n:Ljava/lang/String;

    aput-object v0, v1, v3

    const-string v0, "Delay %d ms before loading...  [%s]"

    invoke-static {v0, v1}, Lp07;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    :try_start_3
    iget-object v0, p0, Lnz6;->q:Lgz6;

    .line 21
    iget v0, v0, Lgz6;->l:I

    int-to-long v0, v0

    .line 22
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 23
    invoke-virtual {p0}, Lnz6;->g()Z

    move-result v0

    goto :goto_4

    :catch_1
    new-array v0, v3, [Ljava/lang/Object;

    .line 24
    iget-object v1, p0, Lnz6;->n:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "Task was interrupted [%s]"

    invoke-static {v1, v0}, Lp07;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_5

    return-void

    .line 25
    :cond_5
    iget-object v0, p0, Lnz6;->f:Llz6;

    iget-object v0, v0, Llz6;->h:Ljava/util/concurrent/locks/ReentrantLock;

    const-string v1, "Start display image task [%s]"

    new-array v4, v3, [Ljava/lang/Object;

    .line 26
    iget-object v5, p0, Lnz6;->n:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Lp07;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "Image already is loading. Waiting... [%s]"

    new-array v4, v3, [Ljava/lang/Object;

    .line 28
    iget-object v5, p0, Lnz6;->n:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Lp07;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    :cond_6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 30
    :try_start_4
    invoke-virtual {p0}, Lnz6;->a()V

    .line 31
    iget-object v1, p0, Lnz6;->h:Liz6;

    iget-object v1, v1, Liz6;->i:Lbz6;

    iget-object v4, p0, Lnz6;->n:Ljava/lang/String;

    invoke-interface {v1, v4}, Lbz6;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 32
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_5

    .line 33
    :cond_7
    sget-object v4, Lvz6;->g:Lvz6;

    iput-object v4, p0, Lnz6;->u:Lvz6;

    const-string v4, "...Get cached bitmap from memory after waiting. [%s]"

    new-array v5, v3, [Ljava/lang/Object;

    .line 34
    iget-object v6, p0, Lnz6;->n:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Lp07;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    .line 35
    :cond_8
    :goto_5
    invoke-virtual {p0}, Lnz6;->l()Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_4
    .catch Lnz6$b; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v1, :cond_9

    .line 36
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 37
    :cond_9
    :try_start_5
    invoke-virtual {p0}, Lnz6;->a()V

    .line 38
    invoke-virtual {p0}, Lnz6;->f()Z

    move-result v4

    if-nez v4, :cond_10

    .line 39
    iget-object v4, p0, Lnz6;->q:Lgz6;

    .line 40
    iget-object v4, v4, Lgz6;->o:Lm07;

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_b

    const-string v4, "PreProcess image before caching in memory [%s]"

    new-array v5, v3, [Ljava/lang/Object;

    .line 41
    iget-object v6, p0, Lnz6;->n:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Lp07;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    iget-object v4, p0, Lnz6;->q:Lgz6;

    .line 43
    iget-object v4, v4, Lgz6;->o:Lm07;

    .line 44
    invoke-interface {v4, v1}, Lm07;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_b

    const-string v4, "Pre-processor returned null [%s]"

    new-array v5, v3, [Ljava/lang/Object;

    .line 45
    iget-object v6, p0, Lnz6;->n:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Lp07;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    if-eqz v1, :cond_c

    .line 46
    iget-object v4, p0, Lnz6;->q:Lgz6;

    .line 47
    iget-boolean v4, v4, Lgz6;->h:Z

    if-eqz v4, :cond_c

    const-string v4, "Cache image in memory [%s]"

    new-array v5, v3, [Ljava/lang/Object;

    .line 48
    iget-object v6, p0, Lnz6;->n:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Lp07;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    iget-object v4, p0, Lnz6;->h:Liz6;

    iget-object v4, v4, Liz6;->i:Lbz6;

    iget-object v5, p0, Lnz6;->n:Ljava/lang/String;

    invoke-interface {v4, v5, v1}, Lbz6;->d(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    :cond_c
    :goto_7
    if-eqz v1, :cond_e

    .line 50
    iget-object v4, p0, Lnz6;->q:Lgz6;

    .line 51
    iget-object v4, v4, Lgz6;->p:Lm07;

    if-eqz v4, :cond_d

    const/4 v4, 0x1

    goto :goto_8

    :cond_d
    const/4 v4, 0x0

    :goto_8
    if-eqz v4, :cond_e

    const-string v4, "PostProcess image before displaying [%s]"

    new-array v5, v3, [Ljava/lang/Object;

    .line 52
    iget-object v6, p0, Lnz6;->n:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Lp07;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iget-object v4, p0, Lnz6;->q:Lgz6;

    .line 54
    iget-object v4, v4, Lgz6;->p:Lm07;

    .line 55
    invoke-interface {v4, v1}, Lm07;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_e

    const-string v4, "Post-processor returned null [%s]"

    new-array v3, v3, [Ljava/lang/Object;

    .line 56
    iget-object v5, p0, Lnz6;->n:Ljava/lang/String;

    aput-object v5, v3, v2

    invoke-static {v4, v3}, Lp07;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    :cond_e
    invoke-virtual {p0}, Lnz6;->a()V

    .line 58
    invoke-virtual {p0}, Lnz6;->f()Z

    move-result v3
    :try_end_5
    .catch Lnz6$b; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v3, :cond_f

    .line 59
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 60
    new-instance v0, Lfz6;

    iget-object v2, p0, Lnz6;->f:Llz6;

    iget-object v3, p0, Lnz6;->e:Lkz6;

    iget-object v4, p0, Lnz6;->u:Lvz6;

    invoke-direct {v0, v1, v2, v3, v4}, Lfz6;-><init>(Landroid/graphics/Bitmap;Llz6;Lkz6;Lvz6;)V

    .line 61
    iget-boolean v1, p0, Lnz6;->t:Z

    iget-object v2, p0, Lnz6;->g:Landroid/os/Handler;

    iget-object v3, p0, Lnz6;->e:Lkz6;

    invoke-static {v0, v1, v2, v3}, Lnz6;->j(Ljava/lang/Runnable;ZLandroid/os/Handler;Lkz6;)V

    return-void

    .line 62
    :cond_f
    :try_start_6
    new-instance v1, Lnz6$b;

    invoke-direct {v1, p0}, Lnz6$b;-><init>(Lnz6;)V

    throw v1

    .line 63
    :cond_10
    new-instance v1, Lnz6$b;

    invoke-direct {v1, p0}, Lnz6$b;-><init>(Lnz6;)V

    throw v1
    :try_end_6
    .catch Lnz6$b; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_a

    .line 64
    :catch_2
    :try_start_7
    iget-boolean v1, p0, Lnz6;->t:Z

    if-nez v1, :cond_12

    invoke-virtual {p0}, Lnz6;->f()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_9

    .line 65
    :cond_11
    new-instance v1, Loz6;

    invoke-direct {v1, p0}, Loz6;-><init>(Lnz6;)V

    .line 66
    iget-object v3, p0, Lnz6;->g:Landroid/os/Handler;

    iget-object v4, p0, Lnz6;->e:Lkz6;

    invoke-static {v1, v2, v3, v4}, Lnz6;->j(Ljava/lang/Runnable;ZLandroid/os/Handler;Lkz6;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 67
    :cond_12
    :goto_9
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_a
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method
