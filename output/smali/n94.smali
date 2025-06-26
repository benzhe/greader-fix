.class public Ln94;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile a:Lda4;

.field public volatile b:Lg84;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lp84;->a()Lp84;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Ln94;->b:Lg84;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln94;->b:Lg84;

    check-cast v0, Le84;

    iget-object v0, v0, Le84;->h:[B

    array-length v0, v0

    return v0

    :cond_0
    iget-object v0, p0, Ln94;->a:Lda4;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ln94;->a:Lda4;

    .line 1
    invoke-interface {v0}, Lda4;->e()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Lg84;
    .locals 1

    iget-object v0, p0, Ln94;->b:Lg84;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln94;->b:Lg84;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ln94;->b:Lg84;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ln94;->b:Lg84;

    .line 1
    monitor-exit p0

    return-object v0

    :cond_1
    iget-object v0, p0, Ln94;->a:Lda4;

    if-nez v0, :cond_2

    .line 2
    sget-object v0, Lg84;->f:Lg84;

    iput-object v0, p0, Ln94;->b:Lg84;

    goto :goto_0

    .line 3
    :cond_2
    iget-object v0, p0, Ln94;->a:Lda4;

    .line 4
    invoke-interface {v0}, Lda4;->d()Lg84;

    move-result-object v0

    iput-object v0, p0, Ln94;->b:Lg84;

    .line 5
    :goto_0
    iget-object v0, p0, Ln94;->b:Lg84;

    .line 6
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c(Lda4;)V
    .locals 1

    iget-object v0, p0, Ln94;->a:Lda4;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ln94;->a:Lda4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :try_start_1
    iput-object p1, p0, Ln94;->a:Lda4;

    .line 1
    sget-object v0, Lg84;->f:Lg84;

    iput-object v0, p0, Ln94;->b:Lg84;
    :try_end_1
    .catch Ll94; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2
    :catch_0
    :try_start_2
    iput-object p1, p0, Ln94;->a:Lda4;

    .line 3
    sget-object p1, Lg84;->f:Lg84;

    iput-object p1, p0, Ln94;->b:Lg84;

    .line 4
    :goto_0
    monitor-exit p0

    return-void

    .line 5
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Ln94;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Ln94;

    iget-object v0, p0, Ln94;->a:Lda4;

    .line 3
    iget-object v1, p1, Ln94;->a:Lda4;

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0}, Ln94;->b()Lg84;

    move-result-object v0

    invoke-virtual {p1}, Ln94;->b()Lg84;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg84;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    if-nez v1, :cond_4

    goto :goto_1

    .line 5
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    .line 6
    invoke-interface {v0}, Lea4;->f()Lda4;

    move-result-object v1

    invoke-virtual {p1, v1}, Ln94;->c(Lda4;)V

    iget-object p1, p1, Ln94;->a:Lda4;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 7
    :cond_6
    invoke-interface {v1}, Lea4;->f()Lda4;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Ln94;->c(Lda4;)V

    iget-object p1, p0, Ln94;->a:Lda4;

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
