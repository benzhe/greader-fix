.class public Lic;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic$a;
    }
.end annotation


# static fields
.field public static final a:[I

.field public static final b:Lnc;

.field public static final c:Lnc;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lic;->a:[I

    .line 2
    new-instance v0, Ljc;

    invoke-direct {v0}, Ljc;-><init>()V

    sput-object v0, Lic;->b:Lnc;

    :try_start_0
    const-string v0, "mh"

    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    sput-object v0, Lic;->c:Lnc;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
        0xa
    .end array-data
.end method

.method public static a(Ljava/util/ArrayList;Lf4;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Lf4<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p1, Lm4;->g:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Lm4;->k(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3
    sget-object v2, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static b(Lqb;Ldc$a;Landroid/util/SparseArray;ZZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqb;",
            "Ldc$a;",
            "Landroid/util/SparseArray<",
            "Lic$a;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1
    iget-object v6, p1, Ldc$a;->b:Landroidx/fragment/app/Fragment;

    if-nez v6, :cond_0

    return-void

    .line 2
    :cond_0
    iget v7, v6, Landroidx/fragment/app/Fragment;->mContainerId:I

    if-nez v7, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_2

    .line 3
    sget-object v0, Lic;->a:[I

    iget p1, p1, Ldc$a;->a:I

    aget p1, v0, p1

    goto :goto_0

    :cond_2
    iget p1, p1, Ldc$a;->a:I

    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_a

    const/4 v2, 0x3

    if-eq p1, v2, :cond_7

    const/4 v2, 0x4

    if-eq p1, v2, :cond_5

    const/4 v2, 0x5

    if-eq p1, v2, :cond_3

    const/4 v2, 0x6

    if-eq p1, v2, :cond_7

    const/4 v2, 0x7

    if-eq p1, v2, :cond_a

    const/4 p1, 0x0

    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_3
    if-eqz p4, :cond_4

    .line 4
    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz p1, :cond_c

    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez p1, :cond_c

    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz p1, :cond_c

    goto :goto_3

    .line 5
    :cond_4
    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->mHidden:Z

    goto :goto_4

    :cond_5
    if-eqz p4, :cond_6

    .line 6
    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz p1, :cond_9

    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz p1, :cond_9

    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz p1, :cond_9

    goto :goto_1

    .line 7
    :cond_6
    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz p1, :cond_9

    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez p1, :cond_9

    goto :goto_1

    :cond_7
    if-eqz p4, :cond_8

    .line 8
    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez p1, :cond_9

    iget-object p1, v6, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz p1, :cond_9

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_9

    iget p1, v6, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v2, 0x0

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_9

    goto :goto_1

    .line 10
    :cond_8
    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz p1, :cond_9

    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez p1, :cond_9

    :goto_1
    const/4 p1, 0x1

    goto :goto_2

    :cond_9
    const/4 p1, 0x0

    :goto_2
    move v8, p1

    const/4 p1, 0x1

    const/4 v2, 0x0

    goto :goto_6

    :cond_a
    if-eqz p4, :cond_b

    .line 11
    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    goto :goto_4

    .line 12
    :cond_b
    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez p1, :cond_c

    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez p1, :cond_c

    :goto_3
    const/4 p1, 0x1

    goto :goto_4

    :cond_c
    const/4 p1, 0x0

    :goto_4
    const/4 v2, 0x1

    :goto_5
    move v1, p1

    const/4 p1, 0x0

    const/4 v8, 0x0

    .line 13
    :goto_6
    invoke-virtual {p2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lic$a;

    if-eqz v1, :cond_e

    if-nez v3, :cond_d

    .line 14
    new-instance v1, Lic$a;

    invoke-direct {v1}, Lic$a;-><init>()V

    .line 15
    invoke-virtual {p2, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v3, v1

    .line 16
    :cond_d
    iput-object v6, v3, Lic$a;->a:Landroidx/fragment/app/Fragment;

    .line 17
    iput-boolean p3, v3, Lic$a;->b:Z

    .line 18
    iput-object p0, v3, Lic$a;->c:Lqb;

    :cond_e
    move-object v9, v3

    const/4 v10, 0x0

    if-nez p4, :cond_10

    if-eqz v2, :cond_10

    if-eqz v9, :cond_f

    .line 19
    iget-object v1, v9, Lic$a;->d:Landroidx/fragment/app/Fragment;

    if-ne v1, v6, :cond_f

    .line 20
    iput-object v10, v9, Lic$a;->d:Landroidx/fragment/app/Fragment;

    .line 21
    :cond_f
    iget-object v1, p0, Lqb;->r:Lxb;

    .line 22
    iget v2, v6, Landroidx/fragment/app/Fragment;->mState:I

    if-ge v2, v0, :cond_10

    iget v2, v1, Lxb;->s:I

    if-lt v2, v0, :cond_10

    iget-boolean v0, p0, Ldc;->q:Z

    if-nez v0, :cond_10

    .line 23
    invoke-virtual {v1, v6}, Lxb;->e0(Landroidx/fragment/app/Fragment;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v1

    move-object v1, v6

    .line 24
    invoke-virtual/range {v0 .. v5}, Lxb;->i0(Landroidx/fragment/app/Fragment;IIIZ)V

    :cond_10
    if-eqz v8, :cond_13

    if-eqz v9, :cond_11

    .line 25
    iget-object v0, v9, Lic$a;->d:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_13

    :cond_11
    if-nez v9, :cond_12

    .line 26
    new-instance v0, Lic$a;

    invoke-direct {v0}, Lic$a;-><init>()V

    .line 27
    invoke-virtual {p2, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v9, v0

    .line 28
    :cond_12
    iput-object v6, v9, Lic$a;->d:Landroidx/fragment/app/Fragment;

    .line 29
    iput-boolean p3, v9, Lic$a;->e:Z

    .line 30
    iput-object p0, v9, Lic$a;->f:Lqb;

    :cond_13
    if-nez p4, :cond_14

    if-eqz p1, :cond_14

    if-eqz v9, :cond_14

    .line 31
    iget-object p0, v9, Lic$a;->a:Landroidx/fragment/app/Fragment;

    if-ne p0, v6, :cond_14

    .line 32
    iput-object v10, v9, Lic$a;->a:Landroidx/fragment/app/Fragment;

    :cond_14
    return-void
.end method

.method public static c(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLf4;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Landroidx/fragment/app/Fragment;",
            "Z",
            "Lf4<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Lt7;

    move-result-object p0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Lt7;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_4

    .line 3
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    if-nez p3, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 5
    :cond_1
    iget v0, p3, Lm4;->g:I

    :goto_1
    if-ge p2, v0, :cond_2

    .line 6
    invoke-virtual {p3, p2}, Lm4;->h(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p3, p2}, Lm4;->k(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    if-eqz p4, :cond_3

    .line 8
    throw p0

    .line 9
    :cond_3
    throw p0

    :cond_4
    return-void
.end method

.method public static d(Lnc;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnc;->e(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static e(Lnc;Lf4;Ljava/lang/Object;Lic$a;)Lf4;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc;",
            "Lf4<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lic$a;",
            ")",
            "Lf4<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p3, Lic$a;->a:Landroidx/fragment/app/Fragment;

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lm4;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_6

    if-eqz p2, :cond_6

    if-nez v1, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    new-instance p2, Lf4;

    invoke-direct {p2}, Lf4;-><init>()V

    .line 5
    invoke-virtual {p0, p2, v1}, Lnc;->i(Ljava/util/Map;Landroid/view/View;)V

    .line 6
    iget-object p0, p3, Lic$a;->c:Lqb;

    .line 7
    iget-boolean p3, p3, Lic$a;->b:Z

    if-eqz p3, :cond_1

    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Lt7;

    move-result-object p3

    .line 9
    iget-object p0, p0, Ldc;->o:Ljava/util/ArrayList;

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Lt7;

    move-result-object p3

    .line 11
    iget-object p0, p0, Ldc;->p:Ljava/util/ArrayList;

    :goto_0
    if-eqz p0, :cond_2

    .line 12
    invoke-static {p2, p0}, Ll4;->k(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 13
    invoke-virtual {p1}, Lf4;->values()Ljava/util/Collection;

    move-result-object p0

    .line 14
    invoke-static {p2, p0}, Ll4;->k(Ljava/util/Map;Ljava/util/Collection;)Z

    :cond_2
    if-nez p3, :cond_5

    .line 15
    iget p0, p1, Lm4;->g:I

    :cond_3
    :goto_1
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_4

    .line 16
    invoke-virtual {p1, p0}, Lm4;->k(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 17
    invoke-virtual {p2, p3}, Lm4;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 18
    invoke-virtual {p1, p0}, Lm4;->i(I)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    return-object p2

    .line 19
    :cond_5
    throw v3

    .line 20
    :cond_6
    :goto_2
    invoke-virtual {p1}, Lm4;->clear()V

    return-object v3
.end method

.method public static f(Lnc;Lf4;Ljava/lang/Object;Lic$a;)Lf4;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc;",
            "Lf4<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lic$a;",
            ")",
            "Lf4<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lm4;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object p2, p3, Lic$a;->d:Landroidx/fragment/app/Fragment;

    .line 3
    new-instance v0, Lf4;

    invoke-direct {v0}, Lf4;-><init>()V

    .line 4
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lnc;->i(Ljava/util/Map;Landroid/view/View;)V

    .line 5
    iget-object p0, p3, Lic$a;->f:Lqb;

    .line 6
    iget-boolean p3, p3, Lic$a;->e:Z

    if-eqz p3, :cond_1

    .line 7
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Lt7;

    move-result-object p2

    .line 8
    iget-object p0, p0, Ldc;->p:Ljava/util/ArrayList;

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Lt7;

    move-result-object p2

    .line 10
    iget-object p0, p0, Ldc;->o:Ljava/util/ArrayList;

    .line 11
    :goto_0
    invoke-static {v0, p0}, Ll4;->k(Ljava/util/Map;Ljava/util/Collection;)Z

    if-nez p2, :cond_2

    .line 12
    invoke-virtual {v0}, Lf4;->keySet()Ljava/util/Set;

    move-result-object p0

    .line 13
    invoke-static {p1, p0}, Ll4;->k(Ljava/util/Map;Ljava/util/Collection;)Z

    return-object v0

    .line 14
    :cond_2
    throw v1

    .line 15
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lm4;->clear()V

    return-object v1
.end method

.method public static g(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Lnc;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p1, :cond_5

    .line 8
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 9
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 11
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 13
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 15
    :cond_6
    sget-object p0, Lic;->b:Lnc;

    invoke-static {p0, v0}, Lic;->d(Lnc;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-object p0

    .line 16
    :cond_7
    sget-object p0, Lic;->c:Lnc;

    if-eqz p0, :cond_8

    invoke-static {p0, v0}, Lic;->d(Lnc;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_8

    return-object p0

    .line 17
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Transition types"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h(Lnc;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0, v0, p2}, Lnc;->f(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 4
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 6
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p0, p1, v0}, Lnc;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static i(Lnc;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object p1

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Lnc;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lnc;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object p1

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Lnc;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static k(Lf4;Lic$a;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf4<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Lic$a;",
            "Ljava/lang/Object;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lic$a;->c:Lqb;

    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    .line 2
    iget-object p2, p1, Ldc;->o:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    .line 4
    iget-object p1, p1, Ldc;->o:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Ldc;->p:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 7
    :goto_0
    invoke-virtual {p0, p1}, Lm4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static l(Lnc;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object p1

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Lnc;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lnc;->v(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static m(Lnc;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    if-eqz p5, :cond_0

    .line 1
    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result p4

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result p4

    goto :goto_0

    :cond_1
    const/4 p4, 0x1

    :goto_0
    if-eqz p4, :cond_2

    .line 3
    invoke-virtual {p0, p2, p1, p3}, Lnc;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {p0, p2, p1, p3}, Lnc;->l(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static n(Lnc;Ljava/lang/Object;Ljava/lang/Object;Lf4;ZLqb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lf4<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "Lqb;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p5, Ldc;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 3
    iget-object p4, p5, Ldc;->p:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p4, p5, Ldc;->o:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 6
    :goto_0
    invoke-virtual {p3, p4}, Lm4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 7
    invoke-virtual {p0, p1, p3}, Lnc;->s(Ljava/lang/Object;Landroid/view/View;)V

    if-eqz p2, :cond_1

    .line 8
    invoke-virtual {p0, p2, p3}, Lnc;->s(Ljava/lang/Object;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public static o(Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static p(Lxb;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxb;",
            "Ljava/util/ArrayList<",
            "Lqb;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;IIZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    .line 1
    iget v5, v0, Lxb;->s:I

    const/4 v6, 0x1

    if-ge v5, v6, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    move/from16 v7, p3

    :goto_0
    const/4 v8, 0x0

    if-ge v7, v3, :cond_4

    .line 3
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lqb;

    .line 4
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 5
    iget-object v8, v9, Lqb;->r:Lxb;

    iget-object v8, v8, Lxb;->u:Lsb;

    invoke-virtual {v8}, Lsb;->c()Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_3

    .line 6
    :cond_1
    iget-object v8, v9, Ldc;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v6

    :goto_1
    if-ltz v8, :cond_3

    .line 7
    iget-object v10, v9, Ldc;->a:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ldc$a;

    .line 8
    invoke-static {v9, v10, v5, v6, v4}, Lic;->b(Lqb;Ldc$a;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 9
    :cond_2
    iget-object v10, v9, Ldc;->a:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_3

    .line 10
    iget-object v12, v9, Ldc;->a:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ldc$a;

    .line 11
    invoke-static {v9, v12, v5, v8, v4}, Lic;->b(Lqb;Ldc$a;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-eqz v7, :cond_2e

    .line 13
    new-instance v7, Landroid/view/View;

    iget-object v9, v0, Lxb;->t:Lvb;

    .line 14
    iget-object v9, v9, Lvb;->f:Landroid/content/Context;

    .line 15
    invoke-direct {v7, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v15

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v15, :cond_2e

    .line 17
    invoke-virtual {v5, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 18
    new-instance v13, Lf4;

    invoke-direct {v13}, Lf4;-><init>()V

    add-int/lit8 v10, v3, -0x1

    move/from16 v12, p3

    :goto_5
    if-lt v10, v12, :cond_9

    .line 19
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lqb;

    .line 20
    invoke-virtual {v11, v9}, Lqb;->n(I)Z

    move-result v16

    if-nez v16, :cond_5

    goto :goto_9

    .line 21
    :cond_5
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    .line 22
    iget-object v6, v11, Ldc;->o:Ljava/util/ArrayList;

    if-eqz v6, :cond_8

    .line 23
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v16, :cond_6

    .line 24
    iget-object v8, v11, Ldc;->o:Ljava/util/ArrayList;

    .line 25
    iget-object v11, v11, Ldc;->p:Ljava/util/ArrayList;

    goto :goto_6

    .line 26
    :cond_6
    iget-object v8, v11, Ldc;->o:Ljava/util/ArrayList;

    .line 27
    iget-object v11, v11, Ldc;->p:Ljava/util/ArrayList;

    move-object/from16 v38, v11

    move-object v11, v8

    move-object/from16 v8, v38

    :goto_6
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v6, :cond_8

    .line 28
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Ljava/lang/String;

    .line 29
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Ljava/lang/String;

    .line 30
    invoke-virtual {v13, v3}, Lm4;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v6

    move-object/from16 v6, v16

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 31
    invoke-virtual {v13, v2, v6}, Lm4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 32
    :cond_7
    invoke-virtual {v13, v2, v3}, Lm4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v6, v17

    goto :goto_7

    :cond_8
    :goto_9
    add-int/lit8 v10, v10, -0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    const/4 v6, 0x1

    const/4 v8, 0x0

    goto :goto_5

    .line 33
    :cond_9
    invoke-virtual {v5, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lic$a;

    if-eqz v4, :cond_1f

    .line 34
    iget-object v3, v0, Lxb;->u:Lsb;

    invoke-virtual {v3}, Lsb;->c()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 35
    iget-object v3, v0, Lxb;->u:Lsb;

    invoke-virtual {v3, v9}, Lsb;->a(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    goto :goto_a

    :cond_a
    const/4 v3, 0x0

    :goto_a
    if-nez v3, :cond_b

    goto :goto_b

    .line 36
    :cond_b
    iget-object v6, v1, Lic$a;->a:Landroidx/fragment/app/Fragment;

    .line 37
    iget-object v8, v1, Lic$a;->d:Landroidx/fragment/app/Fragment;

    .line 38
    invoke-static {v8, v6}, Lic;->g(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Lnc;

    move-result-object v9

    if-nez v9, :cond_d

    :goto_b
    move-object/from16 v31, v5

    move/from16 v32, v14

    move/from16 v33, v15

    :cond_c
    :goto_c
    const/4 v0, 0x0

    goto/16 :goto_18

    .line 39
    :cond_d
    iget-boolean v10, v1, Lic$a;->b:Z

    .line 40
    iget-boolean v11, v1, Lic$a;->e:Z

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v31, v5

    .line 43
    invoke-static {v9, v6, v10}, Lic;->i(Lnc;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v5

    .line 44
    invoke-static {v9, v8, v11}, Lic;->j(Lnc;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v11

    .line 45
    iget-object v12, v1, Lic$a;->a:Landroidx/fragment/app/Fragment;

    move/from16 v32, v14

    .line 46
    iget-object v14, v1, Lic$a;->d:Landroidx/fragment/app/Fragment;

    move/from16 v33, v15

    if-eqz v12, :cond_e

    .line 47
    invoke-virtual {v12}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v15

    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    if-eqz v12, :cond_17

    if-nez v14, :cond_f

    goto/16 :goto_11

    .line 48
    :cond_f
    iget-boolean v0, v1, Lic$a;->b:Z

    .line 49
    invoke-virtual {v13}, Lm4;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_10

    move/from16 v34, v10

    const/4 v15, 0x0

    goto :goto_d

    .line 50
    :cond_10
    invoke-static {v9, v12, v14, v0}, Lic;->l(Lnc;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v15

    move/from16 v34, v10

    .line 51
    :goto_d
    invoke-static {v9, v13, v15, v1}, Lic;->f(Lnc;Lf4;Ljava/lang/Object;Lic$a;)Lf4;

    move-result-object v10

    move-object/from16 v35, v6

    .line 52
    invoke-static {v9, v13, v15, v1}, Lic;->e(Lnc;Lf4;Ljava/lang/Object;Lic$a;)Lf4;

    move-result-object v6

    .line 53
    invoke-virtual {v13}, Lm4;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_13

    if-eqz v10, :cond_11

    .line 54
    invoke-virtual {v10}, Lm4;->clear()V

    :cond_11
    if-eqz v6, :cond_12

    .line 55
    invoke-virtual {v6}, Lm4;->clear()V

    :cond_12
    const/4 v15, 0x0

    goto :goto_e

    :cond_13
    move-object/from16 v16, v15

    .line 56
    invoke-virtual {v13}, Lf4;->keySet()Ljava/util/Set;

    move-result-object v15

    .line 57
    invoke-static {v4, v10, v15}, Lic;->a(Ljava/util/ArrayList;Lf4;Ljava/util/Collection;)V

    .line 58
    invoke-virtual {v13}, Lf4;->values()Ljava/util/Collection;

    move-result-object v15

    .line 59
    invoke-static {v2, v6, v15}, Lic;->a(Ljava/util/ArrayList;Lf4;Ljava/util/Collection;)V

    move-object/from16 v15, v16

    :goto_e
    if-nez v5, :cond_14

    if-nez v11, :cond_14

    if-nez v15, :cond_14

    move-object/from16 v37, v2

    :goto_f
    move-object/from16 v36, v13

    goto :goto_12

    :cond_14
    move-object/from16 v36, v13

    const/4 v13, 0x1

    .line 60
    invoke-static {v12, v14, v0, v10, v13}, Lic;->c(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLf4;Z)V

    if-eqz v15, :cond_16

    .line 61
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-virtual {v9, v15, v7, v4}, Lnc;->t(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 63
    iget-boolean v13, v1, Lic$a;->e:Z

    move-object/from16 v37, v2

    .line 64
    iget-object v2, v1, Lic$a;->f:Lqb;

    move-object/from16 v16, v9

    move-object/from16 v17, v15

    move-object/from16 v18, v11

    move-object/from16 v19, v10

    move/from16 v20, v13

    move-object/from16 v21, v2

    .line 65
    invoke-static/range {v16 .. v21}, Lic;->n(Lnc;Ljava/lang/Object;Ljava/lang/Object;Lf4;ZLqb;)V

    .line 66
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 67
    invoke-static {v6, v1, v5, v0}, Lic;->k(Lf4;Lic$a;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 68
    invoke-virtual {v9, v5, v2}, Lnc;->r(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_15
    move-object/from16 v27, v1

    move-object/from16 v29, v2

    goto :goto_10

    :cond_16
    move-object/from16 v37, v2

    const/16 v27, 0x0

    const/16 v29, 0x0

    .line 69
    :goto_10
    new-instance v1, Lgc;

    move-object/from16 v22, v1

    move-object/from16 v23, v12

    move-object/from16 v24, v14

    move/from16 v25, v0

    move-object/from16 v26, v6

    move-object/from16 v28, v9

    invoke-direct/range {v22 .. v29}, Lgc;-><init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLf4;Landroid/view/View;Lnc;Landroid/graphics/Rect;)V

    invoke-static {v3, v1}, Lfa;->a(Landroid/view/View;Ljava/lang/Runnable;)Lfa;

    goto :goto_13

    :cond_17
    :goto_11
    move-object/from16 v37, v2

    move-object/from16 v35, v6

    move/from16 v34, v10

    goto :goto_f

    :goto_12
    const/4 v15, 0x0

    :goto_13
    if-nez v5, :cond_18

    if-nez v15, :cond_18

    if-nez v11, :cond_18

    goto/16 :goto_c

    .line 70
    :cond_18
    invoke-static {v9, v11, v8, v4, v7}, Lic;->h(Lnc;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    .line 71
    invoke-static {v9, v5, v1, v2, v7}, Lic;->h(Lnc;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v10, 0x4

    .line 72
    invoke-static {v6, v10}, Lic;->o(Ljava/util/ArrayList;I)V

    move-object/from16 v16, v9

    move-object/from16 v17, v5

    move-object/from16 v18, v11

    move-object/from16 v19, v15

    move-object/from16 v20, v1

    move/from16 v21, v34

    .line 73
    invoke-static/range {v16 .. v21}, Lic;->m(Lnc;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_c

    if-eqz v8, :cond_19

    if-eqz v11, :cond_19

    .line 74
    iget-boolean v10, v8, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v10, :cond_19

    iget-boolean v10, v8, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v10, :cond_19

    iget-boolean v10, v8, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v10, :cond_19

    const/4 v10, 0x1

    .line 75
    invoke-virtual {v8, v10}, Landroidx/fragment/app/Fragment;->setHideReplaced(Z)V

    .line 76
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v10

    .line 77
    invoke-virtual {v9, v11, v10, v0}, Lnc;->p(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 78
    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 79
    new-instance v10, Lec;

    invoke-direct {v10, v0}, Lec;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v8, v10}, Lfa;->a(Landroid/view/View;Ljava/lang/Runnable;)Lfa;

    .line 80
    :cond_19
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 81
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v12, 0x0

    :goto_14
    if-ge v12, v10, :cond_1a

    .line 82
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 83
    sget-object v14, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 84
    invoke-virtual {v13}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v14

    .line 85
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x0

    .line 86
    invoke-virtual {v13, v14}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_14

    :cond_1a
    move-object/from16 v22, v9

    move-object/from16 v23, v1

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v11

    move-object/from16 v27, v0

    move-object/from16 v28, v15

    move-object/from16 v29, v2

    .line 87
    invoke-virtual/range {v22 .. v29}, Lnc;->q(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 88
    invoke-virtual {v9, v3, v1}, Lnc;->c(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 89
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_15
    if-ge v5, v0, :cond_1e

    .line 91
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 92
    sget-object v11, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 93
    invoke-virtual {v10}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v11

    .line 94
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v11, :cond_1b

    move-object/from16 v13, v36

    goto :goto_17

    :cond_1b
    const/4 v14, 0x0

    .line 95
    invoke-virtual {v10, v14}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    move-object/from16 v13, v36

    .line 96
    invoke-virtual {v13, v11, v14}, Lm4;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 97
    check-cast v10, Ljava/lang/String;

    const/4 v12, 0x0

    :goto_16
    if-ge v12, v0, :cond_1d

    .line 98
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1c

    .line 99
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 100
    invoke-virtual {v10, v11}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    goto :goto_17

    :cond_1c
    add-int/lit8 v12, v12, 0x1

    const/4 v14, 0x0

    goto :goto_16

    :cond_1d
    :goto_17
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v36, v13

    goto :goto_15

    .line 101
    :cond_1e
    new-instance v5, Lkc;

    move-object/from16 v22, v5

    move-object/from16 v23, v9

    move/from16 v24, v0

    move-object/from16 v25, v2

    move-object/from16 v26, v8

    move-object/from16 v27, v4

    move-object/from16 v28, v1

    invoke-direct/range {v22 .. v28}, Lkc;-><init>(Lnc;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v3, v5}, Lfa;->a(Landroid/view/View;Ljava/lang/Runnable;)Lfa;

    const/4 v0, 0x0

    .line 102
    invoke-static {v6, v0}, Lic;->o(Ljava/util/ArrayList;I)V

    .line 103
    invoke-virtual {v9, v15, v4, v2}, Lnc;->u(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :goto_18
    move-object/from16 v2, p0

    goto :goto_1a

    :cond_1f
    move-object v2, v0

    move-object/from16 v31, v5

    move/from16 v32, v14

    move/from16 v33, v15

    const/4 v0, 0x0

    .line 104
    iget-object v3, v2, Lxb;->u:Lsb;

    invoke-virtual {v3}, Lsb;->c()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 105
    iget-object v3, v2, Lxb;->u:Lsb;

    invoke-virtual {v3, v9}, Lsb;->a(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/view/ViewGroup;

    move-object v3, v14

    goto :goto_19

    :cond_20
    const/4 v3, 0x0

    :goto_19
    if-nez v3, :cond_21

    goto :goto_1a

    .line 106
    :cond_21
    iget-object v4, v1, Lic$a;->a:Landroidx/fragment/app/Fragment;

    .line 107
    iget-object v5, v1, Lic$a;->d:Landroidx/fragment/app/Fragment;

    .line 108
    invoke-static {v5, v4}, Lic;->g(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Lnc;

    move-result-object v6

    if-nez v6, :cond_22

    :goto_1a
    move/from16 v27, v32

    move/from16 v30, v33

    goto/16 :goto_21

    .line 109
    :cond_22
    iget-boolean v8, v1, Lic$a;->b:Z

    .line 110
    iget-boolean v9, v1, Lic$a;->e:Z

    .line 111
    invoke-static {v6, v4, v8}, Lic;->i(Lnc;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v8

    .line 112
    invoke-static {v6, v5, v9}, Lic;->j(Lnc;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v12

    .line 113
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 114
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 115
    iget-object v9, v1, Lic$a;->a:Landroidx/fragment/app/Fragment;

    .line 116
    iget-object v15, v1, Lic$a;->d:Landroidx/fragment/app/Fragment;

    if-eqz v9, :cond_29

    if-nez v15, :cond_23

    goto/16 :goto_1e

    .line 117
    :cond_23
    iget-boolean v14, v1, Lic$a;->b:Z

    .line 118
    invoke-virtual {v13}, Lm4;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_24

    const/4 v0, 0x0

    goto :goto_1b

    .line 119
    :cond_24
    invoke-static {v6, v9, v15, v14}, Lic;->l(Lnc;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    .line 120
    :goto_1b
    invoke-static {v6, v13, v0, v1}, Lic;->f(Lnc;Lf4;Ljava/lang/Object;Lic$a;)Lf4;

    move-result-object v2

    .line 121
    invoke-virtual {v13}, Lm4;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_25

    const/4 v0, 0x0

    goto :goto_1c

    :cond_25
    move-object/from16 v16, v0

    .line 122
    invoke-virtual {v2}, Lf4;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, v16

    :goto_1c
    if-nez v8, :cond_26

    if-nez v12, :cond_26

    if-nez v0, :cond_26

    goto/16 :goto_1e

    :cond_26
    move-object/from16 v22, v4

    const/4 v4, 0x1

    .line 123
    invoke-static {v9, v15, v14, v2, v4}, Lic;->c(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLf4;Z)V

    if-eqz v0, :cond_27

    .line 124
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 125
    invoke-virtual {v6, v0, v7, v11}, Lnc;->t(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    move-object/from16 v20, v9

    .line 126
    iget-boolean v9, v1, Lic$a;->e:Z

    move-object/from16 v21, v10

    .line 127
    iget-object v10, v1, Lic$a;->f:Lqb;

    move/from16 v23, v14

    move-object v14, v6

    move-object/from16 v24, v15

    move-object v15, v0

    move-object/from16 v16, v12

    move-object/from16 v17, v2

    move/from16 v18, v9

    move-object/from16 v19, v10

    .line 128
    invoke-static/range {v14 .. v19}, Lic;->n(Lnc;Ljava/lang/Object;Ljava/lang/Object;Lf4;ZLqb;)V

    if-eqz v8, :cond_28

    .line 129
    invoke-virtual {v6, v8, v4}, Lnc;->r(Ljava/lang/Object;Landroid/graphics/Rect;)V

    goto :goto_1d

    :cond_27
    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move/from16 v23, v14

    move-object/from16 v24, v15

    const/4 v4, 0x0

    .line 130
    :cond_28
    :goto_1d
    new-instance v2, Lhc;

    move-object/from16 v16, v20

    move-object v9, v2

    move-object/from16 v15, v21

    move-object v10, v6

    move-object v14, v11

    move-object v11, v13

    move-object/from16 v25, v5

    move-object v5, v12

    move-object v12, v0

    move-object/from16 v26, v0

    move-object v0, v13

    move-object v13, v1

    move-object/from16 v28, v14

    move/from16 v27, v32

    const/16 v29, 0x0

    move-object v14, v15

    move-object/from16 v32, v15

    move/from16 v30, v33

    move-object v15, v7

    move-object/from16 v17, v24

    move/from16 v18, v23

    move-object/from16 v19, v28

    move-object/from16 v20, v8

    move-object/from16 v21, v4

    invoke-direct/range {v9 .. v21}, Lhc;-><init>(Lnc;Lf4;Ljava/lang/Object;Lic$a;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    invoke-static {v3, v2}, Lfa;->a(Landroid/view/View;Ljava/lang/Runnable;)Lfa;

    move-object/from16 v20, v26

    goto :goto_1f

    :cond_29
    :goto_1e
    move-object/from16 v22, v4

    move-object/from16 v25, v5

    move-object/from16 v28, v11

    move-object v5, v12

    move-object v0, v13

    move/from16 v27, v32

    move/from16 v30, v33

    const/16 v29, 0x0

    move-object/from16 v32, v10

    move-object/from16 v20, v29

    :goto_1f
    if-nez v8, :cond_2a

    if-nez v20, :cond_2a

    if-nez v5, :cond_2a

    goto/16 :goto_21

    :cond_2a
    move-object/from16 v2, v25

    move-object/from16 v4, v28

    .line 131
    invoke-static {v6, v5, v2, v4, v7}, Lic;->h(Lnc;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 132
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2b

    goto :goto_20

    :cond_2b
    move-object/from16 v29, v5

    .line 133
    :cond_2c
    :goto_20
    invoke-virtual {v6, v8, v7}, Lnc;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 134
    iget-boolean v1, v1, Lic$a;->b:Z

    move-object v14, v6

    move-object v15, v8

    move-object/from16 v16, v29

    move-object/from16 v17, v20

    move-object/from16 v18, v22

    move/from16 v19, v1

    invoke-static/range {v14 .. v19}, Lic;->m(Lnc;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 135
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v6

    move-object v15, v1

    move-object/from16 v16, v8

    move-object/from16 v17, v4

    move-object/from16 v18, v29

    move-object/from16 v19, v2

    move-object/from16 v21, v32

    .line 136
    invoke-virtual/range {v14 .. v21}, Lnc;->q(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 137
    new-instance v5, Lfc;

    move-object v9, v5

    move-object v10, v8

    move-object v11, v6

    move-object v12, v7

    move-object/from16 v13, v22

    move-object/from16 v14, v32

    move-object v15, v4

    move-object/from16 v16, v2

    move-object/from16 v17, v29

    invoke-direct/range {v9 .. v17}, Lfc;-><init>(Ljava/lang/Object;Lnc;Landroid/view/View;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    invoke-static {v3, v5}, Lfa;->a(Landroid/view/View;Ljava/lang/Runnable;)Lfa;

    .line 138
    new-instance v2, Llc;

    move-object/from16 v4, v32

    invoke-direct {v2, v6, v4, v0}, Llc;-><init>(Lnc;Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-static {v3, v2}, Lfa;->a(Landroid/view/View;Ljava/lang/Runnable;)Lfa;

    .line 139
    invoke-virtual {v6, v3, v1}, Lnc;->c(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 140
    new-instance v1, Lmc;

    invoke-direct {v1, v6, v4, v0}, Lmc;-><init>(Lnc;Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-static {v3, v1}, Lfa;->a(Landroid/view/View;Ljava/lang/Runnable;)Lfa;

    :cond_2d
    :goto_21
    add-int/lit8 v14, v27, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v15, v30

    move-object/from16 v5, v31

    const/4 v6, 0x1

    const/4 v8, 0x0

    goto/16 :goto_4

    :cond_2e
    return-void
.end method
