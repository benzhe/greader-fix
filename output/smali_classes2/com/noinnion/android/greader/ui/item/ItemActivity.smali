.class public final Lcom/noinnion/android/greader/ui/item/ItemActivity;
.super Lcom/noinnion/android/reader/ui/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public A:Lmw6;

.field public w:Lcom/noinnion/android/greader/ui/item/ItemFragment;

.field public x:Landroid/widget/TextView;

.field public y:Landroid/widget/TextView;

.field public z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/noinnion/android/reader/ui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->j:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->a()V

    const v0, 0x7f010023

    const v1, 0x7f01002a

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "v"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090095

    if-eq p1, v0, :cond_2

    const v0, 0x7f090110

    if-eq p1, v0, :cond_1

    const v0, 0x7f09035d

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemActivity;->w:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->s()V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemActivity;->w:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->u()V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemActivity;->w:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    if-eqz p1, :cond_3

    .line 5
    iget-object v0, p1, Lcom/noinnion/android/greader/ui/item/ItemFragment;->i:Lap6;

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->o()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->r(Landroid/webkit/WebView;Lap6;)Z

    const/4 v1, 0x2

    .line 7
    iget-boolean v0, v0, Lap6;->s:Z

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->m(IZZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/noinnion/android/reader/ui/BaseActivity;->y(Landroid/os/Bundle;ZZ)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 3
    sget v2, Lcom/noinnion/android/reader/R$layout;->item_activity:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 4
    sget v2, Lcom/noinnion/android/reader/R$id;->fragment:I

    .line 5
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    const-string v6, "Missing required view with ID: "

    if-eqz v5, :cond_5

    .line 6
    new-instance v2, Lmw6;

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1, v5}, Lmw6;-><init>(Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;)V

    const-string v1, "ItemActivityBinding.inflate(layoutInflater)"

    .line 7
    invoke-static {v2, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v1, v2, Lmw6;->a:Landroid/widget/LinearLayout;

    .line 9
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 10
    iput-object v2, p0, Lcom/noinnion/android/greader/ui/item/ItemActivity;->A:Lmw6;

    .line 11
    iget-object v1, v2, Lmw6;->a:Landroid/widget/LinearLayout;

    .line 12
    sget v2, Lcom/noinnion/android/reader/R$id;->toolbar:I

    .line 13
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/Toolbar;

    if-eqz v5, :cond_4

    .line 14
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->s()Lc0;

    move-result-object v1

    invoke-virtual {v1, v5}, Lc0;->x(Landroidx/appcompat/widget/Toolbar;)V

    .line 15
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->t()Lu;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {v1, v0}, Lu;->o(Z)V

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object v2

    iget-boolean v2, v2, Lhw6;->m:Z

    if-eqz v2, :cond_0

    .line 18
    invoke-virtual {v1}, Lu;->f()V

    :cond_0
    const-string v1, "fragment_item"

    if-nez p1, :cond_1

    .line 19
    new-instance p1, Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-direct {p1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;-><init>()V

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Ln56;->g1(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->o()Lwb;

    move-result-object v2

    check-cast v2, Lxb;

    .line 22
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v5, Lqb;

    invoke-direct {v5, v2}, Lqb;-><init>(Lxb;)V

    const-string v2, "supportFragmentManager.beginTransaction()"

    .line 24
    invoke-static {v5, v2}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f090125

    .line 25
    invoke-virtual {v5, v2, p1, v1, v0}, Lqb;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 26
    invoke-virtual {v5}, Lqb;->d()I

    .line 27
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemActivity;->w:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    goto :goto_0

    .line 28
    :cond_1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemActivity;->w:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    if-nez p1, :cond_3

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->o()Lwb;

    move-result-object p1

    invoke-virtual {p1, v1}, Lwb;->c(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of v1, p1, Lcom/noinnion/android/greader/ui/item/ItemFragment;

    if-nez v1, :cond_2

    move-object p1, v3

    :cond_2
    check-cast p1, Lcom/noinnion/android/greader/ui/item/ItemFragment;

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemActivity;->w:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 30
    :cond_3
    :goto_0
    new-instance p1, La17;

    invoke-direct {p1, v3}, La17;-><init>(La17$a;)V

    .line 31
    sget-object v1, Lc17;->e:Lc17;

    .line 32
    iput-object v1, p1, La17;->i:Lc17;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 33
    iput v1, p1, La17;->a:F

    const/high16 v1, -0x1000000

    .line 34
    iput v1, p1, La17;->b:I

    const v1, 0x3f4ccccd    # 0.8f

    .line 35
    iput v1, p1, La17;->c:F

    const/4 v1, 0x0

    .line 36
    iput v1, p1, La17;->d:F

    const/high16 v1, 0x45160000    # 2400.0f

    .line 37
    iput v1, p1, La17;->e:F

    const v1, 0x3e3851ec    # 0.18f

    .line 38
    iput v1, p1, La17;->f:F

    .line 39
    iput-boolean v0, p1, La17;->g:Z

    .line 40
    iput v1, p1, La17;->h:F

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 42
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 43
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 44
    new-instance v2, Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-direct {v2, p0, v1, p1}, Lcom/r0adkll/slidr/widget/SliderPanel;-><init>(Landroid/content/Context;Landroid/view/View;La17;)V

    .line 45
    sget v3, Lcom/r0adkll/slidr/R$id;->slidable_panel:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 46
    sget v3, Lcom/r0adkll/slidr/R$id;->slidable_content:I

    invoke-virtual {v1, v3}, Landroid/view/View;->setId(I)V

    .line 47
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 48
    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 49
    new-instance v0, Lz07;

    invoke-direct {v0, p0, p1}, Lz07;-><init>(Landroid/app/Activity;La17;)V

    invoke-virtual {v2, v0}, Lcom/r0adkll/slidr/widget/SliderPanel;->setOnPanelSlideListener(Lcom/r0adkll/slidr/widget/SliderPanel$h;)V

    .line 50
    invoke-virtual {v2}, Lcom/r0adkll/slidr/widget/SliderPanel;->getDefaultInterface()Lb17;

    return-void

    .line 51
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 52
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-virtual {v6, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 54
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-virtual {v6, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const-string v0, "menu"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0901ce

    .line 2
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const-string v0, "item"

    .line 3
    invoke-static {p1, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090095

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemActivity;->z:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f09035d

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemActivity;->y:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v0, 0x7f090110

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemActivity;->x:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p2, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemActivity;->w:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->z(I)Z

    move-result v0

    if-eq v0, v1, :cond_2

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p2, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    invoke-static {p0}, Ln56;->b1(Landroid/app/Activity;)V

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p2, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemActivity;->w:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->A(I)Z

    move-result v0

    if-eq v0, v1, :cond_2

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const-string v0, "item"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemActivity;->w:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p1, Lcom/noinnion/android/greader/ui/item/ItemFragment;->i:Lap6;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lwb;

    move-result-object p1

    iget-wide v2, v0, Lap6;->e:J

    invoke-static {p1, v2, v3}, Lcom/noinnion/android/greader/ui/item/EditTagDialog;->d(Lwb;J)V

    :cond_0
    return v1

    .line 4
    :sswitch_1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemActivity;->w:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->I()V

    .line 5
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return v1

    .line 6
    :sswitch_2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemActivity;->w:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->G()V

    .line 7
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return v1

    .line 8
    :sswitch_3
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemActivity;->w:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->F()V

    :cond_3
    return v1

    .line 9
    :sswitch_4
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemActivity;->w:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->E()V

    :cond_4
    return v1

    .line 10
    :sswitch_5
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemActivity;->w:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->C()V

    :cond_5
    return v1

    .line 11
    :sswitch_6
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemActivity;->w:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    if-eqz p1, :cond_6

    .line 12
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v2, Luq6;

    invoke-direct {v2, p1}, Luq6;-><init>(Lcom/noinnion/android/greader/ui/item/ItemFragment;)V

    invoke-static {v0, v2}, Lcom/noinnion/android/greader/ui/setting/ArticleControlsPreferenceFragment;->j(Landroidx/fragment/app/FragmentActivity;Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_6
    return v1

    .line 13
    :sswitch_7
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/item/ItemActivity;->onBackPressed()V

    :goto_0
    const/4 p1, 0x0

    return p1

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_7
        0x7f0901c3 -> :sswitch_6
        0x7f0901c4 -> :sswitch_5
        0x7f0901c7 -> :sswitch_4
        0x7f0901cc -> :sswitch_3
        0x7f0901cd -> :sswitch_2
        0x7f0901d0 -> :sswitch_1
        0x7f0901d6 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    const-string v0, "menu"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0901c4

    .line 1
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/ItemActivity;->w:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, v1, Lcom/noinnion/android/greader/ui/item/ItemFragment;->i:Lap6;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lap6;->s:Z

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ne v1, v3, :cond_1

    const v1, 0x7f1101b8

    goto :goto_1

    :cond_1
    const v1, 0x7f1101ae

    .line 4
    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    const v0, 0x7f0901cc

    .line 5
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/ItemActivity;->w:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->q()Z

    move-result v1

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    const v1, 0x7f110195

    goto :goto_3

    :cond_3
    const v1, 0x7f110196

    .line 7
    :goto_3
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    const v0, 0x7f0901cd

    .line 8
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "item"

    .line 9
    invoke-static {v0, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lon6;->h(Landroid/content/Context;)Lkw6;

    move-result-object v4

    iget-boolean v4, v4, Lkw6;->b:Z

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    const v0, 0x7f0901d0

    .line 10
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemActivity;->w:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    if-eqz v0, :cond_4

    .line 12
    iget-boolean v0, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->D:Z

    if-ne v0, v3, :cond_4

    const/4 v2, 0x1

    .line 13
    :cond_4
    invoke-static {p1, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return v3
.end method
