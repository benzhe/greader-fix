.class public Lnp5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/firebase/firestore/FirebaseFirestore;

.field public final b:Luo5$a;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/FirebaseFirestore;Luo5$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lnp5;->a:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 3
    iput-object p2, p0, Lnp5;->b:Luo5$a;

    return-void
.end method


# virtual methods
.method public a(Lbd6;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {p1}, Llu5;->l(Lbd6;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    packed-switch v0, :pswitch_data_0

    const-string v0, "Unknown value type: "

    .line 2
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lbd6;->Y()Lbd6$c;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lbx5;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    goto/16 :goto_5

    .line 3
    :pswitch_0
    invoke-virtual {p1}, Lbd6;->U()Lwc6;

    move-result-object p1

    invoke-virtual {p1}, Lwc6;->F()Ljava/util/Map;

    move-result-object p1

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbd6;

    invoke-virtual {p0, v1}, Lnp5;->a(Lbd6;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0

    .line 7
    :pswitch_1
    invoke-virtual {p1}, Lbd6;->N()Ljc6;

    move-result-object p1

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljc6;->I()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-virtual {p1}, Ljc6;->i()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbd6;

    .line 10
    invoke-virtual {p0, v1}, Lnp5;->a(Lbd6;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0

    .line 11
    :pswitch_2
    new-instance v0, Ldp5;

    .line 12
    invoke-virtual {p1}, Lbd6;->S()Ljl6;

    move-result-object v1

    invoke-virtual {v1}, Ljl6;->F()D

    move-result-wide v1

    invoke-virtual {p1}, Lbd6;->S()Ljl6;

    move-result-object p1

    invoke-virtual {p1}, Ljl6;->G()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ldp5;-><init>(DD)V

    return-object v0

    .line 13
    :pswitch_3
    invoke-virtual {p1}, Lbd6;->V()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v0}, Liu5;->N(Ljava/lang/String;)Liu5;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lvt5;->I()I

    move-result v1

    const/4 v5, 0x3

    if-lt v1, v5, :cond_2

    .line 16
    invoke-virtual {v0, v3}, Lvt5;->y(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "projects"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17
    invoke-virtual {v0, v4}, Lvt5;->y(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "databases"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    new-array v6, v2, [Ljava/lang/Object;

    aput-object v0, v6, v3

    const-string v7, "Tried to parse an invalid resource name: %s"

    .line 18
    invoke-static {v1, v7, v6}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 19
    new-instance v1, Lwt5;

    invoke-virtual {v0, v2}, Lvt5;->y(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5}, Lvt5;->y(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v6, v0}, Lwt5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lbd6;->V()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbu5;->k(Ljava/lang/String;)Lbu5;

    move-result-object p1

    .line 21
    iget-object v0, p0, Lnp5;->a:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 22
    iget-object v0, v0, Lcom/google/firebase/firestore/FirebaseFirestore;->b:Lwt5;

    .line 23
    invoke-virtual {v1, v0}, Lwt5;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    .line 24
    iget-object v7, p1, Lbu5;->e:Liu5;

    aput-object v7, v6, v3

    .line 25
    iget-object v3, v1, Lwt5;->e:Ljava/lang/String;

    aput-object v3, v6, v2

    .line 26
    iget-object v1, v1, Lwt5;->f:Ljava/lang/String;

    aput-object v1, v6, v4

    .line 27
    iget-object v1, v0, Lwt5;->e:Ljava/lang/String;

    aput-object v1, v6, v5

    const/4 v1, 0x4

    .line 28
    iget-object v0, v0, Lwt5;->f:Ljava/lang/String;

    aput-object v0, v6, v1

    .line 29
    sget-object v0, Lqx5$a;->f:Lqx5$a;

    const-string v1, "DocumentSnapshot"

    const-string v2, "Document %s contains a document reference within a different database (%s/%s) which is not supported. It will be treated as a reference in the current database (%s/%s) instead."

    invoke-static {v0, v1, v2, v6}, Lqx5;->a(Lqx5$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    :cond_3
    new-instance v0, Lto5;

    iget-object v1, p0, Lnp5;->a:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {v0, p1, v1}, Lto5;-><init>(Lbu5;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    return-object v0

    .line 31
    :pswitch_4
    invoke-virtual {p1}, Lbd6;->P()Lqi6;

    move-result-object p1

    const-string v0, "Provided ByteString must not be null."

    .line 32
    invoke-static {p1, v0}, Lc50;->B(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v0, Loo5;

    invoke-direct {v0, p1}, Loo5;-><init>(Lqi6;)V

    return-object v0

    .line 34
    :pswitch_5
    invoke-virtual {p1}, Lbd6;->W()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 35
    :pswitch_6
    iget-object v0, p0, Lnp5;->b:Luo5$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, v2, :cond_6

    if-eq v0, v4, :cond_4

    goto :goto_3

    .line 36
    :cond_4
    invoke-static {p1}, Lc50;->i0(Lbd6;)Lbd6;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_3

    .line 37
    :cond_5
    invoke-virtual {p0, p1}, Lnp5;->a(Lbd6;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_3

    .line 38
    :cond_6
    invoke-static {p1}, Lc50;->g0(Lbd6;)Lwk6;

    move-result-object p1

    .line 39
    new-instance v1, Lcom/google/firebase/Timestamp;

    invoke-virtual {p1}, Lwk6;->G()J

    move-result-wide v2

    invoke-virtual {p1}, Lwk6;->F()I

    move-result p1

    invoke-direct {v1, v2, v3, p1}, Lcom/google/firebase/Timestamp;-><init>(JI)V

    :goto_3
    return-object v1

    .line 40
    :pswitch_7
    invoke-virtual {p1}, Lbd6;->X()Lwk6;

    move-result-object p1

    .line 41
    new-instance v0, Lcom/google/firebase/Timestamp;

    invoke-virtual {p1}, Lwk6;->G()J

    move-result-wide v1

    invoke-virtual {p1}, Lwk6;->F()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/firebase/Timestamp;-><init>(JI)V

    return-object v0

    .line 42
    :pswitch_8
    invoke-virtual {p1}, Lbd6;->Y()Lbd6$c;

    move-result-object v0

    sget-object v1, Lbd6$c;->g:Lbd6$c;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 43
    invoke-virtual {p1}, Lbd6;->T()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_4

    .line 44
    :cond_7
    invoke-virtual {p1}, Lbd6;->R()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    :goto_4
    return-object p1

    .line 45
    :pswitch_9
    invoke-virtual {p1}, Lbd6;->O()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_a
    return-object v1

    .line 46
    :goto_5
    throw v1

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
