.class public Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment$b;
    }
.end annotation


# instance fields
.field public e:I

.field public f:Lav6;

.field public g:Ljava/lang/CharSequence;

.field public final h:Landroid/text/TextWatcher;

.field public vClearButton:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900ae
    .end annotation
.end field

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
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;->e:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;->g:Ljava/lang/CharSequence;

    .line 4
    new-instance v0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment$a;

    invoke-direct {v0, p0}, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment$a;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;)V

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;->h:Landroid/text/TextWatcher;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Lav6;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2, v1}, Lav6;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;->f:Lav6;

    .line 3
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;->vListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4
    new-instance p1, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment$b;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment$a;)V

    new-array v0, v2, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const-string v1, "browse_type"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;->e:I

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00dc

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;->vListView:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;->vEmpty:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 4
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;->vListView:Landroid/widget/ListView;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 5
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;->vQueryText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f060089

    invoke-static {p3, v0}, Lu7;->b(Landroid/content/Context;I)I

    move-result p3

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, p3, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 6
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;->vQueryText:Landroid/widget/EditText;

    iget-object p3, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;->h:Landroid/text/TextWatcher;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;->vQueryText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;->h:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method
