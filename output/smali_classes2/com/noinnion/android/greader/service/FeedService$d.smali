.class public Lcom/noinnion/android/greader/service/FeedService$d;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/service/FeedService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public final synthetic c:Lcom/noinnion/android/greader/service/FeedService;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/service/FeedService;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/service/FeedService$d;->c:Lcom/noinnion/android/greader/service/FeedService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/noinnion/android/greader/service/FeedService$d;->a:I

    .line 3
    iput-boolean p1, p0, Lcom/noinnion/android/greader/service/FeedService$d;->b:Z

    .line 4
    iput p2, p0, Lcom/noinnion/android/greader/service/FeedService$d;->a:I

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/noinnion/android/greader/service/FeedService$d;->c:Lcom/noinnion/android/greader/service/FeedService;

    .line 3
    iget-boolean v0, p1, Lcom/noinnion/android/greader/service/FeedService;->m:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/noinnion/android/greader/service/FeedService$d;->c:Lcom/noinnion/android/greader/service/FeedService;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v2, v0, Lcom/noinnion/android/greader/service/FeedService;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 8
    iget-object v2, v0, Lcom/noinnion/android/greader/service/FeedService;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 9
    iput-boolean v4, p0, Lcom/noinnion/android/greader/service/FeedService$d;->b:Z

    .line 10
    :cond_1
    iget-object v2, v0, Lcom/noinnion/android/greader/service/FeedService;->f:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/noinnion/android/greader/service/FeedService$c;

    .line 11
    iget-object v5, v0, Lcom/noinnion/android/greader/service/FeedService;->f:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 12
    iget v5, v0, Lcom/noinnion/android/greader/service/FeedService;->l:I

    iget-object v6, v0, Lcom/noinnion/android/greader/service/FeedService;->f:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v0, Lcom/noinnion/android/greader/service/FeedService;->j:I

    .line 13
    iget v5, v0, Lcom/noinnion/android/greader/service/FeedService;->k:I

    add-int/2addr v5, v4

    iput v5, v0, Lcom/noinnion/android/greader/service/FeedService;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    monitor-exit v0

    goto :goto_0

    .line 15
    :cond_2
    monitor-exit v0

    move-object v2, v1

    :goto_0
    if-nez v2, :cond_3

    goto/16 :goto_3

    :cond_3
    :try_start_1
    const-string v0, "_id"

    .line 16
    iget-object v4, v2, Lcom/noinnion/android/greader/service/FeedService$c;->a:Ljava/lang/String;

    invoke-static {p1, v0, v4, v3}, Lap6;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lap6;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 17
    iget-boolean v4, v2, Lcom/noinnion/android/greader/service/FeedService$c;->b:Z

    if-nez v4, :cond_4

    iget-boolean v4, v0, Lap6;->v:Z

    if-eqz v4, :cond_4

    goto :goto_3

    .line 18
    :cond_4
    iget-object v4, p0, Lcom/noinnion/android/greader/service/FeedService$d;->c:Lcom/noinnion/android/greader/service/FeedService;

    iget v5, p0, Lcom/noinnion/android/greader/service/FeedService$d;->a:I

    iget-object v6, v0, Lap6;->h:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/noinnion/android/greader/service/FeedService;->k(ILjava/lang/String;)V

    .line 19
    iget-object v4, p0, Lcom/noinnion/android/greader/service/FeedService$d;->c:Lcom/noinnion/android/greader/service/FeedService;

    .line 20
    iget-object v5, v4, Lcom/noinnion/android/greader/service/FeedService;->g:Lfw6;

    if-nez v5, :cond_5

    .line 21
    invoke-static {p1}, Lfw6;->a(Landroid/content/Context;)Lfw6;

    move-result-object p1

    iput-object p1, v4, Lcom/noinnion/android/greader/service/FeedService;->g:Lfw6;

    .line 22
    :cond_5
    iget-object p1, v4, Lcom/noinnion/android/greader/service/FeedService;->g:Lfw6;

    .line 23
    iget-boolean v2, v2, Lcom/noinnion/android/greader/service/FeedService$c;->b:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/noinnion/android/greader/service/FeedService$d;->c:Lcom/noinnion/android/greader/service/FeedService;

    .line 24
    iget v2, v2, Lcom/noinnion/android/greader/service/FeedService;->o:I

    goto :goto_1

    .line 25
    :cond_6
    iget-object v2, p0, Lcom/noinnion/android/greader/service/FeedService$d;->c:Lcom/noinnion/android/greader/service/FeedService;

    .line 26
    iget v2, v2, Lcom/noinnion/android/greader/service/FeedService;->n:I

    .line 27
    :goto_1
    iget-object v4, p0, Lcom/noinnion/android/greader/service/FeedService$d;->c:Lcom/noinnion/android/greader/service/FeedService;

    invoke-static {v4, v0, v2}, Lcom/noinnion/android/greader/service/FeedService;->a(Lcom/noinnion/android/greader/service/FeedService;Lap6;I)I

    move-result v2

    .line 28
    iget-boolean v4, p1, Lfw6;->b:Z

    if-eqz v4, :cond_7

    .line 29
    iget-object v4, p0, Lcom/noinnion/android/greader/service/FeedService$d;->c:Lcom/noinnion/android/greader/service/FeedService;

    invoke-static {v4, v0}, Lcom/noinnion/android/greader/service/FeedService;->b(Lcom/noinnion/android/greader/service/FeedService;Lap6;)V

    .line 30
    :cond_7
    iget-boolean v4, p1, Lfw6;->c:Z

    if-eqz v4, :cond_8

    .line 31
    iget-object v4, p0, Lcom/noinnion/android/greader/service/FeedService$d;->c:Lcom/noinnion/android/greader/service/FeedService;

    invoke-static {v4, v0}, Lcom/noinnion/android/greader/service/FeedService;->c(Lcom/noinnion/android/greader/service/FeedService;Lap6;)V

    .line 32
    :cond_8
    iget-boolean p1, p1, Lfw6;->d:Z

    if-eqz p1, :cond_9

    .line 33
    iget-object p1, p0, Lcom/noinnion/android/greader/service/FeedService$d;->c:Lcom/noinnion/android/greader/service/FeedService;

    invoke-static {p1, v0}, Lcom/noinnion/android/greader/service/FeedService;->d(Lcom/noinnion/android/greader/service/FeedService;Lap6;)V

    :cond_9
    if-lez v2, :cond_a

    .line 34
    iget-object p1, p0, Lcom/noinnion/android/greader/service/FeedService$d;->c:Lcom/noinnion/android/greader/service/FeedService;

    iget-wide v4, v0, Lap6;->e:J

    invoke-static {p1, v4, v5, v2}, Lcom/noinnion/android/greader/service/FeedService;->e(Lcom/noinnion/android/greader/service/FeedService;JI)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    const-string v0, "FeedService"

    .line 35
    invoke-static {v0, p1}, Ln56;->y1(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    :goto_2
    new-array p1, v3, [Ljava/lang/Integer;

    .line 37
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_3

    :catch_0
    move-exception p1

    const-string v0, "FeedService"

    .line 38
    invoke-static {v0, p1}, Ln56;->y1(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    :goto_3
    return-object v1

    :catchall_1
    move-exception p1

    .line 39
    monitor-exit v0

    throw p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/noinnion/android/greader/service/FeedService$d;->c:Lcom/noinnion/android/greader/service/FeedService;

    .line 3
    iget-boolean v0, p1, Lcom/noinnion/android/greader/service/FeedService;->m:Z

    if-nez v0, :cond_1

    .line 4
    iget-object p1, p1, Lcom/noinnion/android/greader/service/FeedService;->f:Ljava/util/List;

    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/greader/service/FeedService$d;->c:Lcom/noinnion/android/greader/service/FeedService;

    iget v0, p0, Lcom/noinnion/android/greader/service/FeedService$d;->a:I

    .line 7
    invoke-virtual {p1, v0}, Lcom/noinnion/android/greader/service/FeedService;->i(I)Lcom/noinnion/android/greader/service/FeedService$d;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 8
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/noinnion/android/greader/service/FeedService$d;->b:Z

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/noinnion/android/greader/service/FeedService$d;->c:Lcom/noinnion/android/greader/service/FeedService;

    .line 12
    invoke-virtual {p1}, Lcom/noinnion/android/greader/service/FeedService;->j()V

    .line 13
    iget-object p1, p0, Lcom/noinnion/android/greader/service/FeedService$d;->c:Lcom/noinnion/android/greader/service/FeedService;

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onProgressUpdate([Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, [Ljava/lang/Integer;

    .line 2
    iget-object p1, p0, Lcom/noinnion/android/greader/service/FeedService$d;->c:Lcom/noinnion/android/greader/service/FeedService;

    .line 3
    iget-boolean v0, p1, Lcom/noinnion/android/greader/service/FeedService;->m:Z

    if-nez v0, :cond_0

    .line 4
    iget-object p1, p1, Lcom/noinnion/android/greader/service/FeedService;->f:Ljava/util/List;

    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/noinnion/android/greader/service/FeedService$d;->c:Lcom/noinnion/android/greader/service/FeedService;

    .line 6
    iget-wide v2, p1, Lcom/noinnion/android/greader/service/FeedService;->i:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 8
    monitor-enter p1

    .line 9
    :try_start_0
    iput-wide v0, p1, Lcom/noinnion/android/greader/service/FeedService;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p1

    .line 11
    iget-object p1, p0, Lcom/noinnion/android/greader/service/FeedService$d;->c:Lcom/noinnion/android/greader/service/FeedService;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/service/FeedService;->h()I

    move-result v0

    .line 12
    invoke-virtual {p1, v0}, Lcom/noinnion/android/greader/service/FeedService;->l(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 13
    monitor-exit p1

    throw v0

    :cond_0
    :goto_0
    return-void
.end method
