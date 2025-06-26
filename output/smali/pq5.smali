.class public Lpq5;
.super Leq5;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbu5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Leu5;Lbd6;)V
    .locals 1

    .line 1
    sget-object v0, Lfq5$a;->n:Lfq5$a;

    invoke-direct {p0, p1, v0, p2}, Leq5;-><init>(Leu5;Lfq5$a;Lbd6;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lpq5;->d:Ljava/util/List;

    .line 3
    invoke-static {v0, p2}, Lpq5;->e(Lfq5$a;Lbd6;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static e(Lfq5$a;Lbd6;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfq5$a;",
            "Lbd6;",
            ")",
            "Ljava/util/List<",
            "Lbu5;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lfq5$a;->n:Lfq5$a;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1

    sget-object v0, Lfq5$a;->o:Lfq5$a;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "extractDocumentKeysFromArrayValue requires IN or NOT_IN operators"

    invoke-static {v0, v3, v2}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Llu5;->f(Lbd6;)Z

    move-result v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "KeyFieldInFilter/KeyFieldNotInFilter expects an ArrayValue"

    invoke-static {v0, v3, v2}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p1}, Lbd6;->N()Ljc6;

    move-result-object p1

    invoke-virtual {p1}, Ljc6;->i()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbd6;

    .line 5
    invoke-static {v2}, Llu5;->k(Lbd6;)Z

    move-result v3

    const-string v4, "Comparing on key with "

    invoke-static {v4}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 6
    iget-object v5, p0, Lfq5$a;->e:Ljava/lang/String;

    const-string v6, ", but an array value was not a ReferenceValue"

    .line 7
    invoke-static {v4, v5, v6}, Ljo;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    .line 8
    invoke-static {v3, v4, v5}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v2}, Lbd6;->V()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbu5;->k(Ljava/lang/String;)Lbu5;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    return-object v0
.end method


# virtual methods
.method public b(Lyt5;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lpq5;->d:Ljava/util/List;

    .line 2
    iget-object p1, p1, Lfu5;->a:Lbu5;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
