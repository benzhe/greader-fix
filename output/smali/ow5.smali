.class public final Low5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lwt5;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lwt5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Low5;->a:Lwt5;

    .line 3
    invoke-static {p1}, Low5;->q(Lwt5;)Liu5;

    move-result-object p1

    invoke-virtual {p1}, Liu5;->l()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Low5;->b:Ljava/lang/String;

    return-void
.end method

.method public static q(Lwt5;)Liu5;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "projects"

    aput-object v2, v0, v1

    .line 1
    iget-object v1, p0, Lwt5;->e:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "databases"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 2
    iget-object p0, p0, Lwt5;->f:Ljava/lang/String;

    aput-object p0, v0, v1

    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 4
    invoke-static {p0}, Liu5;->M(Ljava/util/List;)Liu5;

    move-result-object p0

    return-object p0
.end method

.method public static r(Liu5;)Liu5;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lvt5;->I()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-le v0, v3, :cond_0

    invoke-virtual {p0, v3}, Lvt5;->y(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "documents"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    const-string v1, "Tried to deserialize invalid key %s"

    .line 2
    invoke-static {v0, v1, v2}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x5

    .line 3
    invoke-virtual {p0, v0}, Lvt5;->K(I)Lvt5;

    move-result-object p0

    check-cast p0, Liu5;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lbu5;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Low5;->d(Ljava/lang/String;)Liu5;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lvt5;->y(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Low5;->a:Lwt5;

    .line 3
    iget-object v1, v1, Lwt5;->e:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Tried to deserialize key from different project."

    .line 5
    invoke-static {v0, v3, v2}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p1, v0}, Lvt5;->y(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Low5;->a:Lwt5;

    .line 7
    iget-object v2, v2, Lwt5;->f:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Tried to deserialize key from different database."

    .line 9
    invoke-static {v0, v2, v1}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 10
    invoke-static {p1}, Low5;->r(Liu5;)Liu5;

    move-result-object p1

    .line 11
    new-instance v0, Lbu5;

    invoke-direct {v0, p1}, Lbu5;-><init>(Liu5;)V

    return-object v0
.end method

.method public b(Lcd6;)Lqu5;
    .locals 10

    .line 1
    invoke-virtual {p1}, Lcd6;->P()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p1}, Lcd6;->I()Lxc6;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lxc6;->E()Lxc6$c;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eqz v5, :cond_2

    if-eq v5, v1, :cond_1

    if-ne v5, v4, :cond_0

    .line 4
    sget-object v0, Lwu5;->c:Lwu5;

    goto :goto_0

    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Unknown precondition"

    .line 5
    invoke-static {v0, p1}, Lbx5;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    throw v3

    .line 6
    :cond_1
    invoke-virtual {v0}, Lxc6;->H()Lwk6;

    move-result-object v0

    invoke-virtual {p0, v0}, Low5;->e(Lwk6;)Lju5;

    move-result-object v0

    .line 7
    new-instance v5, Lwu5;

    invoke-direct {v5, v0, v3}, Lwu5;-><init>(Lju5;Ljava/lang/Boolean;)V

    move-object v0, v5

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v0}, Lxc6;->G()Z

    move-result v0

    invoke-static {v0}, Lwu5;->a(Z)Lwu5;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_3
    sget-object v0, Lwu5;->c:Lwu5;

    .line 10
    :goto_0
    invoke-virtual {p1}, Lcd6;->K()Lcd6$c;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eqz v5, :cond_e

    if-eq v5, v1, :cond_d

    if-eq v5, v4, :cond_c

    const/4 v4, 0x3

    if-ne v5, v4, :cond_b

    .line 11
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-virtual {p1}, Lcd6;->L()Lrc6;

    move-result-object v5

    invoke-virtual {v5}, Lrc6;->G()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lrc6$c;

    .line 13
    invoke-virtual {v6}, Lrc6$c;->M()Lrc6$c$c;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eqz v7, :cond_7

    if-eq v7, v1, :cond_6

    const/4 v8, 0x4

    if-eq v7, v8, :cond_5

    const/4 v8, 0x5

    if-ne v7, v8, :cond_4

    .line 14
    new-instance v7, Lpu5;

    .line 15
    invoke-virtual {v6}, Lrc6$c;->I()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Leu5;->M(Ljava/lang/String;)Leu5;

    move-result-object v8

    new-instance v9, Lmu5$a;

    .line 16
    invoke-virtual {v6}, Lrc6$c;->K()Ljc6;

    move-result-object v6

    invoke-virtual {v6}, Ljc6;->i()Ljava/util/List;

    move-result-object v6

    invoke-direct {v9, v6}, Lmu5$a;-><init>(Ljava/util/List;)V

    invoke-direct {v7, v8, v9}, Lpu5;-><init>(Leu5;Lav5;)V

    goto :goto_3

    :cond_4
    new-array p1, v1, [Ljava/lang/Object;

    aput-object v6, p1, v2

    const-string v0, "Unknown FieldTransform proto: %s"

    .line 17
    invoke-static {v0, p1}, Lbx5;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    throw v3

    .line 18
    :cond_5
    new-instance v7, Lpu5;

    .line 19
    invoke-virtual {v6}, Lrc6$c;->I()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Leu5;->M(Ljava/lang/String;)Leu5;

    move-result-object v8

    new-instance v9, Lmu5$b;

    .line 20
    invoke-virtual {v6}, Lrc6$c;->H()Ljc6;

    move-result-object v6

    invoke-virtual {v6}, Ljc6;->i()Ljava/util/List;

    move-result-object v6

    invoke-direct {v9, v6}, Lmu5$b;-><init>(Ljava/util/List;)V

    invoke-direct {v7, v8, v9}, Lpu5;-><init>(Leu5;Lav5;)V

    goto :goto_3

    .line 21
    :cond_6
    new-instance v7, Lpu5;

    .line 22
    invoke-virtual {v6}, Lrc6$c;->I()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Leu5;->M(Ljava/lang/String;)Leu5;

    move-result-object v8

    new-instance v9, Luu5;

    .line 23
    invoke-virtual {v6}, Lrc6$c;->J()Lbd6;

    move-result-object v6

    invoke-direct {v9, v6}, Luu5;-><init>(Lbd6;)V

    invoke-direct {v7, v8, v9}, Lpu5;-><init>(Leu5;Lav5;)V

    goto :goto_3

    .line 24
    :cond_7
    invoke-virtual {v6}, Lrc6$c;->L()Lrc6$c$b;

    move-result-object v7

    sget-object v8, Lrc6$c$b;->g:Lrc6$c$b;

    if-ne v7, v8, :cond_8

    const/4 v7, 0x1

    goto :goto_2

    :cond_8
    const/4 v7, 0x0

    :goto_2
    new-array v8, v1, [Ljava/lang/Object;

    .line 25
    invoke-virtual {v6}, Lrc6$c;->L()Lrc6$c$b;

    move-result-object v9

    aput-object v9, v8, v2

    const-string v9, "Unknown transform setToServerValue: %s"

    .line 26
    invoke-static {v7, v9, v8}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 27
    new-instance v7, Lpu5;

    .line 28
    invoke-virtual {v6}, Lrc6$c;->I()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Leu5;->M(Ljava/lang/String;)Leu5;

    move-result-object v6

    .line 29
    sget-object v8, Lxu5;->a:Lxu5;

    invoke-direct {v7, v6, v8}, Lpu5;-><init>(Leu5;Lav5;)V

    .line 30
    :goto_3
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 31
    :cond_9
    iget-object v0, v0, Lwu5;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    .line 32
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_4

    :cond_a
    const/4 v1, 0x0

    :goto_4
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Transforms only support precondition \"exists == true\""

    .line 33
    invoke-static {v1, v2, v0}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 34
    new-instance v0, Lzu5;

    .line 35
    invoke-virtual {p1}, Lcd6;->L()Lrc6;

    move-result-object p1

    invoke-virtual {p1}, Lrc6;->F()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Low5;->a(Ljava/lang/String;)Lbu5;

    move-result-object p1

    invoke-direct {v0, p1, v4}, Lzu5;-><init>(Lbu5;Ljava/util/List;)V

    return-object v0

    :cond_b
    new-array v0, v1, [Ljava/lang/Object;

    .line 36
    invoke-virtual {p1}, Lcd6;->K()Lcd6$c;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "Unknown mutation operation: %d"

    invoke-static {p1, v0}, Lbx5;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    throw v3

    .line 37
    :cond_c
    new-instance v1, Lbv5;

    invoke-virtual {p1}, Lcd6;->O()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Low5;->a(Ljava/lang/String;)Lbu5;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lbv5;-><init>(Lbu5;Lwu5;)V

    return-object v1

    .line 38
    :cond_d
    new-instance v1, Lnu5;

    invoke-virtual {p1}, Lcd6;->J()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Low5;->a(Ljava/lang/String;)Lbu5;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lnu5;-><init>(Lbu5;Lwu5;)V

    return-object v1

    .line 39
    :cond_e
    invoke-virtual {p1}, Lcd6;->Q()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 40
    new-instance v1, Lvu5;

    .line 41
    invoke-virtual {p1}, Lcd6;->M()Lmc6;

    move-result-object v3

    invoke-virtual {v3}, Lmc6;->H()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Low5;->a(Ljava/lang/String;)Lbu5;

    move-result-object v3

    .line 42
    invoke-virtual {p1}, Lcd6;->M()Lmc6;

    move-result-object v4

    invoke-virtual {v4}, Lmc6;->G()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lhu5;->b(Ljava/util/Map;)Lhu5;

    move-result-object v4

    .line 43
    invoke-virtual {p1}, Lcd6;->N()Lpc6;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lpc6;->F()I

    move-result v5

    .line 45
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v5}, Ljava/util/HashSet;-><init>(I)V

    :goto_5
    if-ge v2, v5, :cond_f

    .line 46
    invoke-virtual {p1, v2}, Lpc6;->E(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Leu5;->M(Ljava/lang/String;)Leu5;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 47
    :cond_f
    new-instance p1, Lou5;

    invoke-direct {p1, v6}, Lou5;-><init>(Ljava/util/Set;)V

    .line 48
    invoke-direct {v1, v3, v4, p1, v0}, Lvu5;-><init>(Lbu5;Lhu5;Lou5;Lwu5;)V

    return-object v1

    .line 49
    :cond_10
    new-instance v1, Lyu5;

    .line 50
    invoke-virtual {p1}, Lcd6;->M()Lmc6;

    move-result-object v2

    invoke-virtual {v2}, Lmc6;->H()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Low5;->a(Ljava/lang/String;)Lbu5;

    move-result-object v2

    .line 51
    invoke-virtual {p1}, Lcd6;->M()Lmc6;

    move-result-object p1

    invoke-virtual {p1}, Lmc6;->G()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lhu5;->b(Ljava/util/Map;)Lhu5;

    move-result-object p1

    invoke-direct {v1, v2, p1, v0}, Lyu5;-><init>(Lbu5;Lhu5;Lwu5;)V

    return-object v1
.end method

.method public final c(Ljava/lang/String;)Liu5;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Low5;->d(Ljava/lang/String;)Liu5;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lvt5;->I()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3
    sget-object p1, Liu5;->f:Liu5;

    return-object p1

    .line 4
    :cond_0
    invoke-static {p1}, Low5;->r(Liu5;)Liu5;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/String;)Liu5;
    .locals 4

    .line 1
    invoke-static {p1}, Liu5;->N(Ljava/lang/String;)Liu5;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lvt5;->I()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p1, v3}, Lvt5;->y(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "projects"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p1, v0}, Lvt5;->y(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "databases"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const-string v2, "Tried to deserialize invalid key %s"

    .line 5
    invoke-static {v0, v2, v1}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method public e(Lwk6;)Lju5;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lwk6;->G()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-virtual {p1}, Lwk6;->F()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lju5;->f:Lju5;

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lju5;

    .line 4
    new-instance v1, Lcom/google/firebase/Timestamp;

    invoke-virtual {p1}, Lwk6;->G()J

    move-result-wide v2

    invoke-virtual {p1}, Lwk6;->F()I

    move-result p1

    invoke-direct {v1, v2, v3, p1}, Lcom/google/firebase/Timestamp;-><init>(JI)V

    .line 5
    invoke-direct {v0, v1}, Lju5;-><init>(Lcom/google/firebase/Timestamp;)V

    return-object v0
.end method

.method public final f(Lyp5;)Llc6;
    .locals 3

    .line 1
    invoke-static {}, Llc6;->G()Llc6$b;

    move-result-object v0

    .line 2
    iget-object v1, p1, Lyp5;->b:Ljava/util/List;

    .line 3
    invoke-virtual {v0}, Lgj6$a;->o()V

    .line 4
    iget-object v2, v0, Lgj6$a;->f:Lgj6;

    check-cast v2, Llc6;

    invoke-static {v2, v1}, Llc6;->C(Llc6;Ljava/lang/Iterable;)V

    .line 5
    iget-boolean p1, p1, Lyp5;->a:Z

    .line 6
    invoke-virtual {v0}, Lgj6$a;->o()V

    .line 7
    iget-object v1, v0, Lgj6$a;->f:Lgj6;

    check-cast v1, Llc6;

    invoke-static {v1, p1}, Llc6;->D(Llc6;Z)V

    .line 8
    invoke-virtual {v0}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Llc6;

    return-object p1
.end method

.method public g(Lbu5;Lhu5;)Lmc6;
    .locals 2

    .line 1
    invoke-static {}, Lmc6;->J()Lmc6$b;

    move-result-object v0

    .line 2
    iget-object v1, p0, Low5;->a:Lwt5;

    .line 3
    iget-object p1, p1, Lbu5;->e:Liu5;

    .line 4
    invoke-virtual {p0, v1, p1}, Low5;->n(Lwt5;Liu5;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {v0}, Lgj6$a;->o()V

    .line 6
    iget-object v1, v0, Lgj6$a;->f:Lgj6;

    check-cast v1, Lmc6;

    invoke-static {v1, p1}, Lmc6;->C(Lmc6;Ljava/lang/String;)V

    .line 7
    iget-object p1, p2, Lhu5;->a:Lbd6;

    invoke-virtual {p1}, Lbd6;->U()Lwc6;

    move-result-object p1

    invoke-virtual {p1}, Lwc6;->F()Ljava/util/Map;

    move-result-object p1

    .line 8
    invoke-virtual {v0}, Lgj6$a;->o()V

    .line 9
    iget-object p2, v0, Lgj6$a;->f:Lgj6;

    check-cast p2, Lmc6;

    invoke-static {p2}, Lmc6;->D(Lmc6;)Ljava/util/Map;

    move-result-object p2

    check-cast p2, Luj6;

    invoke-virtual {p2, p1}, Luj6;->putAll(Ljava/util/Map;)V

    .line 10
    invoke-virtual {v0}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Lmc6;

    return-object p1
.end method

.method public h(Ldr5;)Lzc6$c;
    .locals 2

    .line 1
    invoke-static {}, Lzc6$c;->G()Lzc6$c$a;

    move-result-object v0

    .line 2
    iget-object p1, p1, Ldr5;->d:Liu5;

    .line 3
    invoke-virtual {p0, p1}, Low5;->l(Liu5;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {v0}, Lgj6$a;->o()V

    .line 5
    iget-object v1, v0, Lgj6$a;->f:Lgj6;

    check-cast v1, Lzc6$c;

    invoke-static {v1, p1}, Lzc6$c;->C(Lzc6$c;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Lzc6$c;

    return-object p1
.end method

.method public final i(Leu5;)Lyc6$g;
    .locals 2

    .line 1
    invoke-static {}, Lyc6$g;->F()Lyc6$g$a;

    move-result-object v0

    invoke-virtual {p1}, Leu5;->l()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {v0}, Lgj6$a;->o()V

    .line 3
    iget-object v1, v0, Lgj6$a;->f:Lgj6;

    check-cast v1, Lyc6$g;

    invoke-static {v1, p1}, Lyc6$g;->C(Lyc6$g;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Lyc6$g;

    return-object p1
.end method

.method public j(Lbu5;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Low5;->a:Lwt5;

    .line 2
    iget-object p1, p1, Lbu5;->e:Liu5;

    .line 3
    invoke-virtual {p0, v0, p1}, Low5;->n(Lwt5;Liu5;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public k(Lqu5;)Lcd6;
    .locals 10

    .line 1
    invoke-static {}, Lcd6;->R()Lcd6$b;

    move-result-object v0

    .line 2
    instance-of v1, p1, Lyu5;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p1, Lqu5;->a:Lbu5;

    .line 4
    move-object v5, p1

    check-cast v5, Lyu5;

    .line 5
    iget-object v5, v5, Lyu5;->c:Lhu5;

    .line 6
    invoke-virtual {p0, v1, v5}, Low5;->g(Lbu5;Lhu5;)Lmc6;

    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lgj6$a;->o()V

    .line 8
    iget-object v5, v0, Lgj6$a;->f:Lgj6;

    check-cast v5, Lcd6;

    invoke-static {v5, v1}, Lcd6;->F(Lcd6;Lmc6;)V

    goto/16 :goto_3

    .line 9
    :cond_0
    instance-of v1, p1, Lvu5;

    if-eqz v1, :cond_2

    .line 10
    iget-object v1, p1, Lqu5;->a:Lbu5;

    .line 11
    move-object v5, p1

    check-cast v5, Lvu5;

    .line 12
    iget-object v6, v5, Lvu5;->c:Lhu5;

    .line 13
    invoke-virtual {p0, v1, v6}, Low5;->g(Lbu5;Lhu5;)Lmc6;

    move-result-object v1

    .line 14
    invoke-virtual {v0}, Lgj6$a;->o()V

    .line 15
    iget-object v6, v0, Lgj6$a;->f:Lgj6;

    check-cast v6, Lcd6;

    invoke-static {v6, v1}, Lcd6;->F(Lcd6;Lmc6;)V

    .line 16
    iget-object v1, v5, Lvu5;->d:Lou5;

    .line 17
    invoke-static {}, Lpc6;->G()Lpc6$b;

    move-result-object v5

    .line 18
    iget-object v1, v1, Lou5;->a:Ljava/util/Set;

    .line 19
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Leu5;

    .line 20
    invoke-virtual {v6}, Leu5;->l()Ljava/lang/String;

    move-result-object v6

    .line 21
    invoke-virtual {v5}, Lgj6$a;->o()V

    .line 22
    iget-object v7, v5, Lgj6$a;->f:Lgj6;

    check-cast v7, Lpc6;

    invoke-static {v7, v6}, Lpc6;->C(Lpc6;Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {v5}, Lgj6$a;->l()Lgj6;

    move-result-object v1

    check-cast v1, Lpc6;

    .line 24
    invoke-virtual {v0}, Lgj6$a;->o()V

    .line 25
    iget-object v5, v0, Lgj6$a;->f:Lgj6;

    check-cast v5, Lcd6;

    invoke-static {v5, v1}, Lcd6;->D(Lcd6;Lpc6;)V

    goto/16 :goto_3

    .line 26
    :cond_2
    instance-of v1, p1, Lzu5;

    if-eqz v1, :cond_8

    .line 27
    move-object v1, p1

    check-cast v1, Lzu5;

    .line 28
    invoke-static {}, Lrc6;->H()Lrc6$b;

    move-result-object v5

    .line 29
    iget-object v6, v1, Lqu5;->a:Lbu5;

    .line 30
    invoke-virtual {p0, v6}, Low5;->j(Lbu5;)Ljava/lang/String;

    move-result-object v6

    .line 31
    invoke-virtual {v5}, Lgj6$a;->o()V

    .line 32
    iget-object v7, v5, Lgj6$a;->f:Lgj6;

    check-cast v7, Lrc6;

    invoke-static {v7, v6}, Lrc6;->C(Lrc6;Ljava/lang/String;)V

    .line 33
    iget-object v1, v1, Lzu5;->c:Ljava/util/List;

    .line 34
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpu5;

    .line 35
    iget-object v7, v6, Lpu5;->b:Lav5;

    .line 36
    instance-of v8, v7, Lxu5;

    if-eqz v8, :cond_3

    .line 37
    invoke-static {}, Lrc6$c;->N()Lrc6$c$a;

    move-result-object v7

    .line 38
    iget-object v6, v6, Lpu5;->a:Leu5;

    .line 39
    invoke-virtual {v6}, Leu5;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lrc6$c$a;->r(Ljava/lang/String;)Lrc6$c$a;

    sget-object v6, Lrc6$c$b;->g:Lrc6$c$b;

    .line 40
    invoke-virtual {v7}, Lgj6$a;->o()V

    .line 41
    iget-object v8, v7, Lgj6$a;->f:Lgj6;

    check-cast v8, Lrc6$c;

    invoke-static {v8, v6}, Lrc6$c;->F(Lrc6$c;Lrc6$c$b;)V

    .line 42
    invoke-virtual {v7}, Lgj6$a;->l()Lgj6;

    move-result-object v6

    check-cast v6, Lrc6$c;

    goto/16 :goto_2

    .line 43
    :cond_3
    instance-of v8, v7, Lmu5$b;

    if-eqz v8, :cond_4

    .line 44
    check-cast v7, Lmu5$b;

    .line 45
    invoke-static {}, Lrc6$c;->N()Lrc6$c$a;

    move-result-object v8

    .line 46
    iget-object v6, v6, Lpu5;->a:Leu5;

    .line 47
    invoke-virtual {v6}, Leu5;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lrc6$c$a;->r(Ljava/lang/String;)Lrc6$c$a;

    .line 48
    invoke-static {}, Ljc6;->J()Ljc6$b;

    move-result-object v6

    .line 49
    iget-object v7, v7, Lmu5;->a:Ljava/util/List;

    .line 50
    invoke-virtual {v6}, Lgj6$a;->o()V

    .line 51
    iget-object v9, v6, Lgj6$a;->f:Lgj6;

    check-cast v9, Ljc6;

    invoke-static {v9, v7}, Ljc6;->D(Ljc6;Ljava/lang/Iterable;)V

    .line 52
    invoke-virtual {v8}, Lgj6$a;->o()V

    .line 53
    iget-object v7, v8, Lgj6$a;->f:Lgj6;

    check-cast v7, Lrc6$c;

    invoke-virtual {v6}, Lgj6$a;->l()Lgj6;

    move-result-object v6

    check-cast v6, Ljc6;

    invoke-static {v7, v6}, Lrc6$c;->C(Lrc6$c;Ljc6;)V

    .line 54
    invoke-virtual {v8}, Lgj6$a;->l()Lgj6;

    move-result-object v6

    check-cast v6, Lrc6$c;

    goto :goto_2

    .line 55
    :cond_4
    instance-of v8, v7, Lmu5$a;

    if-eqz v8, :cond_5

    .line 56
    check-cast v7, Lmu5$a;

    .line 57
    invoke-static {}, Lrc6$c;->N()Lrc6$c$a;

    move-result-object v8

    .line 58
    iget-object v6, v6, Lpu5;->a:Leu5;

    .line 59
    invoke-virtual {v6}, Leu5;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lrc6$c$a;->r(Ljava/lang/String;)Lrc6$c$a;

    .line 60
    invoke-static {}, Ljc6;->J()Ljc6$b;

    move-result-object v6

    .line 61
    iget-object v7, v7, Lmu5;->a:Ljava/util/List;

    .line 62
    invoke-virtual {v6}, Lgj6$a;->o()V

    .line 63
    iget-object v9, v6, Lgj6$a;->f:Lgj6;

    check-cast v9, Ljc6;

    invoke-static {v9, v7}, Ljc6;->D(Ljc6;Ljava/lang/Iterable;)V

    .line 64
    invoke-virtual {v8}, Lgj6$a;->o()V

    .line 65
    iget-object v7, v8, Lgj6$a;->f:Lgj6;

    check-cast v7, Lrc6$c;

    invoke-virtual {v6}, Lgj6$a;->l()Lgj6;

    move-result-object v6

    check-cast v6, Ljc6;

    invoke-static {v7, v6}, Lrc6$c;->E(Lrc6$c;Ljc6;)V

    .line 66
    invoke-virtual {v8}, Lgj6$a;->l()Lgj6;

    move-result-object v6

    check-cast v6, Lrc6$c;

    goto :goto_2

    .line 67
    :cond_5
    instance-of v8, v7, Luu5;

    if-eqz v8, :cond_6

    .line 68
    check-cast v7, Luu5;

    .line 69
    invoke-static {}, Lrc6$c;->N()Lrc6$c$a;

    move-result-object v8

    .line 70
    iget-object v6, v6, Lpu5;->a:Leu5;

    .line 71
    invoke-virtual {v6}, Leu5;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lrc6$c$a;->r(Ljava/lang/String;)Lrc6$c$a;

    .line 72
    iget-object v6, v7, Luu5;->a:Lbd6;

    .line 73
    invoke-virtual {v8}, Lgj6$a;->o()V

    .line 74
    iget-object v7, v8, Lgj6$a;->f:Lgj6;

    check-cast v7, Lrc6$c;

    invoke-static {v7, v6}, Lrc6$c;->G(Lrc6$c;Lbd6;)V

    .line 75
    invoke-virtual {v8}, Lgj6$a;->l()Lgj6;

    move-result-object v6

    check-cast v6, Lrc6$c;

    .line 76
    :goto_2
    invoke-virtual {v5}, Lgj6$a;->o()V

    .line 77
    iget-object v7, v5, Lgj6$a;->f:Lgj6;

    check-cast v7, Lrc6;

    invoke-static {v7, v6}, Lrc6;->D(Lrc6;Lrc6$c;)V

    goto/16 :goto_1

    :cond_6
    new-array p1, v4, [Ljava/lang/Object;

    aput-object v7, p1, v3

    const-string v0, "Unknown transform: %s"

    .line 78
    invoke-static {v0, p1}, Lbx5;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    throw v2

    .line 79
    :cond_7
    invoke-virtual {v0}, Lgj6$a;->o()V

    .line 80
    iget-object v1, v0, Lgj6$a;->f:Lgj6;

    check-cast v1, Lcd6;

    invoke-virtual {v5}, Lgj6$a;->l()Lgj6;

    move-result-object v5

    check-cast v5, Lrc6;

    invoke-static {v1, v5}, Lcd6;->C(Lcd6;Lrc6;)V

    goto :goto_3

    .line 81
    :cond_8
    instance-of v1, p1, Lnu5;

    if-eqz v1, :cond_9

    .line 82
    iget-object v1, p1, Lqu5;->a:Lbu5;

    .line 83
    invoke-virtual {p0, v1}, Low5;->j(Lbu5;)Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-virtual {v0}, Lgj6$a;->o()V

    .line 85
    iget-object v5, v0, Lgj6$a;->f:Lgj6;

    check-cast v5, Lcd6;

    invoke-static {v5, v1}, Lcd6;->G(Lcd6;Ljava/lang/String;)V

    goto :goto_3

    .line 86
    :cond_9
    instance-of v1, p1, Lbv5;

    if-eqz v1, :cond_d

    .line 87
    iget-object v1, p1, Lqu5;->a:Lbu5;

    .line 88
    invoke-virtual {p0, v1}, Low5;->j(Lbu5;)Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-virtual {v0}, Lgj6$a;->o()V

    .line 90
    iget-object v5, v0, Lgj6$a;->f:Lgj6;

    check-cast v5, Lcd6;

    invoke-static {v5, v1}, Lcd6;->H(Lcd6;Ljava/lang/String;)V

    .line 91
    :goto_3
    iget-object v1, p1, Lqu5;->b:Lwu5;

    .line 92
    invoke-virtual {v1}, Lwu5;->b()Z

    move-result v1

    if-nez v1, :cond_c

    .line 93
    iget-object p1, p1, Lqu5;->b:Lwu5;

    .line 94
    invoke-virtual {p1}, Lwu5;->b()Z

    move-result v1

    xor-int/2addr v1, v4

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Can\'t serialize an empty precondition"

    invoke-static {v1, v5, v4}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 95
    invoke-static {}, Lxc6;->I()Lxc6$b;

    move-result-object v1

    .line 96
    iget-object v4, p1, Lwu5;->a:Lju5;

    if-eqz v4, :cond_a

    .line 97
    invoke-virtual {p0, v4}, Low5;->p(Lju5;)Lwk6;

    move-result-object p1

    .line 98
    invoke-virtual {v1}, Lgj6$a;->o()V

    .line 99
    iget-object v2, v1, Lgj6$a;->f:Lgj6;

    check-cast v2, Lxc6;

    invoke-static {v2, p1}, Lxc6;->D(Lxc6;Lwk6;)V

    .line 100
    invoke-virtual {v1}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Lxc6;

    goto :goto_4

    .line 101
    :cond_a
    iget-object p1, p1, Lwu5;->b:Ljava/lang/Boolean;

    if-eqz p1, :cond_b

    .line 102
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 103
    invoke-virtual {v1}, Lgj6$a;->o()V

    .line 104
    iget-object v2, v1, Lgj6$a;->f:Lgj6;

    check-cast v2, Lxc6;

    invoke-static {v2, p1}, Lxc6;->C(Lxc6;Z)V

    .line 105
    invoke-virtual {v1}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Lxc6;

    .line 106
    :goto_4
    invoke-virtual {v0}, Lgj6$a;->o()V

    .line 107
    iget-object v1, v0, Lgj6$a;->f:Lgj6;

    check-cast v1, Lcd6;

    invoke-static {v1, p1}, Lcd6;->E(Lcd6;Lxc6;)V

    goto :goto_5

    :cond_b
    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "Unknown Precondition"

    .line 108
    invoke-static {v0, p1}, Lbx5;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    throw v2

    .line 109
    :cond_c
    :goto_5
    invoke-virtual {v0}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Lcd6;

    return-object p1

    :cond_d
    new-array v0, v4, [Ljava/lang/Object;

    .line 110
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "unknown mutation type %s"

    invoke-static {p1, v0}, Lbx5;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    throw v2
.end method

.method public final l(Liu5;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Low5;->a:Lwt5;

    invoke-virtual {p0, v0, p1}, Low5;->n(Lwt5;Liu5;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public m(Ldr5;)Lzc6$d;
    .locals 12

    .line 1
    invoke-static {}, Lzc6$d;->H()Lzc6$d$a;

    move-result-object v0

    .line 2
    invoke-static {}, Lyc6;->V()Lyc6$b;

    move-result-object v1

    .line 3
    iget-object v2, p1, Ldr5;->d:Liu5;

    .line 4
    iget-object v3, p1, Ldr5;->e:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v2}, Lvt5;->I()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "Collection Group queries should be within a document path or root."

    .line 6
    invoke-static {v3, v7, v6}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iget-object v3, p0, Low5;->a:Lwt5;

    invoke-virtual {p0, v3, v2}, Low5;->n(Lwt5;Liu5;)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v0}, Lgj6$a;->o()V

    .line 9
    iget-object v3, v0, Lgj6$a;->f:Lgj6;

    check-cast v3, Lzc6$d;

    invoke-static {v3, v2}, Lzc6$d;->D(Lzc6$d;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lyc6$c;->G()Lyc6$c$a;

    move-result-object v2

    .line 11
    iget-object v3, p1, Ldr5;->e:Ljava/lang/String;

    .line 12
    invoke-virtual {v2}, Lgj6$a;->o()V

    .line 13
    iget-object v6, v2, Lgj6$a;->f:Lgj6;

    check-cast v6, Lyc6$c;

    invoke-static {v6, v3}, Lyc6$c;->C(Lyc6$c;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2}, Lgj6$a;->o()V

    .line 15
    iget-object v3, v2, Lgj6$a;->f:Lgj6;

    check-cast v3, Lyc6$c;

    invoke-static {v3, v5}, Lyc6$c;->D(Lyc6$c;Z)V

    .line 16
    invoke-virtual {v1}, Lgj6$a;->o()V

    .line 17
    iget-object v3, v1, Lgj6$a;->f:Lgj6;

    check-cast v3, Lyc6;

    invoke-virtual {v2}, Lgj6$a;->l()Lgj6;

    move-result-object v2

    check-cast v2, Lyc6$c;

    invoke-static {v3, v2}, Lyc6;->C(Lyc6;Lyc6$c;)V

    goto :goto_2

    .line 18
    :cond_1
    invoke-virtual {v2}, Lvt5;->I()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "Document queries with filters are not supported."

    invoke-static {v3, v7, v6}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v2}, Lvt5;->L()Lvt5;

    move-result-object v3

    check-cast v3, Liu5;

    invoke-virtual {p0, v3}, Low5;->l(Liu5;)Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-virtual {v0}, Lgj6$a;->o()V

    .line 21
    iget-object v6, v0, Lgj6$a;->f:Lgj6;

    check-cast v6, Lzc6$d;

    invoke-static {v6, v3}, Lzc6$d;->D(Lzc6$d;Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lyc6$c;->G()Lyc6$c$a;

    move-result-object v3

    .line 23
    invoke-virtual {v2}, Lvt5;->x()Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-virtual {v3}, Lgj6$a;->o()V

    .line 25
    iget-object v6, v3, Lgj6$a;->f:Lgj6;

    check-cast v6, Lyc6$c;

    invoke-static {v6, v2}, Lyc6$c;->C(Lyc6$c;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1}, Lgj6$a;->o()V

    .line 27
    iget-object v2, v1, Lgj6$a;->f:Lgj6;

    check-cast v2, Lyc6;

    invoke-virtual {v3}, Lgj6$a;->l()Lgj6;

    move-result-object v3

    check-cast v3, Lyc6$c;

    invoke-static {v2, v3}, Lyc6;->C(Lyc6;Lyc6$c;)V

    .line 28
    :goto_2
    iget-object v2, p1, Ldr5;->c:Ljava/util/List;

    .line 29
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_d

    .line 30
    iget-object v2, p1, Ldr5;->c:Ljava/util/List;

    .line 31
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lfq5;

    .line 33
    instance-of v8, v7, Leq5;

    if-eqz v8, :cond_3

    .line 34
    check-cast v7, Leq5;

    .line 35
    iget-object v8, v7, Leq5;->a:Lfq5$a;

    .line 36
    sget-object v9, Lfq5$a;->h:Lfq5$a;

    if-eq v8, v9, :cond_4

    .line 37
    sget-object v10, Lfq5$a;->i:Lfq5$a;

    if-ne v8, v10, :cond_a

    .line 38
    :cond_4
    invoke-static {}, Lyc6$k;->H()Lyc6$k$a;

    move-result-object v8

    .line 39
    iget-object v10, v7, Leq5;->c:Leu5;

    .line 40
    invoke-virtual {p0, v10}, Low5;->i(Leu5;)Lyc6$g;

    move-result-object v10

    .line 41
    invoke-virtual {v8}, Lgj6$a;->o()V

    .line 42
    iget-object v11, v8, Lgj6$a;->f:Lgj6;

    check-cast v11, Lyc6$k;

    invoke-static {v11, v10}, Lyc6$k;->D(Lyc6$k;Lyc6$g;)V

    .line 43
    iget-object v10, v7, Leq5;->b:Lbd6;

    .line 44
    sget-object v11, Llu5;->a:Lbd6;

    if-eqz v10, :cond_5

    .line 45
    invoke-virtual {v10}, Lbd6;->R()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v10, 0x1

    goto :goto_4

    :cond_5
    const/4 v10, 0x0

    :goto_4
    if-eqz v10, :cond_7

    .line 46
    iget-object v7, v7, Leq5;->a:Lfq5$a;

    if-ne v7, v9, :cond_6

    .line 47
    sget-object v7, Lyc6$k$b;->g:Lyc6$k$b;

    goto :goto_5

    .line 48
    :cond_6
    sget-object v7, Lyc6$k$b;->i:Lyc6$k$b;

    .line 49
    :goto_5
    invoke-virtual {v8}, Lgj6$a;->o()V

    .line 50
    iget-object v9, v8, Lgj6$a;->f:Lgj6;

    check-cast v9, Lyc6$k;

    invoke-static {v9, v7}, Lyc6$k;->C(Lyc6$k;Lyc6$k$b;)V

    .line 51
    invoke-static {}, Lyc6$h;->K()Lyc6$h$a;

    move-result-object v7

    .line 52
    invoke-virtual {v7}, Lgj6$a;->o()V

    .line 53
    iget-object v9, v7, Lgj6$a;->f:Lgj6;

    check-cast v9, Lyc6$h;

    invoke-virtual {v8}, Lgj6$a;->l()Lgj6;

    move-result-object v8

    check-cast v8, Lyc6$k;

    invoke-static {v9, v8}, Lyc6$h;->C(Lyc6$h;Lyc6$k;)V

    .line 54
    invoke-virtual {v7}, Lgj6$a;->l()Lgj6;

    move-result-object v7

    check-cast v7, Lyc6$h;

    goto/16 :goto_9

    .line 55
    :cond_7
    iget-object v10, v7, Leq5;->b:Lbd6;

    if-eqz v10, :cond_8

    .line 56
    invoke-virtual {v10}, Lbd6;->Y()Lbd6$c;

    move-result-object v10

    sget-object v11, Lbd6$c;->e:Lbd6$c;

    if-ne v10, v11, :cond_8

    const/4 v10, 0x1

    goto :goto_6

    :cond_8
    const/4 v10, 0x0

    :goto_6
    if-eqz v10, :cond_a

    .line 57
    iget-object v7, v7, Leq5;->a:Lfq5$a;

    if-ne v7, v9, :cond_9

    .line 58
    sget-object v7, Lyc6$k$b;->h:Lyc6$k$b;

    goto :goto_7

    .line 59
    :cond_9
    sget-object v7, Lyc6$k$b;->j:Lyc6$k$b;

    .line 60
    :goto_7
    invoke-virtual {v8}, Lgj6$a;->o()V

    .line 61
    iget-object v9, v8, Lgj6$a;->f:Lgj6;

    check-cast v9, Lyc6$k;

    invoke-static {v9, v7}, Lyc6$k;->C(Lyc6$k;Lyc6$k$b;)V

    .line 62
    invoke-static {}, Lyc6$h;->K()Lyc6$h$a;

    move-result-object v7

    .line 63
    invoke-virtual {v7}, Lgj6$a;->o()V

    .line 64
    iget-object v9, v7, Lgj6$a;->f:Lgj6;

    check-cast v9, Lyc6$h;

    invoke-virtual {v8}, Lgj6$a;->l()Lgj6;

    move-result-object v8

    check-cast v8, Lyc6$k;

    invoke-static {v9, v8}, Lyc6$h;->C(Lyc6$h;Lyc6$k;)V

    .line 65
    invoke-virtual {v7}, Lgj6$a;->l()Lgj6;

    move-result-object v7

    check-cast v7, Lyc6$h;

    goto/16 :goto_9

    .line 66
    :cond_a
    invoke-static {}, Lyc6$f;->J()Lyc6$f$a;

    move-result-object v8

    .line 67
    iget-object v9, v7, Leq5;->c:Leu5;

    .line 68
    invoke-virtual {p0, v9}, Low5;->i(Leu5;)Lyc6$g;

    move-result-object v9

    .line 69
    invoke-virtual {v8}, Lgj6$a;->o()V

    .line 70
    iget-object v10, v8, Lgj6$a;->f:Lgj6;

    check-cast v10, Lyc6$f;

    invoke-static {v10, v9}, Lyc6$f;->C(Lyc6$f;Lyc6$g;)V

    .line 71
    iget-object v9, v7, Leq5;->a:Lfq5$a;

    .line 72
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    new-array p1, v5, [Ljava/lang/Object;

    aput-object v9, p1, v4

    const-string v0, "Unknown operator %d"

    .line 73
    invoke-static {v0, p1}, Lbx5;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    goto :goto_a

    .line 74
    :pswitch_0
    sget-object v9, Lyc6$f$b;->p:Lyc6$f$b;

    goto :goto_8

    .line 75
    :pswitch_1
    sget-object v9, Lyc6$f$b;->n:Lyc6$f$b;

    goto :goto_8

    .line 76
    :pswitch_2
    sget-object v9, Lyc6$f$b;->o:Lyc6$f$b;

    goto :goto_8

    .line 77
    :pswitch_3
    sget-object v9, Lyc6$f$b;->m:Lyc6$f$b;

    goto :goto_8

    .line 78
    :pswitch_4
    sget-object v9, Lyc6$f$b;->j:Lyc6$f$b;

    goto :goto_8

    .line 79
    :pswitch_5
    sget-object v9, Lyc6$f$b;->i:Lyc6$f$b;

    goto :goto_8

    .line 80
    :pswitch_6
    sget-object v9, Lyc6$f$b;->l:Lyc6$f$b;

    goto :goto_8

    .line 81
    :pswitch_7
    sget-object v9, Lyc6$f$b;->k:Lyc6$f$b;

    goto :goto_8

    .line 82
    :pswitch_8
    sget-object v9, Lyc6$f$b;->h:Lyc6$f$b;

    goto :goto_8

    .line 83
    :pswitch_9
    sget-object v9, Lyc6$f$b;->g:Lyc6$f$b;

    .line 84
    :goto_8
    invoke-virtual {v8}, Lgj6$a;->o()V

    .line 85
    iget-object v10, v8, Lgj6$a;->f:Lgj6;

    check-cast v10, Lyc6$f;

    invoke-static {v10, v9}, Lyc6$f;->D(Lyc6$f;Lyc6$f$b;)V

    .line 86
    iget-object v7, v7, Leq5;->b:Lbd6;

    .line 87
    invoke-virtual {v8}, Lgj6$a;->o()V

    .line 88
    iget-object v9, v8, Lgj6$a;->f:Lgj6;

    check-cast v9, Lyc6$f;

    invoke-static {v9, v7}, Lyc6$f;->E(Lyc6$f;Lbd6;)V

    .line 89
    invoke-static {}, Lyc6$h;->K()Lyc6$h$a;

    move-result-object v7

    .line 90
    invoke-virtual {v7}, Lgj6$a;->o()V

    .line 91
    iget-object v9, v7, Lgj6$a;->f:Lgj6;

    check-cast v9, Lyc6$h;

    invoke-virtual {v8}, Lgj6$a;->l()Lgj6;

    move-result-object v8

    check-cast v8, Lyc6$f;

    invoke-static {v9, v8}, Lyc6$h;->B(Lyc6$h;Lyc6$f;)V

    .line 92
    invoke-virtual {v7}, Lgj6$a;->l()Lgj6;

    move-result-object v7

    check-cast v7, Lyc6$h;

    .line 93
    :goto_9
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :goto_a
    const/4 p1, 0x0

    .line 94
    throw p1

    .line 95
    :cond_b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v5, :cond_c

    .line 96
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyc6$h;

    goto :goto_b

    .line 97
    :cond_c
    invoke-static {}, Lyc6$d;->H()Lyc6$d$a;

    move-result-object v2

    .line 98
    sget-object v5, Lyc6$d$b;->g:Lyc6$d$b;

    .line 99
    invoke-virtual {v2}, Lgj6$a;->o()V

    .line 100
    iget-object v6, v2, Lgj6$a;->f:Lgj6;

    check-cast v6, Lyc6$d;

    invoke-static {v6, v5}, Lyc6$d;->C(Lyc6$d;Lyc6$d$b;)V

    .line 101
    invoke-virtual {v2}, Lgj6$a;->o()V

    .line 102
    iget-object v5, v2, Lgj6$a;->f:Lgj6;

    check-cast v5, Lyc6$d;

    invoke-static {v5, v3}, Lyc6$d;->D(Lyc6$d;Ljava/lang/Iterable;)V

    .line 103
    invoke-static {}, Lyc6$h;->K()Lyc6$h$a;

    move-result-object v3

    .line 104
    invoke-virtual {v3}, Lgj6$a;->o()V

    .line 105
    iget-object v5, v3, Lgj6$a;->f:Lgj6;

    check-cast v5, Lyc6$h;

    invoke-virtual {v2}, Lgj6$a;->l()Lgj6;

    move-result-object v2

    check-cast v2, Lyc6$d;

    invoke-static {v5, v2}, Lyc6$h;->E(Lyc6$h;Lyc6$d;)V

    .line 106
    invoke-virtual {v3}, Lgj6$a;->l()Lgj6;

    move-result-object v2

    check-cast v2, Lyc6$h;

    .line 107
    :goto_b
    invoke-virtual {v1}, Lgj6$a;->o()V

    .line 108
    iget-object v3, v1, Lgj6$a;->f:Lgj6;

    check-cast v3, Lyc6;

    invoke-static {v3, v2}, Lyc6;->D(Lyc6;Lyc6$h;)V

    .line 109
    :cond_d
    iget-object v2, p1, Ldr5;->b:Ljava/util/List;

    .line 110
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lxq5;

    .line 111
    invoke-static {}, Lyc6$i;->G()Lyc6$i$a;

    move-result-object v5

    .line 112
    iget-object v6, v3, Lxq5;->a:Lxq5$a;

    .line 113
    sget-object v7, Lxq5$a;->f:Lxq5$a;

    invoke-virtual {v6, v7}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 114
    sget-object v6, Lyc6$e;->g:Lyc6$e;

    .line 115
    invoke-virtual {v5}, Lgj6$a;->o()V

    .line 116
    iget-object v7, v5, Lgj6$a;->f:Lgj6;

    check-cast v7, Lyc6$i;

    invoke-static {v7, v6}, Lyc6$i;->D(Lyc6$i;Lyc6$e;)V

    goto :goto_d

    .line 117
    :cond_e
    sget-object v6, Lyc6$e;->h:Lyc6$e;

    .line 118
    invoke-virtual {v5}, Lgj6$a;->o()V

    .line 119
    iget-object v7, v5, Lgj6$a;->f:Lgj6;

    check-cast v7, Lyc6$i;

    invoke-static {v7, v6}, Lyc6$i;->D(Lyc6$i;Lyc6$e;)V

    .line 120
    :goto_d
    iget-object v3, v3, Lxq5;->b:Leu5;

    .line 121
    invoke-virtual {p0, v3}, Low5;->i(Leu5;)Lyc6$g;

    move-result-object v3

    .line 122
    invoke-virtual {v5}, Lgj6$a;->o()V

    .line 123
    iget-object v6, v5, Lgj6$a;->f:Lgj6;

    check-cast v6, Lyc6$i;

    invoke-static {v6, v3}, Lyc6$i;->C(Lyc6$i;Lyc6$g;)V

    .line 124
    invoke-virtual {v5}, Lgj6$a;->l()Lgj6;

    move-result-object v3

    check-cast v3, Lyc6$i;

    .line 125
    invoke-virtual {v1}, Lgj6$a;->o()V

    .line 126
    iget-object v5, v1, Lgj6$a;->f:Lgj6;

    check-cast v5, Lyc6;

    invoke-static {v5, v3}, Lyc6;->E(Lyc6;Lyc6$i;)V

    goto :goto_c

    .line 127
    :cond_f
    invoke-virtual {p1}, Ldr5;->b()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 128
    invoke-static {}, Lhj6;->F()Lhj6$b;

    move-result-object v2

    .line 129
    invoke-virtual {p1}, Ldr5;->b()Z

    move-result v3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Called getLimit when no limit was set"

    invoke-static {v3, v5, v4}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 130
    iget-wide v3, p1, Ldr5;->f:J

    long-to-int v4, v3

    .line 131
    invoke-virtual {v2}, Lgj6$a;->o()V

    .line 132
    iget-object v3, v2, Lgj6$a;->f:Lgj6;

    check-cast v3, Lhj6;

    invoke-static {v3, v4}, Lhj6;->C(Lhj6;I)V

    .line 133
    invoke-virtual {v1}, Lgj6$a;->o()V

    .line 134
    iget-object v3, v1, Lgj6$a;->f:Lgj6;

    check-cast v3, Lyc6;

    invoke-virtual {v2}, Lgj6$a;->l()Lgj6;

    move-result-object v2

    check-cast v2, Lhj6;

    invoke-static {v3, v2}, Lyc6;->H(Lyc6;Lhj6;)V

    .line 135
    :cond_10
    iget-object v2, p1, Ldr5;->g:Lyp5;

    if-eqz v2, :cond_11

    .line 136
    invoke-virtual {p0, v2}, Low5;->f(Lyp5;)Llc6;

    move-result-object v2

    .line 137
    invoke-virtual {v1}, Lgj6$a;->o()V

    .line 138
    iget-object v3, v1, Lgj6$a;->f:Lgj6;

    check-cast v3, Lyc6;

    invoke-static {v3, v2}, Lyc6;->F(Lyc6;Llc6;)V

    .line 139
    :cond_11
    iget-object p1, p1, Ldr5;->h:Lyp5;

    if-eqz p1, :cond_12

    .line 140
    invoke-virtual {p0, p1}, Low5;->f(Lyp5;)Llc6;

    move-result-object p1

    .line 141
    invoke-virtual {v1}, Lgj6$a;->o()V

    .line 142
    iget-object v2, v1, Lgj6$a;->f:Lgj6;

    check-cast v2, Lyc6;

    invoke-static {v2, p1}, Lyc6;->G(Lyc6;Llc6;)V

    .line 143
    :cond_12
    invoke-virtual {v0}, Lgj6$a;->o()V

    .line 144
    iget-object p1, v0, Lgj6$a;->f:Lgj6;

    check-cast p1, Lzc6$d;

    invoke-virtual {v1}, Lgj6$a;->l()Lgj6;

    move-result-object v1

    check-cast v1, Lyc6;

    invoke-static {p1, v1}, Lzc6$d;->B(Lzc6$d;Lyc6;)V

    .line 145
    invoke-virtual {v0}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Lzc6$d;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final n(Lwt5;Liu5;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Low5;->q(Lwt5;)Liu5;

    move-result-object p1

    const-string v0, "documents"

    invoke-virtual {p1, v0}, Lvt5;->k(Ljava/lang/String;)Lvt5;

    move-result-object p1

    check-cast p1, Liu5;

    invoke-virtual {p1, p2}, Lvt5;->i(Lvt5;)Lvt5;

    move-result-object p1

    check-cast p1, Liu5;

    invoke-virtual {p1}, Liu5;->l()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public o(Lcom/google/firebase/Timestamp;)Lwk6;
    .locals 3

    .line 1
    invoke-static {}, Lwk6;->H()Lwk6$b;

    move-result-object v0

    .line 2
    iget-wide v1, p1, Lcom/google/firebase/Timestamp;->e:J

    .line 3
    invoke-virtual {v0, v1, v2}, Lwk6$b;->s(J)Lwk6$b;

    .line 4
    iget p1, p1, Lcom/google/firebase/Timestamp;->f:I

    .line 5
    invoke-virtual {v0, p1}, Lwk6$b;->r(I)Lwk6$b;

    .line 6
    invoke-virtual {v0}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Lwk6;

    return-object p1
.end method

.method public p(Lju5;)Lwk6;
    .locals 0

    .line 1
    iget-object p1, p1, Lju5;->e:Lcom/google/firebase/Timestamp;

    .line 2
    invoke-virtual {p0, p1}, Low5;->o(Lcom/google/firebase/Timestamp;)Lwk6;

    move-result-object p1

    return-object p1
.end method
