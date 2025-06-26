.class public Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbn6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public final synthetic b:Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog$b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/noinnion/android/greader/client/rss/syndication/handler/FeedHandlerResult;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/noinnion/android/greader/client/rss/syndication/handler/FeedHandlerResult;

    .line 3
    iget-object p1, p1, Lcom/noinnion/android/greader/client/rss/syndication/handler/FeedHandlerResult;->feed:Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;

    .line 4
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;

    new-instance v1, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog$c;

    iget-object v2, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;

    iget-object v3, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog$b;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog$c;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->r:Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog$c;

    .line 5
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;

    iget-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->vListView:Landroid/widget/ListView;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->r:Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog$c;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;

    .line 7
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->vProgress:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method
