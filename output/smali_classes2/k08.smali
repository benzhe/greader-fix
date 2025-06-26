.class public final Lk08;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ln18;

.field public b:Lh18;

.field public final c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Li18;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln18;

    invoke-direct {v0, p0}, Ln18;-><init>(Lk08;)V

    iput-object v0, p0, Lk08;->a:Ln18;

    const-string v0, "_koin"

    .line 3
    invoke-static {p0, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 5
    new-instance v0, Lf18;

    invoke-direct {v0}, Lf18;-><init>()V

    iput-object v0, p0, Lk08;->b:Lh18;

    .line 6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lk08;->c:Ljava/util/HashSet;

    return-void
.end method

.method public static b(Lk08;Ljava/util/List;ZI)V
    .locals 11

    const/4 v0, 0x2

    and-int/2addr p3, v0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "modules"

    invoke-static {p1, p3}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v2, p0, Lk08;->c:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object v2, p0, Lk08;->a:Ln18;

    .line 4
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p3}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Li18;

    .line 6
    iget-boolean v3, p3, Li18;->b:Z

    if-nez v3, :cond_c

    .line 7
    iget-object v3, p3, Li18;->c:Ljava/util/ArrayList;

    .line 8
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk18;

    .line 9
    new-instance v5, Lp18;

    invoke-direct {v5, v4, v1, v0}, Lp18;-><init>(Lk18;ZI)V

    .line 10
    iget-object v6, v2, Ln18;->a:Ljava/util/HashMap;

    invoke-interface {v4}, Lk18;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 11
    iget-object v6, v2, Ln18;->a:Ljava/util/HashMap;

    invoke-interface {v4}, Lk18;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 12
    :cond_2
    iget-object v3, p3, Li18;->d:Ljava/util/HashSet;

    .line 13
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lp08;

    const-string v5, "bean"

    .line 14
    invoke-static {v4, v5}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v5, v2, Ln18;->a:Ljava/util/HashMap;

    .line 16
    iget-object v6, v4, Lp08;->a:Lk18;

    .line 17
    invoke-interface {v6}, Lk18;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lp18;

    if-eqz v5, :cond_a

    const-string v6, "_scopeDefinitions[bean.s\u2026n for definition: $bean\")"

    .line 18
    invoke-static {v5, v6}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v6, Lp18;->d:Ll18;

    const-string v6, "beanDefinition"

    .line 20
    invoke-static {v4, v6}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v7, v5, Lp18;->a:Ljava/util/HashSet;

    invoke-virtual {v7, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 22
    iget-object v7, v4, Lp08;->g:Lr08;

    .line 23
    iget-boolean v7, v7, Lr08;->b:Z

    if-nez v7, :cond_6

    .line 24
    iget-object p0, v5, Lp18;->a:Ljava/util/HashSet;

    .line 25
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lp08;

    .line 26
    invoke-static {p2, v4}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :cond_5
    check-cast p1, Lp08;

    .line 27
    new-instance p0, Lu08;

    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Definition \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "\' try to override existing definition. Please use override option or check for definition \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-direct {p0, p1}, Lu08;-><init>(Ljava/lang/String;)V

    throw p0

    .line 30
    :cond_6
    iget-object v7, v5, Lp18;->a:Ljava/util/HashSet;

    invoke-virtual {v7, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 31
    :cond_7
    iget-object v7, v5, Lp18;->a:Ljava/util/HashSet;

    invoke-virtual {v7, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v7, v2, Ln18;->b:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    const-string v8, "_scopes.values"

    invoke-static {v7, v8}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lo18;

    .line 35
    iget-object v10, v10, Lo18;->f:Lp18;

    .line 36
    invoke-static {v10, v5}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 37
    :cond_9
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo18;

    .line 38
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4, v6}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v7, v7, Lo18;->b:Lm18;

    .line 40
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "definition"

    invoke-static {v4, v8}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v8, v4, Lp08;->g:Lr08;

    .line 42
    iget-boolean v8, v8, Lr08;->b:Z

    .line 43
    invoke-virtual {v7, v4, v8}, Lm18;->a(Lp08;Z)V

    goto :goto_4

    .line 44
    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Undeclared scope definition for definition: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    const/4 v3, 0x1

    .line 45
    iput-boolean v3, p3, Li18;->b:Z

    goto/16 :goto_0

    .line 46
    :cond_c
    iget-object v3, v2, Ln18;->e:Lk08;

    .line 47
    iget-object v3, v3, Lk08;->b:Lh18;

    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "module \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "\' already loaded!"

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 49
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "msg"

    invoke-static {p3, v4}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v4, Lg18;->g:Lg18;

    invoke-virtual {v3, v4, p3}, Lh18;->b(Lg18;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    if-eqz p2, :cond_e

    .line 51
    invoke-virtual {p0}, Lk08;->a()V

    :cond_e
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lk08;->a:Ln18;

    invoke-virtual {v0}, Ln18;->a()Lo18;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lo18;->f:Lp18;

    .line 3
    iget-boolean v1, v1, Lp18;->c:Z

    if-eqz v1, :cond_4

    .line 4
    iget-object v0, v0, Lo18;->b:Lm18;

    .line 5
    iget-object v1, v0, Lm18;->a:Ljava/util/HashMap;

    .line 6
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Le18;

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Le18;

    .line 11
    iget-object v4, v4, Ld18;->b:Lp08;

    .line 12
    iget-object v4, v4, Lp08;->g:Lr08;

    .line 13
    iget-boolean v4, v4, Lr08;->a:Z

    if-eqz v4, :cond_2

    .line 14
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le18;

    .line 16
    new-instance v3, Lc18;

    iget-object v4, v0, Lm18;->b:Lk08;

    iget-object v5, v0, Lm18;->c:Lo18;

    const/4 v6, 0x0

    .line 17
    invoke-direct {v3, v4, v5, v6}, Lc18;-><init>(Lk08;Lo18;Lel7;)V

    .line 18
    invoke-virtual {v2, v3}, Le18;->b(Lc18;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    return-void
.end method
