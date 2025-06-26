.class public abstract Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;
.super Lcom/noinnion/android/reader/ui/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lpl6$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$c;,
        Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$d;,
        Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$e;,
        Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$b;
    }
.end annotation


# static fields
.field public static final synthetic O:I


# instance fields
.field public A:Lnet/frakbot/glowpadbackport/GlowPadView;

.field public B:Landroid/widget/TextView;

.field public C:Landroid/widget/TextView;

.field public D:Landroid/view/View;

.field public E:Landroid/view/View;

.field public F:Landroidx/fragment/app/Fragment;

.field public G:Landroidx/fragment/app/Fragment;

.field public H:Landroid/widget/PopupWindow;

.field public I:Z

.field public J:Ljq6;

.field public K:Landroid/content/BroadcastReceiver;

.field public final L:Loj7;

.field public M:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$d;

.field public N:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$e;

.field public w:Landroid/app/ProgressDialog;

.field public x:Landroidx/appcompat/widget/Toolbar;

.field public y:Lcom/miguelcatalan/materialsearchview/MaterialSearchView;

.field public z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/noinnion/android/reader/ui/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$mReceiver$1;

    invoke-direct {v0, p0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$mReceiver$1;-><init>(Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;)V

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->K:Landroid/content/BroadcastReceiver;

    .line 3
    sget-object v0, Lpj7;->e:Lpj7;

    .line 4
    new-instance v1, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$a;-><init>(Landroid/content/ComponentCallbacks;Lk18;Lel7;)V

    invoke-static {v0, v1}, Ln56;->q1(Lpj7;Lel7;)Loj7;

    move-result-object v0

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->L:Loj7;

    .line 5
    new-instance v0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$d;

    invoke-direct {v0, p0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$d;-><init>(Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;)V

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->M:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$d;

    .line 6
    new-instance v0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$e;

    invoke-direct {v0, p0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$e;-><init>(Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;)V

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->N:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$e;

    return-void
.end method

.method public static L(Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;ZZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    iget-object p0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->G:Landroidx/fragment/app/Fragment;

    instance-of p3, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    if-nez p3, :cond_1

    const/4 p0, 0x0

    :cond_1
    check-cast p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->r(ZZ)V

    :cond_2
    return-void
.end method

.method public static final z(Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object v0

    .line 3
    iput p1, v0, Lhw6;->g:I

    .line 4
    iget-object v0, v0, Lhw6;->a:Landroid/content/Context;

    const-string v1, "item_sort_type"

    .line 5
    invoke-static {v0, v1, p1}, Liw6;->T(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 6
    invoke-static {p0, p1, v0, v1, v2}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->L(Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;ZZILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->w:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final B()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->H:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public final C()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09010b

    .line 2
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lnet/frakbot/glowpadbackport/GlowPadView;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v1, v3

    :cond_0
    check-cast v1, Lnet/frakbot/glowpadbackport/GlowPadView;

    iput-object v1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->A:Lnet/frakbot/glowpadbackport/GlowPadView;

    if-eqz v1, :cond_8

    .line 3
    invoke-static {v0}, Liw6;->j(Landroid/content/Context;)I

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    const/16 v0, 0x8

    .line 5
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 6
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_2

    .line 7
    invoke-virtual {v1, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 8
    :cond_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 9
    invoke-static {v0}, Liw6;->k(Landroid/content/Context;)I

    move-result v5

    .line 10
    invoke-static {v0}, Liw6;->i(Landroid/content/Context;)I

    move-result v7

    if-ne v5, v6, :cond_3

    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    const/4 v5, 0x1

    .line 11
    :goto_0
    invoke-virtual {v1, v5, v7}, Lnet/frakbot/glowpadbackport/GlowPadView;->setHandleStyle(II)V

    const/16 v5, 0x9

    const/16 v7, 0xb

    if-ne v2, v6, :cond_5

    const v2, 0x7f030015

    .line 12
    invoke-virtual {v1, v2}, Lnet/frakbot/glowpadbackport/GlowPadView;->setTargetResources(I)V

    const v2, 0x800035

    .line 13
    invoke-virtual {v1, v2}, Lnet/frakbot/glowpadbackport/GlowPadView;->setGravity(I)V

    .line 14
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v6, v2, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    move-object v3, v2

    :goto_1
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v3, :cond_7

    .line 15
    invoke-virtual {v3, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 16
    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_5
    const/4 v6, 0x2

    if-ne v2, v6, :cond_7

    const v2, 0x7f030016

    .line 18
    invoke-virtual {v1, v2}, Lnet/frakbot/glowpadbackport/GlowPadView;->setTargetResources(I)V

    const v2, 0x800033

    .line 19
    invoke-virtual {v1, v2}, Lnet/frakbot/glowpadbackport/GlowPadView;->setGravity(I)V

    .line 20
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v6, v2, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v6, :cond_6

    goto :goto_2

    :cond_6
    move-object v3, v2

    :goto_2
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v3, :cond_7

    .line 21
    invoke-virtual {v3, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 22
    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 23
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    :cond_7
    :goto_3
    new-instance v2, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$f;

    invoke-direct {v2, p0, v0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$f;-><init>(Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lnet/frakbot/glowpadbackport/GlowPadView;->setOnTriggerListener(Lnet/frakbot/glowpadbackport/GlowPadView$OnTriggerListener;)V

    .line 25
    invoke-virtual {v1, v4}, Lnet/frakbot/glowpadbackport/GlowPadView;->reset(Z)V

    :cond_8
    :goto_4
    return-void
.end method

.method public final D()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->R()V

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->y:Lcom/miguelcatalan/materialsearchview/MaterialSearchView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    sget-object v2, Lon6;->a:Lew6;

    iget-object v2, v2, Lew6;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 4
    sget-object v2, Lon6;->a:Lew6;

    iget-object v2, v2, Lew6;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-boolean v2, v0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->f:Z

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->a()V

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 8
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->G:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_5

    .line 9
    instance-of v3, v2, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    move-object v2, v4

    :cond_1
    check-cast v2, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2, v3}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->h(Z)V

    .line 10
    :cond_2
    sget-object v2, Lon6;->a:Lew6;

    iget-boolean v5, v2, Lew6;->e:Z

    if-nez v5, :cond_4

    iget-object v5, v2, Lew6;->b:Llp6;

    if-eqz v5, :cond_3

    iget v5, v5, Llp6;->g:I

    if-eq v5, v3, :cond_4

    :cond_3
    invoke-static {v0}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object v0

    iget-boolean v0, v0, Lhw6;->e:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v2, Lew6;->f:Z

    const/4 v0, 0x2

    .line 11
    invoke-static {p0, v3, v1, v0, v4}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->L(Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;ZZILjava/lang/Object;)V

    goto :goto_1

    .line 12
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object v0

    iget v0, v0, Lhw6;->c:I

    invoke-virtual {p0, v0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->P(I)V

    :goto_1
    return-void
.end method

.method public final E()V
    .locals 3

    const v0, 0x7f090297

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$h;

    invoke-direct {v1, v0, p0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$h;-><init>(Lcom/miguelcatalan/materialsearchview/MaterialSearchView;Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;)V

    invoke-virtual {v0, v1}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->setOnQueryTextListener(Lcom/miguelcatalan/materialsearchview/MaterialSearchView$d;)V

    .line 3
    new-instance v1, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$i;

    invoke-direct {v1, p0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$i;-><init>(Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;)V

    invoke-virtual {v0, v1}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->setOnSearchViewListener(Lcom/miguelcatalan/materialsearchview/MaterialSearchView$e;)V

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 4
    :goto_0
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->y:Lcom/miguelcatalan/materialsearchview/MaterialSearchView;

    const v0, 0x7f090290

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 6
    new-instance v1, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$g;

    invoke-direct {v1, p0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$g;-><init>(Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v2, v0

    .line 7
    :cond_2
    iput-object v2, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->z:Landroid/widget/ImageView;

    return-void
.end method

.method public final F()V
    .locals 5

    const v0, 0x7f090322

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->s()Lc0;

    move-result-object v2

    invoke-virtual {v2, v0}, Lc0;->x(Landroidx/appcompat/widget/Toolbar;)V

    .line 3
    invoke-static {}, Llw6;->i()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 4
    :goto_0
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->x:Landroidx/appcompat/widget/Toolbar;

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->t()Lu;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c001e

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09031c

    .line 7
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/widget/TextView;

    if-nez v4, :cond_1

    move-object v3, v1

    :cond_1
    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->B:Landroid/widget/TextView;

    const v3, 0x7f0902dd

    .line 8
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/widget/TextView;

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v3

    :goto_1
    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->C:Landroid/widget/TextView;

    const-string v1, "actionBar"

    .line 9
    invoke-static {v0, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lu;->m(Landroid/view/View;)V

    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Lu;->p(Z)V

    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lu;->q(Z)V

    .line 12
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->M:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$d;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->N:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$e;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_3
    return-void
.end method

.method public final G()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    sget-object v1, Lon6;->a:Lew6;

    iget-boolean v2, v1, Lew6;->d:Z

    if-nez v2, :cond_9

    iget-boolean v2, v1, Lew6;->e:Z

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    iget-object v1, v1, Lew6;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->H()V

    goto/16 :goto_3

    .line 5
    :cond_1
    sget-object v1, Lon6;->a:Lew6;

    iget-object v2, v1, Lew6;->a:Lip6;

    const/high16 v3, 0x1040000

    const v4, 0x104000a

    const v5, 0x7f110154

    if-nez v2, :cond_3

    iget-object v1, v1, Lew6;->b:Llp6;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    const-string v2, "confirm_mark_as_read_all"

    .line 6
    invoke-static {v0, v2, v1}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    new-instance v0, Lt75;

    invoke-direct {v0, p0}, Lt75;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-virtual {v0, v5}, Lt75;->m(I)Lt75;

    const v1, 0x7f1101c3

    .line 9
    invoke-virtual {v0, v1}, Lt75;->g(I)Lt75;

    .line 10
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lzp6;

    invoke-direct {v2, p0}, Lzp6;-><init>(Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;)V

    invoke-virtual {v0, v1, v2}, Lt75;->k(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lt75;

    .line 11
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v2, Laq6;->e:Laq6;

    invoke-virtual {v0, v1, v2}, Lt75;->i(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lt75;

    .line 12
    invoke-virtual {v0}, Lt75;->a()La0;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_3

    .line 14
    :cond_2
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->H()V

    goto/16 :goto_3

    :cond_3
    const-string v1, "confirm_mark_as_read_sub"

    const/4 v2, 0x0

    .line 15
    invoke-static {v0, v1, v2}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 16
    sget-object v0, Lon6;->a:Lew6;

    iget-object v1, v0, Lew6;->a:Lip6;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lip6;->h:Ljava/lang/String;

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, v0, Lew6;->b:Llp6;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p0}, Llp6;->h(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "getString(R.string.label_all)"

    invoke-static {v1, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    :goto_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v5, 0x19

    if-le v0, v5, :cond_7

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v2, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 19
    :cond_7
    new-instance v0, Lt75;

    invoke-direct {v0, p0}, Lt75;-><init>(Landroid/content/Context;)V

    .line 20
    iget-object v2, v0, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v1, v2, Landroidx/appcompat/app/AlertController$b;->e:Ljava/lang/CharSequence;

    const v1, 0x7f1101c2

    .line 21
    invoke-virtual {v0, v1}, Lt75;->g(I)Lt75;

    .line 22
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$j;

    invoke-direct {v2, p0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$j;-><init>(Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;)V

    invoke-virtual {v0, v1, v2}, Lt75;->k(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lt75;

    .line 23
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v2, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$k;->e:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$k;

    invoke-virtual {v0, v1, v2}, Lt75;->i(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lt75;

    invoke-virtual {v0}, Lt75;->a()La0;

    move-result-object v0

    const-string v1, "MaterialAlertDialogBuild\u2026el)) { _, _ -> }.create()"

    invoke-static {v0, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_3

    .line 25
    :cond_8
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->H()V

    goto :goto_3

    :cond_9
    :goto_2
    const v0, 0x7f1101d1

    .line 26
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method

.method public H()V
    .locals 3

    .line 1
    new-instance v0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$c;

    invoke-direct {v0, p0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$c;-><init>(Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 2
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final I(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.noinnion.android.greader.reader.action.START_SYNC_RESULT"

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.noinnion.android.greader.reader.action.STOP_SYNC_ERROR"

    .line 4
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.noinnion.android.greader.reader.action.STOP_SYNC_ERROR_LOGIN"

    .line 5
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.noinnion.android.greader.reader.action.SYNC_FINISHED"

    .line 6
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.noinnion.android.greader.reader.action.SYNC_SUBS_FINISHED"

    .line 7
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.noinnion.android.greader.reader.action.FORCE_REFRESH_UI"

    .line 8
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.noinnion.android.greader.reader.action.REFRESH_ITEM_LIST"

    .line 9
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.noinnion.android.greader.reader.action.FULLSCREEN"

    .line 10
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->K:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_0

    .line 12
    invoke-static {p0}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lyd;->b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "provokeSyncing"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 14
    invoke-static {p0, v3}, Lyo6;->f(Landroid/content/Context;Z)V

    .line 15
    :cond_1
    sget-object p1, Liw6;->a:Ljava/lang/reflect/Method;

    .line 16
    invoke-static {v0}, Ln56;->Z0(Landroid/content/Context;)I

    move-result p1

    const/4 v1, -0x1

    if-le p1, v1, :cond_2

    const-string v2, "current_version"

    .line 17
    invoke-static {v0, v2, v1}, Liw6;->m(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_2

    .line 18
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 19
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 20
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 21
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x2

    if-eqz p1, :cond_3

    .line 22
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/noinnion/android/greader/ui/home/WelcomeActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 24
    :cond_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-lt p1, v1, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 25
    invoke-static {p0, v4}, Lu7;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_8

    .line 26
    sget v5, Lf7;->b:I

    if-lt p1, v1, :cond_6

    .line 27
    invoke-virtual {p0, v4}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_7

    .line 28
    new-instance p1, Lt75;

    invoke-direct {p1, p0}, Lt75;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/noinnion/android/reader/R$string;->permission_storage:I

    .line 29
    invoke-virtual {p1, v1}, Lt75;->m(I)Lt75;

    sget v1, Lcom/noinnion/android/reader/R$string;->permission_storage_explanation:I

    .line 30
    invoke-virtual {p1, v1}, Lt75;->g(I)Lt75;

    sget v1, Lcom/noinnion/android/reader/R$string;->permission_request:I

    new-instance v4, Lnw6;

    invoke-direct {v4, p0}, Lnw6;-><init>(Landroid/app/Activity;)V

    .line 31
    invoke-virtual {p1, v1, v4}, Lt75;->j(ILandroid/content/DialogInterface$OnClickListener;)Lt75;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, La0$a;->e()La0;

    goto :goto_3

    .line 33
    :cond_7
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object p1

    .line 34
    invoke-static {p0, p1, v2}, Lf7;->c(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_8
    :goto_3
    const-string p1, "activity"

    .line 35
    invoke-static {p0, p1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lbw6;->a()Lcom/michaelflisar/gdprdialog/GDPRSetup;

    move-result-object p1

    .line 37
    invoke-static {}, Lpl6;->b()Lpl6;

    move-result-object v1

    .line 38
    iget-object v4, v1, Lpl6;->b:Landroid/content/SharedPreferences;

    if-eqz v4, :cond_12

    .line 39
    invoke-virtual {v1}, Lpl6;->a()Lrl6;

    move-result-object v4

    .line 40
    iget-object v5, v4, Lrl6;->a:Lql6;

    .line 41
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eqz v5, :cond_d

    if-eq v5, v2, :cond_9

    goto :goto_6

    .line 42
    :cond_9
    iget-boolean v5, p1, Lcom/michaelflisar/gdprdialog/GDPRSetup;->h:Z

    if-nez v5, :cond_b

    iget-boolean v5, p1, Lcom/michaelflisar/gdprdialog/GDPRSetup;->g:Z

    if-eqz v5, :cond_a

    goto :goto_4

    :cond_a
    const/4 v5, 0x0

    goto :goto_5

    :cond_b
    :goto_4
    const/4 v5, 0x1

    :goto_5
    if-nez v5, :cond_c

    goto :goto_7

    :cond_c
    :goto_6
    const/4 v5, 0x0

    goto :goto_8

    :cond_d
    :goto_7
    const/4 v5, 0x1

    .line 43
    :goto_8
    iget-object v6, v1, Lpl6;->c:Lpl6$c;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v0, v3

    invoke-virtual {v4}, Lrl6;->a()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v2

    const-string v7, "consent check needed: %b, current consent: %s"

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    check-cast v6, Lpl6$a;

    .line 44
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_11

    .line 45
    iget-object v0, p1, Lcom/michaelflisar/gdprdialog/GDPRSetup;->m:[Lwl6;

    array-length v0, v0

    if-gtz v0, :cond_f

    iget-object v0, p1, Lcom/michaelflisar/gdprdialog/GDPRSetup;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_e

    goto :goto_9

    :cond_e
    const/4 v2, 0x0

    :cond_f
    :goto_9
    if-eqz v2, :cond_10

    .line 46
    new-instance v0, Lim6;

    invoke-direct {v0, p0, p1}, Lim6;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/michaelflisar/gdprdialog/GDPRSetup;)V

    iput-object v0, v1, Lpl6;->e:Lim6;

    new-array p1, v3, [Ljava/lang/Object;

    .line 47
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_a

    .line 48
    :cond_10
    new-instance p1, Lem6;

    invoke-direct {p1}, Lem6;-><init>()V

    .line 49
    invoke-virtual {p1}, Lem6;->b()V

    .line 50
    sget-object v0, Lvl6;->e:Lvl6;

    iput-object v0, p1, Lem6;->a:Lvl6;

    .line 51
    invoke-virtual {p0, p1}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->h(Lem6;)V

    goto :goto_a

    :cond_11
    const-string p1, "consentState"

    .line 52
    invoke-static {v4, p1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_a
    return-void

    .line 53
    :cond_12
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "You have not initialised GDPR. Plase call \'GDPR.getInstance().init(context)\' once from anywhere, preferable from your application."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public J(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const p1, 0x7f010029

    const v0, 0x7f010024

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public final K()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->F:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lqu6;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lqu6;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lqu6;->i(Z)V

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x2

    .line 2
    invoke-static {p0, v1, v0, v3, v2}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->L(Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;ZZILjava/lang/Object;)V

    return-void
.end method

.method public final M()V
    .locals 4

    .line 1
    sget-object v0, Lon6;->a:Lew6;

    iget-boolean v1, v0, Lew6;->d:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lew6;->e:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, p0}, Lew6;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x19

    if-le v1, v2, :cond_1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "title2"

    invoke-static {v0, v3}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v2}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u2026"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    :cond_1
    new-instance v1, Lro$c;

    invoke-direct {v1, p0}, Lro$c;-><init>(Landroid/app/Activity;)V

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f110323

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    iput-object v0, v1, Lro$c;->d:Ljava/lang/CharSequence;

    const/high16 v0, 0x7f0d0000

    .line 8
    invoke-virtual {v1, v0}, Lro$c;->a(I)Lro$c;

    new-instance v0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$l;

    invoke-direct {v0, p0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$l;-><init>(Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;)V

    .line 9
    iput-object v0, v1, Lro$c;->f:Landroid/content/DialogInterface$OnClickListener;

    .line 10
    invoke-virtual {v1}, Lro$c;->d()Lro;

    goto :goto_1

    :cond_2
    :goto_0
    const v0, 0x7f1101d1

    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public N()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00b8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 3
    new-instance v2, Landroid/widget/PopupWindow;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v1, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 4
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 5
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x1

    .line 6
    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 7
    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 8
    iput-object v2, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->H:Landroid/widget/PopupWindow;

    .line 9
    invoke-static {v0}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object v2

    const v5, 0x7f09016b

    .line 10
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 11
    iget-object v6, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->M:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$d;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget v6, v2, Lhw6;->c:I

    if-nez v6, :cond_0

    .line 13
    invoke-virtual {v5, v4}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    const v5, 0x7f090168

    .line 14
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 15
    iget-object v6, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->M:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$d;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget v6, v2, Lhw6;->c:I

    if-ne v6, v4, :cond_1

    .line 17
    invoke-virtual {v5, v4}, Landroid/view/View;->setSelected(Z)V

    :cond_1
    const v5, 0x7f090164

    .line 18
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x2

    if-eqz v5, :cond_2

    .line 19
    iget-object v7, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->M:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$d;

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget v7, v2, Lhw6;->c:I

    if-ne v7, v6, :cond_2

    .line 21
    invoke-virtual {v5, v4}, Landroid/view/View;->setSelected(Z)V

    :cond_2
    const v5, 0x7f09016c

    .line 22
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    instance-of v7, v5, Landroid/widget/RadioGroup;

    if-nez v7, :cond_3

    move-object v5, v3

    :cond_3
    check-cast v5, Landroid/widget/RadioGroup;

    if-eqz v5, :cond_5

    .line 23
    invoke-virtual {v2}, Lhw6;->c()I

    move-result v7

    if-ne v7, v6, :cond_4

    const v7, 0x7f0902bc

    goto :goto_0

    :cond_4
    const v7, 0x7f0902bb

    :goto_0
    invoke-virtual {v5, v7}, Landroid/widget/RadioGroup;->check(I)V

    .line 24
    new-instance v7, Lwp6;

    invoke-direct {v7, p0, v2}, Lwp6;-><init>(Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;Lhw6;)V

    invoke-virtual {v5, v7}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    :cond_5
    const v5, 0x7f090135

    .line 25
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    instance-of v7, v5, Landroidx/appcompat/widget/SwitchCompat;

    if-nez v7, :cond_6

    move-object v5, v3

    :cond_6
    check-cast v5, Landroidx/appcompat/widget/SwitchCompat;

    const/4 v7, 0x0

    if-eqz v5, :cond_7

    .line 26
    iget-boolean v8, v2, Lhw6;->h:Z

    invoke-virtual {v5, v8}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 27
    new-instance v8, Ld;

    invoke-direct {v8, v7, p0, v2}, Ld;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v8}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_7
    const v2, 0x7f09026e

    .line 28
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    instance-of v5, v2, Landroidx/appcompat/widget/SwitchCompat;

    if-nez v5, :cond_8

    move-object v2, v3

    :cond_8
    check-cast v2, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v2, :cond_9

    .line 29
    invoke-static {v0}, Liw6;->R(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 30
    new-instance v5, Ld;

    invoke-direct {v5, v4, p0, v0}, Ld;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_9
    const v2, 0x7f0901a0

    .line 31
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroidx/appcompat/widget/SwitchCompat;

    if-nez v2, :cond_a

    goto :goto_1

    :cond_a
    move-object v3, v1

    :goto_1
    check-cast v3, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v3, :cond_b

    const-string v1, "item_list_mark_read_on_scroll"

    .line 32
    invoke-static {v0, v1, v7}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 33
    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 34
    new-instance v1, Ld;

    invoke-direct {v1, v6, p0, v0}, Ld;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 35
    :cond_b
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->H:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->x:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    :cond_c
    return-void
.end method

.method public abstract O()V
.end method

.method public final P(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->G:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object v3

    iput p1, v3, Lhw6;->c:I

    const-string v3, "item_list_view"

    .line 5
    invoke-static {v1, v3, p1}, Liw6;->T(Landroid/content/Context;Ljava/lang/String;I)V

    .line 6
    invoke-virtual {v0, p1}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->i(I)V

    .line 7
    iget-object p1, v0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->vRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$s;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final Q()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object v0

    .line 3
    iget-boolean v1, v0, Lhw6;->e:Z

    if-eqz v1, :cond_0

    const v2, 0x7f110364

    .line 4
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p0, v2}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const v2, 0x7f110365

    .line 5
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p0, v2}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_0
    xor-int/lit8 v2, v1, 0x1

    .line 6
    iput-boolean v2, v0, Lhw6;->e:Z

    .line 7
    iget-object v0, v0, Lhw6;->a:Landroid/content/Context;

    const-string v3, "view_unread_only"

    .line 8
    invoke-static {v0, v3, v2}, Liw6;->S(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 9
    sget-object v0, Lon6;->a:Lew6;

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lew6;->f:Z

    .line 10
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->K()V

    return-void
.end method

.method public final R()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->B:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    sget-object v2, Lon6;->a:Lew6;

    invoke-virtual {v2, v0}, Lew6;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->C:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 4
    sget-object v1, Lon6;->a:Lew6;

    iget-object v1, v1, Lew6;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    sget-object v1, Lon6;->a:Lew6;

    iget-object v1, v1, Lew6;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final S(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->F:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lqu6;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lqu6;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lqu6;->i:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->D:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 4
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->E:Landroid/view/View;

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 8
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public c(Lrl6;Z)V
    .locals 0

    const-string p2, "consentState"

    invoke-static {p1, p2}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public h(Lem6;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lbw6;->b(Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->K:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lyd;->d(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->K:Landroid/content/BroadcastReceiver;

    .line 4
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->B()V

    .line 5
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->H:Landroid/widget/PopupWindow;

    .line 6
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->A()V

    .line 7
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->w:Landroid/app/ProgressDialog;

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    .line 9
    :try_start_0
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->clearCache(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    :goto_0
    invoke-super {p0}, Lcom/noinnion/android/reader/ui/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const-string v0, "item"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    return v1

    .line 2
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "application_theme_auto_dark"

    .line 3
    invoke-static {p1, v1, v2}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 4
    invoke-static {p1}, Llw6;->e(Landroid/content/Context;)I

    move-result v3

    .line 5
    new-instance v4, Lro$c;

    invoke-direct {v4, p0}, Lro$c;-><init>(Landroid/app/Activity;)V

    const v5, 0x7f1101b5

    .line 6
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 7
    iput-object v5, v4, Lro$c;->d:Ljava/lang/CharSequence;

    const v5, 0x7f0d0003

    .line 8
    invoke-virtual {v4, v5}, Lro$c;->a(I)Lro$c;

    .line 9
    new-instance v5, Lbq6;

    invoke-direct {v5, p0, p1, v1, v3}, Lbq6;-><init>(Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;Landroid/content/Context;ZI)V

    .line 10
    iput-object v5, v4, Lro$c;->f:Landroid/content/DialogInterface$OnClickListener;

    .line 11
    new-instance p1, Lro;

    iget-object v5, v4, Lro$c;->a:Landroid/content/Context;

    iget v6, v4, Lro$c;->c:I

    invoke-direct {p1, v5, v6}, Lro;-><init>(Landroid/content/Context;I)V

    .line 12
    iput-object v4, p1, Lro;->p:Lro$c;

    const-string v4, "bottomSheet"

    .line 13
    invoke-static {p1, v4}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v4, p1, Lro;->p:Lro$c;

    .line 15
    iget-object v4, v4, Lro$c;->b:Lko;

    const v5, 0x7f090313

    .line 16
    invoke-virtual {v4, v5}, Lko;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const-string v5, "bottomSheet.menu.findItem(R.id.theme_auto_dark)"

    invoke-static {v4, v5}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    if-eqz v3, :cond_4

    if-eq v3, v2, :cond_3

    if-eq v3, v0, :cond_2

    const/4 v0, 0x3

    if-eq v3, v0, :cond_1

    const/4 v0, 0x5

    if-eq v3, v0, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p1, Lro;->p:Lro$c;

    .line 18
    iget-object v0, v0, Lro$c;->b:Lko;

    const v1, 0x7f090317

    .line 19
    invoke-virtual {v0, v1}, Lko;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "bottomSheet.menu.findItem(R.id.theme_green)"

    invoke-static {v0, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 20
    :cond_1
    iget-object v0, p1, Lro;->p:Lro$c;

    .line 21
    iget-object v0, v0, Lro$c;->b:Lko;

    const v1, 0x7f090318

    .line 22
    invoke-virtual {v0, v1}, Lko;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "bottomSheet.menu.findItem(R.id.theme_sepia)"

    invoke-static {v0, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 23
    :cond_2
    iget-object v0, p1, Lro;->p:Lro$c;

    .line 24
    iget-object v0, v0, Lro$c;->b:Lko;

    const v1, 0x7f090314

    .line 25
    invoke-virtual {v0, v1}, Lko;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "bottomSheet.menu.findItem(R.id.theme_black)"

    invoke-static {v0, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 26
    :cond_3
    iget-object v0, p1, Lro;->p:Lro$c;

    .line 27
    iget-object v0, v0, Lro$c;->b:Lko;

    const v1, 0x7f090315

    .line 28
    invoke-virtual {v0, v1}, Lko;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "bottomSheet.menu.findItem(R.id.theme_dark)"

    invoke-static {v0, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 29
    :cond_4
    iget-object v0, p1, Lro;->p:Lro$c;

    .line 30
    iget-object v0, v0, Lro$c;->b:Lko;

    const v1, 0x7f090316

    .line 31
    invoke-virtual {v0, v1}, Lko;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "bottomSheet.menu.findItem(R.id.theme_default)"

    invoke-static {v0, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 32
    :goto_0
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return v2

    .line 33
    :sswitch_1
    invoke-static {p0}, Lyo6;->i(Landroid/app/Activity;)V

    .line 34
    sget-object p1, Lon6;->a:Lew6;

    .line 35
    invoke-static {p0}, Liw6;->I(Landroid/content/Context;)I

    move-result p1

    sput p1, Lon6;->j:I

    .line 36
    invoke-static {p0}, Liw6;->H(Landroid/content/Context;)J

    move-result-wide v0

    sput-wide v0, Lon6;->k:J

    .line 37
    invoke-static {p0}, Liw6;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lon6;->l:Ljava/lang/String;

    .line 38
    invoke-static {p0}, Liw6;->j(Landroid/content/Context;)I

    move-result p1

    sput p1, Lon6;->m:I

    .line 39
    invoke-static {p0}, Liw6;->k(Landroid/content/Context;)I

    move-result p1

    sput p1, Lon6;->n:I

    .line 40
    invoke-static {p0}, Liw6;->i(Landroid/content/Context;)I

    move-result p1

    sput p1, Lon6;->o:I

    .line 41
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/noinnion/android/greader/ui/setting/SettingsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return v2

    .line 42
    :sswitch_2
    invoke-static {p0}, Lyo6;->i(Landroid/app/Activity;)V

    .line 43
    new-instance p1, Lt75;

    invoke-direct {p1, p0}, Lt75;-><init>(Landroid/content/Context;)V

    const v0, 0x7f110349

    .line 44
    invoke-virtual {p1, v0}, Lt75;->m(I)Lt75;

    const v0, 0x7f1101c1

    .line 45
    invoke-virtual {p1, v0}, Lt75;->g(I)Lt75;

    const v0, 0x104000a

    .line 46
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lxp6;

    invoke-direct {v1, p0}, Lxp6;-><init>(Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;)V

    invoke-virtual {p1, v0, v1}, Lt75;->k(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lt75;

    const/high16 v0, 0x1040000

    .line 47
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v1, Lyp6;->e:Lyp6;

    invoke-virtual {p1, v0, v1}, Lt75;->i(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lt75;

    .line 48
    invoke-virtual {p1}, Lt75;->a()La0;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return v2

    .line 50
    :sswitch_3
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/noinnion/android/greader/ui/home/WelcomeActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return v2

    .line 51
    :sswitch_4
    invoke-static {p0}, Lyo6;->i(Landroid/app/Activity;)V

    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->o()Lwb;

    move-result-object p1

    .line 53
    sget v0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;->f:I

    .line 54
    :try_start_0
    new-instance v0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;

    invoke-direct {v0}, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;-><init>()V

    .line 55
    check-cast p1, Lxb;

    .line 56
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance v3, Lqb;

    invoke-direct {v3, p1}, Lqb;-><init>(Lxb;)V

    const-string p1, "fragment_clear_cache"

    .line 58
    invoke-virtual {v3, v1, v0, p1, v2}, Lqb;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 59
    invoke-virtual {v3}, Lqb;->d()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v2

    .line 60
    :sswitch_5
    invoke-static {p0}, Ln56;->Z1(Landroid/app/Activity;)V

    return v2

    :sswitch_data_0
    .sparse-switch
        0x7f0901c1 -> :sswitch_5
        0x7f0901c2 -> :sswitch_4
        0x7f0901c6 -> :sswitch_3
        0x7f0901d1 -> :sswitch_2
        0x7f0901d4 -> :sswitch_1
        0x7f0901d7 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->I:Z

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 1
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->I:Z

    .line 3
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->L:Loj7;

    invoke-interface {v0}, Loj7;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luo6;

    .line 4
    iget-object v1, v0, Luo6;->c:Lyn6;

    invoke-virtual {v1}, Lyn6;->b()Lac7;

    move-result-object v1

    .line 5
    new-instance v2, Lqo6;

    invoke-direct {v2, v0}, Lqo6;-><init>(Luo6;)V

    invoke-virtual {v1, v2}, Lac7;->e(Luc7;)Lac7;

    move-result-object v1

    .line 6
    sget-object v2, Lro6;->e:Lro6;

    .line 7
    new-instance v3, Lkh7;

    invoke-direct {v3, v1, v2}, Lkh7;-><init>(Lec7;Luc7;)V

    .line 8
    new-instance v1, Lso6;

    invoke-direct {v1, v0}, Lso6;-><init>(Luo6;)V

    .line 9
    new-instance v0, Lyg7;

    const/4 v2, 0x0

    invoke-direct {v0, v3, v1, v2}, Lyg7;-><init>(Lxb7;Luc7;Z)V

    const-string v1, "billingRepository.getVal\u2026          }\n            }"

    .line 10
    invoke-static {v0, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v1, Lej7;->b:Lzb7;

    .line 12
    invoke-virtual {v0, v1}, Lhb7;->j(Lzb7;)Lhb7;

    move-result-object v0

    .line 13
    invoke-static {}, Lfc7;->a()Lzb7;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhb7;->g(Lzb7;)Lhb7;

    move-result-object v0

    const-string v1, "billing.checkValidPurcha\u2026dSchedulers.mainThread())"

    invoke-static {v0, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v1, Lcq6;->e:Lcq6;

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 15
    invoke-static {v0, v1, v2, v3}, Lbj7;->g(Lhb7;Lpl7;Lel7;I)Lic7;

    move-result-object v0

    const-string v1, "$this$addTo"

    .line 16
    invoke-static {v0, v1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "activity"

    invoke-static {p0, v1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "disposable"

    .line 17
    invoke-static {v0, v1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/noinnion/android/reader/ui/BaseActivity;->v:Lhc7;

    invoke-virtual {v1, v0}, Lhc7;->b(Lic7;)Z

    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ln56;->s(Landroid/content/Context;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "outState"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lon6;->a:Lew6;

    invoke-virtual {v0, p1}, Lew6;->h(Landroid/os/Bundle;)V

    .line 2
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->J:Ljq6;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lvm6;->b()V

    .line 2
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method
