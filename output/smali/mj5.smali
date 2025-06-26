.class public Lmj5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyi5;

.field public final b:Lnl5;

.field public final c:Lfm5;

.field public final d:Luj5;

.field public final e:Loj5;


# direct methods
.method public constructor <init>(Lyi5;Lnl5;Lfm5;Luj5;Loj5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmj5;->a:Lyi5;

    .line 3
    iput-object p2, p0, Lmj5;->b:Lnl5;

    .line 4
    iput-object p3, p0, Lmj5;->c:Lfm5;

    .line 5
    iput-object p4, p0, Lmj5;->d:Luj5;

    .line 6
    iput-object p5, p0, Lmj5;->e:Loj5;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/Executor;Lcj5;)Le45;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcj5;",
            ")",
            "Le45<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ltk5$e;->g:Ltk5$e;

    sget-object v1, Lcj5;->e:Lcj5;

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    .line 2
    sget-object p1, Lah5;->a:Lah5;

    const-string p2, "Send via DataTransport disabled. Removing DataTransport reports."

    invoke-virtual {p1, p2}, Lah5;->b(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lmj5;->b:Lnl5;

    invoke-virtual {p1}, Lnl5;->b()V

    .line 4
    invoke-static {v2}, Lc50;->X(Ljava/lang/Object;)Le45;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    iget-object v1, p0, Lmj5;->b:Lnl5;

    .line 6
    invoke-virtual {v1}, Lnl5;->e()Ljava/util/List;

    move-result-object v3

    .line 7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 8
    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 9
    invoke-virtual {v1}, Lnl5;->e()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 10
    :try_start_0
    sget-object v5, Lnl5;->i:Lcl5;

    invoke-static {v3}, Lnl5;->j(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcl5;->f(Ljava/lang/String;)Ltk5;

    move-result-object v5

    .line 11
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 12
    new-instance v7, Lrh5;

    invoke-direct {v7, v5, v6}, Lrh5;-><init>(Ltk5;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 14
    sget-object v6, Lah5;->a:Lah5;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not load report file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "; deleting"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lah5;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 16
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzi5;

    .line 18
    invoke-virtual {v4}, Lzi5;->a()Ltk5;

    move-result-object v5

    .line 19
    invoke-virtual {v5}, Ltk5;->h()Ltk5$d;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 20
    sget-object v5, Ltk5$e;->f:Ltk5$e;

    goto :goto_2

    .line 21
    :cond_2
    invoke-virtual {v5}, Ltk5;->e()Ltk5$c;

    move-result-object v5

    if-eqz v5, :cond_3

    move-object v5, v0

    goto :goto_2

    .line 22
    :cond_3
    sget-object v5, Ltk5$e;->e:Ltk5$e;

    :goto_2
    if-ne v5, v0, :cond_4

    .line 23
    sget-object v5, Lcj5;->g:Lcj5;

    if-eq p2, v5, :cond_4

    .line 24
    sget-object v5, Lah5;->a:Lah5;

    const-string v6, "Send native reports via DataTransport disabled. Removing DataTransport reports."

    .line 25
    invoke-virtual {v5, v6}, Lah5;->b(Ljava/lang/String;)V

    .line 26
    iget-object v5, p0, Lmj5;->b:Lnl5;

    invoke-virtual {v4}, Lzi5;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lnl5;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 27
    :cond_4
    iget-object v5, p0, Lmj5;->c:Lfm5;

    .line 28
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-virtual {v4}, Lzi5;->a()Ltk5;

    move-result-object v6

    .line 30
    new-instance v7, Lf45;

    invoke-direct {v7}, Lf45;-><init>()V

    .line 31
    iget-object v5, v5, Lfm5;->a:Lyq;

    .line 32
    new-instance v8, Ltq;

    sget-object v9, Lwq;->g:Lwq;

    invoke-direct {v8, v2, v6, v9}, Ltq;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Lwq;)V

    .line 33
    new-instance v6, Ldm5;

    invoke-direct {v6, v7, v4}, Ldm5;-><init>(Lf45;Lzi5;)V

    .line 34
    check-cast v5, Lgs;

    invoke-virtual {v5, v8, v6}, Lgs;->a(Lvq;Lar;)V

    .line 35
    iget-object v4, v7, Lf45;->a:Le55;

    .line 36
    new-instance v5, Lkj5;

    invoke-direct {v5, p0}, Lkj5;-><init>(Lmj5;)V

    .line 37
    invoke-virtual {v4, p1, v5}, Le55;->i(Ljava/util/concurrent/Executor;Lw35;)Le45;

    move-result-object v4

    .line 38
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 39
    :cond_5
    invoke-static {v1}, Lc50;->M0(Ljava/util/Collection;)Le45;

    move-result-object p1

    return-object p1
.end method
