.class public abstract Lcom/noinnion/android/greader/ui/widget/WidgetConfigureActivity;
.super Lcom/noinnion/android/reader/ui/BaseDialogActivity;
.source "SourceFile"


# instance fields
.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/noinnion/android/reader/ui/BaseDialogActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/noinnion/android/greader/ui/widget/WidgetConfigureActivity;->y:I

    return-void
.end method


# virtual methods
.method public B()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/noinnion/android/greader/ui/widget/WidgetConfigureActivity;->y:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 2
    invoke-static {p0}, Lcn6;->d0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x1020002

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f11015f

    .line 4
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v0, v2, v3}, Lcom/google/android/material/snackbar/Snackbar;->j(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    const v2, 0x7f1102ca

    .line 5
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lnv6;

    invoke-direct {v3, p0}, Lnv6;-><init>(Lcom/noinnion/android/greader/ui/widget/WidgetConfigureActivity;)V

    invoke-virtual {v0, v2, v3}, Lcom/google/android/material/snackbar/Snackbar;->k(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->l()V

    return v1

    :cond_1
    return v2
.end method

.method public abstract C(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/noinnion/android/reader/ui/BaseDialogActivity;->A(Landroid/os/Bundle;Z)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    const p1, 0x7f0c0112

    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f090322

    .line 4
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    if-eqz p1, :cond_0

    const v0, 0x7f110367

    .line 5
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    const v0, 0x7f08001e

    .line 6
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 7
    new-instance v0, Lmv6;

    invoke-direct {v0, p0}, Lmv6;-><init>(Lcom/noinnion/android/greader/ui/widget/WidgetConfigureActivity;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    :cond_0
    new-instance p1, Lsv6;

    invoke-direct {p1}, Lsv6;-><init>()V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 10
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 11
    :cond_1
    iget v1, p0, Lcom/noinnion/android/greader/ui/widget/WidgetConfigureActivity;->y:I

    const-string v2, "app_widget_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->o()Lwb;

    move-result-object v0

    check-cast v0, Lxb;

    .line 14
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v1, Lqb;

    invoke-direct {v1, v0}, Lqb;-><init>(Lxb;)V

    const v0, 0x7f0900c3

    const/4 v2, 0x0

    .line 16
    invoke-virtual {v1, v0, p1, v2}, Ldc;->g(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ldc;

    .line 17
    invoke-virtual {v1}, Lqb;->c()I

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/widget/WidgetConfigureActivity;->B()Z

    return-void
.end method
