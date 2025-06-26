.class public final Ll37$a;
.super Ll37;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll37;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public l:Z

.field public m:Ljava/lang/Throwable;


# virtual methods
.method public b()Ll37;
    .locals 1

    const/4 v0, 0x0

    .line 1
    throw v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Ll37$a;->t(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public e()Ljava/lang/Throwable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ll37$a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ll37$a;->m:Ljava/lang/Throwable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public i(Ll37;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public k()Lm37;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public m()Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Ll37$a;->l:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-super {p0}, Ll37;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-super {p0}, Ll37;->e()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Ll37$a;->t(Ljava/lang/Throwable;)Z

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public t(Ljava/lang/Throwable;)Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Ll37$a;->l:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    iput-boolean v1, p0, Ll37$a;->l:Z

    .line 4
    iput-object p1, p0, Ll37$a;->m:Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0}, Ll37;->n()V

    :cond_1
    return v1

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
