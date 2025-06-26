.class public Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;
.super Lqw6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$b;
    }
.end annotation


# static fields
.field public static final synthetic f:I


# instance fields
.field public articlesCheck:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900af
    .end annotation
.end field

.field public completeCheck:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900b0
    .end annotation
.end field

.field public duplicatesCheck:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900b1
    .end annotation
.end field

.field public e:Landroid/app/ProgressDialog;

.field public imagesCheck:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900b2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lqw6;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lrb;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f1100e6

    invoke-static {p1, v0}, Ln56;->y2(Landroid/app/Activity;I)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    const/4 p1, 0x1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    .line 2
    new-instance p1, Lt75;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lt75;-><init>(Landroid/content/Context;)V

    const v0, 0x7f11018b

    .line 3
    invoke-virtual {p1, v0}, Lt75;->m(I)Lt75;

    const v0, 0x7f110340

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Lt75;->j(ILandroid/content/DialogInterface$OnClickListener;)Lt75;

    move-result-object p1

    sget-object v0, Lts6;->e:Lts6;

    const/high16 v2, 0x1040000

    .line 5
    invoke-virtual {p1, v2, v0}, Lt75;->h(ILandroid/content/DialogInterface$OnClickListener;)Lt75;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c0030

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Lt75;->n(Landroid/view/View;)La0$a;

    .line 8
    invoke-virtual {p1}, Lt75;->a()La0;

    move-result-object p1

    .line 9
    new-instance v1, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$a;

    invoke-direct {v1, p0, p1}, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog$a;-><init>(Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;La0;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 10
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 11
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;->completeCheck:Landroid/widget/CheckBox;

    new-instance v1, Lot6;

    invoke-direct {v1, p0}, Lot6;-><init>(Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 12
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;->duplicatesCheck:Landroid/widget/CheckBox;

    new-instance v1, Lpt6;

    invoke-direct {v1, p0}, Lpt6;-><init>(Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
