.class public Luh$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public e:Lqh;

.field public f:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lqh;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Luh$a;->e:Lqh;

    .line 3
    iput-object p2, p0, Luh$a;->f:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Luh$a;->f:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2
    iget-object v1, v0, Luh$a;->f:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 3
    sget-object v1, Luh;->c:Ljava/util/ArrayList;

    iget-object v2, v0, Luh$a;->f:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 4
    :cond_0
    invoke-static {}, Luh;->b()Lf4;

    move-result-object v1

    .line 5
    iget-object v3, v0, Luh$a;->f:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Lm4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v5, v0, Luh$a;->f:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5, v3}, Lm4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 9
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_2
    :goto_0
    move-object v5, v4

    .line 10
    :goto_1
    iget-object v6, v0, Luh$a;->e:Lqh;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v3, v0, Luh$a;->e:Lqh;

    new-instance v6, Luh$a$a;

    invoke-direct {v6, v0, v1}, Luh$a$a;-><init>(Luh$a;Lf4;)V

    invoke-virtual {v3, v6}, Lqh;->b(Lqh$d;)Lqh;

    .line 12
    iget-object v1, v0, Luh$a;->e:Lqh;

    iget-object v3, v0, Luh$a;->f:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Lqh;->i(Landroid/view/ViewGroup;Z)V

    if-eqz v5, :cond_3

    .line 13
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lqh;

    .line 14
    iget-object v5, v0, Luh$a;->f:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Lqh;->z(Landroid/view/View;)V

    goto :goto_2

    .line 15
    :cond_3
    iget-object v1, v0, Luh$a;->e:Lqh;

    iget-object v8, v0, Luh$a;->f:Landroid/view/ViewGroup;

    .line 16
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lqh;->o:Ljava/util/ArrayList;

    .line 18
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lqh;->p:Ljava/util/ArrayList;

    .line 19
    iget-object v3, v1, Lqh;->k:Lzh;

    iget-object v5, v1, Lqh;->l:Lzh;

    .line 20
    new-instance v7, Lf4;

    iget-object v9, v3, Lzh;->a:Lf4;

    invoke-direct {v7, v9}, Lf4;-><init>(Lm4;)V

    .line 21
    new-instance v9, Lf4;

    iget-object v10, v5, Lzh;->a:Lf4;

    invoke-direct {v9, v10}, Lf4;-><init>(Lm4;)V

    const/4 v10, 0x0

    .line 22
    :goto_3
    iget-object v11, v1, Lqh;->n:[I

    array-length v12, v11

    if-ge v10, v12, :cond_10

    .line 23
    aget v11, v11, v10

    if-eq v11, v2, :cond_d

    const/4 v12, 0x2

    if-eq v11, v12, :cond_b

    const/4 v12, 0x3

    if-eq v11, v12, :cond_9

    const/4 v12, 0x4

    if-eq v11, v12, :cond_5

    :cond_4
    move-object/from16 v17, v3

    goto :goto_6

    .line 24
    :cond_5
    iget-object v11, v3, Lzh;->c:Lj4;

    iget-object v12, v5, Lzh;->c:Lj4;

    .line 25
    invoke-virtual {v11}, Lj4;->k()I

    move-result v13

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v13, :cond_4

    .line 26
    invoke-virtual {v11, v14}, Lj4;->l(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    if-eqz v15, :cond_7

    .line 27
    invoke-virtual {v1, v15}, Lqh;->u(Landroid/view/View;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 28
    iget-boolean v6, v11, Lj4;->e:Z

    if-eqz v6, :cond_6

    .line 29
    invoke-virtual {v11}, Lj4;->e()V

    .line 30
    :cond_6
    iget-object v6, v11, Lj4;->f:[J

    move-object/from16 v17, v3

    aget-wide v2, v6, v14

    .line 31
    invoke-virtual {v12, v2, v3}, Lj4;->f(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_8

    .line 32
    invoke-virtual {v1, v2}, Lqh;->u(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 33
    invoke-virtual {v7, v15, v4}, Lm4;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 34
    check-cast v3, Lyh;

    .line 35
    invoke-virtual {v9, v2, v4}, Lm4;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 36
    check-cast v6, Lyh;

    if-eqz v3, :cond_8

    if-eqz v6, :cond_8

    .line 37
    iget-object v4, v1, Lqh;->o:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v3, v1, Lqh;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual {v7, v15}, Lm4;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {v9, v2}, Lm4;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_7
    move-object/from16 v17, v3

    :cond_8
    :goto_5
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v17

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    goto :goto_4

    :goto_6
    move-object/from16 v2, v17

    goto/16 :goto_a

    :cond_9
    move-object v2, v3

    .line 41
    iget-object v3, v2, Lzh;->b:Landroid/util/SparseArray;

    iget-object v4, v5, Lzh;->b:Landroid/util/SparseArray;

    .line 42
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/4 v11, 0x0

    :goto_7
    if-ge v11, v6, :cond_f

    .line 43
    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    if-eqz v12, :cond_a

    .line 44
    invoke-virtual {v1, v12}, Lqh;->u(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 45
    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    invoke-virtual {v4, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    if-eqz v13, :cond_a

    .line 46
    invoke-virtual {v1, v13}, Lqh;->u(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_a

    const/4 v14, 0x0

    .line 47
    invoke-virtual {v7, v12, v14}, Lm4;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 48
    check-cast v15, Lyh;

    .line 49
    invoke-virtual {v9, v13, v14}, Lm4;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 50
    move-object/from16 v14, v17

    check-cast v14, Lyh;

    if-eqz v15, :cond_a

    if-eqz v14, :cond_a

    .line 51
    iget-object v0, v1, Lqh;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, v1, Lqh;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {v7, v12}, Lm4;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-virtual {v9, v13}, Lm4;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    goto :goto_7

    :cond_b
    move-object v2, v3

    .line 55
    iget-object v0, v2, Lzh;->d:Lf4;

    iget-object v3, v5, Lzh;->d:Lf4;

    .line 56
    iget v4, v0, Lm4;->g:I

    const/4 v6, 0x0

    :goto_8
    if-ge v6, v4, :cond_f

    .line 57
    invoke-virtual {v0, v6}, Lm4;->k(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    if-eqz v11, :cond_c

    .line 58
    invoke-virtual {v1, v11}, Lqh;->u(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 59
    invoke-virtual {v0, v6}, Lm4;->h(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v3, v12}, Lm4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    if-eqz v12, :cond_c

    .line 60
    invoke-virtual {v1, v12}, Lqh;->u(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_c

    const/4 v13, 0x0

    .line 61
    invoke-virtual {v7, v11, v13}, Lm4;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 62
    check-cast v14, Lyh;

    .line 63
    invoke-virtual {v9, v12, v13}, Lm4;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 64
    check-cast v15, Lyh;

    if-eqz v14, :cond_c

    if-eqz v15, :cond_c

    .line 65
    iget-object v13, v1, Lqh;->o:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v13, v1, Lqh;->p:Ljava/util/ArrayList;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {v7, v11}, Lm4;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {v9, v12}, Lm4;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_d
    move-object v2, v3

    .line 69
    iget v0, v7, Lm4;->g:I

    :cond_e
    :goto_9
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_f

    .line 70
    invoke-virtual {v7, v0}, Lm4;->h(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_e

    .line 71
    invoke-virtual {v1, v3}, Lqh;->u(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 72
    invoke-virtual {v9, v3}, Lm4;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyh;

    if-eqz v3, :cond_e

    .line 73
    iget-object v4, v3, Lyh;->b:Landroid/view/View;

    invoke-virtual {v1, v4}, Lqh;->u(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 74
    invoke-virtual {v7, v0}, Lm4;->i(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyh;

    .line 75
    iget-object v6, v1, Lqh;->o:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v4, v1, Lqh;->p:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_f
    :goto_a
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object v3, v2

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_10
    const/4 v0, 0x0

    .line 77
    :goto_b
    iget v2, v7, Lm4;->g:I

    if-ge v0, v2, :cond_12

    .line 78
    invoke-virtual {v7, v0}, Lm4;->k(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyh;

    .line 79
    iget-object v3, v2, Lyh;->b:Landroid/view/View;

    invoke-virtual {v1, v3}, Lqh;->u(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 80
    iget-object v3, v1, Lqh;->o:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v2, v1, Lqh;->p:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_12
    const/4 v0, 0x0

    .line 82
    :goto_c
    iget v2, v9, Lm4;->g:I

    if-ge v0, v2, :cond_14

    .line 83
    invoke-virtual {v9, v0}, Lm4;->k(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyh;

    .line 84
    iget-object v3, v2, Lyh;->b:Landroid/view/View;

    invoke-virtual {v1, v3}, Lqh;->u(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 85
    iget-object v3, v1, Lqh;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v2, v1, Lqh;->o:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 87
    :cond_14
    invoke-static {}, Lqh;->q()Lf4;

    move-result-object v0

    .line 88
    iget v2, v0, Lm4;->g:I

    .line 89
    sget-object v3, Lci;->a:Lii;

    .line 90
    new-instance v3, Lli;

    invoke-direct {v3, v8}, Lli;-><init>(Landroid/view/View;)V

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    :goto_d
    if-ltz v2, :cond_1b

    .line 91
    invoke-virtual {v0, v2}, Lm4;->h(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    const/4 v5, 0x0

    if-eqz v4, :cond_1a

    .line 92
    invoke-virtual {v0, v4, v5}, Lm4;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 93
    check-cast v6, Lqh$b;

    if-eqz v6, :cond_1a

    .line 94
    iget-object v7, v6, Lqh$b;->a:Landroid/view/View;

    if-eqz v7, :cond_1a

    iget-object v7, v6, Lqh$b;->d:Lmi;

    .line 95
    invoke-virtual {v3, v7}, Lli;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 96
    iget-object v7, v6, Lqh$b;->c:Lyh;

    .line 97
    iget-object v9, v6, Lqh$b;->a:Landroid/view/View;

    const/4 v10, 0x1

    .line 98
    invoke-virtual {v1, v9, v10}, Lqh;->s(Landroid/view/View;Z)Lyh;

    move-result-object v11

    .line 99
    invoke-virtual {v1, v9, v10}, Lqh;->p(Landroid/view/View;Z)Lyh;

    move-result-object v12

    if-nez v11, :cond_15

    if-nez v12, :cond_15

    .line 100
    iget-object v10, v1, Lqh;->l:Lzh;

    iget-object v10, v10, Lzh;->a:Lf4;

    invoke-virtual {v10, v9}, Lm4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Lyh;

    :cond_15
    if-nez v11, :cond_16

    if-eqz v12, :cond_17

    .line 101
    :cond_16
    iget-object v6, v6, Lqh$b;->e:Lqh;

    .line 102
    invoke-virtual {v6, v7, v12}, Lqh;->t(Lyh;Lyh;)Z

    move-result v6

    if-eqz v6, :cond_17

    const/4 v6, 0x1

    goto :goto_e

    :cond_17
    const/4 v6, 0x0

    :goto_e
    if-eqz v6, :cond_1a

    .line 103
    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    move-result v6

    if-nez v6, :cond_19

    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    move-result v6

    if-eqz v6, :cond_18

    goto :goto_f

    .line 104
    :cond_18
    invoke-virtual {v0, v4}, Lm4;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 105
    :cond_19
    :goto_f
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    :cond_1a
    :goto_10
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 106
    :cond_1b
    iget-object v9, v1, Lqh;->k:Lzh;

    iget-object v10, v1, Lqh;->l:Lzh;

    iget-object v11, v1, Lqh;->o:Ljava/util/ArrayList;

    iget-object v12, v1, Lqh;->p:Ljava/util/ArrayList;

    move-object v7, v1

    invoke-virtual/range {v7 .. v12}, Lqh;->m(Landroid/view/ViewGroup;Lzh;Lzh;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 107
    invoke-virtual {v1}, Lqh;->A()V

    const/4 v0, 0x1

    return v0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Luh$a;->f:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2
    iget-object p1, p0, Luh$a;->f:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 3
    sget-object p1, Luh;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Luh$a;->f:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    invoke-static {}, Luh;->b()Lf4;

    move-result-object p1

    iget-object v0, p0, Luh$a;->f:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lm4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqh;

    .line 7
    iget-object v1, p0, Luh$a;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lqh;->z(Landroid/view/View;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Luh$a;->e:Lqh;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lqh;->j(Z)V

    return-void
.end method
