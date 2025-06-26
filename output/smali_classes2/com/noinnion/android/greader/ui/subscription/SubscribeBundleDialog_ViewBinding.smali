.class public Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public a:Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;

.field public b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog_ViewBinding;->a:Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;

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

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;->vListView:Landroid/widget/ListView;

    .line 5
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog_ViewBinding;->b:Landroid/view/View;

    .line 6
    check-cast v1, Landroid/widget/AdapterView;

    new-instance v0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog_ViewBinding$a;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog_ViewBinding;Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f09034a

    const-string v1, "field \'vEmptyView\'"

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;->vEmptyView:Landroid/view/View;

    .line 8
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900fe

    const-string v2, "field \'vEmptyMessage\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;->vEmptyMessage:Landroid/widget/TextView;

    const v0, 0x7f09018e

    const-string v1, "field \'vLoading\'"

    .line 9
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;->vLoading:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog_ViewBinding;->a:Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog_ViewBinding;->a:Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;

    .line 3
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;->vListView:Landroid/widget/ListView;

    .line 4
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;->vEmptyView:Landroid/view/View;

    .line 5
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;->vEmptyMessage:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;->vLoading:Landroid/view/View;

    .line 7
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog_ViewBinding;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 8
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog_ViewBinding;->b:Landroid/view/View;

    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
