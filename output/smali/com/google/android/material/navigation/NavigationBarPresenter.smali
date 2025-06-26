.class public Lcom/google/android/material/navigation/NavigationBarPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;
    }
.end annotation


# instance fields
.field public e:Lj1;

.field public f:Lcom/google/android/material/navigation/NavigationBarMenuView;

.field public g:Z

.field public h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->g:Z

    return-void
.end method


# virtual methods
.method public b(Lj1;Z)V
    .locals 0

    return-void
.end method

.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->h:I

    return v0
.end method

.method public o(Z)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->f:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->a()V

    goto/16 :goto_2

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->f:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 4
    iget-object v0, p1, Lcom/google/android/material/navigation/NavigationBarMenuView;->w:Lj1;

    if-eqz v0, :cond_7

    iget-object v1, p1, Lcom/google/android/material/navigation/NavigationBarMenuView;->j:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-nez v1, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {v0}, Lj1;->size()I

    move-result v0

    .line 6
    iget-object v1, p1, Lcom/google/android/material/navigation/NavigationBarMenuView;->j:[Lcom/google/android/material/navigation/NavigationBarItemView;

    array-length v1, v1

    if-eq v0, v1, :cond_3

    .line 7
    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->a()V

    goto :goto_2

    .line 8
    :cond_3
    iget v1, p1, Lcom/google/android/material/navigation/NavigationBarMenuView;->k:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_5

    .line 9
    iget-object v4, p1, Lcom/google/android/material/navigation/NavigationBarMenuView;->w:Lj1;

    invoke-virtual {v4, v3}, Lj1;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 10
    invoke-interface {v4}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 11
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    iput v4, p1, Lcom/google/android/material/navigation/NavigationBarMenuView;->k:I

    .line 12
    iput v3, p1, Lcom/google/android/material/navigation/NavigationBarMenuView;->l:I

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13
    :cond_5
    iget v3, p1, Lcom/google/android/material/navigation/NavigationBarMenuView;->k:I

    if-eq v1, v3, :cond_6

    .line 14
    iget-object v1, p1, Lcom/google/android/material/navigation/NavigationBarMenuView;->e:Lwh;

    invoke-static {p1, v1}, Luh;->a(Landroid/view/ViewGroup;Lqh;)V

    .line 15
    :cond_6
    iget v1, p1, Lcom/google/android/material/navigation/NavigationBarMenuView;->i:I

    iget-object v3, p1, Lcom/google/android/material/navigation/NavigationBarMenuView;->w:Lj1;

    invoke-virtual {v3}, Lj1;->l()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Lcom/google/android/material/navigation/NavigationBarMenuView;->e(II)Z

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_7

    .line 16
    iget-object v4, p1, Lcom/google/android/material/navigation/NavigationBarMenuView;->v:Lcom/google/android/material/navigation/NavigationBarPresenter;

    const/4 v5, 0x1

    .line 17
    iput-boolean v5, v4, Lcom/google/android/material/navigation/NavigationBarPresenter;->g:Z

    .line 18
    iget-object v4, p1, Lcom/google/android/material/navigation/NavigationBarMenuView;->j:[Lcom/google/android/material/navigation/NavigationBarItemView;

    aget-object v4, v4, v3

    iget v5, p1, Lcom/google/android/material/navigation/NavigationBarMenuView;->i:I

    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/NavigationBarItemView;->setLabelVisibilityMode(I)V

    .line 19
    iget-object v4, p1, Lcom/google/android/material/navigation/NavigationBarMenuView;->j:[Lcom/google/android/material/navigation/NavigationBarItemView;

    aget-object v4, v4, v3

    invoke-virtual {v4, v1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setShifting(Z)V

    .line 20
    iget-object v4, p1, Lcom/google/android/material/navigation/NavigationBarMenuView;->j:[Lcom/google/android/material/navigation/NavigationBarItemView;

    aget-object v4, v4, v3

    iget-object v5, p1, Lcom/google/android/material/navigation/NavigationBarMenuView;->w:Lj1;

    invoke-virtual {v5, v3}, Lj1;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    check-cast v5, Ll1;

    invoke-virtual {v4, v5, v2}, Lcom/google/android/material/navigation/NavigationBarItemView;->d(Ll1;I)V

    .line 21
    iget-object v4, p1, Lcom/google/android/material/navigation/NavigationBarMenuView;->v:Lcom/google/android/material/navigation/NavigationBarPresenter;

    .line 22
    iput-boolean v2, v4, Lcom/google/android/material/navigation/NavigationBarPresenter;->g:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public q(Lj1;Ll1;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public r(Lj1;Ll1;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public t(Landroid/content/Context;Lj1;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->e:Lj1;

    .line 2
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->f:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 3
    iput-object p2, p1, Lcom/google/android/material/navigation/NavigationBarMenuView;->w:Lj1;

    return-void
.end method

.method public u(Landroid/os/Parcelable;)V
    .locals 9

    .line 1
    instance-of v0, p1, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;

    if-eqz v0, :cond_5

    .line 2
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->f:Lcom/google/android/material/navigation/NavigationBarMenuView;

    check-cast p1, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;

    iget v1, p1, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;->e:I

    .line 3
    iget-object v2, v0, Lcom/google/android/material/navigation/NavigationBarMenuView;->w:Lj1;

    invoke-virtual {v2}, Lj1;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 4
    iget-object v5, v0, Lcom/google/android/material/navigation/NavigationBarMenuView;->w:Lj1;

    invoke-virtual {v5, v4}, Lj1;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 5
    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    if-ne v1, v6, :cond_0

    .line 6
    iput v1, v0, Lcom/google/android/material/navigation/NavigationBarMenuView;->k:I

    .line 7
    iput v4, v0, Lcom/google/android/material/navigation/NavigationBarMenuView;->l:I

    const/4 v0, 0x1

    .line 8
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->f:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 10
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;->f:Lcom/google/android/material/internal/ParcelableSparseArray;

    .line 11
    new-instance v1, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v2, 0x0

    .line 12
    :goto_2
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 13
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 14
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    if-eqz v5, :cond_3

    .line 15
    new-instance v6, Lcom/google/android/material/badge/BadgeDrawable;

    invoke-direct {v6, v0}, Lcom/google/android/material/badge/BadgeDrawable;-><init>(Landroid/content/Context;)V

    .line 16
    iget v7, v5, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->i:I

    .line 17
    invoke-virtual {v6, v7}, Lcom/google/android/material/badge/BadgeDrawable;->j(I)V

    .line 18
    iget v7, v5, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->h:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    .line 19
    invoke-virtual {v6, v7}, Lcom/google/android/material/badge/BadgeDrawable;->k(I)V

    .line 20
    :cond_2
    iget v7, v5, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->e:I

    .line 21
    invoke-virtual {v6, v7}, Lcom/google/android/material/badge/BadgeDrawable;->g(I)V

    .line 22
    iget v7, v5, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->f:I

    .line 23
    invoke-virtual {v6, v7}, Lcom/google/android/material/badge/BadgeDrawable;->i(I)V

    .line 24
    iget v7, v5, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->m:I

    .line 25
    invoke-virtual {v6, v7}, Lcom/google/android/material/badge/BadgeDrawable;->h(I)V

    .line 26
    iget v7, v5, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->o:I

    .line 27
    iget-object v8, v6, Lcom/google/android/material/badge/BadgeDrawable;->l:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 28
    iput v7, v8, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->o:I

    .line 29
    invoke-virtual {v6}, Lcom/google/android/material/badge/BadgeDrawable;->m()V

    .line 30
    iget v7, v5, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->p:I

    .line 31
    iget-object v8, v6, Lcom/google/android/material/badge/BadgeDrawable;->l:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 32
    iput v7, v8, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->p:I

    .line 33
    invoke-virtual {v6}, Lcom/google/android/material/badge/BadgeDrawable;->m()V

    .line 34
    iget-boolean v5, v5, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->n:Z

    .line 35
    invoke-virtual {v6, v5, v3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 36
    iget-object v7, v6, Lcom/google/android/material/badge/BadgeDrawable;->l:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 37
    iput-boolean v5, v7, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->n:Z

    .line 38
    invoke-virtual {v1, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 39
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BadgeDrawable\'s savedState cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_4
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->f:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {p1, v1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setBadgeDrawables(Landroid/util/SparseArray;)V

    :cond_5
    return-void
.end method

.method public v(Lu1;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public w()Landroid/os/Parcelable;
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;

    invoke-direct {v0}, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->f:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getSelectedItemId()I

    move-result v1

    iput v1, v0, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;->e:I

    .line 3
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->f:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getBadgeDrawables()Landroid/util/SparseArray;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/google/android/material/internal/ParcelableSparseArray;

    invoke-direct {v2}, Lcom/google/android/material/internal/ParcelableSparseArray;-><init>()V

    const/4 v3, 0x0

    .line 6
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 7
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 8
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/badge/BadgeDrawable;

    if-eqz v5, :cond_0

    .line 9
    iget-object v5, v5, Lcom/google/android/material/badge/BadgeDrawable;->l:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 10
    invoke-virtual {v2, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "badgeDrawable cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_1
    iput-object v2, v0, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;->f:Lcom/google/android/material/internal/ParcelableSparseArray;

    return-object v0
.end method
