.class public Lcom/noinnion/android/greader/ui/setting/SettingsActivity;
.super Lcom/noinnion/android/reader/ui/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lpl6$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;,
        Lcom/noinnion/android/greader/ui/setting/SettingsActivity$a;
    }
.end annotation


# static fields
.field public static final synthetic y:I


# instance fields
.field public w:Lnet/simonvt/menudrawer/MenuDrawer;

.field public x:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/noinnion/android/reader/ui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lrl6;Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=> onConsentInfoUpdate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljy6;->a(Ljava/lang/String;)V

    return-void
.end method

.method public h(Lem6;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=> onConsentNeedsToBeRequested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljy6;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->o()Lwb;

    move-result-object v0

    invoke-virtual {v0}, Lwb;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/SettingsActivity;->w:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/MenuDrawer;->f()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/SettingsActivity;->x:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/SettingsActivity;->x:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/SettingsActivity;->x:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/SettingsActivity;->x:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/noinnion/android/greader/ui/setting/SettingsActivity;->z(Ljava/lang/String;Z)V

    goto :goto_1

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/SettingsActivity;->w:Lnet/simonvt/menudrawer/MenuDrawer;

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->i(Z)V

    :goto_1
    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->j:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->a()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/SettingsActivity;->w:Lnet/simonvt/menudrawer/MenuDrawer;

    instance-of v1, v0, Lnet/simonvt/menudrawer/StaticDrawer;

    if-eqz v1, :cond_0

    .line 4
    invoke-static {p1}, Ln56;->W0(Landroid/content/Context;)I

    move-result p1

    div-int/lit8 p1, p1, 0x3

    invoke-virtual {v0, p1}, Lnet/simonvt/menudrawer/MenuDrawer;->setMenuSize(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/noinnion/android/reader/ui/BaseActivity;->y(Landroid/os/Bundle;ZZ)V

    const v2, 0x7f0c00d6

    .line 2
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 4
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    iput-object v3, p0, Lcom/noinnion/android/greader/ui/setting/SettingsActivity;->x:Ljava/util/Stack;

    const v3, 0x7f090322

    .line 5
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/Toolbar;

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->s()Lc0;

    move-result-object v4

    invoke-virtual {v4, v3}, Lc0;->x(Landroidx/appcompat/widget/Toolbar;)V

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->t()Lu;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->t()Lu;

    move-result-object v3

    const v4, 0x7f1101b0

    invoke-virtual {v3, v4}, Lu;->t(I)V

    .line 9
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->t()Lu;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ln56;->a1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lrn6;->getClientName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lu;->s(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->t()Lu;

    move-result-object v3

    invoke-virtual {v3, v0}, Lu;->o(Z)V

    :cond_0
    const v3, 0x7f0900f3

    .line 11
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnet/simonvt/menudrawer/MenuDrawer;

    iput-object v3, p0, Lcom/noinnion/android/greader/ui/setting/SettingsActivity;->w:Lnet/simonvt/menudrawer/MenuDrawer;

    const/4 v4, 0x2

    .line 12
    invoke-virtual {v3, v4}, Lnet/simonvt/menudrawer/MenuDrawer;->setTouchMode(I)V

    .line 13
    iget-object v3, p0, Lcom/noinnion/android/greader/ui/setting/SettingsActivity;->w:Lnet/simonvt/menudrawer/MenuDrawer;

    const v4, 0x7f0801e0

    invoke-virtual {v3, v4}, Lnet/simonvt/menudrawer/MenuDrawer;->setDropShadow(I)V

    .line 14
    iget-object v3, p0, Lcom/noinnion/android/greader/ui/setting/SettingsActivity;->w:Lnet/simonvt/menudrawer/MenuDrawer;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lnet/simonvt/menudrawer/MenuDrawer;->setDropShadowSize(I)V

    .line 15
    invoke-static {v2}, Ln56;->W0(Landroid/content/Context;)I

    move-result v3

    .line 16
    iget-object v4, p0, Lcom/noinnion/android/greader/ui/setting/SettingsActivity;->w:Lnet/simonvt/menudrawer/MenuDrawer;

    instance-of v5, v4, Lnet/simonvt/menudrawer/SlidingDrawer;

    if-eqz v5, :cond_1

    .line 17
    invoke-virtual {v4, v3}, Lnet/simonvt/menudrawer/MenuDrawer;->setMenuSize(I)V

    .line 18
    iget-object v3, p0, Lcom/noinnion/android/greader/ui/setting/SettingsActivity;->w:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v3, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->i(Z)V

    goto :goto_0

    .line 19
    :cond_1
    instance-of v5, v4, Lnet/simonvt/menudrawer/StaticDrawer;

    if-eqz v5, :cond_2

    .line 20
    div-int/lit8 v3, v3, 0x3

    invoke-virtual {v4, v3}, Lnet/simonvt/menudrawer/MenuDrawer;->setMenuSize(I)V

    :cond_2
    :goto_0
    if-nez p1, :cond_3

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->o()Lwb;

    move-result-object p1

    .line 22
    check-cast p1, Lxb;

    .line 23
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance v3, Lqb;

    invoke-direct {v3, p1}, Lqb;-><init>(Lxb;)V

    .line 25
    new-instance p1, Lcom/noinnion/android/greader/ui/setting/SettingsActivity$a;

    invoke-direct {p1}, Lcom/noinnion/android/greader/ui/setting/SettingsActivity$a;-><init>()V

    const v4, 0x7f0901b8

    const-string v5, "fragment_menu"

    .line 26
    invoke-virtual {v3, v4, p1, v5, v0}, Lqb;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 27
    invoke-virtual {v3}, Lqb;->d()I

    .line 28
    invoke-static {v2}, Ln56;->n1(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "sync"

    .line 29
    invoke-virtual {p0, p1, v1}, Lcom/noinnion/android/greader/ui/setting/SettingsActivity;->z(Ljava/lang/String;Z)V

    :cond_3
    const p1, 0x7f1100ff

    .line 30
    invoke-static {p0, p1}, Ln56;->y2(Landroid/app/Activity;I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/setting/SettingsActivity;->w:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {p1}, Lnet/simonvt/menudrawer/MenuDrawer;->f()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/setting/SettingsActivity;->w:Lnet/simonvt/menudrawer/MenuDrawer;

    .line 4
    invoke-virtual {p1, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->i(Z)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return v0
.end method

.method public z(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/setting/SettingsActivity;->x:Ljava/util/Stack;

    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/setting/SettingsActivity;->x:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->clear()V

    .line 3
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/setting/SettingsActivity;->x:Ljava/util/Stack;

    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :goto_0
    new-instance p2, Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;

    invoke-direct {p2}, Lcom/noinnion/android/greader/ui/setting/SettingsActivity$b;-><init>()V

    .line 5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "settings"

    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->o()Lwb;

    move-result-object p1

    check-cast p1, Lxb;

    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v0, Lqb;

    invoke-direct {v0, p1}, Lqb;-><init>(Lxb;)V

    const p1, 0x7f0901b7

    const-string v1, "fragment_content"

    .line 12
    invoke-virtual {v0, p1, p2, v1}, Ldc;->g(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ldc;

    invoke-virtual {v0}, Ldc;->d()I

    :cond_1
    return-void
.end method
