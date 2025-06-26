.class public Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public a:Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;

.field public b:Landroid/view/View;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment_ViewBinding;->a:Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;

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

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;->vListView:Landroid/widget/ListView;

    .line 5
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment_ViewBinding;->b:Landroid/view/View;

    .line 6
    check-cast v1, Landroid/widget/AdapterView;

    new-instance v0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment_ViewBinding$a;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment_ViewBinding;Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;)V

    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f09034a

    const-string v1, "field \'vEmpty\'"

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;->vEmpty:Landroid/view/View;

    .line 8
    const-class v0, Landroid/widget/AutoCompleteTextView;

    const v1, 0x7f09025a

    const-string v2, "field \'vQueryText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;->vQueryText:Landroid/widget/AutoCompleteTextView;

    .line 9
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f090327

    const-string v2, "field \'vTopicText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;->vTopicText:Landroid/widget/EditText;

    const v0, 0x7f09022c

    const-string v1, "field \'vOmplContainer\'"

    .line 10
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;->vOmplContainer:Landroid/view/View;

    const v0, 0x7f09028d

    const-string v1, "method \'searchFeeds\'"

    .line 11
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment_ViewBinding;->c:Landroid/view/View;

    .line 13
    new-instance v1, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment_ViewBinding$b;

    invoke-direct {v1, p0, p1}, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment_ViewBinding$b;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment_ViewBinding;Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090326

    const-string v1, "method \'getTopics\'"

    .line 14
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment_ViewBinding;->d:Landroid/view/View;

    .line 16
    new-instance v1, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment_ViewBinding$c;

    invoke-direct {v1, p0, p1}, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment_ViewBinding$c;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment_ViewBinding;Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09015c

    const-string v1, "method \'importOmpl\'"

    .line 17
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 18
    iput-object p2, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment_ViewBinding;->e:Landroid/view/View;

    .line 19
    new-instance v0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment_ViewBinding$d;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment_ViewBinding;Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment_ViewBinding;->a:Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment_ViewBinding;->a:Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;

    .line 3
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;->vListView:Landroid/widget/ListView;

    .line 4
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;->vEmpty:Landroid/view/View;

    .line 5
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;->vQueryText:Landroid/widget/AutoCompleteTextView;

    .line 6
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;->vTopicText:Landroid/widget/EditText;

    .line 7
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment_ViewBinding;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 8
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment_ViewBinding;->b:Landroid/view/View;

    .line 9
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment_ViewBinding;->c:Landroid/view/View;

    .line 11
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment_ViewBinding;->d:Landroid/view/View;

    .line 13
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment_ViewBinding;->e:Landroid/view/View;

    return-void

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
