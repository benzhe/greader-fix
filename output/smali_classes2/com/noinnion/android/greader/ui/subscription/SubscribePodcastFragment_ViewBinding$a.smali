.class public Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment_ViewBinding$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment_ViewBinding;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment_ViewBinding;Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment_ViewBinding$a;->e:Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment_ViewBinding$a;->e:Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;

    const-class v5, Landroid/widget/ListView;

    const-string v1, "onItemClick"

    const/4 v2, 0x0

    const-string v3, "onListItemClick"

    const/4 v4, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lbutterknife/internal/Utils;->castParam(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 2
    iget-object p1, p2, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;->e:Lbv6;

    invoke-virtual {p1, p3}, Lqm6;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/noinnion/android/reader/common/subscription/Feed;

    .line 3
    iget-object p3, p2, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;->e:Lbv6;

    iget-object p4, p1, Lcom/noinnion/android/reader/common/subscription/Feed;->url:Ljava/lang/String;

    invoke-virtual {p3, p4}, Lbv6;->b(Ljava/lang/String;)Z

    move-result p3

    iput-boolean p3, p1, Lcom/noinnion/android/reader/common/subscription/Feed;->selected:Z

    .line 4
    new-instance p3, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p4

    invoke-direct {p3, p4, p1}, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;-><init>(Landroid/content/Context;Lcom/noinnion/android/reader/common/subscription/Feed;)V

    .line 5
    new-instance p1, Lnu6;

    invoke-direct {p1, p2}, Lnu6;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;)V

    .line 6
    iget-object p2, p3, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->t:Lan6;

    const-string p4, "EVENT_SUBSCRIBE"

    invoke-virtual {p2, p4, p1}, Lan6;->a(Ljava/lang/String;Lbn6;)V

    .line 7
    invoke-virtual {p3}, Landroid/app/Dialog;->show()V

    return-void
.end method
