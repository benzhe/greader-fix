.class public final Lj45;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh45;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:I

.field public final c:Le55;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le55<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/lang/Exception;

.field public h:Z


# direct methods
.method public constructor <init>(ILe55;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le55<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lj45;->a:Ljava/lang/Object;

    .line 3
    iput p1, p0, Lj45;->b:I

    .line 4
    iput-object p2, p0, Lj45;->c:Le55;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget v0, p0, Lj45;->d:I

    iget v1, p0, Lj45;->e:I

    add-int/2addr v0, v1

    iget v1, p0, Lj45;->f:I

    add-int/2addr v0, v1

    iget v1, p0, Lj45;->b:I

    if-ne v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lj45;->g:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lj45;->c:Le55;

    new-instance v1, Ljava/util/concurrent/ExecutionException;

    iget v2, p0, Lj45;->e:I

    iget v3, p0, Lj45;->b:I

    const/16 v4, 0x36

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " out of "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " underlying tasks failed"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lj45;->g:Ljava/lang/Exception;

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Le55;->r(Ljava/lang/Exception;)V

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lj45;->h:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lj45;->c:Le55;

    invoke-virtual {v0}, Le55;->t()Z

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lj45;->c:Le55;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le55;->s(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lj45;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lj45;->f:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lj45;->f:I

    .line 3
    iput-boolean v2, p0, Lj45;->h:Z

    .line 4
    invoke-virtual {p0}, Lj45;->a()V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final c(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lj45;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lj45;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lj45;->e:I

    .line 3
    iput-object p1, p0, Lj45;->g:Ljava/lang/Exception;

    .line 4
    invoke-virtual {p0}, Lj45;->a()V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lj45;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iget v0, p0, Lj45;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj45;->d:I

    .line 3
    invoke-virtual {p0}, Lj45;->a()V

    .line 4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
