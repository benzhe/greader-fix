.class public Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;
.super Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final synthetic m0:I


# instance fields
.field public P:I

.field public Q:Landroid/widget/TextView;

.field public R:Landroid/widget/TextView;

.field public S:Landroid/widget/TextView;

.field public T:Landroid/widget/TextView;

.field public U:Landroid/widget/ImageView;

.field public V:Landroidx/fragment/app/Fragment;

.field public W:Landroid/view/View;

.field public X:Landroid/view/View;

.field public Y:Landroid/view/View;

.field public Z:Z

.field public a0:I

.field public b0:Landroid/view/View;

.field public c0:Landroid/view/View;

.field public d0:Landroid/view/View;

.field public e0:Landroid/view/View;

.field public f0:Landroid/animation/AnimatorSet;

.field public g0:Landroid/animation/AnimatorSet;

.field public h0:I

.field public i0:I

.field public j0:I

.field public k0:I

.field public l0:Landroid/view/Menu;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->P:I

    const/4 v1, 0x1

    .line 3
    iput v1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->a0:I

    .line 4
    iput v0, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->j0:I

    .line 5
    iput v0, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->k0:I

    return-void
.end method


# virtual methods
.method public J(Landroid/content/Intent;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.noinnion.android.greader.reader.action.ITEM_LIST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->D()V

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.noinnion.android.greader.reader.action.ITEM_VIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4
    invoke-static {p1}, Ln56;->g1(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p1

    .line 5
    iget v0, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->P:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lon6;->c:Z

    if-nez v0, :cond_1

    const-string v0, "itemId"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "cursorPosition"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.noinnion.android.greader.reader.action.REFRESH_ITEM_POSITION"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 9
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10
    invoke-static {p0}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object p1

    invoke-virtual {p1, v1}, Lyd;->c(Landroid/content/Intent;)Z

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 11
    sput-boolean v0, Lon6;->c:Z

    .line 12
    iget v2, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->P:I

    if-ne v2, v1, :cond_2

    .line 13
    invoke-virtual {p0, p1}, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->X(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 14
    :cond_2
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->G:Landroidx/fragment/app/Fragment;

    instance-of v3, v2, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    if-eqz v3, :cond_3

    .line 15
    check-cast v2, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    invoke-virtual {v2, v1}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->n(Z)V

    .line 16
    :cond_3
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->f0:Landroid/animation/AnimatorSet;

    if-nez v2, :cond_4

    .line 17
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->W:Landroid/view/View;

    new-array v3, v1, [F

    iget v4, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->i0:I

    neg-int v4, v4

    iget v5, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->j0:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v3, v0

    const-string v4, "translationX"

    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 18
    iget-object v3, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->X:Landroid/view/View;

    new-array v5, v1, [F

    iget v6, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->i0:I

    neg-int v6, v6

    iget v7, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->j0:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    aput v6, v5, v0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 19
    iget-object v5, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->d0:Landroid/view/View;

    new-array v6, v1, [F

    iget v7, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->i0:I

    neg-int v7, v7

    iget v8, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->j0:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    aput v7, v6, v0

    invoke-static {v5, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 20
    iget-object v6, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->e0:Landroid/view/View;

    new-array v7, v1, [F

    iget v8, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->i0:I

    neg-int v8, v8

    iget v9, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->j0:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    aput v8, v7, v0

    invoke-static {v6, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 21
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v2, v7, v0

    aput-object v3, v7, v1

    const/4 v0, 0x2

    aput-object v5, v7, v0

    const/4 v0, 0x3

    aput-object v4, v7, v0

    .line 22
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0x15e

    .line 23
    invoke-virtual {v6, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 24
    iput-object v6, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->f0:Landroid/animation/AnimatorSet;

    .line 25
    :cond_4
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->f0:Landroid/animation/AnimatorSet;

    new-instance v2, Ldq6;

    invoke-direct {v2, p0, p1}, Ldq6;-><init>(Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 26
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->f0:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 27
    :goto_0
    invoke-virtual {p0, v1}, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->V(I)V

    goto :goto_1

    .line 28
    :cond_5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const p1, 0x7f010029

    const v0, 0x7f010024

    .line 29
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_1
    return-void
.end method

.method public N()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->P:I

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->N()V

    :cond_0
    return-void
.end method

.method public O()V
    .locals 7

    .line 1
    sget-object v0, Lon6;->a:Lew6;

    invoke-virtual {v0, p0}, Lew6;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x19

    if-le v1, v2, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u2026"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_0
    new-instance v1, Lro$c;

    invoke-direct {v1, p0}, Lro$c;-><init>(Landroid/app/Activity;)V

    const v2, 0x7f11032e

    .line 5
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 6
    iput-object v2, v1, Lro$c;->d:Ljava/lang/CharSequence;

    const v2, 0x7f0902e5

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f11006d

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v6, 0x7f110154

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lro$c;->c(ILjava/lang/CharSequence;)Lro$c;

    const v2, 0x7f0902e6

    const v3, 0x7f11006e

    .line 8
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Lro$c;->c(ILjava/lang/CharSequence;)Lro$c;

    .line 9
    sget-object v2, Lon6;->a:Lew6;

    iget-object v6, v2, Lew6;->a:Lip6;

    if-nez v6, :cond_1

    iget-object v2, v2, Lew6;->b:Llp6;

    if-eqz v2, :cond_2

    :cond_1
    const v2, 0x7f0902ec

    .line 10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lro$c;->c(ILjava/lang/CharSequence;)Lro$c;

    const v0, 0x7f0902ed

    .line 11
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lro$c;->c(ILjava/lang/CharSequence;)Lro$c;

    :cond_2
    const v0, 0x7f0d0002

    .line 12
    invoke-virtual {v1, v0}, Lro$c;->a(I)Lro$c;

    .line 13
    new-instance v0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity$b;

    invoke-direct {v0, p0}, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity$b;-><init>(Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;)V

    .line 14
    iput-object v0, v1, Lro$c;->f:Landroid/content/DialogInterface$OnClickListener;

    .line 15
    invoke-virtual {v1}, Lro$c;->d()Lro;

    return-void
.end method

.method public final T()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->V:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->o()Lwb;

    move-result-object v1

    check-cast v1, Lxb;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v2, Lqb;

    invoke-direct {v2, v1}, Lqb;-><init>(Lxb;)V

    .line 5
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->V:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v1}, Lqb;->q(Landroidx/fragment/app/Fragment;)Ldc;

    invoke-virtual {v2}, Ldc;->c()I

    .line 6
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->V:Landroidx/fragment/app/Fragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->V:Landroidx/fragment/app/Fragment;

    :cond_0
    return-void
.end method

.method public final U()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->t()Lu;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lu;->o(Z)V

    :cond_0
    return-void
.end method

.method public final V(I)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->P:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iput p1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->P:I

    const v3, 0x7f0901c9

    const v4, 0x7f0901ca

    const v5, 0x7f0901ce

    const v6, 0x7f0901cf

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->U()V

    .line 4
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->A:Lnet/frakbot/glowpadbackport/GlowPadView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->l0:Landroid/view/Menu;

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 6
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->l0:Landroid/view/Menu;

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 7
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->l0:Landroid/view/Menu;

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 8
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->l0:Landroid/view/Menu;

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->U()V

    .line 10
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->x:Landroidx/appcompat/widget/Toolbar;

    invoke-static {}, Llw6;->i()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 11
    invoke-static {p0}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object p1

    iget p1, p1, Lhw6;->n:I

    if-lez p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->A:Lnet/frakbot/glowpadbackport/GlowPadView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->l0:Landroid/view/Menu;

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 14
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->l0:Landroid/view/Menu;

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 15
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->l0:Landroid/view/Menu;

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 16
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->l0:Landroid/view/Menu;

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_4
    :goto_1
    return-void
.end method

.method public final W()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->f0:Landroid/animation/AnimatorSet;

    .line 3
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->g0:Landroid/animation/AnimatorSet;

    .line 4
    invoke-static {v0}, Ln56;->W0(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->h0:I

    .line 5
    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->i0:I

    .line 6
    invoke-static {v0}, Liw6;->v(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->a0:I

    const/high16 v2, 0x42400000    # 48.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_0

    .line 7
    invoke-static {v0, v2}, Ln56;->o0(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->j0:I

    .line 8
    iput v4, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->k0:I

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    if-ne v1, v5, :cond_1

    .line 9
    iput v4, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->j0:I

    .line 10
    invoke-static {v0, v2}, Ln56;->o0(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->k0:I

    goto :goto_0

    .line 11
    :cond_1
    iput v4, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->j0:I

    .line 12
    iput v4, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->k0:I

    :goto_0
    const-string v1, "show_item_list"

    .line 13
    invoke-static {v0, v1, v3}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 14
    iput-boolean v1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->Z:Z

    .line 15
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->W:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->i0:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 16
    iget v1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->P:I

    if-ne v1, v3, :cond_2

    .line 17
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->W:Landroid/view/View;

    neg-int v2, v2

    iget v5, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->j0:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 18
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->X:Landroid/view/View;

    iget v2, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->i0:I

    neg-int v2, v2

    iget v5, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->j0:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 19
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->d0:Landroid/view/View;

    iget v2, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->i0:I

    neg-int v2, v2

    iget v5, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->j0:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 20
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->e0:Landroid/view/View;

    iget v2, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->i0:I

    neg-int v2, v2

    iget v5, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->j0:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    .line 21
    :cond_2
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->W:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 22
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->X:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 23
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->d0:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 24
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->e0:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 25
    :goto_1
    invoke-static {v0}, Ln56;->n1(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 26
    iget v0, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->P:I

    if-ne v0, v3, :cond_3

    .line 27
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->X:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_2

    .line 28
    :cond_3
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->X:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->h0:I

    iget v2, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->i0:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 29
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->U()V

    .line 30
    :goto_2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->Y:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->h0:I

    iget v2, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->j0:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_5

    .line 31
    :cond_4
    iget v0, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->P:I

    if-ne v0, v3, :cond_6

    .line 32
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->X:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-boolean v1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->Z:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->i0:I

    iget v2, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->j0:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->k0:I

    sub-int v4, v1, v2

    :cond_5
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_3

    .line 33
    :cond_6
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->X:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->h0:I

    iget v2, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->i0:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 34
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->U()V

    .line 35
    :goto_3
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->Y:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-boolean v1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->Z:Z

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->h0:I

    iget v2, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->i0:I

    goto :goto_4

    :cond_7
    iget v1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->h0:I

    iget v2, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->j0:I

    :goto_4
    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_5
    return-void
.end method

.method public final X(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-direct {v0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;-><init>()V

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->V:Landroidx/fragment/app/Fragment;

    .line 2
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->o()Lwb;

    move-result-object p1

    check-cast p1, Lxb;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lqb;

    invoke-direct {v0, p1}, Lqb;-><init>(Lxb;)V

    const p1, 0x7f090127

    .line 6
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->V:Landroidx/fragment/app/Fragment;

    const-string v2, "fragment_item"

    invoke-virtual {v0, p1, v1, v2}, Ldc;->g(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ldc;

    invoke-virtual {v0}, Ldc;->c()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public Y()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->P:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->G:Landroidx/fragment/app/Fragment;

    instance-of v2, v0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3
    check-cast v0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    invoke-virtual {v0, v3}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->n(Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->b0:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->c0:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->g0:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->W:Landroid/view/View;

    new-array v2, v1, [F

    const/4 v4, 0x0

    aput v4, v2, v3

    const-string v5, "translationX"

    invoke-static {v0, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 8
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->X:Landroid/view/View;

    new-array v6, v1, [F

    aput v4, v6, v3

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 9
    iget-object v6, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->d0:Landroid/view/View;

    new-array v7, v1, [F

    aput v4, v7, v3

    invoke-static {v6, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 10
    iget-object v7, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->e0:Landroid/view/View;

    new-array v8, v1, [F

    aput v4, v8, v3

    invoke-static {v7, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 11
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v0, v7, v3

    aput-object v2, v7, v1

    const/4 v0, 0x2

    aput-object v6, v7, v0

    const/4 v0, 0x3

    aput-object v4, v7, v0

    .line 12
    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x15e

    .line 13
    invoke-virtual {v5, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 14
    new-instance v0, Leq6;

    invoke-direct {v0, p0}, Leq6;-><init>(Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;)V

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 15
    iput-object v5, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->g0:Landroid/animation/AnimatorSet;

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->g0:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 17
    invoke-virtual {p0, v3}, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->V(I)V

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->T()V

    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_8

    .line 2
    invoke-static {v0}, Liw6;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lon6;->l:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "last_sync_time"

    const-wide/16 v2, 0x0

    if-nez p1, :cond_0

    .line 3
    invoke-static {v0, p2, v2, v3}, Liw6;->U(Landroid/content/Context;Ljava/lang/String;J)V

    .line 4
    invoke-static {v0}, Lon6;->i(Landroid/content/Context;)Lep6;

    move-result-object p1

    invoke-virtual {p1}, Lep6;->E()V

    .line 5
    :cond_0
    invoke-static {v0}, Liw6;->v(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->a0:I

    .line 6
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->W()V

    .line 7
    sget-wide v4, Lon6;->k:J

    invoke-static {v0}, Liw6;->H(Landroid/content/Context;)J

    move-result-wide v6

    cmp-long p1, v4, v6

    if-eqz p1, :cond_1

    .line 8
    invoke-static {p0}, Ln56;->M1(Landroid/content/Context;)V

    .line 9
    :cond_1
    sget p1, Lon6;->j:I

    invoke-static {v0}, Liw6;->I(Landroid/content/Context;)I

    move-result p3

    if-eq p1, p3, :cond_2

    .line 10
    invoke-static {v0, p2, v2, v3}, Liw6;->U(Landroid/content/Context;Ljava/lang/String;J)V

    .line 11
    :cond_2
    invoke-static {}, Lon6;->l()V

    .line 12
    invoke-static {p0}, Llw6;->a(Landroid/app/Activity;)V

    .line 13
    invoke-static {p0}, Lon6;->a(Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 14
    invoke-static {v0}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object p2

    .line 15
    iget-boolean p3, p2, Lhw6;->i:Z

    invoke-static {v0}, Liw6;->a0(Landroid/content/Context;)Z

    move-result v2

    if-eq p3, v2, :cond_3

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 17
    new-instance p1, Landroid/content/Intent;

    const-class p3, Lcom/noinnion/android/greader/ui/home/HomeActivity;

    invoke-direct {p1, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    .line 18
    :cond_3
    iget p3, p2, Lhw6;->s:I

    invoke-static {v0}, Liw6;->q(Landroid/content/Context;)I

    move-result v2

    if-ne p3, v2, :cond_5

    iget p3, p2, Lhw6;->t:I

    .line 19
    invoke-static {v0}, Liw6;->r(Landroid/content/Context;)I

    move-result v2

    if-ne p3, v2, :cond_5

    iget p3, p2, Lhw6;->q:I

    .line 20
    invoke-static {v0}, Liw6;->o(Landroid/content/Context;)I

    move-result v2

    if-ne p3, v2, :cond_5

    iget p2, p2, Lhw6;->r:I

    .line 21
    invoke-static {v0}, Liw6;->p(Landroid/content/Context;)I

    move-result p3

    if-eq p2, p3, :cond_4

    goto :goto_0

    :cond_4
    move v1, p1

    goto :goto_1

    .line 22
    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 23
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 24
    :goto_1
    invoke-static {v0}, Lon6;->j(Landroid/content/Context;)V

    .line 25
    sget-object p1, Lon6;->e:Lkw6;

    if-nez p1, :cond_6

    .line 26
    invoke-static {v0}, Lkw6;->a(Landroid/content/Context;)Lkw6;

    move-result-object p1

    sput-object p1, Lon6;->e:Lkw6;

    goto :goto_2

    .line 27
    :cond_6
    invoke-virtual {p1, v0}, Lkw6;->b(Landroid/content/Context;)V

    :goto_2
    if-nez v1, :cond_b

    .line 28
    sget p1, Lon6;->m:I

    invoke-static {v0}, Liw6;->j(Landroid/content/Context;)I

    move-result p2

    if-ne p1, p2, :cond_7

    sget p1, Lon6;->n:I

    .line 29
    invoke-static {v0}, Liw6;->k(Landroid/content/Context;)I

    move-result p2

    if-ne p1, p2, :cond_7

    sget p1, Lon6;->o:I

    .line 30
    invoke-static {v0}, Liw6;->i(Landroid/content/Context;)I

    move-result p2

    if-eq p1, p2, :cond_b

    .line 31
    :cond_7
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->C()V

    .line 32
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    goto :goto_4

    :cond_8
    const/4 v0, 0x2

    if-eq p1, v0, :cond_a

    const/4 v0, 0x3

    if-ne p1, v0, :cond_9

    const/4 v0, -0x1

    if-ne p2, v0, :cond_9

    goto :goto_3

    .line 33
    :cond_9
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_4

    .line 34
    :cond_a
    :goto_3
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->K()V

    :cond_b
    :goto_4
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->y:Lcom/miguelcatalan/materialsearchview/MaterialSearchView;

    .line 2
    iget-boolean v1, v0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->f:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->a()V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->j:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->a()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->V:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_4

    .line 3
    check-cast p1, Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->s()V

    goto/16 :goto_2

    .line 4
    :sswitch_1
    invoke-virtual {p0, v0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->S(Z)V

    .line 5
    invoke-static {p0}, Lyo6;->i(Landroid/app/Activity;)V

    goto/16 :goto_2

    .line 6
    :sswitch_2
    sget-object p1, Lon6;->a:Lew6;

    iget-object p1, p1, Lew6;->b:Llp6;

    if-eqz p1, :cond_1

    .line 7
    iget p1, p1, Llp6;->g:I

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 8
    invoke-static {p0, v0}, Lyo6;->h(Landroid/content/Context;Z)V

    goto/16 :goto_2

    .line 9
    :cond_1
    invoke-static {p0, v0}, Lyo6;->f(Landroid/content/Context;Z)V

    goto/16 :goto_2

    .line 10
    :sswitch_3
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->y:Lcom/miguelcatalan/materialsearchview/MaterialSearchView;

    .line 11
    invoke-virtual {p1, v2}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->c(Z)V

    goto/16 :goto_2

    .line 12
    :sswitch_4
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->V:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_4

    .line 13
    check-cast p1, Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->C()V

    goto/16 :goto_2

    .line 14
    :sswitch_5
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->V:Landroidx/fragment/app/Fragment;

    instance-of v0, p1, Lcom/noinnion/android/greader/ui/item/ItemFragment;

    if-eqz v0, :cond_4

    .line 15
    check-cast p1, Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->B()V

    goto/16 :goto_2

    .line 16
    :sswitch_6
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->V:Landroidx/fragment/app/Fragment;

    instance-of v0, p1, Lcom/noinnion/android/greader/ui/item/ItemFragment;

    if-eqz v0, :cond_4

    .line 17
    check-cast p1, Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->y()V

    goto/16 :goto_2

    .line 18
    :sswitch_7
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->G()V

    goto/16 :goto_2

    .line 19
    :sswitch_8
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->Y()V

    .line 20
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->G()V

    goto/16 :goto_2

    .line 21
    :sswitch_9
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 22
    iget-object v3, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->X:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    const-string v4, "show_item_list"

    const v5, 0x7f090167

    const v6, 0x7f090166

    if-lez v3, :cond_2

    new-array v3, v1, [I

    .line 23
    iget-object v7, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->X:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    aput v7, v3, v0

    aput v0, v3, v2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 24
    new-instance v7, Lfq6;

    invoke-direct {v7, p0}, Lfq6;-><init>(Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;)V

    invoke-virtual {v3, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v7, v1, [I

    .line 25
    iget-object v8, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->Y:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    aput v8, v7, v0

    iget-object v8, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->X:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->Y:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v8

    aput v9, v7, v2

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 26
    new-instance v8, Lgq6;

    invoke-direct {v8, p0}, Lgq6;-><init>(Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 27
    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v8, 0x7f080144

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    if-ne p1, v1, :cond_3

    .line 29
    iput-boolean v0, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->Z:Z

    .line 30
    invoke-static {p0, v4, v0}, Liw6;->S(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    new-array v3, v1, [I

    .line 31
    iget-object v7, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->X:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    aput v7, v3, v0

    iget v7, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->i0:I

    iget v8, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->j0:I

    sub-int/2addr v7, v8

    aput v7, v3, v2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 32
    new-instance v7, Lhq6;

    invoke-direct {v7, p0}, Lhq6;-><init>(Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;)V

    invoke-virtual {v3, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v7, v1, [I

    .line 33
    iget-object v8, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->Y:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    aput v8, v7, v0

    iget v8, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->h0:I

    iget v9, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->i0:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->k0:I

    sub-int/2addr v8, v9

    aput v8, v7, v2

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 34
    new-instance v8, Liq6;

    invoke-direct {v8, p0}, Liq6;-><init>(Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 35
    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v8, 0x7f080143

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 36
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    if-ne p1, v1, :cond_3

    .line 37
    iput-boolean v2, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->Z:Z

    .line 38
    invoke-static {p0, v4, v2}, Liw6;->S(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 39
    :cond_3
    :goto_1
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v3, v1, v0

    aput-object v7, v1, v2

    .line 40
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x15e

    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 42
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2

    .line 43
    :sswitch_a
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->V:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_4

    .line 44
    check-cast p1, Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->u()V

    goto :goto_2

    .line 45
    :sswitch_b
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->V:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_4

    .line 46
    check-cast p1, Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 47
    iget-object v2, p1, Lcom/noinnion/android/greader/ui/item/ItemFragment;->i:Lap6;

    if-eqz v2, :cond_4

    .line 48
    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->o()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->r(Landroid/webkit/WebView;Lap6;)Z

    .line 49
    iget-boolean v2, v2, Lap6;->s:Z

    invoke-virtual {p1, v1, v2, v0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->m(IZZ)V

    goto :goto_2

    .line 50
    :sswitch_c
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->Y()V

    goto :goto_2

    .line 51
    :sswitch_d
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->V:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_4

    .line 52
    check-cast p1, Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 53
    iget-object v0, p1, Lcom/noinnion/android/greader/ui/item/ItemFragment;->i:Lap6;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lwb;

    move-result-object p1

    iget-wide v0, v0, Lap6;->e:J

    invoke-static {p1, v0, v1}, Lcom/noinnion/android/greader/ui/item/EditTagDialog;->d(Lwb;J)V

    :cond_4
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090058 -> :sswitch_d
        0x7f09006a -> :sswitch_c
        0x7f09006b -> :sswitch_c
        0x7f090095 -> :sswitch_b
        0x7f090110 -> :sswitch_a
        0x7f090166 -> :sswitch_9
        0x7f090167 -> :sswitch_9
        0x7f090196 -> :sswitch_8
        0x7f090197 -> :sswitch_8
        0x7f09019e -> :sswitch_7
        0x7f090211 -> :sswitch_6
        0x7f090212 -> :sswitch_6
        0x7f090250 -> :sswitch_5
        0x7f090251 -> :sswitch_5
        0x7f09027f -> :sswitch_4
        0x7f090297 -> :sswitch_3
        0x7f0902e7 -> :sswitch_2
        0x7f0902e8 -> :sswitch_1
        0x7f09035d -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->W()V

    .line 3
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->G:Landroidx/fragment/app/Fragment;

    instance-of v0, p1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    iget v0, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->P:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->n(Z)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/noinnion/android/reader/ui/BaseActivity;->y(Landroid/os/Bundle;ZZ)V

    .line 2
    invoke-static {p0}, Ln56;->M1(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "force_recreate"

    .line 7
    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8
    sget-object v4, Lon6;->a:Lew6;

    invoke-virtual {v4}, Lew6;->b()V

    .line 9
    :cond_2
    sget-object v4, Lon6;->a:Lew6;

    invoke-virtual {v4, v3, v2}, Lew6;->g(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 10
    invoke-static {v3}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object v2

    .line 11
    sget-object v3, Lon6;->a:Lew6;

    iget-boolean v2, v2, Lhw6;->e:Z

    iput-boolean v2, v3, Lew6;->f:Z

    .line 12
    iget-boolean v2, v3, Lew6;->e:Z

    if-nez v2, :cond_3

    iget-object v2, v3, Lew6;->b:Llp6;

    if-eqz v2, :cond_4

    iget v2, v2, Llp6;->g:I

    if-ne v2, v0, :cond_4

    .line 13
    :cond_3
    iput-boolean v1, v3, Lew6;->f:Z

    :cond_4
    const v1, 0x7f0c005b

    .line 14
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->o()Lwb;

    move-result-object v1

    const-string v2, "fragment_item_list"

    const v3, 0x7f090128

    const-string v4, "fragment_sub_list"

    const v5, 0x7f090129

    if-nez p1, :cond_5

    .line 16
    check-cast v1, Lxb;

    .line 17
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v6, Lqb;

    invoke-direct {v6, v1}, Lqb;-><init>(Lxb;)V

    .line 19
    new-instance v1, Lqu6;

    invoke-direct {v1}, Lqu6;-><init>()V

    iput-object v1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->F:Landroidx/fragment/app/Fragment;

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-static {v7}, Ln56;->g1(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 21
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->F:Landroidx/fragment/app/Fragment;

    .line 22
    invoke-virtual {v6, v5, v1, v4, v0}, Lqb;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 23
    new-instance v1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    invoke-direct {v1}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;-><init>()V

    iput-object v1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->G:Landroidx/fragment/app/Fragment;

    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4}, Ln56;->g1(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 25
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->G:Landroidx/fragment/app/Fragment;

    .line 26
    invoke-virtual {v6, v3, v1, v2, v0}, Lqb;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 27
    invoke-virtual {v6}, Lqb;->c()I

    goto :goto_0

    .line 28
    :cond_5
    iget-object v6, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->F:Landroidx/fragment/app/Fragment;

    if-nez v6, :cond_6

    .line 29
    invoke-virtual {v1, v4}, Lwb;->c(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    iput-object v4, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->F:Landroidx/fragment/app/Fragment;

    .line 30
    :cond_6
    iget-object v4, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->G:Landroidx/fragment/app/Fragment;

    if-nez v4, :cond_7

    .line 31
    invoke-virtual {v1, v2}, Lwb;->c(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    iput-object v2, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->G:Landroidx/fragment/app/Fragment;

    .line 32
    :cond_7
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->V:Landroidx/fragment/app/Fragment;

    if-nez v2, :cond_8

    const-string v2, "fragment_item"

    .line 33
    invoke-virtual {v1, v2}, Lwb;->c(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    iput-object v1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->V:Landroidx/fragment/app/Fragment;

    .line 34
    :cond_8
    :goto_0
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->W:Landroid/view/View;

    .line 35
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->X:Landroid/view/View;

    const v1, 0x7f090127

    .line 36
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->Y:Landroid/view/View;

    .line 37
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->W:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 38
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->X:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 39
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->Y:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    const v0, 0x7f090204

    .line 40
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->b0:Landroid/view/View;

    const v0, 0x7f090205

    .line 41
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->c0:Landroid/view/View;

    const v0, 0x7f0902a5

    .line 42
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->d0:Landroid/view/View;

    const v0, 0x7f0902a6

    .line 43
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->e0:Landroid/view/View;

    .line 44
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->W()V

    .line 45
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->F()V

    .line 46
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->E()V

    .line 47
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->C()V

    const v0, 0x7f09006a

    .line 48
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09006b

    .line 49
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090250

    .line 50
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090251

    .line 51
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090211

    .line 52
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090212

    .line 53
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090196

    .line 54
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090197

    .line 55
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090166

    .line 56
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 57
    iget-boolean v1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->Z:Z

    const v2, 0x7f080144

    const v3, 0x7f080143

    if-eqz v1, :cond_9

    const v1, 0x7f080143

    goto :goto_1

    :cond_9
    const v1, 0x7f080144

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090167

    .line 59
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 60
    iget-boolean v1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->Z:Z

    if-eqz v1, :cond_a

    const v2, 0x7f080143

    :cond_a
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-virtual {p0, p1}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->I(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0d0005

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 3
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->l0:Landroid/view/Menu;

    const v1, 0x7f0901ce

    .line 4
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090095

    .line 6
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->S:Landroid/widget/TextView;

    .line 7
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f09035d

    .line 8
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->R:Landroid/widget/TextView;

    .line 9
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090110

    .line 10
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->Q:Landroid/widget/TextView;

    .line 11
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090245

    .line 12
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->T:Landroid/widget/TextView;

    const v2, 0x7f09027f

    .line 13
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->U:Landroid/widget/ImageView;

    .line 14
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090058

    .line 15
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0901c9

    .line 16
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    .line 17
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    const v2, 0x7f0902e4

    .line 18
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SwitchCompat;

    .line 19
    invoke-static {v0}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object v3

    iget-boolean v3, v3, Lhw6;->e:Z

    xor-int/2addr v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 20
    new-instance v3, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity$a;

    invoke-direct {v3, p0}, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity$a;-><init>(Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v2, 0x7f090297

    .line 21
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 22
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0902e7

    .line 23
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->D:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 24
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->D:Landroid/view/View;

    iget-object v3, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->N:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$e;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    const v2, 0x7f0902e8

    .line 26
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->E:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 27
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v2, 0x7f09019e

    .line 28
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 29
    invoke-static {v0}, Liw6;->j(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 31
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->N:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$e;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 34
    :cond_3
    :goto_0
    sget-boolean p1, Lon6;->b:Z

    if-eqz p1, :cond_4

    .line 35
    invoke-virtual {p0, v1}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->S(Z)V

    .line 36
    :cond_4
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->R()V

    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->P:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->G:Landroidx/fragment/app/Fragment;

    instance-of v2, v0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    invoke-virtual {v0, p1}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->o(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_0
    if-ne v0, v1, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->V:Landroidx/fragment/app/Fragment;

    instance-of v2, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {v0, p1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->z(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->P:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->G:Landroidx/fragment/app/Fragment;

    instance-of v2, v0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    invoke-virtual {v0, p1}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->p(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_0
    if-ne v0, v1, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->Y()V

    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->V:Landroidx/fragment/app/Fragment;

    instance-of v2, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {v0, p1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->A(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 5
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 3
    :sswitch_0
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->V:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 4
    check-cast v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {v0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->I()V

    .line 5
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return v1

    .line 6
    :sswitch_1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->l0:Landroid/view/Menu;

    invoke-virtual {p0, p1}, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    return v1

    .line 7
    :sswitch_2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->V:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    .line 8
    check-cast v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {v0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->G()V

    .line 9
    :cond_1
    invoke-static {p0}, Lon6;->h(Landroid/content/Context;)Lkw6;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    xor-int/2addr v2, v1

    iput-boolean v2, v0, Lkw6;->b:Z

    .line 10
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return v1

    .line 11
    :sswitch_3
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->V:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_2

    .line 12
    check-cast p1, Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->F()V

    :cond_2
    return v1

    .line 13
    :sswitch_4
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->V:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_3

    .line 14
    check-cast p1, Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->E()V

    :cond_3
    return v1

    .line 15
    :sswitch_5
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->V:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_4

    .line 16
    check-cast p1, Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 17
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v2, Luq6;

    invoke-direct {v2, p1}, Luq6;-><init>(Lcom/noinnion/android/greader/ui/item/ItemFragment;)V

    invoke-static {v0, v2}, Lcom/noinnion/android/greader/ui/setting/ArticleControlsPreferenceFragment;->j(Landroidx/fragment/app/FragmentActivity;Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_4
    return v1

    .line 18
    :sswitch_6
    iget p1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->P:I

    if-eqz p1, :cond_5

    .line 19
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->Y()V

    goto :goto_0

    :cond_5
    if-nez p1, :cond_6

    .line 20
    invoke-super {p0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->N()V

    :cond_6
    :goto_0
    return v1

    :cond_7
    :goto_1
    const/4 p1, 0x0

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_6
        0x7f0901c3 -> :sswitch_5
        0x7f0901c7 -> :sswitch_4
        0x7f0901cc -> :sswitch_3
        0x7f0901cd -> :sswitch_2
        0x7f0901cf -> :sswitch_1
        0x7f0901d0 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const v0, 0x7f0901cc

    .line 1
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->V:Landroidx/fragment/app/Fragment;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    check-cast v1, Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {v1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const v1, 0x7f110195

    goto :goto_1

    :cond_1
    const v1, 0x7f110196

    .line 3
    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    const v0, 0x7f0901cd

    .line 4
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 5
    invoke-static {p0}, Lon6;->h(Landroid/content/Context;)Lkw6;

    move-result-object v1

    iget-boolean v1, v1, Lkw6;->b:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    const v0, 0x7f0901d0

    .line 6
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->V:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_2

    check-cast v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 8
    iget-boolean v0, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->D:Z

    if-eqz v0, :cond_3

    :cond_2
    const/4 v2, 0x1

    .line 9
    :cond_3
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    return v3
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->onResume()V

    .line 2
    invoke-static {p0}, Lrn6;->getClientName(Landroid/content/Context;)Ljava/lang/String;

    invoke-static {p0}, Llw6;->j(Landroid/content/Context;)Ljava/lang/String;

    return-void
.end method
