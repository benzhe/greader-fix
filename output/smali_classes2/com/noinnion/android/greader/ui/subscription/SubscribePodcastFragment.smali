.class public Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment$d;,
        Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment$c;
    }
.end annotation


# instance fields
.field public e:Lbv6;

.field public f:Landroid/app/ProgressDialog;

.field public g:Lev6;

.field public h:Ldv6;

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

.field public vQueryText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09025a
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static d(Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;Lcom/noinnion/android/reader/common/subscription/Feed;)V
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

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;->f:Landroid/app/ProgressDialog;

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;->g:Lev6;

    invoke-virtual {v0}, Lvm6;->a()V

    .line 3
    iget-object p0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;->g:Lev6;

    invoke-virtual {p0, p1}, Lvm6;->e(Ljava/lang/Object;)J

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Lbv6;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, v0, v1}, Lbv6;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;->e:Lbv6;

    .line 3
    new-instance v0, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment$b;

    invoke-direct {v0, p0}, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment$b;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;)V

    .line 4
    iget-object p1, p1, Lbv6;->j:Lan6;

    const-string v1, "EVENT_SUBSCRIBE"

    invoke-virtual {p1, v1, v0}, Lan6;->a(Ljava/lang/String;Lbn6;)V

    .line 5
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;->vListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;->e:Lbv6;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6
    new-instance p1, Lev6;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lev6;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;->g:Lev6;

    .line 7
    new-instance p1, Ldv6;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Ldv6;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;->h:Ldv6;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00e0

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;->vListView:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;->vEmpty:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 4
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;->vQueryText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f060089

    invoke-static {p3, v0}, Lu7;->b(Landroid/content/Context;I)I

    move-result p3

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, p3, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 5
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;->vQueryText:Landroid/widget/EditText;

    new-instance p3, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment$a;

    invoke-direct {p3, p0}, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment$a;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-object p1
.end method

.method public onStart()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;->h:Ldv6;

    new-instance v1, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment$c;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment$a;)V

    .line 3
    iget-object v0, v0, Lvm6;->b:Lwm6;

    const-string v3, "DEFAULT_FINISHED_EVENT"

    invoke-virtual {v0, v3, v1}, Lwm6;->b(Ljava/lang/String;Lbn6;)V

    .line 4
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;->h:Ldv6;

    new-instance v1, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment$c;

    invoke-direct {v1, p0, v2}, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment$c;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment$a;)V

    .line 5
    iget-object v0, v0, Lvm6;->b:Lwm6;

    const-string v4, "DEFAULT_ERROR_EVENT"

    invoke-virtual {v0, v4, v1}, Lwm6;->b(Ljava/lang/String;Lbn6;)V

    .line 6
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;->g:Lev6;

    new-instance v1, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment$d;

    invoke-direct {v1, p0, v2}, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment$d;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment$a;)V

    .line 7
    iget-object v0, v0, Lvm6;->b:Lwm6;

    invoke-virtual {v0, v3, v1}, Lwm6;->b(Ljava/lang/String;Lbn6;)V

    .line 8
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;->g:Lev6;

    new-instance v1, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment$d;

    invoke-direct {v1, p0, v2}, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment$d;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment$a;)V

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
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;->h:Ldv6;

    invoke-virtual {v0}, Lvm6;->b()V

    .line 3
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;->g:Lev6;

    invoke-virtual {v0}, Lvm6;->b()V

    return-void
.end method
