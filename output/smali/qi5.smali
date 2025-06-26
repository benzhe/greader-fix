.class public Lqi5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld45;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld45<",
        "Lpm5;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Z

.field public final synthetic c:Ljava/util/concurrent/Executor;

.field public final synthetic d:Lri5;


# direct methods
.method public constructor <init>(Lri5;Ljava/util/List;ZLjava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqi5;->d:Lri5;

    iput-object p2, p0, Lqi5;->a:Ljava/util/List;

    iput-boolean p3, p0, Lqi5;->b:Z

    iput-object p4, p0, Lqi5;->c:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Le45;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lpm5;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lah5;->a:Lah5;

    const-string v1, "Received null app settings, cannot send reports during app startup."

    .line 3
    invoke-virtual {p1, v1}, Lah5;->f(Ljava/lang/String;)V

    .line 4
    invoke-static {v0}, Lc50;->X(Ljava/lang/Object;)Le45;

    move-result-object p1

    goto/16 :goto_2

    .line 5
    :cond_0
    iget-object v1, p0, Lqi5;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxl5;

    .line 6
    invoke-interface {v2}, Lxl5;->getType()Lxl5$a;

    move-result-object v3

    sget-object v4, Lxl5$a;->e:Lxl5$a;

    if-ne v3, v4, :cond_1

    .line 7
    iget-object v3, p1, Lpm5;->e:Ljava/lang/String;

    .line 8
    invoke-interface {v2}, Lxl5;->c()Ljava/io/File;

    move-result-object v2

    .line 9
    invoke-static {v3, v2}, Lii5;->c(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v1, p0, Lqi5;->d:Lri5;

    iget-object v1, v1, Lri5;->f:Lii5$e;

    iget-object v1, v1, Lii5$e;->c:Lii5;

    invoke-static {v1}, Lii5;->b(Lii5;)Le45;

    .line 11
    iget-object v1, p0, Lqi5;->d:Lri5;

    iget-object v1, v1, Lri5;->f:Lii5$e;

    iget-object v1, v1, Lii5$e;->c:Lii5;

    .line 12
    iget-object v1, v1, Lii5;->j:Lul5$b;

    .line 13
    check-cast v1, Lsi5;

    invoke-virtual {v1, p1}, Lsi5;->a(Lpm5;)Lul5;

    move-result-object v1

    .line 14
    iget-object v2, p0, Lqi5;->a:Ljava/util/List;

    iget-boolean v3, p0, Lqi5;->b:Z

    iget-object v4, p0, Lqi5;->d:Lri5;

    iget-object v4, v4, Lri5;->f:Lii5$e;

    iget v4, v4, Lii5$e;->b:F

    .line 15
    monitor-enter v1

    .line 16
    :try_start_0
    iget-object v5, v1, Lul5;->g:Ljava/lang/Thread;

    if-eqz v5, :cond_3

    .line 17
    sget-object v2, Lah5;->a:Lah5;

    const-string v3, "Report upload has already been started."

    invoke-virtual {v2, v3}, Lah5;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit v1

    goto :goto_1

    .line 19
    :cond_3
    :try_start_1
    new-instance v5, Lul5$d;

    invoke-direct {v5, v1, v2, v3, v4}, Lul5$d;-><init>(Lul5;Ljava/util/List;ZF)V

    .line 20
    new-instance v2, Ljava/lang/Thread;

    const-string v3, "Crashlytics Report Uploader"

    invoke-direct {v2, v5, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v2, v1, Lul5;->g:Ljava/lang/Thread;

    .line 21
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    monitor-exit v1

    .line 23
    :goto_1
    iget-object v1, p0, Lqi5;->d:Lri5;

    iget-object v1, v1, Lri5;->f:Lii5$e;

    iget-object v1, v1, Lii5$e;->c:Lii5;

    .line 24
    iget-object v1, v1, Lii5;->s:Lmj5;

    .line 25
    iget-object v2, p0, Lqi5;->c:Ljava/util/concurrent/Executor;

    .line 26
    invoke-static {p1}, Lcj5;->i(Lpm5;)Lcj5;

    move-result-object p1

    .line 27
    invoke-virtual {v1, v2, p1}, Lmj5;->a(Ljava/util/concurrent/Executor;Lcj5;)Le45;

    .line 28
    iget-object p1, p0, Lqi5;->d:Lri5;

    iget-object p1, p1, Lri5;->f:Lii5$e;

    iget-object p1, p1, Lii5$e;->c:Lii5;

    iget-object p1, p1, Lii5;->w:Lf45;

    invoke-virtual {p1, v0}, Lf45;->b(Ljava/lang/Object;)Z

    .line 29
    invoke-static {v0}, Lc50;->X(Ljava/lang/Object;)Le45;

    move-result-object p1

    :goto_2
    return-object p1

    :catchall_0
    move-exception p1

    .line 30
    monitor-exit v1

    throw p1
.end method
