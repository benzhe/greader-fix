.class public Lcom/noinnion/android/greader/ui/setting/ArticleControlsPreferenceFragment;
.super Ldx6;
.source "SourceFile"


# static fields
.field public static final synthetic l:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ldx6;-><init>()V

    return-void
.end method

.method public static j(Landroidx/fragment/app/FragmentActivity;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 4

    .line 1
    new-instance v0, Lt75;

    invoke-direct {v0, p0}, Lt75;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0022

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lt75;->n(Landroid/view/View;)La0$a;

    const v1, 0x104000a

    invoke-virtual {v0, v1, v3}, Lt75;->d(ILandroid/content/DialogInterface$OnClickListener;)La0$a;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->o()Lwb;

    move-result-object p0

    const v1, 0x7f110216

    .line 5
    invoke-virtual {v0, v1}, Lt75;->l(I)La0$a;

    invoke-virtual {v0}, Lt75;->a()La0;

    move-result-object v0

    .line 6
    new-instance v1, Lss6;

    invoke-direct {v1, p0, p1}, Lss6;-><init>(Lwb;Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Ldx6;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f140001

    .line 2
    invoke-virtual {p0, p1}, Ldx6;->d(I)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f1100f5

    invoke-static {p1, v0}, Ln56;->y2(Landroid/app/Activity;I)V

    return-void
.end method
