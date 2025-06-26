.class public Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;
.super Lqw6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog$c;
    }
.end annotation


# static fields
.field public static final synthetic g:I


# instance fields
.field public e:Lew6;

.field public f:Landroid/app/ProgressDialog;

.field public mLabelText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090174
    .end annotation
.end field

.field public mLocationIcon:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09018f
    .end annotation
.end field

.field public mLocationName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090190
    .end annotation
.end field

.field public mQueryText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09025a
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lqw6;-><init>()V

    return-void
.end method

.method public static d(Lwb;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;

    invoke-direct {v0}, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;-><init>()V

    .line 2
    check-cast p0, Lxb;

    .line 3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Lqb;

    invoke-direct {v1, p0}, Lqb;-><init>(Lxb;)V

    const-string p0, "fragment_search_save"

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v1, v2, v0, p0, v3}, Lqb;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 6
    invoke-virtual {v1}, Lqb;->d()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lrb;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f1100fb

    invoke-static {p1, v0}, Ln56;->y2(Landroid/app/Activity;I)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    invoke-static {p1}, Lcn6;->d0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    sget-object v0, Llp6;->n:Landroid/net/Uri;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Llp6;->n:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, "type = 9"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    new-instance v2, Llp6;

    invoke-direct {v2, v1}, Llp6;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 11
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const v0, 0x1020002

    .line 12
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 13
    invoke-static {p1, v0}, Ln56;->d1(Landroid/content/Context;Landroid/view/View;)V

    const p1, 0x7f11015d

    .line 14
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v1, -0x2

    invoke-static {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->j(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    const v0, 0x7f1102ca

    .line 15
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lbr6;->e:Lbr6;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->k(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 16
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->l()V

    .line 17
    invoke-virtual {p0}, Lrb;->dismiss()V

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 18
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 19
    throw p1

    :cond_2
    :goto_2
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .line 1
    sget-object p1, Lon6;->a:Lew6;

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;->e:Lew6;

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    .line 3
    new-instance v0, Lt75;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lt75;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1100e2

    .line 4
    invoke-virtual {v0, v1}, Lt75;->m(I)Lt75;

    const v1, 0x7f11034e

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Lt75;->j(ILandroid/content/DialogInterface$OnClickListener;)Lt75;

    move-result-object v0

    new-instance v1, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog$a;

    invoke-direct {v1, p0}, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog$a;-><init>(Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;)V

    const/high16 v3, 0x1040000

    .line 6
    invoke-virtual {v0, v3, v1}, Lt75;->h(ILandroid/content/DialogInterface$OnClickListener;)Lt75;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0c004a

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Lt75;->n(Landroid/view/View;)La0$a;

    .line 9
    invoke-virtual {v0}, Lt75;->a()La0;

    move-result-object v0

    .line 10
    new-instance v2, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog$b;

    invoke-direct {v2, p0, v0}, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog$b;-><init>(Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;La0;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 11
    invoke-static {p0, v1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 12
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;->mLabelText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;->e:Lew6;

    iget-object v2, v2, Lew6;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;->mQueryText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;->e:Lew6;

    iget-object v2, v2, Lew6;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;->mLocationName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;->mLocationIcon:Landroid/widget/ImageView;

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 16
    sget-object v5, Lon6;->a:Lew6;

    iget-object v6, v5, Lew6;->a:Lip6;

    if-eqz v6, :cond_0

    .line 17
    iget-object p1, v6, Lip6;->h:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f0800fd

    .line 18
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 19
    :cond_0
    iget-object v6, v5, Lew6;->b:Llp6;

    if-eqz v6, :cond_4

    .line 20
    iget v5, v6, Llp6;->g:I

    if-eq v5, p1, :cond_3

    const/16 p1, 0xa

    if-eq v5, p1, :cond_2

    const/16 p1, 0xb

    if-eq v5, p1, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0x7f080190

    .line 21
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 22
    sget-object p1, Lon6;->a:Lew6;

    iget-object p1, p1, Lew6;->b:Llp6;

    iget-object p1, p1, Llp6;->i:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const p1, 0x7f080191

    .line 23
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 24
    sget-object p1, Lon6;->a:Lew6;

    iget-object p1, p1, Lew6;->b:Llp6;

    iget-object p1, p1, Llp6;->i:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const p1, 0x7f080193

    .line 25
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const p1, 0x7f110157

    .line 26
    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 27
    :cond_4
    iget-boolean p1, v5, Lew6;->d:Z

    if-eqz p1, :cond_5

    const p1, 0x7f110156

    .line 28
    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const p1, 0x7f0800f0

    .line 29
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 30
    :cond_5
    iget-boolean p1, v5, Lew6;->e:Z

    if-eqz p1, :cond_6

    const p1, 0x7f110155

    .line 31
    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const p1, 0x7f08015a

    .line 32
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_6
    const p1, 0x7f08018f

    .line 33
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const p1, 0x7f110154

    .line 34
    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 35
    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method
