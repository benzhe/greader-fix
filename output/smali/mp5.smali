.class public final Lmp5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lwt5;


# direct methods
.method public constructor <init>(Lwt5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmp5;->a:Lwt5;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lhr5;)Lbd6;
    .locals 1

    .line 1
    sget-object v0, Llx5$b;->d:Llx5$b;

    invoke-static {p1, v0}, Llx5;->b(Ljava/lang/Object;Llx5$b;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1, p2}, Lmp5;->c(Ljava/lang/Object;Lhr5;)Lbd6;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Lbd6;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    const/4 p1, 0x0

    throw p1
.end method

.method public final c(Ljava/lang/Object;Lhr5;)Lbd6;
    .locals 9

    .line 1
    sget-object v0, Lhk6;->f:Lhk6;

    instance-of v1, p1, Ljava/util/Map;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_6

    .line 2
    check-cast p1, Ljava/util/Map;

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p2, Lhr5;->b:Leu5;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lvt5;->C()Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p2, Lhr5;->b:Leu5;

    .line 7
    invoke-virtual {p2, p1}, Lhr5;->a(Leu5;)V

    .line 8
    :cond_0
    invoke-static {}, Lbd6;->Z()Lbd6$b;

    move-result-object p1

    invoke-static {}, Lwc6;->D()Lwc6;

    move-result-object p2

    invoke-virtual {p1, p2}, Lbd6$b;->v(Lwc6;)Lbd6$b;

    invoke-virtual {p1}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Lbd6;

    goto :goto_2

    .line 9
    :cond_1
    invoke-static {}, Lwc6;->I()Lwc6$b;

    move-result-object v0

    .line 10
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 12
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 13
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 14
    iget-object v6, p2, Lhr5;->b:Leu5;

    if-nez v6, :cond_3

    move-object v6, v3

    goto :goto_1

    :cond_3
    invoke-virtual {v6, v5}, Lvt5;->k(Ljava/lang/String;)Lvt5;

    move-result-object v6

    check-cast v6, Leu5;

    .line 15
    :goto_1
    new-instance v7, Lhr5;

    iget-object v8, p2, Lhr5;->a:Lgr5;

    invoke-direct {v7, v8, v6, v4}, Lhr5;-><init>(Lgr5;Leu5;Z)V

    .line 16
    invoke-virtual {v7, v5}, Lhr5;->e(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, v1, v7}, Lmp5;->c(Ljava/lang/Object;Lhr5;)Lbd6;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 18
    invoke-virtual {v0, v5, v1}, Lwc6$b;->r(Ljava/lang/String;Lbd6;)Lwc6$b;

    goto :goto_0

    :cond_4
    new-array p1, v2, [Ljava/lang/Object;

    .line 19
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p1, v4

    const-string v0, "Non-String Map key (%s) is not allowed"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-virtual {p2, p1}, Lhr5;->c(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 21
    :cond_5
    invoke-static {}, Lbd6;->Z()Lbd6$b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lbd6$b;->u(Lwc6$b;)Lbd6$b;

    invoke-virtual {p1}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Lbd6;

    :goto_2
    return-object p1

    .line 22
    :cond_6
    instance-of v1, p1, Lyo5;

    if-eqz v1, :cond_13

    .line 23
    check-cast p1, Lyo5;

    .line 24
    invoke-virtual {p2}, Lhr5;->d()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 25
    iget-object v0, p2, Lhr5;->b:Leu5;

    if-eqz v0, :cond_11

    .line 26
    instance-of v1, p1, Lyo5$c;

    if-eqz v1, :cond_a

    .line 27
    iget-object p1, p2, Lhr5;->a:Lgr5;

    .line 28
    iget-object p1, p1, Lgr5;->a:Lir5;

    .line 29
    sget-object v1, Lir5;->f:Lir5;

    if-ne p1, v1, :cond_7

    .line 30
    invoke-virtual {p2, v0}, Lhr5;->a(Leu5;)V

    goto/16 :goto_5

    .line 31
    :cond_7
    sget-object v1, Lir5;->g:Lir5;

    if-ne p1, v1, :cond_9

    .line 32
    invoke-virtual {v0}, Lvt5;->I()I

    move-result p1

    if-lez p1, :cond_8

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    :goto_3
    new-array p1, v4, [Ljava/lang/Object;

    const-string v0, "FieldValue.delete() at the top level should have already been handled."

    .line 33
    invoke-static {v2, v0, p1}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "FieldValue.delete() can only appear at the top level of your update data"

    .line 34
    invoke-virtual {p2, p1}, Lhr5;->c(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_9
    const-string p1, "FieldValue.delete() can only be used with update() and set() with SetOptions.merge()"

    .line 35
    invoke-virtual {p2, p1}, Lhr5;->c(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 36
    :cond_a
    instance-of v1, p1, Lyo5$e;

    if-eqz v1, :cond_b

    .line 37
    sget-object p1, Lxu5;->a:Lxu5;

    invoke-virtual {p2, v0, p1}, Lhr5;->b(Leu5;Lav5;)V

    goto :goto_5

    .line 38
    :cond_b
    instance-of v0, p1, Lyo5$b;

    if-eqz v0, :cond_c

    .line 39
    check-cast p1, Lyo5$b;

    .line 40
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lmp5;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 41
    new-instance v0, Lmu5$b;

    invoke-direct {v0, p1}, Lmu5$b;-><init>(Ljava/util/List;)V

    .line 42
    iget-object p1, p2, Lhr5;->b:Leu5;

    .line 43
    invoke-virtual {p2, p1, v0}, Lhr5;->b(Leu5;Lav5;)V

    goto :goto_5

    .line 44
    :cond_c
    instance-of v0, p1, Lyo5$a;

    if-eqz v0, :cond_d

    .line 45
    check-cast p1, Lyo5$a;

    .line 46
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lmp5;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 47
    new-instance v0, Lmu5$a;

    invoke-direct {v0, p1}, Lmu5$a;-><init>(Ljava/util/List;)V

    .line 48
    iget-object p1, p2, Lhr5;->b:Leu5;

    .line 49
    invoke-virtual {p2, p1, v0}, Lhr5;->b(Leu5;Lav5;)V

    goto :goto_5

    .line 50
    :cond_d
    instance-of v0, p1, Lyo5$d;

    if-eqz v0, :cond_f

    .line 51
    check-cast p1, Lyo5$d;

    .line 52
    iget-object p1, p1, Lyo5$d;->b:Ljava/lang/Number;

    .line 53
    new-instance v0, Lgr5;

    .line 54
    sget-object v1, Lir5;->h:Lir5;

    invoke-direct {v0, v1}, Lgr5;-><init>(Lir5;)V

    .line 55
    invoke-virtual {v0}, Lgr5;->a()Lhr5;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lmp5;->a(Ljava/lang/Object;Lhr5;)Lbd6;

    move-result-object p1

    if-eqz p1, :cond_e

    goto :goto_4

    :cond_e
    const/4 v2, 0x0

    :goto_4
    new-array v1, v4, [Ljava/lang/Object;

    const-string v5, "Parsed data should not be null."

    .line 56
    invoke-static {v2, v5, v1}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-object v0, v0, Lgr5;->c:Ljava/util/ArrayList;

    .line 58
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "Field transforms should have been disallowed."

    .line 59
    invoke-static {v0, v2, v1}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 60
    new-instance v0, Luu5;

    invoke-direct {v0, p1}, Luu5;-><init>(Lbd6;)V

    .line 61
    iget-object p1, p2, Lhr5;->b:Leu5;

    .line 62
    invoke-virtual {p2, p1, v0}, Lhr5;->b(Leu5;Lav5;)V

    :goto_5
    return-object v3

    :cond_f
    new-array p2, v2, [Ljava/lang/Object;

    .line 63
    sget-object v0, Lvx5;->a:Ljava/util/Comparator;

    if-nez p1, :cond_10

    const-string p1, "null"

    goto :goto_6

    .line 64
    :cond_10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_6
    aput-object p1, p2, v4

    const-string p1, "Unknown FieldValue type: %s"

    .line 65
    invoke-static {p1, p2}, Lbx5;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    throw v3

    :cond_11
    new-array v0, v2, [Ljava/lang/Object;

    .line 66
    invoke-virtual {p1}, Lyo5;->a()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "%s() is not currently supported inside arrays"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-virtual {p2, p1}, Lhr5;->c(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_12
    new-array v0, v2, [Ljava/lang/Object;

    .line 68
    invoke-virtual {p1}, Lyo5;->a()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "%s() can only be used with set() and update()"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-virtual {p2, p1}, Lhr5;->c(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 70
    :cond_13
    iget-object v1, p2, Lhr5;->b:Leu5;

    if-eqz v1, :cond_14

    .line 71
    invoke-virtual {p2, v1}, Lhr5;->a(Leu5;)V

    .line 72
    :cond_14
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_19

    .line 73
    iget-boolean v1, p2, Lhr5;->c:Z

    if-eqz v1, :cond_16

    .line 74
    iget-object v1, p2, Lhr5;->a:Lgr5;

    .line 75
    iget-object v1, v1, Lgr5;->a:Lir5;

    .line 76
    sget-object v4, Lir5;->i:Lir5;

    if-ne v1, v4, :cond_15

    goto :goto_7

    :cond_15
    const-string p1, "Nested arrays are not supported"

    .line 77
    invoke-virtual {p2, p1}, Lhr5;->c(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 78
    :cond_16
    :goto_7
    check-cast p1, Ljava/util/List;

    .line 79
    invoke-static {}, Ljc6;->J()Ljc6$b;

    move-result-object v1

    .line 80
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 81
    new-instance v5, Lhr5;

    iget-object v6, p2, Lhr5;->a:Lgr5;

    invoke-direct {v5, v6, v3, v2}, Lhr5;-><init>(Lgr5;Leu5;Z)V

    .line 82
    invoke-virtual {p0, v4, v5}, Lmp5;->c(Ljava/lang/Object;Lhr5;)Lbd6;

    move-result-object v4

    if-nez v4, :cond_17

    .line 83
    invoke-static {}, Lbd6;->Z()Lbd6$b;

    move-result-object v4

    .line 84
    invoke-virtual {v4}, Lgj6$a;->o()V

    .line 85
    iget-object v5, v4, Lgj6$a;->f:Lgj6;

    check-cast v5, Lbd6;

    invoke-static {v5, v0}, Lbd6;->J(Lbd6;Lhk6;)V

    .line 86
    invoke-virtual {v4}, Lgj6$a;->l()Lgj6;

    move-result-object v4

    check-cast v4, Lbd6;

    .line 87
    :cond_17
    invoke-virtual {v1}, Lgj6$a;->o()V

    .line 88
    iget-object v5, v1, Lgj6$a;->f:Lgj6;

    check-cast v5, Ljc6;

    invoke-static {v5, v4}, Ljc6;->C(Ljc6;Lbd6;)V

    goto :goto_8

    .line 89
    :cond_18
    invoke-static {}, Lbd6;->Z()Lbd6$b;

    move-result-object p1

    invoke-virtual {p1, v1}, Lbd6$b;->r(Ljc6$b;)Lbd6$b;

    invoke-virtual {p1}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Lbd6;

    return-object p1

    :cond_19
    if-nez p1, :cond_1a

    .line 90
    invoke-static {}, Lbd6;->Z()Lbd6$b;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lgj6$a;->o()V

    .line 92
    iget-object p2, p1, Lgj6$a;->f:Lgj6;

    check-cast p2, Lbd6;

    invoke-static {p2, v0}, Lbd6;->J(Lbd6;Lhk6;)V

    .line 93
    invoke-virtual {p1}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Lbd6;

    goto/16 :goto_a

    .line 94
    :cond_1a
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1b

    .line 95
    invoke-static {}, Lbd6;->Z()Lbd6$b;

    move-result-object p2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Lbd6$b;->t(J)Lbd6$b;

    invoke-virtual {p2}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Lbd6;

    goto/16 :goto_a

    .line 96
    :cond_1b
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_1c

    .line 97
    invoke-static {}, Lbd6;->Z()Lbd6$b;

    move-result-object p2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lbd6$b;->t(J)Lbd6$b;

    invoke-virtual {p2}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Lbd6;

    goto/16 :goto_a

    .line 98
    :cond_1c
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_1d

    .line 99
    invoke-static {}, Lbd6;->Z()Lbd6$b;

    move-result-object p2

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lbd6$b;->s(D)Lbd6$b;

    invoke-virtual {p2}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Lbd6;

    goto/16 :goto_a

    .line 100
    :cond_1d
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1e

    .line 101
    invoke-static {}, Lbd6;->Z()Lbd6$b;

    move-result-object p2

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lbd6$b;->s(D)Lbd6$b;

    invoke-virtual {p2}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Lbd6;

    goto/16 :goto_a

    .line 102
    :cond_1e
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1f

    .line 103
    invoke-static {}, Lbd6;->Z()Lbd6$b;

    move-result-object p2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 104
    invoke-virtual {p2}, Lgj6$a;->o()V

    .line 105
    iget-object v0, p2, Lgj6$a;->f:Lgj6;

    check-cast v0, Lbd6;

    invoke-static {v0, p1}, Lbd6;->K(Lbd6;Z)V

    .line 106
    invoke-virtual {p2}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Lbd6;

    goto/16 :goto_a

    .line 107
    :cond_1f
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 108
    invoke-static {}, Lbd6;->Z()Lbd6$b;

    move-result-object p2

    check-cast p1, Ljava/lang/String;

    .line 109
    invoke-virtual {p2}, Lgj6$a;->o()V

    .line 110
    iget-object v0, p2, Lgj6$a;->f:Lgj6;

    check-cast v0, Lbd6;

    invoke-static {v0, p1}, Lbd6;->D(Lbd6;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Lbd6;

    goto/16 :goto_a

    .line 112
    :cond_20
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_21

    .line 113
    new-instance p2, Lcom/google/firebase/Timestamp;

    check-cast p1, Ljava/util/Date;

    invoke-direct {p2, p1}, Lcom/google/firebase/Timestamp;-><init>(Ljava/util/Date;)V

    .line 114
    invoke-virtual {p0, p2}, Lmp5;->d(Lcom/google/firebase/Timestamp;)Lbd6;

    move-result-object p1

    goto/16 :goto_a

    .line 115
    :cond_21
    instance-of v0, p1, Lcom/google/firebase/Timestamp;

    if-eqz v0, :cond_22

    .line 116
    check-cast p1, Lcom/google/firebase/Timestamp;

    .line 117
    invoke-virtual {p0, p1}, Lmp5;->d(Lcom/google/firebase/Timestamp;)Lbd6;

    move-result-object p1

    goto/16 :goto_a

    .line 118
    :cond_22
    instance-of v0, p1, Ldp5;

    if-eqz v0, :cond_23

    .line 119
    check-cast p1, Ldp5;

    .line 120
    invoke-static {}, Lbd6;->Z()Lbd6$b;

    move-result-object p2

    .line 121
    invoke-static {}, Ljl6;->H()Ljl6$b;

    move-result-object v0

    .line 122
    iget-wide v1, p1, Ldp5;->e:D

    .line 123
    invoke-virtual {v0}, Lgj6$a;->o()V

    .line 124
    iget-object v3, v0, Lgj6$a;->f:Lgj6;

    check-cast v3, Ljl6;

    invoke-static {v3, v1, v2}, Ljl6;->C(Ljl6;D)V

    .line 125
    iget-wide v1, p1, Ldp5;->f:D

    .line 126
    invoke-virtual {v0}, Lgj6$a;->o()V

    .line 127
    iget-object p1, v0, Lgj6$a;->f:Lgj6;

    check-cast p1, Ljl6;

    invoke-static {p1, v1, v2}, Ljl6;->D(Ljl6;D)V

    .line 128
    invoke-virtual {p2}, Lgj6$a;->o()V

    .line 129
    iget-object p1, p2, Lgj6$a;->f:Lgj6;

    check-cast p1, Lbd6;

    invoke-virtual {v0}, Lgj6$a;->l()Lgj6;

    move-result-object v0

    check-cast v0, Ljl6;

    invoke-static {p1, v0}, Lbd6;->G(Lbd6;Ljl6;)V

    .line 130
    invoke-virtual {p2}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Lbd6;

    goto/16 :goto_a

    .line 131
    :cond_23
    instance-of v0, p1, Loo5;

    if-eqz v0, :cond_24

    .line 132
    invoke-static {}, Lbd6;->Z()Lbd6$b;

    move-result-object p2

    check-cast p1, Loo5;

    .line 133
    iget-object p1, p1, Loo5;->e:Lqi6;

    .line 134
    invoke-virtual {p2}, Lgj6$a;->o()V

    .line 135
    iget-object v0, p2, Lgj6$a;->f:Lgj6;

    check-cast v0, Lbd6;

    invoke-static {v0, p1}, Lbd6;->E(Lbd6;Lqi6;)V

    .line 136
    invoke-virtual {p2}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Lbd6;

    goto :goto_a

    .line 137
    :cond_24
    instance-of v0, p1, Lto5;

    if-eqz v0, :cond_27

    .line 138
    check-cast p1, Lto5;

    .line 139
    iget-object v0, p1, Lto5;->b:Lcom/google/firebase/firestore/FirebaseFirestore;

    const/4 v1, 0x2

    const/4 v3, 0x3

    if-eqz v0, :cond_26

    .line 140
    iget-object v0, v0, Lcom/google/firebase/firestore/FirebaseFirestore;->b:Lwt5;

    .line 141
    iget-object v5, p0, Lmp5;->a:Lwt5;

    invoke-virtual {v0, v5}, Lwt5;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    goto :goto_9

    :cond_25
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    .line 142
    iget-object v5, v0, Lwt5;->e:Ljava/lang/String;

    aput-object v5, p1, v4

    .line 143
    iget-object v0, v0, Lwt5;->f:Ljava/lang/String;

    aput-object v0, p1, v2

    .line 144
    iget-object v0, p0, Lmp5;->a:Lwt5;

    .line 145
    iget-object v2, v0, Lwt5;->e:Ljava/lang/String;

    aput-object v2, p1, v1

    .line 146
    iget-object v0, v0, Lwt5;->f:Ljava/lang/String;

    aput-object v0, p1, v3

    const-string v0, "Document reference is for database %s/%s but should be for database %s/%s"

    .line 147
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 148
    invoke-virtual {p2, p1}, Lhr5;->c(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 149
    :cond_26
    :goto_9
    invoke-static {}, Lbd6;->Z()Lbd6$b;

    move-result-object p2

    new-array v0, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lmp5;->a:Lwt5;

    .line 150
    iget-object v5, v3, Lwt5;->e:Ljava/lang/String;

    aput-object v5, v0, v4

    .line 151
    iget-object v3, v3, Lwt5;->f:Ljava/lang/String;

    aput-object v3, v0, v2

    .line 152
    iget-object p1, p1, Lto5;->a:Lbu5;

    .line 153
    iget-object p1, p1, Lbu5;->e:Liu5;

    .line 154
    invoke-virtual {p1}, Liu5;->l()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "projects/%s/databases/%s/documents/%s"

    .line 155
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 156
    invoke-virtual {p2}, Lgj6$a;->o()V

    .line 157
    iget-object v0, p2, Lgj6$a;->f:Lgj6;

    check-cast v0, Lbd6;

    invoke-static {v0, p1}, Lbd6;->F(Lbd6;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Lbd6;

    :goto_a
    return-object p1

    .line 159
    :cond_27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "Unsupported type: "

    .line 160
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 161
    sget-object v1, Lvx5;->a:Ljava/util/Comparator;

    .line 162
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 163
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lhr5;->c(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_28
    const-string p1, "Arrays are not supported; use a List instead"

    .line 164
    invoke-virtual {p2, p1}, Lhr5;->c(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final d(Lcom/google/firebase/Timestamp;)Lbd6;
    .locals 5

    .line 1
    iget v0, p1, Lcom/google/firebase/Timestamp;->f:I

    .line 2
    div-int/lit16 v0, v0, 0x3e8

    mul-int/lit16 v0, v0, 0x3e8

    .line 3
    invoke-static {}, Lbd6;->Z()Lbd6$b;

    move-result-object v1

    .line 4
    invoke-static {}, Lwk6;->H()Lwk6$b;

    move-result-object v2

    .line 5
    iget-wide v3, p1, Lcom/google/firebase/Timestamp;->e:J

    .line 6
    invoke-virtual {v2, v3, v4}, Lwk6$b;->s(J)Lwk6$b;

    .line 7
    invoke-virtual {v2, v0}, Lwk6$b;->r(I)Lwk6$b;

    .line 8
    invoke-virtual {v1}, Lgj6$a;->o()V

    .line 9
    iget-object p1, v1, Lgj6$a;->f:Lgj6;

    check-cast p1, Lbd6;

    invoke-virtual {v2}, Lgj6$a;->l()Lgj6;

    move-result-object v0

    check-cast v0, Lwk6;

    invoke-static {p1, v0}, Lbd6;->C(Lbd6;Lwk6;)V

    .line 10
    invoke-virtual {v1}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Lbd6;

    return-object p1
.end method
