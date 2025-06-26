.class public Lhu5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhu5$a;
    }
.end annotation


# static fields
.field public static final b:Lhu5;


# instance fields
.field public a:Lbd6;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lhu5;

    .line 2
    invoke-static {}, Lbd6;->Z()Lbd6$b;

    move-result-object v1

    invoke-static {}, Lwc6;->D()Lwc6;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbd6$b;->v(Lwc6;)Lbd6$b;

    invoke-virtual {v1}, Lgj6$a;->l()Lgj6;

    move-result-object v1

    check-cast v1, Lbd6;

    invoke-direct {v0, v1}, Lhu5;-><init>(Lbd6;)V

    sput-object v0, Lhu5;->b:Lhu5;

    return-void
.end method

.method public constructor <init>(Lbd6;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lbd6;->Y()Lbd6$c;

    move-result-object v0

    sget-object v1, Lbd6$c;->o:Lbd6$c;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    const-string v4, "ObjectValues should be backed by a MapValue"

    .line 3
    invoke-static {v0, v4, v1}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-static {p1}, Lc50;->o0(Lbd6;)Z

    move-result v0

    xor-int/2addr v0, v3

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "ServerTimestamps should not be used as an ObjectValue"

    .line 5
    invoke-static {v0, v2, v1}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iput-object p1, p0, Lhu5;->a:Lbd6;

    return-void
.end method

.method public static b(Ljava/util/Map;)Lhu5;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lbd6;",
            ">;)",
            "Lhu5;"
        }
    .end annotation

    .line 1
    new-instance v0, Lhu5;

    .line 2
    invoke-static {}, Lbd6;->Z()Lbd6$b;

    move-result-object v1

    invoke-static {}, Lwc6;->I()Lwc6$b;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lgj6$a;->o()V

    .line 4
    iget-object v3, v2, Lgj6$a;->f:Lgj6;

    check-cast v3, Lwc6;

    invoke-static {v3}, Lwc6;->C(Lwc6;)Ljava/util/Map;

    move-result-object v3

    check-cast v3, Luj6;

    invoke-virtual {v3, p0}, Luj6;->putAll(Ljava/util/Map;)V

    .line 5
    invoke-virtual {v1, v2}, Lbd6$b;->u(Lwc6$b;)Lbd6$b;

    invoke-virtual {v1}, Lgj6$a;->l()Lgj6;

    move-result-object p0

    check-cast p0, Lbd6;

    invoke-direct {v0, p0}, Lhu5;-><init>(Lbd6;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lwc6;)Lou5;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    invoke-virtual {p1}, Lwc6;->F()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    new-instance v3, Leu5;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Leu5;-><init>(Ljava/util/List;)V

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbd6;

    invoke-static {v2}, Llu5;->i(Lbd6;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbd6;

    invoke-virtual {v1}, Lbd6;->U()Lwc6;

    move-result-object v1

    invoke-virtual {p0, v1}, Lhu5;->a(Lwc6;)Lou5;

    move-result-object v1

    .line 7
    iget-object v1, v1, Lou5;->a:Ljava/util/Set;

    .line 8
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leu5;

    .line 11
    invoke-virtual {v3, v2}, Lvt5;->i(Lvt5;)Lvt5;

    move-result-object v2

    check-cast v2, Leu5;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_3
    new-instance p1, Lou5;

    invoke-direct {p1, v0}, Lou5;-><init>(Ljava/util/Set;)V

    return-object p1
.end method

.method public c(Leu5;)Lbd6;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lvt5;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lhu5;->a:Lbd6;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lhu5;->a:Lbd6;

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1}, Lvt5;->I()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    .line 5
    invoke-virtual {v0}, Lbd6;->U()Lwc6;

    move-result-object v0

    invoke-virtual {p1, v1}, Lvt5;->y(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lwc6;->G(Ljava/lang/String;Lbd6;)Lbd6;

    move-result-object v0

    .line 6
    invoke-static {v0}, Llu5;->i(Lbd6;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v0}, Lbd6;->U()Lwc6;

    move-result-object v0

    invoke-virtual {p1}, Lvt5;->x()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v3}, Lwc6;->G(Ljava/lang/String;Lbd6;)Lbd6;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lhu5;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lhu5;->a:Lbd6;

    check-cast p1, Lhu5;

    iget-object p1, p1, Lhu5;->a:Lbd6;

    invoke-static {v0, p1}, Llu5;->e(Lbd6;Lbd6;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lhu5;->a:Lbd6;

    invoke-virtual {v0}, Lgj6;->hashCode()I

    move-result v0

    return v0
.end method
