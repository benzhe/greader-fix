.class public final Lkx4;
.super Lb25;
.source "SourceFile"

# interfaces
.implements Lbs4;


# instance fields
.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ln44;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj25;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb25;-><init>(Lj25;)V

    .line 2
    new-instance p1, Lf4;

    invoke-direct {p1}, Lf4;-><init>()V

    iput-object p1, p0, Lkx4;->d:Ljava/util/Map;

    new-instance p1, Lf4;

    .line 3
    invoke-direct {p1}, Lf4;-><init>()V

    iput-object p1, p0, Lkx4;->e:Ljava/util/Map;

    new-instance p1, Lf4;

    .line 4
    invoke-direct {p1}, Lf4;-><init>()V

    iput-object p1, p0, Lkx4;->f:Ljava/util/Map;

    new-instance p1, Lf4;

    .line 5
    invoke-direct {p1}, Lf4;-><init>()V

    iput-object p1, p0, Lkx4;->g:Ljava/util/Map;

    new-instance p1, Lf4;

    .line 6
    invoke-direct {p1}, Lf4;-><init>()V

    iput-object p1, p0, Lkx4;->i:Ljava/util/Map;

    new-instance p1, Lf4;

    .line 7
    invoke-direct {p1}, Lf4;-><init>()V

    iput-object p1, p0, Lkx4;->h:Ljava/util/Map;

    return-void
.end method

