.class public Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public a:Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;

.field public b:Landroid/view/View;

.field public c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment_ViewBinding;->a:Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;

    const v0, 0x7f090352

    const-string v1, "field \'vListView\' and method \'onListItemClick\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 4
    const-class v2, Landroid/widget/ListView;

    const-string v3, "field \'vListView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;->vListView:Landroid/widget/ListView;

    .line 5
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment_ViewBinding;->b:Landroid/view/View;

    .line 6
    check-cast v1, Landroid/widget/AdapterView;

    new-instance v0, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment_ViewBinding$a;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment_ViewBinding;Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;)V

    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f09034a

    const-string v1, "field \'vEmpty\'"

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;->vEmpty:Landroid/view/View;

    .line 8
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f09025a

    const-string v2, "field \'vQueryText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;->vQueryText:Landroid/widget/EditText;

    const v0, 0x7f09028d

    const-string v1, "method \'searchFeeds\'"

    .line 9
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 10
    iput-object p2, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment_ViewBinding;->c:Landroid/view/View;

    .line 11
    new-instance v0, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment_ViewBinding$b;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment_ViewBinding;Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment_ViewBinding;->a:Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment_ViewBinding;->a:Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;

    .line 3
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;->vListView:Landroid/widget/ListView;

    .line 4
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;->vEmpty:Landroid/view/View;

    .line 5
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;->vQueryText:Landroid/widget/EditText;

    .line 6
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment_ViewBinding;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 7
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment_ViewBinding;->b:Landroid/view/View;

    .line 8
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment_ViewBinding;->c:Landroid/view/View;

    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
