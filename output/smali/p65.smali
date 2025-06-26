.class public Lp65;
.super Lj0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj0;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Z)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lrb;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lo65;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Lo65;

    .line 4
    iget-object v0, p1, Lo65;->g:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lo65;->f()Landroid/widget/FrameLayout;

    .line 6
    :cond_0
    iget-object p1, p1, Lo65;->g:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 7
    iget-boolean p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->A:Z

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public dismiss()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lp65;->d(Z)Z

    .line 2
    invoke-super {p0}, Lrb;->dismiss()V

    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lp65;->d(Z)Z

    .line 2
    invoke-super {p0}, Lrb;->dismissAllowingStateLoss()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 1
    new-instance p1, Lo65;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lrb;->getTheme()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lo65;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method
