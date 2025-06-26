.class public final Ll08;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lk08;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lk08;

    invoke-direct {v0}, Lk08;-><init>()V

    iput-object v0, p0, Ll08;->a:Lk08;

    return-void
.end method

.method public constructor <init>(Lgm7;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Lk08;

    invoke-direct {p1}, Lk08;-><init>()V

    iput-object p1, p0, Ll08;->a:Lk08;

    return-void
.end method

.method public static final b()Ll08;
    .locals 11

    .line 1
    new-instance v0, Ll08;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ll08;-><init>(Lgm7;)V

    .line 2
    iget-object v2, v0, Ll08;->a:Lk08;

    .line 3
    iget-object v2, v2, Lk08;->a:Ln18;

    .line 4
    iget-object v3, v2, Ln18;->c:Lp18;

    if-nez v3, :cond_7

    .line 5
    sget-object v3, Lp18;->e:Lp18;

    .line 6
    new-instance v3, Lp18;

    .line 7
    sget-object v4, Lp18;->d:Ll18;

    const/4 v5, 0x1

    .line 8
    invoke-direct {v3, v4, v5}, Lp18;-><init>(Lk18;Z)V

    .line 9
    iget-object v5, v2, Ln18;->a:Ljava/util/HashMap;

    .line 10
    iget-object v6, v4, Ll18;->a:Ljava/lang/String;

    .line 11
    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iput-object v3, v2, Ln18;->c:Lp18;

    .line 13
    iget-object v2, v0, Ll08;->a:Lk08;

    .line 14
    iget-object v2, v2, Lk08;->a:Ln18;

    .line 15
    iget-object v3, v2, Ln18;->d:Lo18;

    if-nez v3, :cond_6

    const-string v3, "-Root-"

    const-string v5, "scopeId"

    .line 16
    invoke-static {v3, v5}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "qualifier"

    invoke-static {v4, v5}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v5, v2, Ln18;->b:Ljava/util/HashMap;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 18
    iget-object v5, v2, Ln18;->a:Ljava/util/HashMap;

    invoke-virtual {v4}, Ll18;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lp18;

    if-eqz v5, :cond_4

    .line 19
    new-instance v4, Lo18;

    iget-object v6, v2, Ln18;->e:Lk08;

    invoke-direct {v4, v3, v5, v6}, Lo18;-><init>(Ljava/lang/String;Lp18;Lk08;)V

    .line 20
    iput-object v1, v4, Lo18;->c:Ljava/lang/Object;

    .line 21
    iget-object v1, v2, Ln18;->d:Lo18;

    if-eqz v1, :cond_0

    invoke-static {v1}, Ln56;->r1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lhk7;->e:Lhk7;

    :goto_0
    const-string v5, "links"

    .line 22
    invoke-static {v1, v5}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v5, v4, Lo18;->b:Lm18;

    iget-object v6, v4, Lo18;->f:Lp18;

    .line 24
    iget-object v6, v6, Lp18;->a:Ljava/util/HashSet;

    .line 25
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "definitions"

    invoke-static {v6, v7}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lp08;

    .line 27
    iget-object v8, v5, Lm18;->b:Lk08;

    .line 28
    iget-object v8, v8, Lk08;->b:Lh18;

    .line 29
    sget-object v9, Lg18;->e:Lg18;

    invoke-virtual {v8, v9}, Lh18;->c(Lg18;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 30
    iget-object v8, v5, Lm18;->c:Lo18;

    .line 31
    iget-object v8, v8, Lo18;->f:Lp18;

    .line 32
    iget-boolean v8, v8, Lp18;->c:Z

    if-eqz v8, :cond_1

    .line 33
    iget-object v8, v5, Lm18;->b:Lk08;

    .line 34
    iget-object v8, v8, Lk08;->b:Lh18;

    .line 35
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lh18;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 36
    :cond_1
    iget-object v8, v5, Lm18;->b:Lk08;

    .line 37
    iget-object v8, v8, Lk08;->b:Lh18;

    .line 38
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v5, Lm18;->c:Lo18;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " -> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lh18;->a(Ljava/lang/String;)V

    :cond_2
    :goto_2
    const/4 v8, 0x0

    .line 39
    invoke-virtual {v5, v7, v8}, Lm18;->a(Lp08;Z)V

    goto :goto_1

    .line 40
    :cond_3
    iget-object v5, v4, Lo18;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 41
    iget-object v1, v2, Ln18;->b:Ljava/util/HashMap;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iput-object v4, v2, Ln18;->d:Lo18;

    return-object v0

    .line 43
    :cond_4
    new-instance v0, Lz08;

    const-string v1, "No Scope Definition found for qualifer \'"

    invoke-static {v1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ll18;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lz08;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_5
    new-instance v0, La18;

    const-string v1, "Scope with id \'-Root-\' is already created"

    invoke-direct {v0, v1}, La18;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Try to recreate Root scope"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Try to recreate Root scope definition"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Ll08;
    .locals 5

    .line 1
    iget-object v0, p0, Ll08;->a:Lk08;

    .line 2
    iget-object v0, v0, Lk08;->b:Lh18;

    .line 3
    sget-object v1, Lg18;->e:Lg18;

    invoke-virtual {v0, v1}, Lh18;->c(Lg18;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ll08$a;

    invoke-direct {v0, p0}, Ll08$a;-><init>(Ll08;)V

    invoke-static {v0}, Lkt7;->m(Lel7;)D

    move-result-wide v0

    .line 5
    iget-object v2, p0, Ll08;->a:Lk08;

    .line 6
    iget-object v2, v2, Lk08;->b:Lh18;

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "instances started in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lh18;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Ll08;->a:Lk08;

    invoke-virtual {v0}, Lk08;->a()V

    :goto_0
    return-object p0
.end method
