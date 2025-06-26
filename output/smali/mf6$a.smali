.class public final Lmf6$a;
.super Lde6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lde6<",
        "Ljava/util/Map<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final a:Lde6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde6<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final b:Lde6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde6<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final c:Laf6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laf6<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field public final synthetic d:Lmf6;


# direct methods
.method public constructor <init>(Lmf6;Lod6;Ljava/lang/reflect/Type;Lde6;Ljava/lang/reflect/Type;Lde6;Laf6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lod6;",
            "Ljava/lang/reflect/Type;",
            "Lde6<",
            "TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lde6<",
            "TV;>;",
            "Laf6<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lmf6$a;->d:Lmf6;

    invoke-direct {p0}, Lde6;-><init>()V

    .line 2
    new-instance p1, Ltf6;

    invoke-direct {p1, p2, p4, p3}, Ltf6;-><init>(Lod6;Lde6;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lmf6$a;->a:Lde6;

    .line 3
    new-instance p1, Ltf6;

    invoke-direct {p1, p2, p6, p5}, Ltf6;-><init>(Lod6;Lde6;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lmf6$a;->b:Lde6;

    .line 4
    iput-object p7, p0, Lmf6$a;->c:Laf6;

    return-void
.end method


# virtual methods
.method public a(Leg6;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Leg6;->Q()Lfg6;

    move-result-object v0

    .line 2
    sget-object v1, Lfg6;->m:Lfg6;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Leg6;->E()V

    const/4 p1, 0x0

    goto/16 :goto_4

    .line 4
    :cond_0
    iget-object v1, p0, Lmf6$a;->c:Laf6;

    invoke-interface {v1}, Laf6;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 5
    sget-object v2, Lfg6;->e:Lfg6;

    const-string v3, "duplicate key: "

    if-ne v0, v2, :cond_3

    .line 6
    invoke-virtual {p1}, Leg6;->a()V

    .line 7
    :goto_0
    invoke-virtual {p1}, Leg6;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p1}, Leg6;->a()V

    .line 9
    iget-object v0, p0, Lmf6$a;->a:Lde6;

    invoke-virtual {v0, p1}, Lde6;->a(Leg6;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    iget-object v2, p0, Lmf6$a;->b:Lde6;

    invoke-virtual {v2, p1}, Lde6;->a(Leg6;)Ljava/lang/Object;

    move-result-object v2

    .line 11
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 12
    invoke-virtual {p1}, Leg6;->f()V

    goto :goto_0

    .line 13
    :cond_1
    new-instance p1, Lbe6;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lbe6;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_2
    invoke-virtual {p1}, Leg6;->f()V

    goto/16 :goto_3

    .line 15
    :cond_3
    invoke-virtual {p1}, Leg6;->b()V

    .line 16
    :goto_1
    invoke-virtual {p1}, Leg6;->m()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 17
    sget-object v0, Lxe6;->a:Lxe6;

    check-cast v0, Leg6$a;

    .line 18
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    instance-of v0, p1, Lkf6;

    if-eqz v0, :cond_4

    .line 20
    move-object v0, p1

    check-cast v0, Lkf6;

    .line 21
    sget-object v2, Lfg6;->i:Lfg6;

    invoke-virtual {v0, v2}, Lkf6;->j0(Lfg6;)V

    .line 22
    invoke-virtual {v0}, Lkf6;->k0()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Iterator;

    .line 23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 24
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lkf6;->p0(Ljava/lang/Object;)V

    .line 25
    new-instance v4, Lyd6;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v2}, Lyd6;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lkf6;->p0(Ljava/lang/Object;)V

    goto :goto_2

    .line 26
    :cond_4
    iget v0, p1, Leg6;->l:I

    if-nez v0, :cond_5

    .line 27
    invoke-virtual {p1}, Leg6;->e()I

    move-result v0

    :cond_5
    const/16 v2, 0xd

    if-ne v0, v2, :cond_6

    const/16 v0, 0x9

    .line 28
    iput v0, p1, Leg6;->l:I

    goto :goto_2

    :cond_6
    const/16 v2, 0xc

    if-ne v0, v2, :cond_7

    const/16 v0, 0x8

    .line 29
    iput v0, p1, Leg6;->l:I

    goto :goto_2

    :cond_7
    const/16 v2, 0xe

    if-ne v0, v2, :cond_9

    const/16 v0, 0xa

    .line 30
    iput v0, p1, Leg6;->l:I

    .line 31
    :goto_2
    iget-object v0, p0, Lmf6$a;->a:Lde6;

    invoke-virtual {v0, p1}, Lde6;->a(Leg6;)Ljava/lang/Object;

    move-result-object v0

    .line 32
    iget-object v2, p0, Lmf6$a;->b:Lde6;

    invoke-virtual {v2, p1}, Lde6;->a(Leg6;)Ljava/lang/Object;

    move-result-object v2

    .line 33
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_8

    goto :goto_1

    .line 34
    :cond_8
    new-instance p1, Lbe6;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lbe6;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected a name but was "

    invoke-static {v1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 36
    invoke-virtual {p1}, Leg6;->Q()Lfg6;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Leg6;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_a
    invoke-virtual {p1}, Leg6;->g()V

    :goto_3
    move-object p1, v1

    :goto_4
    return-object p1
.end method

.method public b(Lgg6;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/util/Map;

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lgg6;->m()Lgg6;

    goto/16 :goto_7

    .line 3
    :cond_0
    iget-object v0, p0, Lmf6$a;->d:Lmf6;

    iget-boolean v0, v0, Lmf6;->f:Z

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lgg6;->c()Lgg6;

    .line 5
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lgg6;->i(Ljava/lang/String;)Lgg6;

    .line 7
    iget-object v1, p0, Lmf6$a;->b:Lde6;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lde6;->b(Lgg6;Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Lgg6;->g()Lgg6;

    goto/16 :goto_7

    .line 9
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 12
    iget-object v5, p0, Lmf6$a;->a:Lde6;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 13
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :try_start_0
    new-instance v7, Llf6;

    invoke-direct {v7}, Llf6;-><init>()V

    .line 15
    invoke-virtual {v5, v7, v6}, Lde6;->b(Lgg6;Ljava/lang/Object;)V

    .line 16
    iget-object v5, v7, Llf6;->p:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 17
    iget-object v5, v7, Llf6;->r:Ltd6;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    instance-of v4, v5, Lqd6;

    if-nez v4, :cond_4

    .line 22
    instance-of v4, v5, Lwd6;

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x1

    :goto_3
    or-int/2addr v3, v4

    goto :goto_1

    .line 23
    :cond_5
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected one JSON element but was "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v7, Llf6;->p:Ljava/util/List;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 24
    new-instance p2, Lud6;

    invoke-direct {p2, p1}, Lud6;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_6
    if-eqz v3, :cond_8

    .line 25
    invoke-virtual {p1}, Lgg6;->b()Lgg6;

    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_4
    if-ge v2, p2, :cond_7

    .line 27
    invoke-virtual {p1}, Lgg6;->b()Lgg6;

    .line 28
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltd6;

    .line 29
    sget-object v4, Luf6;->X:Lde6;

    invoke-virtual {v4, p1, v3}, Lde6;->b(Lgg6;Ljava/lang/Object;)V

    .line 30
    iget-object v3, p0, Lmf6$a;->b:Lde6;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lde6;->b(Lgg6;Ljava/lang/Object;)V

    .line 31
    invoke-virtual {p1}, Lgg6;->f()Lgg6;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 32
    :cond_7
    invoke-virtual {p1}, Lgg6;->f()Lgg6;

    goto :goto_7

    .line 33
    :cond_8
    invoke-virtual {p1}, Lgg6;->c()Lgg6;

    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_5
    if-ge v2, p2, :cond_e

    .line 35
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltd6;

    .line 36
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    instance-of v4, v3, Lyd6;

    if-eqz v4, :cond_c

    .line 38
    invoke-virtual {v3}, Ltd6;->d()Lyd6;

    move-result-object v3

    .line 39
    iget-object v4, v3, Lyd6;->a:Ljava/lang/Object;

    instance-of v5, v4, Ljava/lang/Number;

    if-eqz v5, :cond_9

    .line 40
    invoke-virtual {v3}, Lyd6;->j()Ljava/lang/Number;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 41
    :cond_9
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_a

    .line 42
    invoke-virtual {v3}, Lyd6;->h()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 43
    :cond_a
    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_b

    .line 44
    invoke-virtual {v3}, Lyd6;->l()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 45
    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 46
    :cond_c
    instance-of v3, v3, Lvd6;

    if-eqz v3, :cond_d

    const-string v3, "null"

    .line 47
    :goto_6
    invoke-virtual {p1, v3}, Lgg6;->i(Ljava/lang/String;)Lgg6;

    .line 48
    iget-object v3, p0, Lmf6$a;->b:Lde6;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lde6;->b(Lgg6;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 49
    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 50
    :cond_e
    invoke-virtual {p1}, Lgg6;->g()Lgg6;

    :goto_7
    return-void
.end method
