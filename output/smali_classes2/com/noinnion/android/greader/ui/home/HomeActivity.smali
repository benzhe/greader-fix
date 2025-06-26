.class public Lcom/noinnion/android/greader/ui/home/HomeActivity;
.super Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public P:Lnet/simonvt/menudrawer/MenuDrawer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;-><init>()V

    return-void
.end method

.method public static T(Landroid/app/Activity;)V
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/noinnion/android/greader/ui/home/HomeActivity;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/noinnion/android/greader/ui/home/HomeActivity;

    .line 3
    iget-object p0, p0, Lcom/noinnion/android/greader/ui/home/HomeActivity;->P:Lnet/simonvt/menudrawer/MenuDrawer;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->i(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public H()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->H()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object v0

    iget-boolean v0, v0, Lhw6;->l:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeActivity;->P:Lnet/simonvt/menudrawer/MenuDrawer;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->i(Z)V

    :cond_0
    return-void
.end method

.method public J(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.noinnion.android.greader.reader.action.ITEM_LIST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->D()V

    .line 3
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeActivity;->P:Lnet/simonvt/menudrawer/MenuDrawer;

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->b(Z)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.noinnion.android.greader.reader.action.ITEM_VIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    const-class v0, Lcom/noinnion/android/greader/ui/item/ItemActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 7
    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const p1, 0x7f010029

    const v0, 0x7f010024

    .line 8
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public O()V
    .locals 5

    .line 1
    sget-object v0, Lon6;->a:Lew6;

    invoke-virtual {v0, p0}, Lew6;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

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

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lro$c;->c(ILjava/lang/CharSequence;)Lro$c;

    const v0, 0x7f0902e6

    const v2, 0x7f11006e

    .line 8
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lro$c;->c(ILjava/lang/CharSequence;)Lro$c;

    const v0, 0x7f0d0002

    .line 9
    invoke-virtual {v1, v0}, Lro$c;->a(I)Lro$c;

    .line 10
    new-instance v0, Lsp6;

    invoke-direct {v0, p0}, Lsp6;-><init>(Lcom/noinnion/android/greader/ui/home/HomeActivity;)V

    .line 11
    iput-object v0, v1, Lro$c;->f:Landroid/content/DialogInterface$OnClickListener;

    .line 12
    invoke-virtual {v1}, Lro$c;->d()Lro;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_a

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
    sget-wide v4, Lon6;->k:J

    invoke-static {v0}, Liw6;->H(Landroid/content/Context;)J

    move-result-wide v6

    cmp-long p1, v4, v6

    if-eqz p1, :cond_1

    .line 6
    invoke-static {p0}, Ln56;->M1(Landroid/content/Context;)V

    .line 7
    :cond_1
    sget p1, Lon6;->j:I

    invoke-static {v0}, Liw6;->I(Landroid/content/Context;)I

    move-result p3

    if-eq p1, p3, :cond_2

    .line 8
    invoke-static {v0, p2, v2, v3}, Liw6;->U(Landroid/content/Context;Ljava/lang/String;J)V

    .line 9
    :cond_2
    invoke-static {}, Lon6;->l()V

    .line 10
    invoke-static {p0}, Llw6;->a(Landroid/app/Activity;)V

    .line 11
    invoke-static {p0}, Lon6;->a(Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 12
    invoke-static {v0}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object p2

    .line 13
    iget-boolean p3, p2, Lhw6;->i:Z

    invoke-static {v0}, Liw6;->a0(Landroid/content/Context;)Z

    move-result v2

    if-eq p3, v2, :cond_3

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 15
    new-instance p1, Landroid/content/Intent;

    const-class p3, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    invoke-direct {p1, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    .line 16
    :cond_3
    invoke-static {v0}, Ln56;->n1(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_4

    iget-boolean p3, p2, Lhw6;->j:Z

    invoke-static {v0}, Liw6;->P(Landroid/content/Context;)Z

    move-result v2

    if-ne p3, v2, :cond_5

    :cond_4
    iget-boolean p3, p2, Lhw6;->k:Z

    .line 17
    invoke-static {v0}, Liw6;->O(Landroid/content/Context;)Z

    move-result v2

    if-eq p3, v2, :cond_6

    .line 18
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 19
    new-instance p1, Landroid/content/Intent;

    const-class p3, Lcom/noinnion/android/greader/ui/home/HomeActivity;

    invoke-direct {p1, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    .line 20
    :cond_6
    iget p3, p2, Lhw6;->s:I

    invoke-static {v0}, Liw6;->q(Landroid/content/Context;)I

    move-result v2

    if-ne p3, v2, :cond_8

    iget p3, p2, Lhw6;->t:I

    .line 21
    invoke-static {v0}, Liw6;->r(Landroid/content/Context;)I

    move-result v2

    if-ne p3, v2, :cond_8

    iget p3, p2, Lhw6;->q:I

    .line 22
    invoke-static {v0}, Liw6;->o(Landroid/content/Context;)I

    move-result v2

    if-ne p3, v2, :cond_8

    iget p2, p2, Lhw6;->r:I

    .line 23
    invoke-static {v0}, Liw6;->p(Landroid/content/Context;)I

    move-result p3

    if-eq p2, p3, :cond_7

    goto :goto_0

    :cond_7
    move v1, p1

    goto :goto_1

    .line 24
    :cond_8
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 25
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/noinnion/android/greader/ui/home/HomeActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 26
    :goto_1
    invoke-static {v0}, Lon6;->j(Landroid/content/Context;)V

    if-nez v1, :cond_d

    .line 27
    sget p1, Lon6;->m:I

    invoke-static {v0}, Liw6;->j(Landroid/content/Context;)I

    move-result p2

    if-ne p1, p2, :cond_9

    sget p1, Lon6;->n:I

    .line 28
    invoke-static {v0}, Liw6;->k(Landroid/content/Context;)I

    move-result p2

    if-ne p1, p2, :cond_9

    sget p1, Lon6;->o:I

    .line 29
    invoke-static {v0}, Liw6;->i(Landroid/content/Context;)I

    move-result p2

    if-eq p1, p2, :cond_d

    .line 30
    :cond_9
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->C()V

    .line 31
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    goto :goto_3

    :cond_a
    const/4 v0, 0x2

    if-eq p1, v0, :cond_c

    const/4 v0, 0x3

    if-ne p1, v0, :cond_b

    const/4 v0, -0x1

    if-ne p2, v0, :cond_b

    goto :goto_2

    .line 32
    :cond_b
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_3

    .line 33
    :cond_c
    :goto_2
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->K()V

    :cond_d
    :goto_3
    return-void
.end method

.method public onBackPressed()V
    .locals 3

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
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeActivity;->P:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/MenuDrawer;->f()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeActivity;->P:Lnet/simonvt/menudrawer/MenuDrawer;

    .line 6
    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->i(Z)V

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->F:Landroidx/fragment/app/Fragment;

    instance-of v2, v0, Lqu6;

    if-eqz v2, :cond_3

    .line 8
    check-cast v0, Lqu6;

    .line 9
    iget-object v2, v0, Lqu6;->h:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 10
    invoke-virtual {v0}, Lqu6;->j()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    return-void

    .line 11
    :cond_3
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->j:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->a()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    invoke-virtual {p0, v0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->S(Z)V

    .line 3
    invoke-static {p0}, Lyo6;->i(Landroid/app/Activity;)V

    goto :goto_0

    :sswitch_1
    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->S(Z)V

    .line 5
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeActivity;->P:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {p1}, Lnet/simonvt/menudrawer/MenuDrawer;->f()Z

    move-result p1

    invoke-static {p0, v0, p1}, Lyo6;->e(Landroid/content/Context;ZZ)V

    goto :goto_0

    .line 6
    :sswitch_2
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->G()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f09019e -> :sswitch_2
        0x7f0902e7 -> :sswitch_1
        0x7f0902e8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/noinnion/android/reader/ui/BaseActivity;->y(Landroid/os/Bundle;ZZ)V

    .line 2
    invoke-static {p0}, Ln56;->M1(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 4
    invoke-static {v2}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object v3

    .line 5
    invoke-static {v2}, Ln56;->n1(Landroid/content/Context;)Z

    move-result v4

    const/16 v5, 0x8

    const v6, 0x7f0900f3

    if-nez v4, :cond_1

    iget-boolean v4, v3, Lhw6;->j:Z

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const v3, 0x7f0c005a

    .line 6
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 7
    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnet/simonvt/menudrawer/MenuDrawer;

    iput-object v3, p0, Lcom/noinnion/android/greader/ui/home/HomeActivity;->P:Lnet/simonvt/menudrawer/MenuDrawer;

    .line 8
    invoke-static {v2}, Ln56;->W0(Landroid/content/Context;)I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    invoke-virtual {v3, v2}, Lnet/simonvt/menudrawer/MenuDrawer;->setMenuSize(I)V

    .line 9
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/home/HomeActivity;->P:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-static {}, Llw6;->h()I

    move-result v3

    invoke-virtual {v2, v3}, Lnet/simonvt/menudrawer/MenuDrawer;->setDropShadow(I)V

    .line 10
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/home/HomeActivity;->P:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v2, v5}, Lnet/simonvt/menudrawer/MenuDrawer;->setDropShadowSize(I)V

    goto :goto_3

    :cond_1
    :goto_0
    const v4, 0x7f0c0059

    .line 11
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 12
    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lnet/simonvt/menudrawer/MenuDrawer;

    iput-object v4, p0, Lcom/noinnion/android/greader/ui/home/HomeActivity;->P:Lnet/simonvt/menudrawer/MenuDrawer;

    .line 13
    iget v6, v3, Lhw6;->s:I

    if-lez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x2

    :goto_1
    invoke-virtual {v4, v6}, Lnet/simonvt/menudrawer/MenuDrawer;->setTouchMode(I)V

    .line 14
    iget-boolean v3, v3, Lhw6;->k:Z

    if-eqz v3, :cond_3

    .line 15
    iget-object v3, p0, Lcom/noinnion/android/greader/ui/home/HomeActivity;->P:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-static {v2}, Ln56;->W0(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v3, v2}, Lnet/simonvt/menudrawer/MenuDrawer;->setMenuSize(I)V

    .line 16
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/home/HomeActivity;->P:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v2, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->setDropShadowEnabled(Z)V

    goto :goto_2

    .line 17
    :cond_3
    iget-object v3, p0, Lcom/noinnion/android/greader/ui/home/HomeActivity;->P:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-static {v2}, Ln56;->W0(Landroid/content/Context;)I

    move-result v4

    const/high16 v6, 0x42480000    # 50.0f

    invoke-static {v2, v6}, Ln56;->o0(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Lnet/simonvt/menudrawer/MenuDrawer;->setMenuSize(I)V

    .line 18
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/home/HomeActivity;->P:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-static {}, Llw6;->h()I

    move-result v3

    invoke-virtual {v2, v3}, Lnet/simonvt/menudrawer/MenuDrawer;->setDropShadow(I)V

    .line 19
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/home/HomeActivity;->P:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v2, v5}, Lnet/simonvt/menudrawer/MenuDrawer;->setDropShadowSize(I)V

    .line 20
    :goto_2
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/home/HomeActivity;->P:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v2, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->i(Z)V

    .line 21
    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_4

    .line 22
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :cond_4
    if-eqz p1, :cond_5

    .line 23
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 24
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "force_recreate"

    .line 25
    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 26
    iget-object v4, p0, Lcom/noinnion/android/greader/ui/home/HomeActivity;->P:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v4, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->b(Z)V

    .line 27
    sget-object v4, Lon6;->a:Lew6;

    invoke-virtual {v4}, Lew6;->b()V

    .line 28
    :cond_6
    sget-object v4, Lon6;->a:Lew6;

    invoke-virtual {v4, v3, v2}, Lew6;->g(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 29
    invoke-static {v3}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object v2

    .line 30
    sget-object v3, Lon6;->a:Lew6;

    iget-boolean v2, v2, Lhw6;->e:Z

    iput-boolean v2, v3, Lew6;->f:Z

    .line 31
    iget-boolean v2, v3, Lew6;->e:Z

    if-nez v2, :cond_7

    iget-object v2, v3, Lew6;->b:Llp6;

    if-eqz v2, :cond_8

    iget v2, v2, Llp6;->g:I

    if-ne v2, v0, :cond_8

    .line 32
    :cond_7
    iput-boolean v1, v3, Lew6;->f:Z

    .line 33
    :cond_8
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->F()V

    .line 34
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->E()V

    .line 35
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->C()V

    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->o()Lwb;

    move-result-object v1

    const-string v2, "fragment_item_list"

    const-string v3, "fragment_sub_list"

    if-nez p1, :cond_9

    .line 37
    check-cast v1, Lxb;

    .line 38
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance v4, Lqb;

    invoke-direct {v4, v1}, Lqb;-><init>(Lxb;)V

    .line 40
    new-instance v1, Lqu6;

    invoke-direct {v1}, Lqu6;-><init>()V

    iput-object v1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->F:Landroidx/fragment/app/Fragment;

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-static {v5}, Ln56;->g1(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const v1, 0x7f0901b8

    .line 42
    iget-object v5, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->F:Landroidx/fragment/app/Fragment;

    .line 43
    invoke-virtual {v4, v1, v5, v3, v0}, Lqb;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 44
    new-instance v1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    invoke-direct {v1}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;-><init>()V

    iput-object v1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->G:Landroidx/fragment/app/Fragment;

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Ln56;->g1(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const v1, 0x7f0901b7

    .line 46
    iget-object v3, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->G:Landroidx/fragment/app/Fragment;

    .line 47
    invoke-virtual {v4, v1, v3, v2, v0}, Lqb;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 48
    invoke-virtual {v4}, Lqb;->d()I

    goto :goto_4

    .line 49
    :cond_9
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->F:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_a

    .line 50
    invoke-virtual {v1, v3}, Lwb;->c(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->F:Landroidx/fragment/app/Fragment;

    .line 51
    :cond_a
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->G:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_b

    .line 52
    invoke-virtual {v1, v2}, Lwb;->c(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->G:Landroidx/fragment/app/Fragment;

    .line 53
    :cond_b
    :goto_4
    invoke-virtual {p0, p1}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->I(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0901c0

    .line 2
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 4
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0902e4

    .line 5
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/SwitchCompat;

    .line 6
    invoke-static {v2}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object v4

    iget-boolean v4, v4, Lhw6;->e:Z

    xor-int/2addr v4, v1

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 7
    new-instance v4, Ltp6;

    invoke-direct {v4, p0}, Ltp6;-><init>(Lcom/noinnion/android/greader/ui/home/HomeActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v3, 0x7f0902e7

    .line 8
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->D:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 9
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v3, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->D:Landroid/view/View;

    iget-object v4, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->N:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$e;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    const v3, 0x7f0902e8

    .line 11
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->E:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 12
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v3, 0x7f09019e

    .line 13
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 14
    invoke-static {v2}, Liw6;->j(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->N:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$e;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    .line 18
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    :cond_3
    :goto_0
    sget-boolean v0, Lon6;->b:Z

    if-eqz v0, :cond_4

    .line 20
    invoke-virtual {p0, v1}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->S(Z)V

    :cond_4
    const v0, 0x7f0901d5

    .line 21
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 22
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->y:Lcom/miguelcatalan/materialsearchview/MaterialSearchView;

    invoke-virtual {v0, p1}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->setMenuItem(Landroid/view/MenuItem;)V

    .line 23
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->R()V

    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeActivity;->P:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/MenuDrawer;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->G:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    .line 2
    invoke-virtual {v0, p1}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->o(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x54

    if-ne p1, v1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->y:Lcom/miguelcatalan/materialsearchview/MaterialSearchView;

    .line 2
    invoke-virtual {p1, v0}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->c(Z)V

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/home/HomeActivity;->P:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/MenuDrawer;->f()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->G:Landroidx/fragment/app/Fragment;

    instance-of v2, v1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    .line 4
    invoke-virtual {v1, p1}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->p(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeActivity;->P:Lnet/simonvt/menudrawer/MenuDrawer;

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->l(Z)V

    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
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
