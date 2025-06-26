.class public Liz6$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liz6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/util/concurrent/Executor;

.field public c:Ljava/util/concurrent/Executor;

.field public d:Z

.field public e:Z

.field public f:I

.field public g:I

.field public h:Z

.field public i:Lwz6;

.field public j:I

.field public k:Lbz6;

.field public l:Lty6;

.field public m:Laz6;

.field public n:Lf07;

.field public o:Lb07;

.field public p:Lgz6;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Liz6$b;->b:Ljava/util/concurrent/Executor;

    .line 3
    iput-object v0, p0, Liz6$b;->c:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Liz6$b;->d:Z

    .line 5
    iput-boolean v1, p0, Liz6$b;->e:Z

    const/4 v2, 0x3

    .line 6
    iput v2, p0, Liz6$b;->f:I

    .line 7
    iput v2, p0, Liz6$b;->g:I

    .line 8
    iput-boolean v1, p0, Liz6$b;->h:Z

    .line 9
    sget-object v2, Lwz6;->e:Lwz6;

    iput-object v2, p0, Liz6$b;->i:Lwz6;

    .line 10
    iput v1, p0, Liz6$b;->j:I

    .line 11
    iput-object v0, p0, Liz6$b;->k:Lbz6;

    .line 12
    iput-object v0, p0, Liz6$b;->l:Lty6;

    .line 13
    iput-object v0, p0, Liz6$b;->m:Laz6;

    .line 14
    iput-object v0, p0, Liz6$b;->n:Lf07;

    .line 15
    iput-object v0, p0, Liz6$b;->p:Lgz6;

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Liz6$b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Liz6;
    .locals 13

    .line 1
    iget-object v0, p0, Liz6$b;->b:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Liz6$b;->f:I

    iget v2, p0, Liz6$b;->g:I

    iget-object v3, p0, Liz6$b;->i:Lwz6;

    invoke-static {v0, v2, v3}, Ln56;->J(IILwz6;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Liz6$b;->b:Ljava/util/concurrent/Executor;

    goto :goto_0

    .line 3
    :cond_0
    iput-boolean v1, p0, Liz6$b;->d:Z

    .line 4
    :goto_0
    iget-object v0, p0, Liz6$b;->c:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    .line 5
    iget v0, p0, Liz6$b;->f:I

    iget v2, p0, Liz6$b;->g:I

    iget-object v3, p0, Liz6$b;->i:Lwz6;

    invoke-static {v0, v2, v3}, Ln56;->J(IILwz6;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Liz6$b;->c:Ljava/util/concurrent/Executor;

    goto :goto_1

    .line 6
    :cond_1
    iput-boolean v1, p0, Liz6$b;->e:Z

    .line 7
    :goto_1
    iget-object v0, p0, Liz6$b;->l:Lty6;

    const/4 v2, 0x0

    if-nez v0, :cond_6

    .line 8
    iget-object v0, p0, Liz6$b;->m:Laz6;

    if-nez v0, :cond_2

    .line 9
    new-instance v0, Laz6;

    invoke-direct {v0}, Laz6;-><init>()V

    .line 10
    iput-object v0, p0, Liz6$b;->m:Laz6;

    .line 11
    :cond_2
    iget-object v0, p0, Liz6$b;->a:Landroid/content/Context;

    iget-object v10, p0, Liz6$b;->m:Laz6;

    iget v9, p0, Liz6$b;->j:I

    .line 12
    invoke-static {v0, v2}, Ln56;->D0(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v3

    .line 13
    new-instance v4, Ljava/io/File;

    const-string v5, "uil-images"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    move-object v11, v3

    goto :goto_3

    :cond_4
    :goto_2
    move-object v11, v4

    :goto_3
    if-lez v9, :cond_5

    .line 15
    invoke-static {v0, v5}, Ln56;->M0(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 16
    :try_start_0
    new-instance v12, Lxy6;

    const-wide/16 v7, 0x0

    move-object v3, v12

    move-object v5, v11

    move-object v6, v10

    invoke-direct/range {v3 .. v9}, Lxy6;-><init>(Ljava/io/File;Ljava/io/File;Laz6;JI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v3

    .line 17
    invoke-static {v3}, Lp07;->c(Ljava/lang/Throwable;)V

    .line 18
    :cond_5
    invoke-static {v0, v1}, Ln56;->D0(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v0

    .line 19
    new-instance v12, Lvy6;

    invoke-direct {v12, v0, v11, v10}, Lvy6;-><init>(Ljava/io/File;Ljava/io/File;Laz6;)V

    .line 20
    :goto_4
    iput-object v12, p0, Liz6$b;->l:Lty6;

    .line 21
    :cond_6
    iget-object v0, p0, Liz6$b;->k:Lbz6;

    if-nez v0, :cond_9

    .line 22
    iget-object v0, p0, Liz6$b;->a:Landroid/content/Context;

    const-string v3, "activity"

    .line 23
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 24
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v4

    .line 25
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x100000

    and-int/2addr v0, v5

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_8

    .line 26
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v4

    :cond_8
    mul-int v4, v4, v5

    .line 27
    div-int/lit8 v4, v4, 0x8

    .line 28
    new-instance v0, Ldz6;

    invoke-direct {v0, v4}, Ldz6;-><init>(I)V

    .line 29
    iput-object v0, p0, Liz6$b;->k:Lbz6;

    .line 30
    :cond_9
    iget-boolean v0, p0, Liz6$b;->h:Z

    if-eqz v0, :cond_a

    .line 31
    new-instance v0, Lcz6;

    iget-object v1, p0, Liz6$b;->k:Lbz6;

    .line 32
    new-instance v3, Lq07;

    invoke-direct {v3}, Lq07;-><init>()V

    .line 33
    invoke-direct {v0, v1, v3}, Lcz6;-><init>(Lbz6;Ljava/util/Comparator;)V

    iput-object v0, p0, Liz6$b;->k:Lbz6;

    .line 34
    :cond_a
    iget-object v0, p0, Liz6$b;->n:Lf07;

    if-nez v0, :cond_b

    .line 35
    iget-object v0, p0, Liz6$b;->a:Landroid/content/Context;

    .line 36
    new-instance v1, Le07;

    invoke-direct {v1, v0}, Le07;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object v1, p0, Liz6$b;->n:Lf07;

    .line 38
    :cond_b
    iget-object v0, p0, Liz6$b;->o:Lb07;

    if-nez v0, :cond_c

    .line 39
    new-instance v0, La07;

    invoke-direct {v0, v2}, La07;-><init>(Z)V

    .line 40
    iput-object v0, p0, Liz6$b;->o:Lb07;

    .line 41
    :cond_c
    iget-object v0, p0, Liz6$b;->p:Lgz6;

    if-nez v0, :cond_d

    .line 42
    new-instance v0, Lgz6$b;

    invoke-direct {v0}, Lgz6$b;-><init>()V

    invoke-virtual {v0}, Lgz6$b;->b()Lgz6;

    move-result-object v0

    .line 43
    iput-object v0, p0, Liz6$b;->p:Lgz6;

    .line 44
    :cond_d
    new-instance v0, Liz6;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Liz6;-><init>(Liz6$b;Liz6$a;)V

    return-object v0
.end method

.method public b(Lty6;)Liz6$b;
    .locals 3

    .line 1
    iget v0, p0, Liz6$b;->j:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other"

    .line 2
    invoke-static {v2, v0}, Lp07;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    :cond_0
    iget-object v0, p0, Liz6$b;->m:Laz6;

    if-eqz v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "diskCache() and diskCacheFileNameGenerator() calls overlap each other"

    .line 4
    invoke-static {v1, v0}, Lp07;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :cond_1
    iput-object p1, p0, Liz6$b;->l:Lty6;

    return-object p0
.end method

.method public c(I)Liz6$b;
    .locals 2

    if-lez p1, :cond_1

    .line 1
    iget-object v0, p0, Liz6$b;->l:Lty6;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other"

    .line 2
    invoke-static {v1, v0}, Lp07;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    :cond_0
    iput p1, p0, Liz6$b;->j:I

    return-object p0

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxFileCount must be a positive number"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Lwz6;)Liz6$b;
    .locals 2

    .line 1
    iget-object v0, p0, Liz6$b;->b:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iget-object v0, p0, Liz6$b;->c:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    .line 2
    invoke-static {v1, v0}, Lp07;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    :cond_1
    iput-object p1, p0, Liz6$b;->i:Lwz6;

    return-object p0
.end method

.method public e(I)Liz6$b;
    .locals 2

    .line 1
    iget-object v0, p0, Liz6$b;->b:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iget-object v0, p0, Liz6$b;->c:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    .line 2
    invoke-static {v1, v0}, Lp07;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    :cond_1
    iput p1, p0, Liz6$b;->f:I

    return-object p0
.end method

.method public f(I)Liz6$b;
    .locals 2

    .line 1
    iget-object v0, p0, Liz6$b;->b:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iget-object v0, p0, Liz6$b;->c:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    .line 2
    invoke-static {v1, v0}, Lp07;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    if-ge p1, v0, :cond_2

    .line 3
    iput v0, p0, Liz6$b;->g:I

    goto :goto_0

    :cond_2
    const/16 v0, 0xa

    if-le p1, v0, :cond_3

    .line 4
    iput v0, p0, Liz6$b;->g:I

    goto :goto_0

    .line 5
    :cond_3
    iput p1, p0, Liz6$b;->g:I

    :goto_0
    return-object p0
.end method
