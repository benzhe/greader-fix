.class public Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment$d;,
        Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment$c;
    }
.end annotation


# instance fields
.field public e:Landroid/app/ProgressDialog;

.field public f:Lbv6;

.field public g:Lev6;

.field public h:Lcv6;

.field public vEmpty:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09034a
    .end annotation
.end field

.field public vListView:Landroid/widget/ListView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090352
    .end annotation
.end field

.field public vOmplContainer:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09022c
    .end annotation
.end field

.field public vQueryText:Landroid/widget/AutoCompleteTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09025a
    .end annotation
.end field

.field public vTopicText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090327
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static d(Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;Lcom/noinnion/android/reader/common/subscription/Feed;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f1101d4

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;->e:Landroid/app/ProgressDialog;

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;->g:Lev6;

    invoke-virtual {v0}, Lvm6;->a()V

    .line 3
    iget-object p0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;->g:Lev6;

    invoke-virtual {p0, p1}, Lvm6;->e(Ljava/lang/Object;)J

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "input"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;->vQueryText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :cond_0
    new-instance p1, Lbv6;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, v0, v1}, Lbv6;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;->f:Lbv6;

    .line 7
    new-instance v0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment$b;

    invoke-direct {v0, p0}, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment$b;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;)V

    .line 8
    iget-object p1, p1, Lbv6;->j:Lan6;

    const-string v1, "EVENT_SUBSCRIBE"

    invoke-virtual {p1, v1, v0}, Lan6;->a(Ljava/lang/String;Lbn6;)V

    .line 9
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;->vListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;->f:Lbv6;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 10
    new-instance p1, Lev6;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lev6;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;->g:Lev6;

    .line 11
    new-instance p1, Lcv6;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcv6;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;->h:Lcv6;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0c00e2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;->vListView:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;->vEmpty:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 4
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;->vQueryText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p2}, Landroid/widget/AutoCompleteTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f060089

    invoke-static {p3, v0}, Lu7;->b(Landroid/content/Context;I)I

    move-result p3

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, p3, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const-string p2, "http://"

    const-string p3, "http://www."

    .line 5
    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    .line 6
    new-instance p3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x109000a

    invoke-direct {p3, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 7
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;->vQueryText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p2, p3}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 8
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;->vQueryText:Landroid/widget/AutoCompleteTextView;

    new-instance p3, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment$a;

    invoke-direct {p3, p0}, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment$a;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;->e:Landroid/app/ProgressDialog;

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onStart()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;->h:Lcv6;

    new-instance v1, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment$c;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment$a;)V

    .line 3
    iget-object v0, v0, Lvm6;->b:Lwm6;

    const-string v3, "DEFAULT_FINISHED_EVENT"

    invoke-virtual {v0, v3, v1}, Lwm6;->b(Ljava/lang/String;Lbn6;)V

    .line 4
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;->h:Lcv6;

    new-instance v1, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment$c;

    invoke-direct {v1, p0, v2}, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment$c;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment$a;)V

    .line 5
    iget-object v0, v0, Lvm6;->b:Lwm6;

    const-string v4, "DEFAULT_ERROR_EVENT"

    invoke-virtual {v0, v4, v1}, Lwm6;->b(Ljava/lang/String;Lbn6;)V

    .line 6
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;->g:Lev6;

    new-instance v1, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment$d;

    invoke-direct {v1, p0, v2}, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment$d;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment$a;)V

    .line 7
    iget-object v0, v0, Lvm6;->b:Lwm6;

    invoke-virtual {v0, v3, v1}, Lwm6;->b(Ljava/lang/String;Lbn6;)V

    .line 8
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;->g:Lev6;

    new-instance v1, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment$d;

    invoke-direct {v1, p0, v2}, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment$d;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment$a;)V

    .line 9
    iget-object v0, v0, Lvm6;->b:Lwm6;

    invoke-virtual {v0, v4, v1}, Lwm6;->b(Ljava/lang/String;Lbn6;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;->g:Lev6;

    invoke-virtual {v0}, Lvm6;->b()V

    .line 3
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;->h:Lcv6;

    invoke-virtual {v0}, Lvm6;->b()V

    return-void
.end method
