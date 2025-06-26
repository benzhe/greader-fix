.class public final Lo18;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo18;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lm18;

.field public c:Ljava/lang/Object;

.field public d:Lj18;

.field public final e:Ljava/lang/String;

.field public final f:Lp18;

.field public final g:Lk08;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lp18;Lk08;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_scopeDefinition"

    invoke-static {p2, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_koin"

    invoke-static {p3, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo18;->e:Ljava/lang/String;

    iput-object p2, p0, Lo18;->f:Lp18;

    iput-object p3, p0, Lo18;->g:Lk08;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo18;->a:Ljava/util/ArrayList;

    .line 3
    new-instance p1, Lm18;

    invoke-direct {p1, p3, p0}, Lm18;-><init>(Lk08;Lo18;)V

    iput-object p1, p0, Lo18;->b:Lm18;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lhn7;Lk18;Lel7;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn7<",
            "TT;>;",
            "Lk18;",
            "Lel7<",
            "+",
            "Lj18;",
            ">;)TT;"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lo18;->g:Lk08;

    .line 2
    iget-object v0, v0, Lk08;->b:Lh18;

    .line 3
    sget-object v1, Lg18;->e:Lg18;

    invoke-virtual {v0, v1}, Lh18;->c(Lg18;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x27

    if-eqz p2, :cond_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " with qualifier \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 5
    :goto_0
    iget-object v2, p0, Lo18;->g:Lk08;

    .line 6
    iget-object v2, v2, Lk08;->b:Lh18;

    const-string v3, "+- \'"

    .line 7
    invoke-static {v3}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lq18;->a(Lhn7;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lh18;->a(Ljava/lang/String;)V

    .line 8
    new-instance v0, Lo18$a;

    invoke-direct {v0, p0, p2, p1, p3}, Lo18$a;-><init>(Lo18;Lk18;Lhn7;Lel7;)V

    const-string p2, "code"

    .line 9
    invoke-static {v0, p2}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object p2, Lko7;->b:Lko7;

    .line 11
    invoke-virtual {p2}, Lko7;->a()Ljo7;

    move-result-object p2

    .line 12
    invoke-virtual {v0}, Lo18$a;->invoke()Ljava/lang/Object;

    move-result-object p3

    .line 13
    invoke-virtual {p2}, Ljo7;->a()D

    move-result-wide v0

    .line 14
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, p2}, Lho7;->i(DLjava/util/concurrent/TimeUnit;)D

    move-result-wide v0

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    .line 16
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 17
    iget-object p2, p0, Lo18;->g:Lk08;

    .line 18
    iget-object p2, p2, Lk08;->b:Lh18;

    const-string v2, "|- \'"

    .line 19
    invoke-static {v2}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lq18;->a(Lhn7;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' in "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " ms"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lh18;->a(Ljava/lang/String;)V

    return-object p3

    .line 20
    :cond_1
    invoke-virtual {p0, p2, p1, p3}, Lo18;->b(Lk18;Lhn7;Lel7;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lk18;Lhn7;Lel7;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lk18;",
            "Lhn7<",
            "TT;>;",
            "Lel7<",
            "+",
            "Lj18;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    invoke-static {p2, p1}, Lkt7;->k(Lhn7;Lk18;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lo18;->b:Lm18;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "indexKey"

    invoke-static {v0, v2}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v2, v1, Lm18;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld18;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 5
    new-instance v3, Lc18;

    iget-object v4, v1, Lm18;->b:Lk08;

    iget-object v1, v1, Lm18;->c:Lo18;

    invoke-direct {v3, v4, v1, p3}, Lc18;-><init>(Lk08;Lo18;Lel7;)V

    .line 6
    invoke-virtual {v0, v3}, Ld18;->b(Lc18;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    instance-of v1, v0, Ljava/lang/Object;

    if-nez v1, :cond_1

    move-object v0, v2

    :cond_1
    const-string v1, "\' - q:\'"

    const/16 v3, 0x27

    if-eqz v0, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    iget-object v0, p0, Lo18;->g:Lk08;

    .line 8
    iget-object v0, v0, Lk08;->b:Lh18;

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lq18;->a(Lhn7;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\' not found in current scope"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lh18;->a(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lo18;->c:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lhn7;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo18;->c:Ljava/lang/Object;

    instance-of v4, v0, Ljava/lang/Object;

    if-nez v4, :cond_4

    :cond_3
    move-object v0, v2

    :cond_4
    :goto_1
    const-string v4, "clazz"

    if-eqz v0, :cond_5

    goto/16 :goto_4

    .line 11
    :cond_5
    iget-object v0, p0, Lo18;->g:Lk08;

    .line 12
    iget-object v0, v0, Lk08;->b:Lh18;

    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lq18;->a(Lhn7;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\' not found in current scope\'s source"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lh18;->a(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lo18;->d:Lj18;

    if-eqz v0, :cond_b

    .line 15
    invoke-static {p2, v4}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v5, v0, Lj18;->a:Ljava/util/List;

    const-string v6, "$this$filterNotNull"

    .line 17
    invoke-static {v5, v6}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v7, "$this$filterNotNullTo"

    .line 19
    invoke-static {v5, v7}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "destination"

    invoke-static {v6, v7}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 21
    :cond_7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 23
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lsm7;->a(Ljava/lang/Class;)Lhn7;

    move-result-object v8

    invoke-static {v8, p2}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 24
    :cond_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_b

    const/4 v7, 0x1

    if-ne v6, v7, :cond_a

    .line 25
    invoke-static {v5}, Lek7;->f(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    const-string v5, "null cannot be cast to non-null type T"

    invoke-static {v0, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_4

    .line 26
    :cond_a
    new-instance p1, Lv08;

    const-string p3, "Ambiguous parameter injection: more than one value of type \'"

    .line 27
    invoke-static {p3}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p2}, Lq18;->a(Lhn7;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' to get from "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ". Check your injection parameters"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 28
    invoke-direct {p1, p2}, Lv08;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    move-object v0, v2

    :goto_4
    if-eqz v0, :cond_c

    goto/16 :goto_7

    .line 29
    :cond_c
    iget-object v0, p0, Lo18;->g:Lk08;

    .line 30
    iget-object v0, v0, Lk08;->b:Lh18;

    .line 31
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lq18;->a(Lhn7;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\' not found in injected parameters"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lh18;->a(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lo18;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v5, v2

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo18;

    .line 33
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, " on scope "

    invoke-static {p2, v4}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    :try_start_0
    invoke-virtual {v5, p2, p1, p3}, Lo18;->a(Lhn7;Lk18;Lel7;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catch Lt08; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ly08; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 35
    :catch_0
    iget-object v7, v5, Lo18;->g:Lk08;

    .line 36
    iget-object v7, v7, Lk08;->b:Lh18;

    const-string v8, "Koin.getOrNull - no instance found for "

    .line 37
    invoke-static {v8}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Lq18;->a(Lhn7;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lo18;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lh18;->a(Ljava/lang/String;)V

    goto :goto_5

    .line 38
    :catch_1
    iget-object v7, v5, Lo18;->g:Lk08;

    .line 39
    iget-object v7, v7, Lk08;->b:Lh18;

    const-string v8, "Koin.getOrNull - scope closed - no instance found for "

    .line 40
    invoke-static {v8}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Lq18;->a(Lhn7;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lo18;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lh18;->a(Ljava/lang/String;)V

    :goto_5
    move-object v5, v2

    :goto_6
    if-eqz v5, :cond_d

    :cond_e
    move-object v0, v5

    :goto_7
    if-eqz v0, :cond_f

    return-object v0

    .line 41
    :cond_f
    iget-object p3, p0, Lo18;->g:Lk08;

    .line 42
    iget-object p3, p3, Lk08;->b:Lh18;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lq18;->a(Lhn7;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' not found in linked scopes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lh18;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_10

    .line 44
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " & qualifier:\'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_10

    goto :goto_8

    :cond_10
    const-string p1, ""

    .line 45
    :goto_8
    new-instance p3, Ly08;

    const-string v0, "No definition found for class:\'"

    .line 46
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lq18;->a(Lhn7;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Check your definitions!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-direct {p3, p1}, Ly08;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo18;

    if-eqz v0, :cond_0

    check-cast p1, Lo18;

    iget-object v0, p0, Lo18;->e:Ljava/lang/String;

    iget-object v1, p1, Lo18;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo18;->f:Lp18;

    iget-object v1, p1, Lo18;->f:Lp18;

    invoke-static {v0, v1}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo18;->g:Lk08;

    iget-object p1, p1, Lo18;->g:Lk08;

    invoke-static {v0, p1}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lo18;->e:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo18;->f:Lp18;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lp18;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo18;->g:Lk08;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "[\'"

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo18;->e:Ljava/lang/String;

    const-string v2, "\']"

    invoke-static {v0, v1, v2}, Ljo;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
