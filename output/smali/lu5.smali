.class public Llu5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lbd6;

.field public static final b:Lbd6;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lbd6;->Z()Lbd6$b;

    move-result-object v0

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v0, v1, v2}, Lbd6$b;->s(D)Lbd6$b;

    invoke-virtual {v0}, Lgj6$a;->l()Lgj6;

    move-result-object v0

    check-cast v0, Lbd6;

    sput-object v0, Llu5;->a:Lbd6;

    .line 2
    invoke-static {}, Lbd6;->Z()Lbd6$b;

    move-result-object v0

    sget-object v1, Lhk6;->f:Lhk6;

    .line 3
    invoke-virtual {v0}, Lgj6$a;->o()V

    .line 4
    iget-object v2, v0, Lgj6$a;->f:Lgj6;

    check-cast v2, Lbd6;

    invoke-static {v2, v1}, Lbd6;->J(Lbd6;Lhk6;)V

    .line 5
    invoke-virtual {v0}, Lgj6$a;->l()Lgj6;

    move-result-object v0

    check-cast v0, Lbd6;

    sput-object v0, Llu5;->b:Lbd6;

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Lbd6;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lbd6;->Y()Lbd6$c;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, ","

    const/4 v4, 0x2

    packed-switch v0, :pswitch_data_0

    const-string p0, "Invalid value type: "

    .line 2
    invoke-static {p0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lbd6;->Y()Lbd6$c;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lbx5;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    goto/16 :goto_4

    .line 3
    :pswitch_0
    invoke-virtual {p1}, Lbd6;->U()Lwc6;

    move-result-object p1

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lwc6;->F()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const-string v1, "{"

    .line 6
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 8
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 9
    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p1, v1}, Lwc6;->H(Ljava/lang/String;)Lbd6;

    move-result-object v1

    invoke-static {p0, v1}, Llu5;->a(Ljava/lang/StringBuilder;Lbd6;)V

    goto :goto_0

    :cond_1
    const-string p1, "}"

    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 12
    :pswitch_1
    invoke-virtual {p1}, Lbd6;->N()Ljc6;

    move-result-object p1

    const-string v0, "["

    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :goto_2
    invoke-virtual {p1}, Ljc6;->I()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 15
    invoke-virtual {p1, v1}, Ljc6;->H(I)Lbd6;

    move-result-object v0

    invoke-static {p0, v0}, Llu5;->a(Ljava/lang/StringBuilder;Lbd6;)V

    .line 16
    invoke-virtual {p1}, Ljc6;->I()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_2

    .line 17
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const-string p1, "]"

    .line 18
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 19
    :pswitch_2
    invoke-virtual {p1}, Lbd6;->S()Ljl6;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    .line 20
    invoke-virtual {p1}, Ljl6;->F()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-virtual {p1}, Ljl6;->G()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "geo(%s,%s)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 21
    :pswitch_3
    invoke-static {p1}, Llu5;->k(Lbd6;)Z

    move-result v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Value should be a ReferenceValue"

    invoke-static {v0, v2, v1}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 22
    invoke-virtual {p1}, Lbd6;->V()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbu5;->k(Ljava/lang/String;)Lbu5;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 23
    :pswitch_4
    invoke-virtual {p1}, Lbd6;->P()Lqi6;

    move-result-object p1

    invoke-static {p1}, Lvx5;->e(Lqi6;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 24
    :pswitch_5
    invoke-virtual {p1}, Lbd6;->W()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 25
    :pswitch_6
    invoke-virtual {p1}, Lbd6;->X()Lwk6;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    .line 26
    invoke-virtual {p1}, Lwk6;->G()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-virtual {p1}, Lwk6;->F()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "time(%s,%s)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 27
    :pswitch_7
    invoke-virtual {p1}, Lbd6;->R()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 28
    :pswitch_8
    invoke-virtual {p1}, Lbd6;->T()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 29
    :pswitch_9
    invoke-virtual {p1}, Lbd6;->O()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_3

    :pswitch_a
    const-string p1, "null"

    .line 30
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    return-void

    :goto_4
    const/4 p0, 0x0

    .line 31
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Lbd6;Lbd6;)I
    .locals 8

    .line 1
    invoke-static {p0}, Llu5;->l(Lbd6;)I

    move-result v0

    .line 2
    invoke-static {p1}, Llu5;->l(Lbd6;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3
    invoke-static {v0, v1}, Lvx5;->b(II)I

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    packed-switch v0, :pswitch_data_0

    const-string p0, "Invalid value type: "

    .line 4
    invoke-static {p0, v0}, Ljo;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lbx5;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    goto/16 :goto_9

    .line 5
    :pswitch_0
    invoke-virtual {p0}, Lbd6;->U()Lwc6;

    move-result-object p0

    invoke-virtual {p1}, Lbd6;->U()Lwc6;

    move-result-object p1

    .line 6
    new-instance v0, Ljava/util/TreeMap;

    .line 7
    invoke-virtual {p0}, Lwc6;->F()Ljava/util/Map;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 8
    new-instance v0, Ljava/util/TreeMap;

    .line 9
    invoke-virtual {p1}, Lwc6;->F()Ljava/util/Map;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 10
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbd6;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbd6;

    invoke-static {v0, v1}, Llu5;->b(Lbd6;Lbd6;)I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 15
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    .line 16
    sget-object v0, Lvx5;->a:Ljava/util/Comparator;

    if-ne p0, p1, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, -0x1

    :goto_0
    move v3, v2

    :goto_1
    return v3

    .line 17
    :pswitch_1
    invoke-virtual {p0}, Lbd6;->N()Ljc6;

    move-result-object p0

    invoke-virtual {p1}, Lbd6;->N()Ljc6;

    move-result-object p1

    .line 18
    invoke-virtual {p0}, Ljc6;->I()I

    move-result v0

    invoke-virtual {p1}, Ljc6;->I()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_2
    if-ge v3, v0, :cond_7

    .line 19
    invoke-virtual {p0, v3}, Ljc6;->H(I)Lbd6;

    move-result-object v1

    invoke-virtual {p1, v3}, Ljc6;->H(I)Lbd6;

    move-result-object v2

    invoke-static {v1, v2}, Llu5;->b(Lbd6;Lbd6;)I

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 20
    :cond_7
    invoke-virtual {p0}, Ljc6;->I()I

    move-result p0

    invoke-virtual {p1}, Ljc6;->I()I

    move-result p1

    invoke-static {p0, p1}, Lvx5;->b(II)I

    move-result v1

    :goto_3
    return v1

    .line 21
    :pswitch_2
    invoke-virtual {p0}, Lbd6;->S()Ljl6;

    move-result-object p0

    invoke-virtual {p1}, Lbd6;->S()Ljl6;

    move-result-object p1

    .line 22
    invoke-virtual {p0}, Ljl6;->F()D

    move-result-wide v0

    invoke-virtual {p1}, Ljl6;->F()D

    move-result-wide v2

    .line 23
    sget-object v4, Lvx5;->a:Ljava/util/Comparator;

    .line 24
    invoke-static {v0, v1, v2, v3}, Lc50;->V(DD)I

    move-result v0

    if-nez v0, :cond_8

    .line 25
    invoke-virtual {p0}, Ljl6;->G()D

    move-result-wide v0

    invoke-virtual {p1}, Ljl6;->G()D

    move-result-wide p0

    .line 26
    invoke-static {v0, v1, p0, p1}, Lc50;->V(DD)I

    move-result v0

    :cond_8
    return v0

    .line 27
    :pswitch_3
    invoke-virtual {p0}, Lbd6;->V()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lbd6;->V()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    .line 28
    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 29
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 30
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_4
    if-ge v3, v0, :cond_a

    .line 31
    aget-object v1, p0, v3

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 32
    :cond_a
    array-length p0, p0

    array-length p1, p1

    invoke-static {p0, p1}, Lvx5;->b(II)I

    move-result v1

    :goto_5
    return v1

    .line 33
    :pswitch_4
    invoke-virtual {p0}, Lbd6;->P()Lqi6;

    move-result-object p0

    invoke-virtual {p1}, Lbd6;->P()Lqi6;

    move-result-object p1

    invoke-static {p0, p1}, Lvx5;->a(Lqi6;Lqi6;)I

    move-result p0

    return p0

    .line 34
    :pswitch_5
    invoke-virtual {p0}, Lbd6;->W()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lbd6;->W()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 35
    :pswitch_6
    invoke-static {p0}, Lc50;->g0(Lbd6;)Lwk6;

    move-result-object p0

    invoke-static {p1}, Lc50;->g0(Lbd6;)Lwk6;

    move-result-object p1

    invoke-static {p0, p1}, Llu5;->c(Lwk6;Lwk6;)I

    move-result p0

    return p0

    .line 36
    :pswitch_7
    invoke-virtual {p0}, Lbd6;->X()Lwk6;

    move-result-object p0

    invoke-virtual {p1}, Lbd6;->X()Lwk6;

    move-result-object p1

    invoke-static {p0, p1}, Llu5;->c(Lwk6;Lwk6;)I

    move-result p0

    return p0

    .line 37
    :pswitch_8
    sget-object v0, Lbd6$c;->g:Lbd6$c;

    invoke-virtual {p0}, Lbd6;->Y()Lbd6$c;

    move-result-object v4

    sget-object v5, Lbd6$c;->h:Lbd6$c;

    if-ne v4, v5, :cond_c

    .line 38
    invoke-virtual {p0}, Lbd6;->R()D

    move-result-wide v6

    .line 39
    invoke-virtual {p1}, Lbd6;->Y()Lbd6$c;

    move-result-object v4

    if-ne v4, v5, :cond_b

    .line 40
    invoke-virtual {p1}, Lbd6;->R()D

    move-result-wide p0

    .line 41
    sget-object v0, Lvx5;->a:Ljava/util/Comparator;

    .line 42
    invoke-static {v6, v7, p0, p1}, Lc50;->V(DD)I

    move-result p0

    goto :goto_7

    .line 43
    :cond_b
    invoke-virtual {p1}, Lbd6;->Y()Lbd6$c;

    move-result-object v4

    if-ne v4, v0, :cond_10

    .line 44
    invoke-virtual {p1}, Lbd6;->T()J

    move-result-wide p0

    invoke-static {v6, v7, p0, p1}, Lvx5;->c(DJ)I

    move-result p0

    goto :goto_7

    .line 45
    :cond_c
    invoke-virtual {p0}, Lbd6;->Y()Lbd6$c;

    move-result-object v4

    if-ne v4, v0, :cond_10

    .line 46
    invoke-virtual {p0}, Lbd6;->T()J

    move-result-wide v6

    .line 47
    invoke-virtual {p1}, Lbd6;->Y()Lbd6$c;

    move-result-object v4

    if-ne v4, v0, :cond_f

    .line 48
    invoke-virtual {p1}, Lbd6;->T()J

    move-result-wide p0

    .line 49
    sget-object v0, Lvx5;->a:Ljava/util/Comparator;

    cmp-long v0, v6, p0

    if-gez v0, :cond_d

    const/4 v2, -0x1

    goto :goto_6

    :cond_d
    if-lez v0, :cond_e

    goto :goto_6

    :cond_e
    const/4 v2, 0x0

    :goto_6
    move p0, v2

    goto :goto_7

    .line 50
    :cond_f
    invoke-virtual {p1}, Lbd6;->Y()Lbd6$c;

    move-result-object v0

    if-ne v0, v5, :cond_10

    .line 51
    invoke-virtual {p1}, Lbd6;->R()D

    move-result-wide p0

    invoke-static {p0, p1, v6, v7}, Lvx5;->c(DJ)I

    move-result p0

    mul-int/lit8 p0, p0, -0x1

    :goto_7
    return p0

    :cond_10
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    aput-object p1, v0, v2

    const-string p0, "Unexpected values: %s vs %s"

    .line 52
    invoke-static {p0, v0}, Lbx5;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    throw v1

    .line 53
    :pswitch_9
    invoke-virtual {p0}, Lbd6;->O()Z

    move-result p0

    invoke-virtual {p1}, Lbd6;->O()Z

    move-result p1

    .line 54
    sget-object v0, Lvx5;->a:Ljava/util/Comparator;

    if-ne p0, p1, :cond_11

    const/4 v2, 0x0

    goto :goto_8

    :cond_11
    if-eqz p0, :cond_12

    goto :goto_8

    :cond_12
    const/4 v2, -0x1

    :goto_8
    return v2

    :pswitch_a
    return v3

    .line 55
    :goto_9
    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c(Lwk6;Lwk6;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lwk6;->G()J

    move-result-wide v0

    invoke-virtual {p1}, Lwk6;->G()J

    move-result-wide v2

    .line 2
    sget-object v4, Lvx5;->a:Ljava/util/Comparator;

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    if-lez v4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    return v0

    .line 3
    :cond_2
    invoke-virtual {p0}, Lwk6;->F()I

    move-result p0

    invoke-virtual {p1}, Lwk6;->F()I

    move-result p1

    invoke-static {p0, p1}, Lvx5;->b(II)I

    move-result p0

    return p0
.end method

.method public static d(Lkc6;Lbd6;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lkc6;->i()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbd6;

    .line 2
    invoke-static {v0, p1}, Llu5;->e(Lbd6;Lbd6;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Lbd6;Lbd6;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_f

    if-nez p1, :cond_1

    goto/16 :goto_6

    .line 1
    :cond_1
    invoke-static {p0}, Llu5;->l(Lbd6;)I

    move-result v2

    .line 2
    invoke-static {p1}, Llu5;->l(Lbd6;)I

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    const/4 v3, 0x2

    if-eq v2, v3, :cond_c

    const/4 v3, 0x4

    if-eq v2, v3, :cond_b

    const/16 v3, 0x9

    if-eq v2, v3, :cond_7

    const/16 v3, 0xa

    if-eq v2, v3, :cond_3

    .line 3
    invoke-virtual {p0, p1}, Lgj6;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 4
    :cond_3
    invoke-virtual {p0}, Lbd6;->U()Lwc6;

    move-result-object p0

    .line 5
    invoke-virtual {p1}, Lbd6;->U()Lwc6;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lwc6;->E()I

    move-result v2

    invoke-virtual {p1}, Lwc6;->E()I

    move-result v3

    if-eq v2, v3, :cond_4

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    .line 7
    :cond_4
    invoke-virtual {p0}, Lwc6;->F()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 8
    invoke-virtual {p1}, Lwc6;->F()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbd6;

    .line 9
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbd6;

    invoke-static {v2, v3}, Llu5;->e(Lbd6;Lbd6;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_6
    :goto_1
    return v0

    .line 10
    :cond_7
    invoke-virtual {p0}, Lbd6;->N()Ljc6;

    move-result-object p0

    .line 11
    invoke-virtual {p1}, Lbd6;->N()Ljc6;

    move-result-object p1

    .line 12
    invoke-virtual {p0}, Ljc6;->I()I

    move-result v2

    invoke-virtual {p1}, Ljc6;->I()I

    move-result v3

    if-eq v2, v3, :cond_8

    :goto_2
    const/4 v0, 0x0

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    .line 13
    :goto_3
    invoke-virtual {p0}, Ljc6;->I()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 14
    invoke-virtual {p0, v2}, Ljc6;->H(I)Lbd6;

    move-result-object v3

    invoke-virtual {p1, v2}, Ljc6;->H(I)Lbd6;

    move-result-object v4

    invoke-static {v3, v4}, Llu5;->e(Lbd6;Lbd6;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_2

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    :goto_4
    return v0

    .line 15
    :cond_b
    invoke-static {p0}, Lc50;->g0(Lbd6;)Lwk6;

    move-result-object p0

    invoke-static {p1}, Lc50;->g0(Lbd6;)Lwk6;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgj6;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 16
    :cond_c
    invoke-virtual {p0}, Lbd6;->Y()Lbd6$c;

    move-result-object v2

    sget-object v3, Lbd6$c;->g:Lbd6$c;

    if-ne v2, v3, :cond_e

    .line 17
    invoke-virtual {p1}, Lbd6;->Y()Lbd6$c;

    move-result-object v2

    if-ne v2, v3, :cond_e

    .line 18
    invoke-virtual {p0}, Lbd6;->T()J

    move-result-wide v2

    invoke-virtual {p1}, Lbd6;->T()J

    move-result-wide p0

    cmp-long v4, v2, p0

    if-nez v4, :cond_d

    goto :goto_5

    :cond_d
    const/4 v0, 0x0

    :goto_5
    move v1, v0

    goto :goto_6

    .line 19
    :cond_e
    invoke-virtual {p0}, Lbd6;->Y()Lbd6$c;

    move-result-object v2

    sget-object v3, Lbd6$c;->h:Lbd6$c;

    if-ne v2, v3, :cond_f

    .line 20
    invoke-virtual {p1}, Lbd6;->Y()Lbd6$c;

    move-result-object v2

    if-ne v2, v3, :cond_f

    .line 21
    invoke-virtual {p0}, Lbd6;->R()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 22
    invoke-virtual {p1}, Lbd6;->R()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    cmp-long v4, v2, p0

    if-nez v4, :cond_d

    goto :goto_5

    :cond_f
    :goto_6
    return v1
.end method

.method public static f(Lbd6;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lbd6;->Y()Lbd6$c;

    move-result-object p0

    sget-object v0, Lbd6$c;->n:Lbd6$c;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static g(Lbd6;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lbd6;->Y()Lbd6$c;

    move-result-object p0

    sget-object v0, Lbd6$c;->h:Lbd6$c;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static h(Lbd6;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lbd6;->Y()Lbd6$c;

    move-result-object p0

    sget-object v0, Lbd6$c;->g:Lbd6$c;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static i(Lbd6;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lbd6;->Y()Lbd6$c;

    move-result-object p0

    sget-object v0, Lbd6$c;->o:Lbd6$c;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static j(Lbd6;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Llu5;->h(Lbd6;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Llu5;->g(Lbd6;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static k(Lbd6;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lbd6;->Y()Lbd6$c;

    move-result-object p0

    sget-object v0, Lbd6$c;->l:Lbd6$c;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static l(Lbd6;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lbd6;->Y()Lbd6$c;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    const-string v0, "Invalid value type: "

    .line 2
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lbd6;->Y()Lbd6$c;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lbx5;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    goto :goto_0

    .line 3
    :pswitch_0
    invoke-static {p0}, Lc50;->o0(Lbd6;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0

    :pswitch_1
    const/16 p0, 0x9

    return p0

    :pswitch_2
    const/16 p0, 0x8

    return p0

    :pswitch_3
    const/4 p0, 0x7

    return p0

    :pswitch_4
    const/4 p0, 0x6

    return p0

    :pswitch_5
    const/4 p0, 0x5

    return p0

    :pswitch_6
    const/4 p0, 0x3

    return p0

    :pswitch_7
    return v1

    :pswitch_8
    const/4 p0, 0x1

    return p0

    :pswitch_9
    return v2

    :goto_0
    const/4 p0, 0x0

    .line 4
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
