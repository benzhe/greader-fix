.class public final Lm18;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ld18<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final b:Lk08;

.field public final c:Lo18;


# direct methods
.method public constructor <init>(Lk08;Lo18;)V
    .locals 1

    const-string v0, "_koin"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_scope"

    invoke-static {p2, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm18;->b:Lk08;

    iput-object p2, p0, Lm18;->c:Lo18;

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lm18;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Lp08;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp08<",
            "*>;Z)V"
        }
    .end annotation

    const-string v0, "definition"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lp08;->g:Lr08;

    .line 2
    iget-boolean v0, v0, Lr08;->b:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 3
    :goto_1
    iget-object v0, p0, Lm18;->b:Lk08;

    .line 4
    iget-object v2, p1, Lp08;->e:Lq08;

    .line 5
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_3

    if-ne v2, v1, :cond_2

    .line 6
    new-instance v1, Lb18;

    invoke-direct {v1, v0, p1}, Lb18;-><init>(Lk08;Lp08;)V

    goto :goto_2

    :cond_2
    new-instance p1, Lqj7;

    invoke-direct {p1}, Lqj7;-><init>()V

    throw p1

    .line 7
    :cond_3
    new-instance v1, Le18;

    invoke-direct {v1, v0, p1}, Le18;-><init>(Lk08;Lp08;)V

    .line 8
    :goto_2
    iget-object v0, p1, Lp08;->b:Lhn7;

    .line 9
    iget-object v2, p1, Lp08;->c:Lk18;

    .line 10
    invoke-static {v0, v2}, Lkt7;->k(Lhn7;Lk18;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {p0, v0, v1, p2}, Lm18;->b(Ljava/lang/String;Ld18;Z)V

    .line 12
    iget-object v0, p1, Lp08;->f:Ljava/util/List;

    .line 13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhn7;

    if-eqz p2, :cond_5

    .line 14
    iget-object v3, p1, Lp08;->c:Lk18;

    .line 15
    invoke-static {v2, v3}, Lkt7;->k(Lhn7;Lk18;)Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-virtual {p0, v2, v1, p2}, Lm18;->b(Ljava/lang/String;Ld18;Z)V

    goto :goto_3

    .line 17
    :cond_5
    iget-object v3, p1, Lp08;->c:Lk18;

    .line 18
    invoke-static {v2, v3}, Lkt7;->k(Lhn7;Lk18;)Ljava/lang/String;

    move-result-object v2

    .line 19
    iget-object v3, p0, Lm18;->a:Ljava/util/HashMap;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 20
    iget-object v3, p0, Lm18;->a:Ljava/util/HashMap;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    return-void
.end method

.method public final b(Ljava/lang/String;Ld18;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ld18<",
            "*>;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm18;->a:Ljava/util/HashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "InstanceRegistry already contains index \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3
    :cond_1
    :goto_0
    iget-object p3, p0, Lm18;->a:Ljava/util/HashMap;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
