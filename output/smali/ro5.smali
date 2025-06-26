.class public final synthetic Lro5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvo5;


# instance fields
.field public final a:Lf45;

.field public final b:Lf45;

.field public final c:Lkp5;


# direct methods
.method public constructor <init>(Lf45;Lf45;Lkp5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lro5;->a:Lf45;

    iput-object p2, p0, Lro5;->b:Lf45;

    iput-object p3, p0, Lro5;->c:Lkp5;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lzo5;)V
    .locals 7

    iget-object v0, p0, Lro5;->a:Lf45;

    iget-object v1, p0, Lro5;->b:Lf45;

    iget-object v2, p0, Lro5;->c:Lkp5;

    check-cast p1, Luo5;

    const-string v3, "Failed to register a listener for a single document"

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, v0, Lf45;->a:Le55;

    invoke-virtual {p1, p2}, Le55;->r(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_0
    const/4 p2, 0x0

    const/4 v4, 0x0

    .line 2
    :try_start_0
    iget-object v1, v1, Lf45;->a:Le55;

    .line 3
    invoke-static {v1}, Lc50;->d(Le45;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfp5;

    .line 4
    invoke-interface {v1}, Lfp5;->remove()V

    .line 5
    iget-object v1, p1, Luo5;->c:Lyt5;

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-nez v6, :cond_2

    .line 6
    iget-object v6, p1, Luo5;->d:Ljp5;

    .line 7
    iget-boolean v6, v6, Ljp5;->b:Z

    if-eqz v6, :cond_2

    .line 8
    new-instance p1, Lzo5;

    const-string v1, "Failed to get document because the client is offline."

    sget-object v2, Lzo5$a;->t:Lzo5$a;

    invoke-direct {p1, v1, v2}, Lzo5;-><init>(Ljava/lang/String;Lzo5$a;)V

    .line 9
    iget-object v0, v0, Lf45;->a:Le55;

    invoke-virtual {v0, p1}, Le55;->r(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_4

    .line 10
    iget-object v1, p1, Luo5;->d:Ljp5;

    .line 11
    iget-boolean v1, v1, Ljp5;->b:Z

    if-eqz v1, :cond_4

    .line 12
    sget-object v1, Lkp5;->f:Lkp5;

    if-ne v2, v1, :cond_4

    .line 13
    new-instance p1, Lzo5;

    const-string v1, "Failed to get document from server. (However, this document does exist in the local cache. Run again without setting source to SERVER to retrieve the cached document.)"

    sget-object v2, Lzo5$a;->t:Lzo5$a;

    invoke-direct {p1, v1, v2}, Lzo5;-><init>(Ljava/lang/String;Lzo5$a;)V

    .line 14
    iget-object v0, v0, Lf45;->a:Le55;

    invoke-virtual {v0, p1}, Le55;->r(Ljava/lang/Exception;)V

    goto :goto_2

    .line 15
    :cond_4
    iget-object v0, v0, Lf45;->a:Le55;

    invoke-virtual {v0, p1}, Le55;->s(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception p1

    .line 16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-array v0, v4, [Ljava/lang/Object;

    .line 17
    invoke-static {p1, v3, v0}, Lbx5;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    throw p2

    :catch_1
    move-exception p1

    new-array v0, v4, [Ljava/lang/Object;

    .line 18
    invoke-static {p1, v3, v0}, Lbx5;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    throw p2
.end method