.method public static final w(Ln44;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln44;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lf4;

    invoke-direct {v0}, Lf4;-><init>()V

    invoke-virtual {p0}, Ln44;->w()Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp44;

    .line 3
    invoke-virtual {v1}, Lp44;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lp44;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lm4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lly4;->d()V

    .line 2
    invoke-virtual {p0, p1}, Lkx4;->t(Ljava/lang/String;)V

    iget-object v0, p0, Lkx4;->d:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final i(Ljava/lang/String;)Ln44;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb25;->f()V

    .line 2
    invoke-virtual {p0}, Lly4;->d()V

    .line 3
    invoke-static {p1}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    invoke-virtual {p0, p1}, Lkx4;->t(Ljava/lang/String;)V

    iget-object v0, p0, Lkx4;->g:Ljava/util/Map;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln44;

    return-object p1
.end method

.method public final k(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lly4;->d()V

    .line 2
    invoke-virtual {p0, p1}, Lkx4;->i(Ljava/lang/String;)Ln44;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Ln44;->A()Z

    move-result p1

    return p1
.end method

.method public final l(Ljava/lang/String;[BLjava/lang/String;)Z
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Lb25;->f()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lly4;->d()V

    .line 3
    invoke-static/range {p1 .. p1}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    invoke-virtual/range {p0 .. p2}, Lkx4;->v(Ljava/lang/String;[B)Ln44;

    move-result-object v0

    invoke-virtual {v0}, Lc94;->n()Lz84;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lm44;

    .line 5
    invoke-virtual {v1, v2, v3}, Lkx4;->u(Ljava/lang/String;Lm44;)V

    iget-object v0, v1, Lkx4;->g:Ljava/util/Map;

    .line 6
    invoke-virtual {v3}, Lz84;->g()Lc94;

    move-result-object v4

    check-cast v4, Ln44;

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lkx4;->i:Ljava/util/Map;

    move-object/from16 v4, p3

    .line 7
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lkx4;->d:Ljava/util/Map;

    .line 8
    invoke-virtual {v3}, Lz84;->g()Lc94;

    move-result-object v4

    check-cast v4, Ln44;

    invoke-static {v4}, Lkx4;->w(Ln44;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lb25;->b:Lj25;

    .line 9
    invoke-virtual {v0}, Lj25;->L()Lgs4;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    .line 10
    iget-object v0, v3, Lz84;->f:Lc94;

    .line 11
    check-cast v0, Ln44;

    .line 12
    invoke-virtual {v0}, Ln44;->z()Ljava/util/List;

    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 14
    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "app_id=? and audience_id=?"

    const-string v0, "app_id=?"

    const-string v7, "event_filters"

    const-string v8, "property_filters"

    const-string v9, "null reference"

    const/4 v11, 0x0

    .line 16
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_e

    .line 17
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lt34;

    invoke-virtual {v12}, Lc94;->n()Lz84;

    move-result-object v12

    check-cast v12, Ls34;

    .line 18
    iget-object v14, v12, Lz84;->f:Lc94;

    .line 19
    check-cast v14, Lt34;

    invoke-virtual {v14}, Lt34;->y()I

    move-result v14

    if-eqz v14, :cond_9

    move-object v14, v12

    const/4 v15, 0x0

    .line 20
    :goto_1
    iget-object v13, v14, Lz84;->f:Lc94;

    .line 21
    check-cast v13, Lt34;

    invoke-virtual {v13}, Lt34;->y()I

    move-result v13

    if-ge v15, v13, :cond_8

    .line 22
    iget-object v13, v14, Lz84;->f:Lc94;

    .line 23
    check-cast v13, Lt34;

    invoke-virtual {v13, v15}, Lt34;->z(I)Lv34;

    move-result-object v13

    .line 24
    invoke-virtual {v13}, Lc94;->n()Lz84;

    move-result-object v13

    check-cast v13, Lu34;

    .line 25
    invoke-virtual {v13}, Lz84;->k()Lz84;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Lu34;

    .line 26
    iget-object v1, v13, Lz84;->f:Lc94;

    .line 27
    check-cast v1, Lv34;

    invoke-virtual {v1}, Lv34;->u()Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-static {v1}, Loy4;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object/from16 v16, v3

    .line 29
    iget-boolean v3, v10, Lz84;->g:Z

    if-eqz v3, :cond_0

    .line 30
    invoke-virtual {v10}, Lz84;->j()V

    const/4 v3, 0x0

    iput-boolean v3, v10, Lz84;->g:Z

    :cond_0
    iget-object v3, v10, Lz84;->f:Lc94;

    .line 31
    check-cast v3, Lv34;

    invoke-static {v3, v1}, Lv34;->G(Lv34;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    move-object/from16 v16, v3

    const/4 v1, 0x0

    :goto_2
    move-object/from16 v17, v6

    const/4 v3, 0x0

    .line 32
    :goto_3
    iget-object v6, v13, Lz84;->f:Lc94;

    .line 33
    check-cast v6, Lv34;

    invoke-virtual {v6}, Lv34;->w()I

    move-result v6

    if-ge v3, v6, :cond_5

    .line 34
    iget-object v6, v13, Lz84;->f:Lc94;

    .line 35
    check-cast v6, Lv34;

    invoke-virtual {v6, v3}, Lv34;->x(I)Lx34;

    move-result-object v6

    move-object/from16 v18, v13

    .line 36
    invoke-virtual {v6}, Lx34;->z()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v19, v9

    sget-object v9, Lpy4;->a:[Ljava/lang/String;

    move-object/from16 v20, v7

    sget-object v7, Lpy4;->b:[Ljava/lang/String;

    .line 37
    invoke-static {v13, v9, v7}, Lzz4;->c(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 38
    invoke-virtual {v6}, Lc94;->n()Lz84;

    move-result-object v1

    check-cast v1, Lw34;

    .line 39
    iget-boolean v6, v1, Lz84;->g:Z

    if-eqz v6, :cond_2

    .line 40
    invoke-virtual {v1}, Lz84;->j()V

    const/4 v6, 0x0

    iput-boolean v6, v1, Lz84;->g:Z

    goto :goto_4

    :cond_2
    const/4 v6, 0x0

    :goto_4
    iget-object v9, v1, Lz84;->f:Lc94;

    .line 41
    check-cast v9, Lx34;

    invoke-static {v9, v7}, Lx34;->C(Lx34;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1}, Lz84;->g()Lc94;

    move-result-object v1

    check-cast v1, Lx34;

    .line 43
    iget-boolean v7, v10, Lz84;->g:Z

    if-eqz v7, :cond_3

    .line 44
    invoke-virtual {v10}, Lz84;->j()V

    iput-boolean v6, v10, Lz84;->g:Z

    :cond_3
    iget-object v6, v10, Lz84;->f:Lc94;

    .line 45
    check-cast v6, Lv34;

    invoke-static {v6, v3, v1}, Lv34;->H(Lv34;ILx34;)V

    const/4 v1, 0x1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v13, v18

    move-object/from16 v9, v19

    move-object/from16 v7, v20

    goto :goto_3

    :cond_5
    move-object/from16 v20, v7

    move-object/from16 v19, v9

    if-eqz v1, :cond_7

    .line 46
    iget-boolean v1, v14, Lz84;->g:Z

    if-eqz v1, :cond_6

    .line 47
    invoke-virtual {v14}, Lz84;->j()V

    const/4 v1, 0x0

    iput-boolean v1, v14, Lz84;->g:Z

    :cond_6
    iget-object v1, v14, Lz84;->f:Lc94;

    .line 48
    check-cast v1, Lt34;

    .line 49
    invoke-virtual {v10}, Lz84;->g()Lc94;

    move-result-object v3

    check-cast v3, Lv34;

    .line 50
    invoke-static {v1, v15, v3}, Lt34;->C(Lt34;ILv34;)V

    .line 51
    invoke-virtual {v12}, Lz84;->g()Lc94;

    move-result-object v1

    check-cast v1, Lt34;

    invoke-virtual {v5, v11, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v14, v12

    :cond_7
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, v16

    move-object/from16 v6, v17

    move-object/from16 v9, v19

    move-object/from16 v7, v20

    goto/16 :goto_1

    :cond_8
    move-object/from16 v16, v3

    move-object/from16 v17, v6

    move-object/from16 v20, v7

    move-object/from16 v19, v9

    goto :goto_5

    :cond_9
    move-object/from16 v16, v3

    move-object/from16 v17, v6

    move-object/from16 v20, v7

    move-object/from16 v19, v9

    move-object v14, v12

    .line 52
    :goto_5
    iget-object v1, v14, Lz84;->f:Lc94;

    .line 53
    check-cast v1, Lt34;

    invoke-virtual {v1}, Lt34;->v()I

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    .line 54
    :goto_6
    iget-object v3, v14, Lz84;->f:Lc94;

    .line 55
    check-cast v3, Lt34;

    invoke-virtual {v3}, Lt34;->v()I

    move-result v3

    if-ge v1, v3, :cond_d

    .line 56
    iget-object v3, v14, Lz84;->f:Lc94;

    .line 57
    check-cast v3, Lt34;

    invoke-virtual {v3, v1}, Lt34;->w(I)Le44;

    move-result-object v3

    .line 58
    invoke-virtual {v3}, Le44;->u()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lqy4;->a:[Ljava/lang/String;

    sget-object v9, Lqy4;->b:[Ljava/lang/String;

    .line 59
    invoke-static {v6, v7, v9}, Lzz4;->c(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 60
    invoke-virtual {v3}, Lc94;->n()Lz84;

    move-result-object v3

    check-cast v3, Ld44;

    .line 61
    iget-boolean v7, v3, Lz84;->g:Z

    if-eqz v7, :cond_a

    .line 62
    invoke-virtual {v3}, Lz84;->j()V

    const/4 v7, 0x0

    iput-boolean v7, v3, Lz84;->g:Z

    goto :goto_7

    :cond_a
    const/4 v7, 0x0

    :goto_7
    iget-object v9, v3, Lz84;->f:Lc94;

    .line 63
    check-cast v9, Le44;

    invoke-static {v9, v6}, Le44;->C(Le44;Ljava/lang/String;)V

    .line 64
    iget-boolean v6, v14, Lz84;->g:Z

    if-eqz v6, :cond_b

    .line 65
    invoke-virtual {v14}, Lz84;->j()V

    iput-boolean v7, v14, Lz84;->g:Z

    :cond_b
    iget-object v6, v14, Lz84;->f:Lc94;

    .line 66
    check-cast v6, Lt34;

    .line 67
    invoke-virtual {v3}, Lz84;->g()Lc94;

    move-result-object v3

    check-cast v3, Le44;

    .line 68
    invoke-static {v6, v1, v3}, Lt34;->B(Lt34;ILe44;)V

    .line 69
    invoke-virtual {v12}, Lz84;->g()Lc94;

    move-result-object v3

    check-cast v3, Lt34;

    invoke-virtual {v5, v11, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v14, v12

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_d
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, v16

    move-object/from16 v6, v17

    move-object/from16 v9, v19

    move-object/from16 v7, v20

    goto/16 :goto_0

    :cond_e
    move-object/from16 v16, v3

    move-object/from16 v17, v6

    move-object/from16 v20, v7

    move-object/from16 v19, v9

    .line 70
    invoke-virtual {v4}, Lb25;->f()V

    .line 71
    invoke-virtual {v4}, Lly4;->d()V

    .line 72
    invoke-static/range {p1 .. p1}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    invoke-virtual {v4}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 75
    :try_start_0
    invoke-virtual {v4}, Lb25;->f()V

    .line 76
    invoke-virtual {v4}, Lly4;->d()V

    .line 77
    invoke-static/range {p1 .. p1}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    invoke-virtual {v4}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v2, v7, v9

    .line 79
    invoke-virtual {v3, v8, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    new-array v7, v6, [Ljava/lang/String;

    aput-object v2, v7, v9

    move-object/from16 v6, v20

    .line 80
    invoke-virtual {v3, v6, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 81
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_20

    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt34;

    .line 82
    invoke-virtual {v4}, Lb25;->f()V

    .line 83
    invoke-virtual {v4}, Lly4;->d()V

    .line 84
    invoke-static/range {p1 .. p1}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v10, v19

    .line 85
    invoke-static {v0, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    invoke-virtual {v0}, Lt34;->s()Z

    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v11, :cond_f

    :try_start_2
    iget-object v0, v4, Lly4;->a:Lrx4;

    .line 87
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 88
    iget-object v0, v0, Lqw4;->i:Low4;

    const-string v7, "Audience with no ID. appId"

    .line 89
    invoke-static/range {p1 .. p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v0

    move-object/from16 v3, p0

    move-object/from16 v23, v1

    goto/16 :goto_1a

    .line 90
    :cond_f
    :try_start_3
    invoke-virtual {v0}, Lt34;->t()I

    move-result v11

    .line 91
    invoke-virtual {v0}, Lt34;->x()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_10
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v13, :cond_11

    :try_start_4
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lv34;

    .line 92
    invoke-virtual {v13}, Lv34;->s()Z

    move-result v13

    if-nez v13, :cond_10

    iget-object v0, v4, Lly4;->a:Lrx4;

    .line 93
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 94
    iget-object v0, v0, Lqw4;->i:Low4;

    const-string v7, "Event filter with no ID. Audience definition ignored. appId, audienceId"

    .line 95
    invoke-static/range {p1 .. p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 96
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 97
    invoke-virtual {v0, v7, v9, v11}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_9

    .line 98
    :cond_11
    :try_start_5
    invoke-virtual {v0}, Lt34;->u()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_12
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v13, :cond_13

    :try_start_6
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Le44;

    .line 99
    invoke-virtual {v13}, Le44;->s()Z

    move-result v13

    if-nez v13, :cond_12

    iget-object v0, v4, Lly4;->a:Lrx4;

    .line 100
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 101
    iget-object v0, v0, Lqw4;->i:Low4;

    const-string v7, "Property filter with no ID. Audience definition ignored. appId, audienceId"

    .line 102
    invoke-static/range {p1 .. p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 103
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 104
    invoke-virtual {v0, v7, v9, v11}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_9
    move-object/from16 v19, v10

    goto/16 :goto_8

    .line 105
    :cond_13
    :try_start_7
    invoke-virtual {v0}, Lt34;->x()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const-string v14, "data"

    const-string v15, "session_scoped"

    const-string v7, "filter_id"

    const-string v9, "audience_id"

    move-object/from16 v20, v3

    const-string v3, "app_id"

    const-wide/16 v21, -0x1

    move-object/from16 v23, v1

    if-eqz v13, :cond_19

    :try_start_8
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lv34;

    .line 106
    invoke-virtual {v4}, Lb25;->f()V

    .line 107
    invoke-virtual {v4}, Lly4;->d()V

    .line 108
    invoke-static/range {p1 .. p1}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    invoke-static {v13, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    invoke-virtual {v13}, Lv34;->u()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_15

    iget-object v0, v4, Lly4;->a:Lrx4;

    .line 111
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 112
    iget-object v0, v0, Lqw4;->i:Low4;

    const-string v1, "Event filter had no event name. Audience definition ignored. appId, audienceId, filterId"

    .line 113
    invoke-static/range {p1 .. p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 114
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 115
    invoke-virtual {v13}, Lv34;->s()Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-virtual {v13}, Lv34;->t()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_b

    :cond_14
    const/4 v9, 0x0

    :goto_b
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 116
    invoke-virtual {v0, v1, v3, v7, v9}, Low4;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_12

    .line 117
    :cond_15
    invoke-virtual {v13}, Lt74;->a()[B

    move-result-object v1

    move-object/from16 v25, v12

    new-instance v12, Landroid/content/ContentValues;

    .line 118
    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 119
    invoke-virtual {v12, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    invoke-virtual {v13}, Lv34;->s()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {v13}, Lv34;->t()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_c

    :cond_16
    const/4 v3, 0x0

    :goto_c
    invoke-virtual {v12, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "event_name"

    .line 122
    invoke-virtual {v13}, Lv34;->u()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v13}, Lv34;->C()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {v13}, Lv34;->D()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_d

    :cond_17
    const/4 v3, 0x0

    .line 124
    :goto_d
    invoke-virtual {v12, v15, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 125
    invoke-virtual {v12, v14, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 126
    :try_start_9
    invoke-virtual {v4}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v3, 0x5

    const/4 v7, 0x0

    .line 127
    invoke-virtual {v1, v6, v7, v12, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v12

    cmp-long v1, v12, v21

    if-nez v1, :cond_18

    iget-object v1, v4, Lly4;->a:Lrx4;

    .line 128
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 129
    iget-object v1, v1, Lqw4;->f:Low4;

    const-string v3, "Failed to insert event filter (got -1). appId"

    .line 130
    invoke-static/range {p1 .. p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 131
    invoke-virtual {v1, v3, v7}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_18
    move-object/from16 v3, v20

    move-object/from16 v1, v23

    move-object/from16 v12, v25

    goto/16 :goto_a

    :catch_0
    move-exception v0

    .line 132
    :try_start_a
    iget-object v1, v4, Lly4;->a:Lrx4;

    .line 133
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 134
    iget-object v1, v1, Lqw4;->f:Low4;

    const-string v3, "Error storing event filter. appId"

    .line 135
    invoke-static/range {p1 .. p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 136
    invoke-virtual {v1, v3, v7, v0}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_12

    .line 137
    :cond_19
    invoke-virtual {v0}, Lt34;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le44;

    .line 138
    invoke-virtual {v4}, Lb25;->f()V

    .line 139
    invoke-virtual {v4}, Lly4;->d()V

    .line 140
    invoke-static/range {p1 .. p1}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    invoke-static {v1, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    invoke-virtual {v1}, Le44;->u()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1b

    iget-object v0, v4, Lly4;->a:Lrx4;

    .line 143
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 144
    iget-object v0, v0, Lqw4;->i:Low4;

    const-string v3, "Property filter had no property name. Audience definition ignored. appId, audienceId, filterId"

    .line 145
    invoke-static/range {p1 .. p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 146
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 147
    invoke-virtual {v1}, Le44;->s()Z

    move-result v12

    if-eqz v12, :cond_1a

    invoke-virtual {v1}, Le44;->t()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_f

    :cond_1a
    const/4 v1, 0x0

    :goto_f
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-virtual {v0, v3, v7, v9, v1}, Low4;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_12

    .line 149
    :cond_1b
    invoke-virtual {v1}, Lt74;->a()[B

    move-result-object v12

    new-instance v13, Landroid/content/ContentValues;

    .line 150
    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 151
    invoke-virtual {v13, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v25, v0

    .line 152
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 153
    invoke-virtual {v1}, Le44;->s()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {v1}, Le44;->t()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_10

    :cond_1c
    const/4 v0, 0x0

    :goto_10
    invoke-virtual {v13, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "property_name"

    move-object/from16 v26, v3

    .line 154
    invoke-virtual {v1}, Le44;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v1}, Le44;->y()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {v1}, Le44;->z()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_11

    :cond_1d
    const/4 v0, 0x0

    .line 156
    :goto_11
    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 157
    invoke-virtual {v13, v14, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 158
    :try_start_b
    invoke-virtual {v4}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x5

    .line 159
    invoke-virtual {v0, v8, v1, v13, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v12

    cmp-long v0, v12, v21

    if-nez v0, :cond_1e

    iget-object v0, v4, Lly4;->a:Lrx4;

    .line 160
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 161
    iget-object v0, v0, Lqw4;->f:Low4;

    const-string v1, "Failed to insert property filter (got -1). appId"

    .line 162
    invoke-static/range {p1 .. p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 163
    invoke-virtual {v0, v1, v3}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_12

    :cond_1e
    move-object/from16 v0, v25

    move-object/from16 v3, v26

    goto/16 :goto_e

    :catch_1
    move-exception v0

    .line 164
    :try_start_c
    iget-object v1, v4, Lly4;->a:Lrx4;

    .line 165
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 166
    iget-object v1, v1, Lqw4;->f:Low4;

    const-string v3, "Error storing property filter. appId"

    .line 167
    invoke-static/range {p1 .. p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 168
    invoke-virtual {v1, v3, v7, v0}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 169
    :goto_12
    invoke-virtual {v4}, Lb25;->f()V

    .line 170
    invoke-virtual {v4}, Lly4;->d()V

    .line 171
    invoke-static/range {p1 .. p1}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    invoke-virtual {v4}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v3, v7

    .line 173
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x1

    aput-object v9, v3, v12

    move-object/from16 v9, v17

    .line 174
    invoke-virtual {v0, v8, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    new-array v1, v1, [Ljava/lang/String;

    aput-object v2, v1, v7

    .line 175
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v12

    .line 176
    invoke-virtual {v0, v6, v9, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-object/from16 v17, v9

    :cond_1f
    move-object/from16 v19, v10

    move-object/from16 v3, v20

    move-object/from16 v1, v23

    goto/16 :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v23, v1

    goto/16 :goto_19

    :cond_20
    move-object/from16 v23, v1

    const/4 v1, 0x0

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    .line 178
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lt34;

    .line 180
    invoke-virtual {v5}, Lt34;->s()Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-virtual {v5}, Lt34;->t()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_14

    :cond_21
    move-object v7, v1

    :goto_14
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 181
    :cond_22
    invoke-static/range {p1 .. p1}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    invoke-virtual {v4}, Lb25;->f()V

    .line 183
    invoke-virtual {v4}, Lly4;->d()V

    .line 184
    invoke-virtual {v4}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    const/4 v3, 0x1

    :try_start_d
    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v5, v3

    const-string v3, "select count(1) from audience_filter_values where app_id=?"

    .line 185
    invoke-virtual {v4, v3, v5}, Lgs4;->t(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v5
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    iget-object v3, v4, Lly4;->a:Lrx4;

    .line 186
    iget-object v3, v3, Lrx4;->g:Lcs4;

    const/16 v4, 0x7d0

    .line 187
    sget-object v7, Lew4;->F:Ldw4;

    .line 188
    invoke-virtual {v3, v2, v7}, Lcs4;->p(Ljava/lang/String;Ldw4;)I

    move-result v3

    .line 189
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    .line 190
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-long v7, v3

    cmp-long v4, v5, v7

    if-gtz v4, :cond_23

    goto/16 :goto_16

    .line 191
    :cond_23
    new-instance v4, Ljava/util/ArrayList;

    .line 192
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 193
    :goto_15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_24

    .line 194
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_25

    .line 195
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_24
    const-string v0, ","

    .line 196
    invoke-static {v0, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "("

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "audience_filter_values"

    .line 197
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit16 v5, v5, 0x8c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " order by rowid desc limit -1 offset ?)"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    .line 198
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    aput-object v3, v5, v6

    .line 199
    invoke-virtual {v1, v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_16

    :catch_2
    move-exception v0

    .line 200
    iget-object v1, v4, Lly4;->a:Lrx4;

    .line 201
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 202
    iget-object v1, v1, Lqw4;->f:Low4;

    const-string v3, "Database error querying filters. appId"

    .line 203
    invoke-static/range {p1 .. p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 204
    invoke-virtual {v1, v3, v4, v0}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 205
    :cond_25
    :goto_16
    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 206
    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object/from16 v1, v16

    .line 207
    :try_start_f
    iget-boolean v0, v1, Lz84;->g:Z

    if-eqz v0, :cond_26

    .line 208
    invoke-virtual {v1}, Lz84;->j()V

    const/4 v3, 0x0

    iput-boolean v3, v1, Lz84;->g:Z

    :cond_26
    iget-object v0, v1, Lz84;->f:Lc94;

    .line 209
    check-cast v0, Ln44;

    invoke-static {v0}, Ln44;->F(Ln44;)V

    .line 210
    invoke-virtual {v1}, Lz84;->g()Lc94;

    move-result-object v0

    check-cast v0, Ln44;

    invoke-virtual {v0}, Lt74;->a()[B

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_3

    move-object/from16 v3, p0

    goto :goto_17

    :catch_3
    move-exception v0

    move-object/from16 v3, p0

    .line 211
    iget-object v4, v3, Lly4;->a:Lrx4;

    .line 212
    invoke-virtual {v4}, Lrx4;->a()Lqw4;

    move-result-object v4

    .line 213
    iget-object v4, v4, Lqw4;->i:Low4;

    .line 214
    invoke-static/range {p1 .. p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Unable to serialize reduced-size config. Storing full config instead. appId"

    .line 215
    invoke-virtual {v4, v6, v5, v0}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 216
    :goto_17
    iget-object v4, v3, Lb25;->b:Lj25;

    .line 217
    invoke-virtual {v4}, Lj25;->L()Lgs4;

    move-result-object v4

    .line 218
    invoke-static/range {p1 .. p1}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 219
    invoke-virtual {v4}, Lly4;->d()V

    invoke-virtual {v4}, Lb25;->f()V

    new-instance v5, Landroid/content/ContentValues;

    .line 220
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "remote_config"

    .line 221
    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 222
    :try_start_10
    invoke-virtual {v4}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v7, v6

    const-string v6, "apps"

    const-string v8, "app_id = ?"

    .line 223
    invoke-virtual {v0, v6, v5, v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v5, v0

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-nez v0, :cond_27

    iget-object v0, v4, Lly4;->a:Lrx4;

    .line 224
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 225
    iget-object v0, v0, Lqw4;->f:Low4;

    const-string v5, "Failed to update remote config (got 0). appId"

    .line 226
    invoke-static/range {p1 .. p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 227
    invoke-virtual {v0, v5, v6}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_4

    goto :goto_18

    :catch_4
    move-exception v0

    .line 228
    iget-object v4, v4, Lly4;->a:Lrx4;

    .line 229
    invoke-virtual {v4}, Lrx4;->a()Lqw4;

    move-result-object v4

    .line 230
    iget-object v4, v4, Lqw4;->f:Low4;

    .line 231
    invoke-static/range {p1 .. p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Error storing remote config. appId"

    .line 232
    invoke-virtual {v4, v6, v5, v0}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 233
    :cond_27
    :goto_18
    iget-object v0, v3, Lkx4;->g:Ljava/util/Map;

    .line 234
    invoke-virtual {v1}, Lz84;->g()Lc94;

    move-result-object v1

    check-cast v1, Ln44;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    return v1

    :catchall_2
    move-exception v0

    :goto_19
    move-object/from16 v3, p0

    .line 235
    :goto_1a
    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 236
    throw v0
.end method

.method public final n(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lly4;->d()V

    .line 2
    invoke-virtual {p0, p1}, Lkx4;->t(Ljava/lang/String;)V

    const-string v0, "measurement.upload.blacklist_internal"

    .line 3
    invoke-virtual {p0, p1, v0}, Lkx4;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p2}, Lp25;->F(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    const-string v0, "measurement.upload.blacklist_public"

    .line 5
    invoke-virtual {p0, p1, v0}, Lkx4;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    invoke-static {p2}, Lp25;->e0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    :goto_1
    iget-object v0, p0, Lkx4;->e:Ljava/util/Map;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 8
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_4

    return v0

    .line 9
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_5
    return v0
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lly4;->d()V

    .line 2
    invoke-virtual {p0, p1}, Lkx4;->t(Ljava/lang/String;)V

    const-string v0, "ecommerce_purchase"

    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "purchase"

    .line 4
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "refund"

    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lkx4;->f:Ljava/util/Map;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 7
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_2

    return v0

    .line 8
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public final q(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lly4;->d()V

    .line 2
    invoke-virtual {p0, p1}, Lkx4;->t(Ljava/lang/String;)V

    iget-object v0, p0, Lkx4;->h:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public final r(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "measurement.upload.blacklist_internal"

    .line 1
    invoke-virtual {p0, p1, v0}, Lkx4;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final s(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "measurement.upload.blacklist_public"

    .line 1
    invoke-virtual {p0, p1, v0}, Lkx4;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final t(Ljava/lang/String;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lb25;->f()V

    .line 2
    invoke-virtual {p0}, Lly4;->d()V

    .line 3
    invoke-static {p1}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lkx4;->g:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lb25;->b:Lj25;

    .line 5
    invoke-virtual {v0}, Lj25;->L()Lgs4;

    move-result-object v0

    .line 6
    invoke-static {p1}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Lly4;->d()V

    invoke-virtual {v0}, Lb25;->f()V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "remote_config"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v6, v10

    const-string v3, "apps"

    const-string v5, "app_id=?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 8
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 10
    :cond_0
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 11
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Lly4;->a:Lrx4;

    .line 12
    invoke-virtual {v4}, Lrx4;->a()Lqw4;

    move-result-object v4

    .line 13
    iget-object v4, v4, Lqw4;->f:Low4;

    const-string v5, "Got multiple records for app config, expected one. appId"

    .line 14
    invoke-static {p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 15
    invoke-virtual {v4, v5, v6}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    :goto_1
    :try_start_2
    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 17
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 18
    iget-object v0, v0, Lqw4;->f:Low4;

    const-string v4, "Error querying remote config. appId"

    .line 19
    invoke-static {p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 20
    invoke-virtual {v0, v4, v5, v3}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_2

    .line 21
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v3, v1

    :goto_3
    if-nez v3, :cond_3

    iget-object v0, p0, Lkx4;->d:Ljava/util/Map;

    .line 22
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lkx4;->e:Ljava/util/Map;

    .line 23
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lkx4;->f:Ljava/util/Map;

    .line 24
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lkx4;->g:Ljava/util/Map;

    .line 25
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lkx4;->i:Ljava/util/Map;

    .line 26
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lkx4;->h:Ljava/util/Map;

    .line 27
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 28
    :cond_3
    invoke-virtual {p0, p1, v3}, Lkx4;->v(Ljava/lang/String;[B)Ln44;

    move-result-object v0

    invoke-virtual {v0}, Lc94;->n()Lz84;

    move-result-object v0

    check-cast v0, Lm44;

    .line 29
    invoke-virtual {p0, p1, v0}, Lkx4;->u(Ljava/lang/String;Lm44;)V

    iget-object v2, p0, Lkx4;->d:Ljava/util/Map;

    .line 30
    invoke-virtual {v0}, Lz84;->g()Lc94;

    move-result-object v3

    check-cast v3, Ln44;

    invoke-static {v3}, Lkx4;->w(Ln44;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lkx4;->g:Ljava/util/Map;

    .line 31
    invoke-virtual {v0}, Lz84;->g()Lc94;

    move-result-object v0

    check-cast v0, Ln44;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lkx4;->i:Ljava/util/Map;

    .line 32
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_1
    move-exception p1

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_4

    .line 33
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 34
    :cond_4
    throw p1

    :cond_5
    return-void
.end method

.method public final u(Ljava/lang/String;Lm44;)V
    .locals 10

    .line 1
    new-instance v0, Lf4;

    invoke-direct {v0}, Lf4;-><init>()V

    new-instance v1, Lf4;

    .line 2
    invoke-direct {v1}, Lf4;-><init>()V

    new-instance v2, Lf4;

    .line 3
    invoke-direct {v2}, Lf4;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    :goto_0
    iget-object v5, p2, Lz84;->f:Lc94;

    .line 5
    check-cast v5, Ln44;

    invoke-virtual {v5}, Ln44;->x()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 6
    iget-object v5, p2, Lz84;->f:Lc94;

    .line 7
    check-cast v5, Ln44;

    invoke-virtual {v5, v4}, Ln44;->y(I)Ll44;

    move-result-object v5

    .line 8
    invoke-virtual {v5}, Lc94;->n()Lz84;

    move-result-object v5

    check-cast v5, Lk44;

    .line 9
    invoke-virtual {v5}, Lk44;->m()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v5, p0, Lly4;->a:Lrx4;

    .line 10
    invoke-virtual {v5}, Lrx4;->a()Lqw4;

    move-result-object v5

    .line 11
    iget-object v5, v5, Lqw4;->i:Low4;

    const-string v6, "EventConfig contained null event name"

    .line 12
    invoke-virtual {v5, v6}, Low4;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 13
    :cond_0
    invoke-virtual {v5}, Lk44;->m()Ljava/lang/String;

    move-result-object v6

    .line 14
    invoke-virtual {v5}, Lk44;->m()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Loy4;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 15
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 16
    iget-boolean v8, v5, Lz84;->g:Z

    if-eqz v8, :cond_1

    .line 17
    invoke-virtual {v5}, Lz84;->j()V

    iput-boolean v3, v5, Lz84;->g:Z

    :cond_1
    iget-object v8, v5, Lz84;->f:Lc94;

    .line 18
    check-cast v8, Ll44;

    invoke-static {v8, v7}, Ll44;->y(Ll44;Ljava/lang/String;)V

    .line 19
    iget-boolean v7, p2, Lz84;->g:Z

    if-eqz v7, :cond_2

    .line 20
    invoke-virtual {p2}, Lz84;->j()V

    iput-boolean v3, p2, Lz84;->g:Z

    :cond_2
    iget-object v7, p2, Lz84;->f:Lc94;

    .line 21
    check-cast v7, Ln44;

    .line 22
    invoke-virtual {v5}, Lz84;->g()Lc94;

    move-result-object v8

    check-cast v8, Ll44;

    .line 23
    invoke-static {v7, v4, v8}, Ln44;->E(Ln44;ILl44;)V

    .line 24
    :cond_3
    invoke-static {}, Ltb4;->b()Z

    iget-object v7, p0, Lly4;->a:Lrx4;

    .line 25
    iget-object v7, v7, Lrx4;->g:Lcs4;

    const/4 v8, 0x0

    .line 26
    sget-object v9, Lew4;->K0:Ldw4;

    invoke-virtual {v7, v8, v9}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 27
    iget-object v7, v5, Lz84;->f:Lc94;

    .line 28
    check-cast v7, Ll44;

    invoke-virtual {v7}, Ll44;->t()Z

    move-result v7

    .line 29
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lm4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 30
    :cond_4
    invoke-virtual {v5}, Lk44;->m()Ljava/lang/String;

    move-result-object v6

    .line 31
    iget-object v7, v5, Lz84;->f:Lc94;

    .line 32
    check-cast v7, Ll44;

    invoke-virtual {v7}, Ll44;->t()Z

    move-result v7

    .line 33
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lm4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :goto_1
    invoke-virtual {v5}, Lk44;->m()Ljava/lang/String;

    move-result-object v6

    .line 35
    iget-object v7, v5, Lz84;->f:Lc94;

    .line 36
    check-cast v7, Ll44;

    invoke-virtual {v7}, Ll44;->u()Z

    move-result v7

    .line 37
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lm4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v6, v5, Lz84;->f:Lc94;

    .line 39
    check-cast v6, Ll44;

    invoke-virtual {v6}, Ll44;->v()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 40
    invoke-virtual {v5}, Lk44;->o()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_6

    .line 41
    invoke-virtual {v5}, Lk44;->o()I

    move-result v6

    const v7, 0xffff

    if-le v6, v7, :cond_5

    goto :goto_2

    .line 42
    :cond_5
    invoke-virtual {v5}, Lk44;->m()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lk44;->o()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Lm4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 43
    :cond_6
    :goto_2
    iget-object v6, p0, Lly4;->a:Lrx4;

    .line 44
    invoke-virtual {v6}, Lrx4;->a()Lqw4;

    move-result-object v6

    .line 45
    iget-object v6, v6, Lqw4;->i:Low4;

    .line 46
    invoke-virtual {v5}, Lk44;->m()Ljava/lang/String;

    move-result-object v7

    .line 47
    invoke-virtual {v5}, Lk44;->o()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v8, "Invalid sampling rate. Event name, sample rate"

    .line 48
    invoke-virtual {v6, v8, v7, v5}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 49
    :cond_8
    iget-object p2, p0, Lkx4;->e:Ljava/util/Map;

    .line 50
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lkx4;->f:Ljava/util/Map;

    .line 51
    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lkx4;->h:Ljava/util/Map;

    .line 52
    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final v(Ljava/lang/String;[B)Ln44;
    .locals 7

    const-string v0, "Unable to merge remote config. appId"

    if-eqz p2, :cond_2

    .line 1
    :try_start_0
    invoke-static {}, Ln44;->B()Lm44;

    move-result-object v1

    invoke-static {v1, p2}, Ll25;->G(Ls74;[B)Ls74;

    move-result-object p2

    check-cast p2, Lm44;

    invoke-virtual {p2}, Lz84;->g()Lc94;

    move-result-object p2

    check-cast p2, Ln44;

    iget-object v1, p0, Lly4;->a:Lrx4;

    .line 2
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 3
    iget-object v1, v1, Lqw4;->n:Low4;

    const-string v2, "Parsed config. version, gmp_app_id"

    .line 4
    invoke-virtual {p2}, Ln44;->s()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Ln44;->t()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 5
    :goto_0
    invoke-virtual {p2}, Ln44;->u()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p2}, Ln44;->v()Ljava/lang/String;

    move-result-object v4

    .line 6
    :cond_1
    invoke-virtual {v1, v2, v3, v4}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ll94; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 7
    iget-object v1, p0, Lly4;->a:Lrx4;

    .line 8
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 9
    iget-object v1, v1, Lqw4;->i:Low4;

    .line 10
    invoke-static {p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    invoke-virtual {v1, v0, p1, p2}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    invoke-static {}, Ln44;->C()Ln44;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p2

    .line 13
    iget-object v1, p0, Lly4;->a:Lrx4;

    .line 14
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 15
    iget-object v1, v1, Lqw4;->i:Low4;

    .line 16
    invoke-static {p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 17
    invoke-virtual {v1, v0, p1, p2}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    invoke-static {}, Ln44;->C()Ln44;

    move-result-object p1

    return-object p1

    .line 19
    :cond_2
    invoke-static {}, Ln44;->C()Ln44;

    move-result-object p1

    return-object p1
.end method
