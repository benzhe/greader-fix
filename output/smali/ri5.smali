.class public Lri5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Le45<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Ljava/lang/Boolean;

.field public final synthetic f:Lii5$e;


# direct methods
.method public constructor <init>(Lii5$e;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lri5;->f:Lii5$e;

    iput-object p2, p0, Lri5;->e:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lri5;->f:Lii5$e;

    iget-object v0, v0, Lii5$e;->c:Lii5;

    .line 2
    iget-object v0, v0, Lii5;->m:Ltl5;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lah5;->a:Lah5;

    const-string v2, "Checking for crash reports..."

    invoke-virtual {v1, v2}, Lah5;->b(Ljava/lang/String;)V

    .line 5
    iget-object v1, v0, Ltl5;->a:Lul5$c;

    check-cast v1, Lii5$k;

    .line 6
    iget-object v1, v1, Lii5$k;->a:Lii5;

    invoke-virtual {v1}, Lii5;->q()[Ljava/io/File;

    move-result-object v1

    .line 7
    iget-object v0, v0, Ltl5;->a:Lul5$c;

    check-cast v0, Lii5$k;

    .line 8
    iget-object v0, v0, Lii5$k;->a:Lii5;

    .line 9
    invoke-virtual {v0}, Lii5;->m()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/io/File;

    .line 10
    :cond_0
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    if-eqz v1, :cond_1

    .line 11
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v1, v5

    .line 12
    sget-object v7, Lah5;->a:Lah5;

    const-string v8, "Found crash report "

    invoke-static {v8}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lah5;->b(Ljava/lang/String;)V

    .line 13
    new-instance v7, Lyl5;

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lyl5;-><init>(Ljava/io/File;Ljava/util/Map;)V

    .line 15
    invoke-virtual {v3, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 16
    :cond_1
    array-length v1, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_2

    aget-object v5, v0, v4

    .line 17
    new-instance v6, Lwl5;

    invoke-direct {v6, v5}, Lwl5;-><init>(Ljava/io/File;)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 18
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    sget-object v0, Lah5;->a:Lah5;

    const-string v1, "No reports found."

    invoke-virtual {v0, v1}, Lah5;->b(Ljava/lang/String;)V

    .line 20
    :cond_3
    iget-object v0, p0, Lri5;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 21
    sget-object v0, Lah5;->a:Lah5;

    const-string v4, "Reports are being deleted."

    invoke-virtual {v0, v4}, Lah5;->b(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lri5;->f:Lii5$e;

    iget-object v0, v0, Lii5$e;->c:Lii5;

    .line 23
    sget-object v4, Lai5;->e:Lai5;

    .line 24
    invoke-virtual {v0}, Lii5;->l()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v4}, Lii5;->r(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 25
    array-length v4, v0

    :goto_2
    if-ge v2, v4, :cond_4

    aget-object v5, v0, v2

    .line 26
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 27
    :cond_4
    iget-object v0, p0, Lri5;->f:Lii5$e;

    iget-object v0, v0, Lii5$e;->c:Lii5;

    .line 28
    iget-object v0, v0, Lii5;->m:Ltl5;

    .line 29
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxl5;

    .line 31
    invoke-interface {v2}, Lxl5;->remove()V

    goto :goto_3

    .line 32
    :cond_5
    iget-object v0, p0, Lri5;->f:Lii5$e;

    iget-object v0, v0, Lii5$e;->c:Lii5;

    .line 33
    iget-object v0, v0, Lii5;->s:Lmj5;

    .line 34
    iget-object v0, v0, Lmj5;->b:Lnl5;

    invoke-virtual {v0}, Lnl5;->b()V

    .line 35
    iget-object v0, p0, Lri5;->f:Lii5$e;

    iget-object v0, v0, Lii5$e;->c:Lii5;

    iget-object v0, v0, Lii5;->w:Lf45;

    invoke-virtual {v0, v1}, Lf45;->b(Ljava/lang/Object;)Z

    .line 36
    invoke-static {v1}, Lc50;->X(Ljava/lang/Object;)Le45;

    move-result-object v0

    goto :goto_4

    .line 37
    :cond_6
    sget-object v0, Lah5;->a:Lah5;

    const-string v2, "Reports are being sent."

    invoke-virtual {v0, v2}, Lah5;->b(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lri5;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 39
    iget-object v2, p0, Lri5;->f:Lii5$e;

    iget-object v2, v2, Lii5$e;->c:Lii5;

    .line 40
    iget-object v2, v2, Lii5;->b:Lbj5;

    .line 41
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 42
    iget-object v2, v2, Lbj5;->h:Lf45;

    invoke-virtual {v2, v1}, Lf45;->b(Ljava/lang/Object;)Z

    .line 43
    iget-object v1, p0, Lri5;->f:Lii5$e;

    iget-object v2, v1, Lii5$e;->c:Lii5;

    .line 44
    iget-object v2, v2, Lii5;->e:Lwh5;

    .line 45
    iget-object v2, v2, Lwh5;->a:Ljava/util/concurrent/Executor;

    .line 46
    iget-object v1, v1, Lii5$e;->a:Le45;

    new-instance v4, Lqi5;

    invoke-direct {v4, p0, v3, v0, v2}, Lqi5;-><init>(Lri5;Ljava/util/List;ZLjava/util/concurrent/Executor;)V

    invoke-virtual {v1, v2, v4}, Le45;->q(Ljava/util/concurrent/Executor;Ld45;)Le45;

    move-result-object v0

    :goto_4
    return-object v0

    .line 47
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "An invalid data collection token was used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
