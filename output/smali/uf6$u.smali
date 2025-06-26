.class public Luf6$u;
.super Lde6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luf6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde6<",
        "Ltd6;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lde6;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Leg6;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Luf6$u;->c(Leg6;)Ltd6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Lgg6;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Ltd6;

    invoke-virtual {p0, p1, p2}, Luf6$u;->d(Lgg6;Ltd6;)V

    return-void
.end method

.method public c(Leg6;)Ltd6;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Leg6;->Q()Lfg6;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Leg6;->E()V

    .line 3
    sget-object p1, Lvd6;->a:Lvd6;

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 5
    :cond_1
    new-instance v0, Lyd6;

    invoke-virtual {p1}, Leg6;->t()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lyd6;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    .line 6
    :cond_2
    invoke-virtual {p1}, Leg6;->I()Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance v0, Lyd6;

    new-instance v1, Lye6;

    invoke-direct {v1, p1}, Lye6;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lyd6;-><init>(Ljava/lang/Number;)V

    return-object v0

    .line 8
    :cond_3
    new-instance v0, Lyd6;

    invoke-virtual {p1}, Leg6;->I()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lyd6;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 9
    :cond_4
    new-instance v0, Lwd6;

    invoke-direct {v0}, Lwd6;-><init>()V

    .line 10
    invoke-virtual {p1}, Leg6;->b()V

    .line 11
    :goto_0
    invoke-virtual {p1}, Leg6;->m()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 12
    invoke-virtual {p1}, Leg6;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Luf6$u;->c(Leg6;)Ltd6;

    move-result-object v2

    .line 13
    iget-object v3, v0, Lwd6;->a:Lze6;

    invoke-virtual {v3, v1, v2}, Lze6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_5
    invoke-virtual {p1}, Leg6;->g()V

    return-object v0

    .line 15
    :cond_6
    new-instance v0, Lqd6;

    invoke-direct {v0}, Lqd6;-><init>()V

    .line 16
    invoke-virtual {p1}, Leg6;->a()V

    .line 17
    :goto_1
    invoke-virtual {p1}, Leg6;->m()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 18
    invoke-virtual {p0, p1}, Luf6$u;->c(Leg6;)Ltd6;

    move-result-object v1

    .line 19
    iget-object v2, v0, Lqd6;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 20
    :cond_7
    invoke-virtual {p1}, Leg6;->f()V

    return-object v0
.end method

.method public d(Lgg6;Ltd6;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_d

    .line 1
    instance-of v0, p2, Lvd6;

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    instance-of v0, p2, Lyd6;

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p2}, Ltd6;->d()Lyd6;

    move-result-object p2

    .line 4
    iget-object v0, p2, Lyd6;->a:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p2}, Lyd6;->j()Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p1, p2}, Lgg6;->C(Ljava/lang/Number;)Lgg6;

    goto/16 :goto_4

    .line 6
    :cond_1
    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p2}, Lyd6;->h()Z

    move-result p2

    invoke-virtual {p1, p2}, Lgg6;->E(Z)Lgg6;

    goto/16 :goto_4

    .line 8
    :cond_2
    invoke-virtual {p2}, Lyd6;->l()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lgg6;->D(Ljava/lang/String;)Lgg6;

    goto/16 :goto_4

    .line 9
    :cond_3
    instance-of v0, p2, Lqd6;

    if-eqz v0, :cond_6

    .line 10
    invoke-virtual {p1}, Lgg6;->b()Lgg6;

    if-eqz v0, :cond_5

    .line 11
    check-cast p2, Lqd6;

    .line 12
    invoke-virtual {p2}, Lqd6;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltd6;

    .line 13
    invoke-virtual {p0, p1, v0}, Luf6$u;->d(Lgg6;Ltd6;)V

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {p1}, Lgg6;->f()Lgg6;

    goto/16 :goto_4

    .line 15
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a JSON Array: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_6
    instance-of v0, p2, Lwd6;

    if-eqz v0, :cond_c

    .line 17
    invoke-virtual {p1}, Lgg6;->c()Lgg6;

    if-eqz v0, :cond_b

    .line 18
    check-cast p2, Lwd6;

    .line 19
    iget-object p2, p2, Lwd6;->a:Lze6;

    invoke-virtual {p2}, Lze6;->entrySet()Ljava/util/Set;

    move-result-object p2

    .line 20
    check-cast p2, Lze6$b;

    .line 21
    iget-object p2, p2, Lze6$b;->e:Lze6;

    .line 22
    iget-object v0, p2, Lze6;->i:Lze6$e;

    iget-object v0, v0, Lze6$e;->h:Lze6$e;

    .line 23
    iget v1, p2, Lze6;->h:I

    .line 24
    :goto_1
    iget-object v2, p2, Lze6;->i:Lze6$e;

    if-eq v0, v2, :cond_7

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_a

    if-eq v0, v2, :cond_9

    .line 25
    iget v2, p2, Lze6;->h:I

    if-ne v2, v1, :cond_8

    .line 26
    iget-object v2, v0, Lze6$e;->h:Lze6$e;

    .line 27
    iget-object v3, v0, Lze6$e;->j:Ljava/lang/Object;

    .line 28
    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lgg6;->i(Ljava/lang/String;)Lgg6;

    .line 29
    iget-object v0, v0, Lze6$e;->k:Ljava/lang/Object;

    .line 30
    check-cast v0, Ltd6;

    invoke-virtual {p0, p1, v0}, Luf6$u;->d(Lgg6;Ltd6;)V

    move-object v0, v2

    goto :goto_1

    .line 31
    :cond_8
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    .line 32
    :cond_9
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    .line 33
    :cond_a
    invoke-virtual {p1}, Lgg6;->g()Lgg6;

    goto :goto_4

    .line 34
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a JSON Object: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Couldn\'t write "

    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_d
    :goto_3
    invoke-virtual {p1}, Lgg6;->m()Lgg6;

    :goto_4
    return-void
.end method
