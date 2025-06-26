.class public Lhu5$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhu5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lhu5;

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhu5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lhu5$a;->a:Lhu5;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lhu5$a;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Leu5;Ljava/util/Map;)Lwc6;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu5;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lwc6;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhu5$a;->a:Lhu5;

    invoke-virtual {v0, p1}, Lhu5;->c(Leu5;)Lbd6;

    move-result-object v0

    .line 2
    invoke-static {v0}, Llu5;->i(Lbd6;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lbd6;->U()Lwc6;

    move-result-object v0

    invoke-virtual {v0}, Lgj6;->A()Lgj6$a;

    move-result-object v0

    check-cast v0, Lwc6$b;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lwc6;->I()Lwc6$b;

    move-result-object v0

    .line 5
    :goto_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 7
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 8
    instance-of v5, v3, Ljava/util/Map;

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 9
    invoke-virtual {p1, v4}, Lvt5;->k(Ljava/lang/String;)Lvt5;

    move-result-object v5

    check-cast v5, Leu5;

    check-cast v3, Ljava/util/Map;

    invoke-virtual {p0, v5, v3}, Lhu5$a;->a(Leu5;Ljava/util/Map;)Lwc6;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 10
    invoke-static {}, Lbd6;->Z()Lbd6$b;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lgj6$a;->o()V

    .line 12
    iget-object v5, v2, Lgj6$a;->f:Lgj6;

    check-cast v5, Lbd6;

    invoke-static {v5, v3}, Lbd6;->I(Lbd6;Lwc6;)V

    .line 13
    invoke-virtual {v2}, Lgj6$a;->l()Lgj6;

    move-result-object v2

    check-cast v2, Lbd6;

    invoke-virtual {v0, v4, v2}, Lwc6$b;->r(Ljava/lang/String;Lbd6;)Lwc6$b;

    :goto_2
    const/4 v2, 0x1

    goto :goto_1

    .line 14
    :cond_2
    instance-of v5, v3, Lbd6;

    if-eqz v5, :cond_3

    .line 15
    check-cast v3, Lbd6;

    invoke-virtual {v0, v4, v3}, Lwc6$b;->r(Ljava/lang/String;Lbd6;)Lwc6$b;

    goto :goto_2

    .line 16
    :cond_3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    iget-object v5, v0, Lgj6$a;->f:Lgj6;

    check-cast v5, Lwc6;

    invoke-virtual {v5}, Lwc6;->F()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v3, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    new-array v3, v1, [Ljava/lang/Object;

    const-string v5, "Expected entry to be a Map, a Value or null"

    .line 19
    invoke-static {v2, v5, v3}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-virtual {v0}, Lgj6$a;->o()V

    .line 21
    iget-object v2, v0, Lgj6$a;->f:Lgj6;

    check-cast v2, Lwc6;

    invoke-static {v2}, Lwc6;->C(Lwc6;)Ljava/util/Map;

    move-result-object v2

    check-cast v2, Luj6;

    invoke-virtual {v2, v4}, Luj6;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    .line 22
    invoke-virtual {v0}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Lwc6;

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    :goto_4
    return-object p1
.end method

.method public b()Lhu5;
    .locals 4

    .line 1
    sget-object v0, Leu5;->g:Leu5;

    iget-object v1, p0, Lhu5$a;->b:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lhu5$a;->a(Leu5;Ljava/util/Map;)Lwc6;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lhu5;

    invoke-static {}, Lbd6;->Z()Lbd6$b;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lgj6$a;->o()V

    .line 4
    iget-object v3, v2, Lgj6$a;->f:Lgj6;

    check-cast v3, Lbd6;

    invoke-static {v3, v0}, Lbd6;->I(Lbd6;Lwc6;)V

    .line 5
    invoke-virtual {v2}, Lgj6$a;->l()Lgj6;

    move-result-object v0

    check-cast v0, Lbd6;

    invoke-direct {v1, v0}, Lhu5;-><init>(Lbd6;)V

    return-object v1

    .line 6
    :cond_0
    iget-object v0, p0, Lhu5$a;->a:Lhu5;

    return-object v0
.end method

.method public c(Leu5;Lbd6;)Lhu5$a;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lvt5;->C()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Cannot set field for empty path on ObjectValue"

    invoke-static {v0, v2, v1}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lhu5$a;->d(Leu5;Lbd6;)V

    return-object p0
.end method

.method public final d(Leu5;Lbd6;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lhu5$a;->b:Ljava/util/Map;

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Lvt5;->I()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 3
    invoke-virtual {p1, v1}, Lvt5;->y(I)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 5
    instance-of v4, v3, Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 6
    check-cast v3, Ljava/util/Map;

    goto :goto_1

    .line 7
    :cond_0
    instance-of v4, v3, Lbd6;

    if-eqz v4, :cond_1

    check-cast v3, Lbd6;

    .line 8
    invoke-virtual {v3}, Lbd6;->Y()Lbd6$c;

    move-result-object v4

    sget-object v5, Lbd6$c;->o:Lbd6$c;

    if-ne v4, v5, :cond_1

    .line 9
    new-instance v4, Ljava/util/HashMap;

    .line 10
    invoke-virtual {v3}, Lbd6;->U()Lwc6;

    move-result-object v3

    invoke-virtual {v3}, Lwc6;->F()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 11
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v4

    goto :goto_2

    .line 12
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 13
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    move-object v0, v3

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {p1}, Lvt5;->x()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
