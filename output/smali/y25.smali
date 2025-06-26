.class public final Ly25;
.super Lz25;
.source "SourceFile"


# instance fields
.field public final g:Lv34;

.field public final synthetic h:Lb35;


# direct methods
.method public constructor <init>(Lb35;Ljava/lang/String;ILv34;)V
    .locals 0

    iput-object p1, p0, Ly25;->h:Lb35;

    .line 1
    invoke-direct {p0, p2, p3}, Lz25;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Ly25;->g:Lv34;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Ly25;->g:Lv34;

    .line 1
    invoke-virtual {v0}, Lv34;->t()I

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Ly25;->g:Lv34;

    .line 1
    invoke-virtual {v0}, Lv34;->y()Z

    move-result v0

    return v0
.end method

.method public final i(Ljava/lang/Long;Ljava/lang/Long;Lz44;JLls4;Z)Z
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Lbd4;->b()Z

    iget-object v1, v0, Ly25;->h:Lb35;

    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 2
    iget-object v1, v1, Lrx4;->g:Lcs4;

    .line 3
    iget-object v2, v0, Lz25;->a:Ljava/lang/String;

    .line 4
    sget-object v3, Lew4;->b0:Ldw4;

    invoke-virtual {v1, v2, v3}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v1

    iget-object v2, v0, Ly25;->g:Lv34;

    .line 5
    invoke-virtual {v2}, Lv34;->D()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v2, p6

    iget-wide v2, v2, Lls4;->e:J

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p4

    :goto_0
    iget-object v4, v0, Ly25;->h:Lb35;

    iget-object v4, v4, Lly4;->a:Lrx4;

    .line 6
    invoke-virtual {v4}, Lrx4;->a()Lqw4;

    move-result-object v4

    .line 7
    invoke-virtual {v4}, Lqw4;->v()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 8
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    const-string v6, "null"

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v4, :cond_7

    iget-object v4, v0, Ly25;->h:Lb35;

    iget-object v4, v4, Lly4;->a:Lrx4;

    .line 9
    invoke-virtual {v4}, Lrx4;->a()Lqw4;

    move-result-object v4

    .line 10
    iget-object v4, v4, Lqw4;->n:Low4;

    .line 11
    iget v10, v0, Lz25;->b:I

    .line 12
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v0, Ly25;->g:Lv34;

    .line 13
    invoke-virtual {v11}, Lv34;->s()Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, v0, Ly25;->g:Lv34;

    invoke-virtual {v11}, Lv34;->t()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_1

    :cond_1
    move-object v11, v7

    :goto_1
    iget-object v12, v0, Ly25;->h:Lb35;

    iget-object v12, v12, Lly4;->a:Lrx4;

    .line 14
    invoke-virtual {v12}, Lrx4;->u()Llw4;

    move-result-object v12

    iget-object v13, v0, Ly25;->g:Lv34;

    .line 15
    invoke-virtual {v13}, Lv34;->u()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Llw4;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "Evaluating filter. audience, filter, event"

    .line 16
    invoke-virtual {v4, v13, v10, v11, v12}, Low4;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, v0, Ly25;->h:Lb35;

    iget-object v4, v4, Lly4;->a:Lrx4;

    .line 17
    invoke-virtual {v4}, Lrx4;->a()Lqw4;

    move-result-object v4

    .line 18
    iget-object v4, v4, Lqw4;->n:Low4;

    .line 19
    iget-object v10, v0, Ly25;->h:Lb35;

    iget-object v10, v10, Lb25;->b:Lj25;

    .line 20
    invoke-virtual {v10}, Lj25;->Q()Ll25;

    move-result-object v10

    iget-object v11, v0, Ly25;->g:Lv34;

    .line 21
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v11, :cond_2

    move-object v5, v6

    goto/16 :goto_3

    :cond_2
    const-string v12, "\nevent_filter {\n"

    invoke-static {v12}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 22
    invoke-virtual {v11}, Lv34;->s()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v11}, Lv34;->t()I

    move-result v13

    .line 23
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "filter_id"

    invoke-static {v12, v9, v14, v13}, Ll25;->r(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_3
    iget-object v13, v10, Lly4;->a:Lrx4;

    .line 24
    invoke-virtual {v13}, Lrx4;->u()Llw4;

    move-result-object v13

    invoke-virtual {v11}, Lv34;->u()Ljava/lang/String;

    move-result-object v14

    .line 25
    invoke-virtual {v13, v14}, Llw4;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "event_name"

    .line 26
    invoke-static {v12, v9, v14, v13}, Ll25;->r(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v11}, Lv34;->A()Z

    move-result v13

    invoke-virtual {v11}, Lv34;->B()Z

    move-result v14

    invoke-virtual {v11}, Lv34;->D()Z

    move-result v15

    .line 27
    invoke-static {v13, v14, v15}, Ll25;->p(ZZZ)Ljava/lang/String;

    move-result-object v13

    .line 28
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_4

    const-string v14, "filter_type"

    .line 29
    invoke-static {v12, v9, v14, v13}, Ll25;->r(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {v11}, Lv34;->y()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 30
    invoke-virtual {v11}, Lv34;->z()Lc44;

    move-result-object v13

    const-string v14, "event_count_filter"

    invoke-static {v12, v8, v14, v13}, Ll25;->s(Ljava/lang/StringBuilder;ILjava/lang/String;Lc44;)V

    .line 31
    :cond_5
    invoke-virtual {v11}, Lv34;->w()I

    move-result v13

    if-lez v13, :cond_6

    const-string v13, "  filters {\n"

    .line 32
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lv34;->v()Ljava/util/List;

    move-result-object v11

    .line 33
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lx34;

    .line 34
    invoke-virtual {v10, v12, v5, v13}, Ll25;->l(Ljava/lang/StringBuilder;ILx34;)V

    goto :goto_2

    .line 35
    :cond_6
    invoke-static {v12, v8}, Ll25;->n(Ljava/lang/StringBuilder;I)V

    const-string v5, "}\n}\n"

    .line 36
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    const-string v10, "Filter definition"

    .line 38
    invoke-virtual {v4, v10, v5}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    iget-object v4, v0, Ly25;->g:Lv34;

    .line 39
    invoke-virtual {v4}, Lv34;->s()Z

    move-result v4

    if-eqz v4, :cond_30

    iget-object v4, v0, Ly25;->g:Lv34;

    invoke-virtual {v4}, Lv34;->t()I

    move-result v4

    const/16 v5, 0x100

    if-le v4, v5, :cond_8

    goto/16 :goto_11

    .line 40
    :cond_8
    iget-object v4, v0, Ly25;->g:Lv34;

    .line 41
    invoke-virtual {v4}, Lv34;->A()Z

    move-result v4

    iget-object v5, v0, Ly25;->g:Lv34;

    .line 42
    invoke-virtual {v5}, Lv34;->B()Z

    move-result v5

    iget-object v10, v0, Ly25;->g:Lv34;

    .line 43
    invoke-virtual {v10}, Lv34;->D()Z

    move-result v10

    if-nez v4, :cond_a

    if-nez v5, :cond_a

    if-eqz v10, :cond_9

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v4, 0x1

    :goto_5
    if-eqz p7, :cond_c

    if-nez v4, :cond_c

    iget-object v1, v0, Ly25;->h:Lb35;

    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 44
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 45
    iget-object v1, v1, Lqw4;->n:Low4;

    .line 46
    iget v2, v0, Lz25;->b:I

    .line 47
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Ly25;->g:Lv34;

    .line 48
    invoke-virtual {v3}, Lv34;->s()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, v0, Ly25;->g:Lv34;

    invoke-virtual {v3}, Lv34;->t()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :cond_b
    const-string v3, "Event filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID"

    .line 49
    invoke-virtual {v1, v3, v2, v7}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v8

    :cond_c
    iget-object v5, v0, Ly25;->g:Lv34;

    invoke-virtual/range {p3 .. p3}, Lz44;->v()Ljava/lang/String;

    move-result-object v10

    .line 50
    invoke-virtual {v5}, Lv34;->y()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 51
    invoke-virtual {v5}, Lv34;->z()Lc44;

    move-result-object v11

    invoke-static {v2, v3, v11}, Lz25;->f(JLc44;)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_d

    goto/16 :goto_d

    .line 52
    :cond_d
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_e

    .line 53
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_d

    :cond_e
    new-instance v2, Ljava/util/HashSet;

    .line 54
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 55
    invoke-virtual {v5}, Lv34;->v()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lx34;

    .line 56
    invoke-virtual {v11}, Lx34;->z()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_f

    iget-object v2, v0, Ly25;->h:Lb35;

    iget-object v2, v2, Lly4;->a:Lrx4;

    .line 57
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 58
    iget-object v2, v2, Lqw4;->i:Low4;

    .line 59
    iget-object v3, v0, Ly25;->h:Lb35;

    iget-object v3, v3, Lly4;->a:Lrx4;

    .line 60
    invoke-virtual {v3}, Lrx4;->u()Llw4;

    move-result-object v3

    .line 61
    invoke-virtual {v3, v10}, Llw4;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "null or empty param name in filter. event"

    .line 62
    invoke-virtual {v2, v5, v3}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 63
    :cond_f
    invoke-virtual {v11}, Lx34;->z()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 64
    :cond_10
    new-instance v3, Lf4;

    invoke-direct {v3}, Lf4;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lz44;->s()Ljava/util/List;

    move-result-object v11

    .line 65
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_11
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_17

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ld54;

    .line 66
    invoke-virtual {v12}, Ld54;->t()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 67
    invoke-virtual {v12}, Ld54;->w()Z

    move-result v13

    if-eqz v13, :cond_13

    .line 68
    invoke-virtual {v12}, Ld54;->t()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Ld54;->w()Z

    move-result v14

    if-eqz v14, :cond_12

    invoke-virtual {v12}, Ld54;->x()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    goto :goto_8

    :cond_12
    move-object v12, v7

    :goto_8
    invoke-virtual {v3, v13, v12}, Lm4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 69
    :cond_13
    invoke-virtual {v12}, Ld54;->A()Z

    move-result v13

    if-eqz v13, :cond_15

    .line 70
    invoke-virtual {v12}, Ld54;->t()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Ld54;->A()Z

    move-result v14

    if-eqz v14, :cond_14

    invoke-virtual {v12}, Ld54;->B()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    goto :goto_9

    :cond_14
    move-object v12, v7

    .line 71
    :goto_9
    invoke-virtual {v3, v13, v12}, Lm4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 72
    :cond_15
    invoke-virtual {v12}, Ld54;->u()Z

    move-result v13

    if-eqz v13, :cond_16

    .line 73
    invoke-virtual {v12}, Ld54;->t()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Ld54;->v()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v13, v12}, Lm4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_16
    iget-object v2, v0, Ly25;->h:Lb35;

    iget-object v2, v2, Lly4;->a:Lrx4;

    .line 74
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 75
    iget-object v2, v2, Lqw4;->i:Low4;

    .line 76
    iget-object v3, v0, Ly25;->h:Lb35;

    iget-object v3, v3, Lly4;->a:Lrx4;

    .line 77
    invoke-virtual {v3}, Lrx4;->u()Llw4;

    move-result-object v3

    .line 78
    invoke-virtual {v3, v10}, Llw4;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Ly25;->h:Lb35;

    iget-object v5, v5, Lly4;->a:Lrx4;

    .line 79
    invoke-virtual {v5}, Lrx4;->u()Llw4;

    move-result-object v5

    .line 80
    invoke-virtual {v12}, Ld54;->t()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Llw4;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v10, "Unknown value for param. event, param"

    .line 81
    invoke-virtual {v2, v10, v3, v5}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 82
    :cond_17
    invoke-virtual {v5}, Lv34;->v()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lx34;

    .line 83
    invoke-virtual {v5}, Lx34;->w()Z

    move-result v11

    if-eqz v11, :cond_19

    invoke-virtual {v5}, Lx34;->x()Z

    move-result v11

    if-eqz v11, :cond_19

    const/4 v11, 0x1

    goto :goto_a

    :cond_19
    const/4 v11, 0x0

    .line 84
    :goto_a
    invoke-virtual {v5}, Lx34;->z()Ljava/lang/String;

    move-result-object v12

    .line 85
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1a

    iget-object v2, v0, Ly25;->h:Lb35;

    iget-object v2, v2, Lly4;->a:Lrx4;

    .line 86
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 87
    iget-object v2, v2, Lqw4;->i:Low4;

    .line 88
    iget-object v3, v0, Ly25;->h:Lb35;

    iget-object v3, v3, Lly4;->a:Lrx4;

    .line 89
    invoke-virtual {v3}, Lrx4;->u()Llw4;

    move-result-object v3

    .line 90
    invoke-virtual {v3, v10}, Llw4;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Event has empty param name. event"

    .line 91
    invoke-virtual {v2, v5, v3}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 92
    :cond_1a
    invoke-virtual {v3, v12, v7}, Lm4;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 93
    instance-of v14, v13, Ljava/lang/Long;

    if-eqz v14, :cond_1d

    .line 94
    invoke-virtual {v5}, Lx34;->u()Z

    move-result v14

    if-nez v14, :cond_1b

    iget-object v2, v0, Ly25;->h:Lb35;

    iget-object v2, v2, Lly4;->a:Lrx4;

    .line 95
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 96
    iget-object v2, v2, Lqw4;->i:Low4;

    .line 97
    iget-object v3, v0, Ly25;->h:Lb35;

    iget-object v3, v3, Lly4;->a:Lrx4;

    .line 98
    invoke-virtual {v3}, Lrx4;->u()Llw4;

    move-result-object v3

    .line 99
    invoke-virtual {v3, v10}, Llw4;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Ly25;->h:Lb35;

    iget-object v5, v5, Lly4;->a:Lrx4;

    .line 100
    invoke-virtual {v5}, Lrx4;->u()Llw4;

    move-result-object v5

    .line 101
    invoke-virtual {v5, v12}, Llw4;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v10, "No number filter for long param. event, param"

    .line 102
    invoke-virtual {v2, v10, v3, v5}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 103
    :cond_1b
    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v5}, Lx34;->v()Lc44;

    move-result-object v5

    invoke-static {v12, v13, v5}, Lz25;->f(JLc44;)Ljava/lang/Boolean;

    move-result-object v5

    if-nez v5, :cond_1c

    goto/16 :goto_d

    .line 104
    :cond_1c
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-ne v5, v11, :cond_18

    .line 105
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_d

    .line 106
    :cond_1d
    instance-of v14, v13, Ljava/lang/Double;

    if-eqz v14, :cond_20

    .line 107
    invoke-virtual {v5}, Lx34;->u()Z

    move-result v14

    if-nez v14, :cond_1e

    iget-object v2, v0, Ly25;->h:Lb35;

    iget-object v2, v2, Lly4;->a:Lrx4;

    .line 108
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 109
    iget-object v2, v2, Lqw4;->i:Low4;

    .line 110
    iget-object v3, v0, Ly25;->h:Lb35;

    iget-object v3, v3, Lly4;->a:Lrx4;

    .line 111
    invoke-virtual {v3}, Lrx4;->u()Llw4;

    move-result-object v3

    .line 112
    invoke-virtual {v3, v10}, Llw4;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Ly25;->h:Lb35;

    iget-object v5, v5, Lly4;->a:Lrx4;

    .line 113
    invoke-virtual {v5}, Lrx4;->u()Llw4;

    move-result-object v5

    .line 114
    invoke-virtual {v5, v12}, Llw4;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v10, "No number filter for double param. event, param"

    .line 115
    invoke-virtual {v2, v10, v3, v5}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 116
    :cond_1e
    check-cast v13, Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-virtual {v5}, Lx34;->v()Lc44;

    move-result-object v5

    .line 117
    :try_start_0
    new-instance v14, Ljava/math/BigDecimal;

    .line 118
    invoke-direct {v14, v12, v13}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-static {v12, v13}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v12

    invoke-static {v14, v5, v12, v13}, Lz25;->h(Ljava/math/BigDecimal;Lc44;D)Ljava/lang/Boolean;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    move-object v5, v7

    :goto_b
    if-nez v5, :cond_1f

    goto/16 :goto_d

    .line 119
    :cond_1f
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-ne v5, v11, :cond_18

    .line 120
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_d

    .line 121
    :cond_20
    instance-of v14, v13, Ljava/lang/String;

    if-eqz v14, :cond_25

    .line 122
    invoke-virtual {v5}, Lx34;->s()Z

    move-result v14

    if-eqz v14, :cond_21

    .line 123
    check-cast v13, Ljava/lang/String;

    invoke-virtual {v5}, Lx34;->t()Li44;

    move-result-object v5

    iget-object v12, v0, Ly25;->h:Lb35;

    iget-object v12, v12, Lly4;->a:Lrx4;

    .line 124
    invoke-virtual {v12}, Lrx4;->a()Lqw4;

    move-result-object v12

    .line 125
    invoke-static {v13, v5, v12}, Lz25;->e(Ljava/lang/String;Li44;Lqw4;)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_c

    .line 126
    :cond_21
    invoke-virtual {v5}, Lx34;->u()Z

    move-result v14

    if-eqz v14, :cond_24

    .line 127
    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ll25;->z(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_23

    .line 128
    invoke-virtual {v5}, Lx34;->v()Lc44;

    move-result-object v5

    invoke-static {v13, v5}, Lz25;->g(Ljava/lang/String;Lc44;)Ljava/lang/Boolean;

    move-result-object v5

    :goto_c
    if-nez v5, :cond_22

    goto/16 :goto_d

    .line 129
    :cond_22
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-ne v5, v11, :cond_18

    .line 130
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_d

    .line 131
    :cond_23
    iget-object v2, v0, Ly25;->h:Lb35;

    iget-object v2, v2, Lly4;->a:Lrx4;

    .line 132
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 133
    iget-object v2, v2, Lqw4;->i:Low4;

    .line 134
    iget-object v3, v0, Ly25;->h:Lb35;

    iget-object v3, v3, Lly4;->a:Lrx4;

    .line 135
    invoke-virtual {v3}, Lrx4;->u()Llw4;

    move-result-object v3

    .line 136
    invoke-virtual {v3, v10}, Llw4;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Ly25;->h:Lb35;

    iget-object v5, v5, Lly4;->a:Lrx4;

    .line 137
    invoke-virtual {v5}, Lrx4;->u()Llw4;

    move-result-object v5

    .line 138
    invoke-virtual {v5, v12}, Llw4;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v10, "Invalid param value for number filter. event, param"

    .line 139
    invoke-virtual {v2, v10, v3, v5}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_d

    :cond_24
    iget-object v2, v0, Ly25;->h:Lb35;

    iget-object v2, v2, Lly4;->a:Lrx4;

    .line 140
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 141
    iget-object v2, v2, Lqw4;->i:Low4;

    .line 142
    iget-object v3, v0, Ly25;->h:Lb35;

    iget-object v3, v3, Lly4;->a:Lrx4;

    .line 143
    invoke-virtual {v3}, Lrx4;->u()Llw4;

    move-result-object v3

    .line 144
    invoke-virtual {v3, v10}, Llw4;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Ly25;->h:Lb35;

    iget-object v5, v5, Lly4;->a:Lrx4;

    .line 145
    invoke-virtual {v5}, Lrx4;->u()Llw4;

    move-result-object v5

    .line 146
    invoke-virtual {v5, v12}, Llw4;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v10, "No filter for String param. event, param"

    .line 147
    invoke-virtual {v2, v10, v3, v5}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d

    :cond_25
    if-nez v13, :cond_26

    iget-object v2, v0, Ly25;->h:Lb35;

    iget-object v2, v2, Lly4;->a:Lrx4;

    .line 148
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 149
    iget-object v2, v2, Lqw4;->n:Low4;

    .line 150
    iget-object v3, v0, Ly25;->h:Lb35;

    iget-object v3, v3, Lly4;->a:Lrx4;

    .line 151
    invoke-virtual {v3}, Lrx4;->u()Llw4;

    move-result-object v3

    .line 152
    invoke-virtual {v3, v10}, Llw4;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Ly25;->h:Lb35;

    iget-object v5, v5, Lly4;->a:Lrx4;

    .line 153
    invoke-virtual {v5}, Lrx4;->u()Llw4;

    move-result-object v5

    .line 154
    invoke-virtual {v5, v12}, Llw4;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "Missing param for filter. event, param"

    .line 155
    invoke-virtual {v2, v7, v3, v5}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_d

    :cond_26
    iget-object v2, v0, Ly25;->h:Lb35;

    iget-object v2, v2, Lly4;->a:Lrx4;

    .line 157
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 158
    iget-object v2, v2, Lqw4;->i:Low4;

    .line 159
    iget-object v3, v0, Ly25;->h:Lb35;

    iget-object v3, v3, Lly4;->a:Lrx4;

    .line 160
    invoke-virtual {v3}, Lrx4;->u()Llw4;

    move-result-object v3

    .line 161
    invoke-virtual {v3, v10}, Llw4;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Ly25;->h:Lb35;

    iget-object v5, v5, Lly4;->a:Lrx4;

    .line 162
    invoke-virtual {v5}, Lrx4;->u()Llw4;

    move-result-object v5

    .line 163
    invoke-virtual {v5, v12}, Llw4;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v10, "Unknown param type. event, param"

    .line 164
    invoke-virtual {v2, v10, v3, v5}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d

    .line 165
    :cond_27
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 166
    :goto_d
    iget-object v2, v0, Ly25;->h:Lb35;

    iget-object v2, v2, Lly4;->a:Lrx4;

    .line 167
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 168
    iget-object v2, v2, Lqw4;->n:Low4;

    if-nez v7, :cond_28

    goto :goto_e

    :cond_28
    move-object v6, v7

    :goto_e
    const-string v3, "Event filter result"

    .line 169
    invoke-virtual {v2, v3, v6}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v7, :cond_29

    return v9

    .line 170
    :cond_29
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, v0, Lz25;->c:Ljava/lang/Boolean;

    .line 171
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2a

    return v8

    :cond_2a
    iput-object v2, v0, Lz25;->d:Ljava/lang/Boolean;

    if-eqz v4, :cond_2f

    invoke-virtual/range {p3 .. p3}, Lz44;->w()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual/range {p3 .. p3}, Lz44;->x()J

    move-result-wide v2

    .line 172
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, v0, Ly25;->g:Lv34;

    .line 173
    invoke-virtual {v3}, Lv34;->B()Z

    move-result v3

    if-eqz v3, :cond_2d

    if-eqz v1, :cond_2c

    iget-object v1, v0, Ly25;->g:Lv34;

    .line 174
    invoke-virtual {v1}, Lv34;->y()Z

    move-result v1

    if-nez v1, :cond_2b

    goto :goto_f

    :cond_2b
    move-object/from16 v2, p1

    :cond_2c
    :goto_f
    iput-object v2, v0, Lz25;->f:Ljava/lang/Long;

    goto :goto_10

    :cond_2d
    if-eqz v1, :cond_2e

    iget-object v1, v0, Ly25;->g:Lv34;

    .line 175
    invoke-virtual {v1}, Lv34;->y()Z

    move-result v1

    if-eqz v1, :cond_2e

    move-object/from16 v2, p2

    :cond_2e
    iput-object v2, v0, Lz25;->e:Ljava/lang/Long;

    :cond_2f
    :goto_10
    return v8

    .line 176
    :cond_30
    :goto_11
    iget-object v1, v0, Ly25;->h:Lb35;

    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 177
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 178
    iget-object v1, v1, Lqw4;->i:Low4;

    .line 179
    iget-object v2, v0, Lz25;->a:Ljava/lang/String;

    invoke-static {v2}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v0, Ly25;->g:Lv34;

    .line 180
    invoke-virtual {v3}, Lv34;->s()Z

    move-result v3

    if-eqz v3, :cond_31

    iget-object v3, v0, Ly25;->g:Lv34;

    invoke-virtual {v3}, Lv34;->t()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :cond_31
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Invalid event filter ID. appId, id"

    .line 181
    invoke-virtual {v1, v4, v2, v3}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v9
.end method
