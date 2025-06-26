.class public Ljk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Schedulers"

    .line 1
    invoke-static {v0}, Lvj;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljk;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Lpj;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpj;",
            "Landroidx/work/impl/WorkDatabase;",
            "Ljava/util/List<",
            "Lik;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_4

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->n()Lem;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Llg;->c()V

    .line 4
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ne v1, v2, :cond_1

    .line 5
    iget p0, p0, Lpj;->f:I

    div-int/lit8 p0, p0, 0x2

    goto :goto_0

    .line 6
    :cond_1
    iget p0, p0, Lpj;->f:I

    .line 7
    :goto_0
    check-cast v0, Lfm;

    invoke-virtual {v0, p0}, Lfm;->b(I)Ljava/util/List;

    move-result-object p0

    .line 8
    move-object v1, p0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 10
    move-object v3, p0

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldm;

    .line 11
    iget-object v4, v4, Ldm;->a:Ljava/lang/String;

    invoke-virtual {v0, v4, v1, v2}, Lfm;->j(Ljava/lang/String;J)I

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p1}, Llg;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {p1}, Llg;->g()V

    .line 14
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    const/4 p1, 0x0

    new-array p1, p1, [Ldm;

    .line 15
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ldm;

    .line 16
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lik;

    .line 17
    invoke-interface {p2, p0}, Lik;->a([Ldm;)V

    goto :goto_2

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    .line 18
    invoke-virtual {p1}, Llg;->g()V

    .line 19
    throw p0

    :cond_4
    :goto_3
    return-void
.end method
