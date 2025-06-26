.class public Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;
.super Lqw6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog$c;,
        Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog$d;,
        Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog$b;
    }
.end annotation


# static fields
.field public static final synthetic k:I


# instance fields
.field public e:Landroid/app/ProgressDialog;

.field public f:Lzu6;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Lev6;

.field public vEmptyMessage:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900fe
    .end annotation
.end field

.field public vEmptyView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09034a
    .end annotation
.end field

.field public vListView:Landroid/widget/ListView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090352
    .end annotation
.end field

.field public vLoading:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09018e
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
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lrb;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lip6;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lip6;

    .line 5
    iget-object v1, v1, Lip6;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lzu6;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;->i:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, v0, v1, v2}, Lzu6;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;->f:Lzu6;

    .line 7
    new-instance v0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog$d;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog$a;)V

    .line 8
    iget-object p1, p1, Lzu6;->j:Lan6;

    const-string v2, "EVENT_SUBSCRIBE"

    invoke-virtual {p1, v2, v0}, Lan6;->a(Ljava/lang/String;Lbn6;)V

    .line 9
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;->vListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;->f:Lzu6;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 10
    new-instance p1, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog$b;

    invoke-direct {p1, p0, v1}, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog$b;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog$a;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lrb;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Lev6;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lev6;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;->j:Lev6;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f110105

    invoke-static {p1, v0}, Ln56;->y2(Landroid/app/Activity;I)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "itemId"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;->g:Ljava/lang/String;

    const-string v0, "title"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;->h:Ljava/lang/String;

    const-string v0, "url"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;->i:I

    :cond_0
    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    .line 6
    new-instance p1, Lt75;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lt75;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;->h:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;->g:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;->h:Ljava/lang/String;

    .line 8
    :goto_0
    iget-object v1, p1, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v0, v1, Landroidx/appcompat/app/AlertController$b;->e:Ljava/lang/CharSequence;

    const v0, 0x7f110341

    .line 9
    sget-object v1, Lzt6;->e:Lzt6;

    .line 10
    invoke-virtual {p1, v0, v1}, Lt75;->j(ILandroid/content/DialogInterface$OnClickListener;)Lt75;

    move-result-object p1

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00dd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Lt75;->n(Landroid/view/View;)La0$a;

    .line 13
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 14
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;->vListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;->vEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 15
    invoke-virtual {p1}, Lt75;->a()La0;

    move-result-object p1

    return-object p1
.end method

.method public onStart()V
    .locals 4

    .line 1
    invoke-super {p0}, Lrb;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;->j:Lev6;

    new-instance v1, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog$c;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog$a;)V

    .line 3
    iget-object v0, v0, Lvm6;->b:Lwm6;

    const-string v3, "DEFAULT_FINISHED_EVENT"

    invoke-virtual {v0, v3, v1}, Lwm6;->b(Ljava/lang/String;Lbn6;)V

    .line 4
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;->j:Lev6;

    new-instance v1, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog$c;

    invoke-direct {v1, p0, v2}, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog$c;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog$a;)V

    .line 5
    iget-object v0, v0, Lvm6;->b:Lwm6;

    const-string v2, "DEFAULT_ERROR_EVENT"

    invoke-virtual {v0, v2, v1}, Lwm6;->b(Ljava/lang/String;Lbn6;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Lrb;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;->j:Lev6;

    invoke-virtual {v0}, Lvm6;->b()V

    return-void
.end method
