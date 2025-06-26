.class public final Lab7;
.super Lc47;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lab7$d;,
        Lab7$b;,
        Lab7$c;,
        Lab7$e;
    }
.end annotation


# static fields
.field public static final g:Lv27$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv27$c<",
            "Lab7$d<",
            "Lj37;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final h:Lx47;


# instance fields
.field public final b:Lc47$d;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lq37;",
            "Lc47$h;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Random;

.field public e:Li37;

.field public f:Lab7$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lv27$c;

    const-string v1, "state-info"

    invoke-direct {v0, v1}, Lv27$c;-><init>(Ljava/lang/String;)V

    .line 2
    sput-object v0, Lab7;->g:Lv27$c;

    .line 3
    sget-object v0, Lx47;->f:Lx47;

    const-string v1, "no subchannels ready"

    invoke-virtual {v0, v1}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v0

    sput-object v0, Lab7;->h:Lx47;

    return-void
.end method

.method public constructor <init>(Lc47$d;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc47;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lab7;->c:Ljava/util/Map;

    .line 3
    new-instance v0, Lab7$b;

    sget-object v1, Lab7;->h:Lx47;

    invoke-direct {v0, v1}, Lab7$b;-><init>(Lx47;)V

    iput-object v0, p0, Lab7;->f:Lab7$e;

    const-string v0, "helper"

    .line 4
    invoke-static {p1, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lc47$d;

    iput-object p1, p0, Lab7;->b:Lc47$d;

    .line 5
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lab7;->d:Ljava/util/Random;

    return-void
.end method

.method public static e(Lc47$h;)Lab7$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc47$h;",
            ")",
            "Lab7$d<",
            "Lj37;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc47$h;->b()Lv27;

    move-result-object p0

    sget-object v0, Lab7;->g:Lv27$c;

    .line 2
    iget-object p0, p0, Lv27;->a:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "STATE_INFO"

    .line 3
    invoke-static {p0, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Lab7$d;

    return-object p0
.end method


# virtual methods
.method public a(Lx47;)V
    .locals 3

    .line 1
    sget-object v0, Li37;->g:Li37;

    .line 2
    iget-object v1, p0, Lab7;->f:Lab7$e;

    instance-of v2, v1, Lab7$c;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lab7$b;

    invoke-direct {v1, p1}, Lab7$b;-><init>(Lx47;)V

    .line 3
    :goto_0
    invoke-virtual {p0, v0, v1}, Lab7;->h(Li37;Lab7$e;)V

    return-void
.end method

.method public b(Lc47$g;)V
    .locals 8

    .line 1
    iget-object p1, p1, Lc47$g;->a:Ljava/util/List;

    .line 2
    iget-object v0, p0, Lab7;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq37;

    .line 5
    new-instance v3, Lq37;

    .line 6
    iget-object v4, v2, Lq37;->a:Ljava/util/List;

    .line 7
    sget-object v5, Lv27;->b:Lv27;

    invoke-direct {v3, v4, v5}, Lq37;-><init>(Ljava/util/List;Lv27;)V

    .line 8
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 10
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 11
    invoke-interface {v2, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 12
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq37;

    .line 14
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq37;

    .line 15
    iget-object v3, p0, Lab7;->c:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc47$h;

    if-eqz v3, :cond_1

    .line 16
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lc47$h;->g(Ljava/util/List;)V

    goto :goto_1

    .line 17
    :cond_1
    invoke-static {}, Lv27;->a()Lv27$b;

    move-result-object v3

    sget-object v4, Lab7;->g:Lv27$c;

    new-instance v5, Lab7$d;

    sget-object v6, Li37;->h:Li37;

    .line 18
    invoke-static {v6}, Lj37;->a(Li37;)Lj37;

    move-result-object v6

    invoke-direct {v5, v6}, Lab7$d;-><init>(Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v3, v4, v5}, Lv27$b;->b(Lv27$c;Ljava/lang/Object;)Lv27$b;

    .line 20
    iget-object v4, p0, Lab7;->b:Lc47$d;

    .line 21
    new-instance v5, Lc47$b$a;

    invoke-direct {v5}, Lc47$b$a;-><init>()V

    .line 22
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v5, Lc47$b$a;->a:Ljava/util/List;

    .line 23
    invoke-virtual {v3}, Lv27$b;->a()Lv27;

    move-result-object v0

    const-string v3, "attrs"

    .line 24
    invoke-static {v0, v3}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, v5, Lc47$b$a;->b:Lv27;

    .line 25
    new-instance v3, Lc47$b;

    iget-object v6, v5, Lc47$b$a;->a:Ljava/util/List;

    iget-object v5, v5, Lc47$b$a;->c:[[Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-direct {v3, v6, v0, v5, v7}, Lc47$b;-><init>(Ljava/util/List;Lv27;[[Ljava/lang/Object;Lc47$a;)V

    .line 26
    invoke-virtual {v4, v3}, Lc47$d;->a(Lc47$b;)Lc47$h;

    move-result-object v0

    const-string v3, "subchannel"

    .line 27
    invoke-static {v0, v3}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v3, Lab7$a;

    invoke-direct {v3, p0, v0}, Lab7$a;-><init>(Lab7;Lc47$h;)V

    invoke-virtual {v0, v3}, Lc47$h;->f(Lc47$j;)V

    .line 29
    iget-object v3, p0, Lab7;->c:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-virtual {v0}, Lc47$h;->d()V

    goto :goto_1

    .line 31
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq37;

    .line 33
    iget-object v2, p0, Lab7;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 34
    :cond_3
    invoke-virtual {p0}, Lab7;->g()V

    .line 35
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc47$h;

    .line 36
    invoke-virtual {v0}, Lc47$h;->e()V

    .line 37
    invoke-static {v0}, Lab7;->e(Lc47$h;)Lab7$d;

    move-result-object v0

    sget-object v1, Li37;->i:Li37;

    .line 38
    invoke-static {v1}, Lj37;->a(Li37;)Lj37;

    move-result-object v1

    iput-object v1, v0, Lab7$d;->a:Ljava/lang/Object;

    goto :goto_3

    :cond_4
    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lab7;->f()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc47$h;

    .line 2
    invoke-virtual {v1}, Lc47$h;->e()V

    .line 3
    invoke-static {v1}, Lab7;->e(Lc47$h;)Lab7$d;

    move-result-object v1

    sget-object v2, Li37;->i:Li37;

    .line 4
    invoke-static {v2}, Lj37;->a(Li37;)Lj37;

    move-result-object v2

    iput-object v2, v1, Lab7$d;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lc47$h;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lab7;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final g()V
    .locals 8

    .line 1
    sget-object v0, Li37;->e:Li37;

    sget-object v1, Li37;->f:Li37;

    invoke-virtual {p0}, Lab7;->f()Ljava/util/Collection;

    move-result-object v2

    .line 2
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc47$h;

    .line 4
    invoke-static {v4}, Lab7;->e(Lc47$h;)Lab7$d;

    move-result-object v7

    iget-object v7, v7, Lab7$d;->a:Ljava/lang/Object;

    check-cast v7, Lj37;

    .line 5
    iget-object v7, v7, Lj37;->a:Li37;

    if-ne v7, v1, :cond_1

    const/4 v5, 0x1

    :cond_1
    if-eqz v5, :cond_0

    .line 6
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 8
    sget-object v1, Lab7;->h:Lx47;

    .line 9
    invoke-virtual {p0}, Lab7;->f()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc47$h;

    .line 10
    invoke-static {v3}, Lab7;->e(Lc47$h;)Lab7$d;

    move-result-object v3

    iget-object v3, v3, Lab7$d;->a:Ljava/lang/Object;

    check-cast v3, Lj37;

    .line 11
    iget-object v4, v3, Lj37;->a:Li37;

    if-eq v4, v0, :cond_4

    .line 12
    sget-object v7, Li37;->h:Li37;

    if-ne v4, v7, :cond_5

    :cond_4
    const/4 v5, 0x1

    .line 13
    :cond_5
    sget-object v4, Lab7;->h:Lx47;

    if-eq v1, v4, :cond_6

    invoke-virtual {v1}, Lx47;->f()Z

    move-result v4

    if-nez v4, :cond_3

    .line 14
    :cond_6
    iget-object v1, v3, Lj37;->b:Lx47;

    goto :goto_1

    :cond_7
    if-eqz v5, :cond_8

    goto :goto_2

    .line 15
    :cond_8
    sget-object v0, Li37;->g:Li37;

    :goto_2
    new-instance v2, Lab7$b;

    invoke-direct {v2, v1}, Lab7$b;-><init>(Lx47;)V

    invoke-virtual {p0, v0, v2}, Lab7;->h(Li37;Lab7$e;)V

    goto :goto_3

    .line 16
    :cond_9
    iget-object v0, p0, Lab7;->d:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 17
    new-instance v2, Lab7$c;

    invoke-direct {v2, v3, v0}, Lab7$c;-><init>(Ljava/util/List;I)V

    invoke-virtual {p0, v1, v2}, Lab7;->h(Li37;Lab7$e;)V

    :goto_3
    return-void
.end method

.method public final h(Li37;Lab7$e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lab7;->e:Li37;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lab7;->f:Lab7$e;

    invoke-virtual {p2, v0}, Lab7$e;->b(Lab7$e;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lab7;->b:Lc47$d;

    invoke-virtual {v0, p1, p2}, Lc47$d;->d(Li37;Lc47$i;)V

    .line 3
    iput-object p1, p0, Lab7;->e:Li37;

    .line 4
    iput-object p2, p0, Lab7;->f:Lab7$e;

    :cond_1
    return-void
.end method
