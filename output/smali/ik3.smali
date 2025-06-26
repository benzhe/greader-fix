.class public final Lik3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:[Ldk3;

.field public d:I

.field public e:I

.field public f:I

.field public g:[Ldk3;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lc50;->j(Z)V

    .line 3
    invoke-static {v0}, Lc50;->j(Z)V

    .line 4
    iput-boolean v0, p0, Lik3;->a:Z

    const/high16 v1, 0x10000

    .line 5
    iput v1, p0, Lik3;->b:I

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lik3;->f:I

    const/16 v1, 0x64

    new-array v1, v1, [Ldk3;

    .line 7
    iput-object v1, p0, Lik3;->g:[Ldk3;

    new-array v0, v0, [Ldk3;

    .line 8
    iput-object v0, p0, Lik3;->c:[Ldk3;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ldk3;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lik3;->c:[Ldk3;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2
    invoke-virtual {p0, v0}, Lik3;->b([Ldk3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b([Ldk3;)V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lik3;->f:I

    array-length v1, p1

    add-int/2addr v1, v0

    iget-object v2, p0, Lik3;->g:[Ldk3;

    array-length v3, v2

    const/4 v4, 0x1

    if-lt v1, v3, :cond_0

    .line 2
    array-length v1, v2

    shl-int/2addr v1, v4

    array-length v3, p1

    add-int/2addr v0, v3

    .line 3
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldk3;

    iput-object v0, p0, Lik3;->g:[Ldk3;

    .line 5
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 6
    iget-object v5, v3, Ldk3;->a:[B

    if-eqz v5, :cond_2

    array-length v5, v5

    iget v6, p0, Lik3;->b:I

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v5, 0x1

    :goto_2
    invoke-static {v5}, Lc50;->j(Z)V

    .line 7
    iget-object v5, p0, Lik3;->g:[Ldk3;

    iget v6, p0, Lik3;->f:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lik3;->f:I

    aput-object v3, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_3
    iget v0, p0, Lik3;->e:I

    array-length p1, p1

    sub-int/2addr v0, p1

    iput v0, p0, Lik3;->e:I

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lik3;->d:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iput p1, p0, Lik3;->d:I

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lik3;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lik3;->d:I

    iget v1, p0, Lik3;->b:I

    invoke-static {v0, v1}, Lel3;->h(II)I

    move-result v0

    const/4 v1, 0x0

    .line 2
    iget v2, p0, Lik3;->e:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3
    iget v1, p0, Lik3;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    iget-object v2, p0, Lik3;->g:[Ldk3;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 6
    iput v0, p0, Lik3;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
