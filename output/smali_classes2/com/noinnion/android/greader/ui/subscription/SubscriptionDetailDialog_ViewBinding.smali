.class public Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public a:Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;

.field public b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog_ViewBinding;->a:Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;

    .line 3
    const-class v0, Landroid/widget/ListView;

    const v1, 0x7f090352

    const-string v2, "field \'vListView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->vListView:Landroid/widget/ListView;

    const v0, 0x7f09034a

    const-string v1, "field \'vEmpty\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->vEmpty:Landroid/view/View;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090357

    const-string v2, "field \'vTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->vTitle:Landroid/widget/TextView;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090349

    const-string v2, "field \'vDescription\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->vDescription:Landroid/widget/TextView;

    .line 7
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09034f

    const-string v2, "field \'vImage\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->vImage:Landroid/widget/ImageView;

    const v0, 0x7f090350

    const-string v1, "field \'vImageContainer\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->vImageContainer:Landroid/view/View;

    .line 9
    const-class v0, Landroid/widget/ProgressBar;

    const v1, 0x7f090353

    const-string v2, "field \'vProgress\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->vProgress:Landroid/widget/ProgressBar;

    const v0, 0x7f090356

    const-string v1, "field \'vSubscribe\' and method \'subscribe\'"

    .line 10
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 11
    const-class v1, Landroid/widget/Button;

    const-string v2, "field \'vSubscribe\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->vSubscribe:Landroid/widget/Button;

    .line 12
    iput-object p2, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog_ViewBinding;->b:Landroid/view/View;

    .line 13
    new-instance v0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog_ViewBinding$a;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog_ViewBinding;Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog_ViewBinding;->a:Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog_ViewBinding;->a:Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;

    .line 3
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->vListView:Landroid/widget/ListView;

    .line 4
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->vEmpty:Landroid/view/View;

    .line 5
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->vTitle:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->vDescription:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->vImage:Landroid/widget/ImageView;

    .line 8
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->vImageContainer:Landroid/view/View;

    .line 9
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->vProgress:Landroid/widget/ProgressBar;

    .line 10
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->vSubscribe:Landroid/widget/Button;

    .line 11
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog_ViewBinding;->b:Landroid/view/View;

    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
