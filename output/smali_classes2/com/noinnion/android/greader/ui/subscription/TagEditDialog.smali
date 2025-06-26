.class public Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;
.super Lqw6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noinnion/android/greader/ui/subscription/TagEditDialog$b;
    }
.end annotation


# static fields
.field public static final synthetic i:I


# instance fields
.field public e:Ljava/lang/String;

.field public f:Llp6;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lip6;",
            ">;"
        }
    .end annotation
.end field

.field public h:Landroid/app/ProgressDialog;

.field public mExcludeCheck:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902e9
    .end annotation
.end field

.field public mHideCheck:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09013d
    .end annotation
.end field

.field public mImageFitCheck:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090158
    .end annotation
.end field

.field public mJavascriptCheck:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09016f
    .end annotation
.end field

.field public mNameText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090203
    .end annotation
.end field

.field public mNotificationCheck:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090217
    .end annotation
.end field

.field public mSubPreferences:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902d6
    .end annotation
.end field

.field public mTagPreferences:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902f7
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lqw6;-><init>()V

    return-void
.end method

.method public static h(Lwb;Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;

    invoke-direct {v0}, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "tagUid"

    .line 3
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 5
    check-cast p0, Lxb;

    .line 6
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance p1, Lqb;

    invoke-direct {p1, p0}, Lqb;-><init>(Lxb;)V

    const-string p0, "fragment_tag_edit"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 8
    invoke-virtual {p1, v1, v0, p0, v2}, Lqb;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 9
    invoke-virtual {p1}, Lqb;->d()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->f:Llp6;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Llp6;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->mSubPreferences:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->f:Llp6;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    iget-object v2, v2, Llp6;->f:Ljava/lang/String;

    .line 5
    sget-object v5, Lip6;->A:Landroid/net/Uri;

    .line 6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-static {v0, v2, v3, v4}, Lep6;->x(Landroid/content/Context;Ljava/lang/String;ZZ)Lvd;

    move-result-object v0

    invoke-virtual {v0}, Lvd;->k()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    new-instance v2, Lip6;

    invoke-direct {v2, v0}, Lip6;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 10
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 11
    throw v1

    .line 12
    :cond_3
    invoke-static {v0, v4}, Lip6;->f(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v5

    :goto_1
    iput-object v5, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->g:Ljava/util/List;

    if-eqz v5, :cond_9

    .line 13
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lip6;

    .line 15
    iget-boolean v5, v4, Lip6;->r:Z

    if-eqz v5, :cond_6

    add-int/lit8 v3, v3, 0x1

    .line 16
    :cond_6
    iget-boolean v5, v4, Lip6;->s:Z

    if-eqz v5, :cond_7

    add-int/lit8 v1, v1, 0x1

    .line 17
    :cond_7
    iget-boolean v4, v4, Lip6;->t:Z

    if-eqz v4, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 18
    :cond_8
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 19
    iget-object v4, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->mNotificationCheck:Landroid/widget/CheckBox;

    invoke-virtual {p0, v4, v3, v0}, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->e(Landroid/widget/CheckBox;II)V

    .line 20
    iget-object v3, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->mImageFitCheck:Landroid/widget/CheckBox;

    invoke-virtual {p0, v3, v1, v0}, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->e(Landroid/widget/CheckBox;II)V

    .line 21
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->mJavascriptCheck:Landroid/widget/CheckBox;

    invoke-virtual {p0, v1, v2, v0}, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->e(Landroid/widget/CheckBox;II)V

    return-void

    .line 22
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->mSubPreferences:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final e(Landroid/widget/CheckBox;II)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    if-ne p2, p3, :cond_1

    .line 3
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 4
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lrb;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f11010e

    invoke-static {p1, v0}, Ln56;->y2(Landroid/app/Activity;I)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "tagUid"

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->e:Ljava/lang/String;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->e:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Llp6;->b(Landroid/content/Context;Ljava/lang/String;Z)Llp6;

    move-result-object p1

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->f:Llp6;

    :cond_1
    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    .line 7
    new-instance p1, Lt75;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lt75;-><init>(Landroid/content/Context;)V

    const v0, 0x7f11034e

    const/4 v2, 0x0

    .line 8
    invoke-virtual {p1, v0, v2}, Lt75;->j(ILandroid/content/DialogInterface$OnClickListener;)Lt75;

    move-result-object p1

    const/high16 v0, 0x1040000

    sget-object v3, Lhu6;->e:Lhu6;

    .line 9
    invoke-virtual {p1, v0, v3}, Lt75;->h(ILandroid/content/DialogInterface$OnClickListener;)Lt75;

    move-result-object p1

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0c00ef

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Lt75;->n(Landroid/view/View;)La0$a;

    .line 12
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->f:Llp6;

    if-eqz v2, :cond_2

    iget-object v2, v2, Llp6;->i:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const v2, 0x7f110154

    .line 13
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 14
    :goto_0
    iget-object v3, p1, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v2, v3, Landroidx/appcompat/app/AlertController$b;->e:Ljava/lang/CharSequence;

    .line 15
    invoke-virtual {p1}, Lt75;->a()La0;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 17
    new-instance v2, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog$a;

    invoke-direct {v2, p0, p1}, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog$a;-><init>(Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;La0;)V

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 18
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 19
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->f:Llp6;

    const/16 v2, 0x8

    if-nez v0, :cond_3

    .line 20
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->mTagPreferences:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 21
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 22
    iget-object v3, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->mNameText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->f:Llp6;

    invoke-virtual {v4, v0}, Llp6;->h(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->f:Llp6;

    invoke-virtual {v0}, Llp6;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 24
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->mNameText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 25
    :cond_4
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->mExcludeCheck:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->f:Llp6;

    iget-boolean v1, v1, Llp6;->l:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 26
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->f:Llp6;

    iget v0, v0, Llp6;->g:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_5

    .line 27
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->mExcludeCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 28
    :cond_5
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->mHideCheck:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->f:Llp6;

    iget-boolean v1, v1, Llp6;->m:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 29
    :goto_1
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->d()V

    return-object p1
.end method
