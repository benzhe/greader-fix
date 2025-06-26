.class public Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/noinnion/android/reader/common/subscription/BundleItem$Subscription;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog$b;->a:Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/noinnion/android/reader/common/subscription/BundleItem$Subscription;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/noinnion/android/reader/webservice/feedly/FeedlyService;->getService()Lcom/noinnion/android/reader/webservice/feedly/FeedlyEndpoint;

    move-result-object v1

    const/16 v2, 0x32

    invoke-interface {v1, p1, v2}, Lcom/noinnion/android/reader/webservice/feedly/FeedlyEndpoint;->findFeeds(Ljava/lang/String;I)Lretrofit2/Call;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/noinnion/android/reader/webservice/feedly/model/FeedSearchResult;

    .line 5
    iget-object p1, p1, Lcom/noinnion/android/reader/webservice/feedly/model/FeedSearchResult;->results:Ljava/util/List;

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/noinnion/android/reader/webservice/feedly/model/Feed;

    .line 7
    new-instance v2, Lcom/noinnion/android/reader/common/subscription/BundleItem$Subscription;

    invoke-direct {v2}, Lcom/noinnion/android/reader/common/subscription/BundleItem$Subscription;-><init>()V

    .line 8
    iget-object v3, v1, Lcom/noinnion/android/reader/webservice/feedly/model/Feed;->title:Ljava/lang/String;

    iput-object v3, v2, Lcom/noinnion/android/reader/common/subscription/BundleItem$Subscription;->title:Ljava/lang/String;

    .line 9
    iget-object v3, v1, Lcom/noinnion/android/reader/webservice/feedly/model/Feed;->description:Ljava/lang/String;

    iput-object v3, v2, Lcom/noinnion/android/reader/common/subscription/BundleItem$Subscription;->description:Ljava/lang/String;

    .line 10
    iget-object v3, v1, Lcom/noinnion/android/reader/webservice/feedly/model/Feed;->visualUrl:Ljava/lang/String;

    iput-object v3, v2, Lcom/noinnion/android/reader/common/subscription/BundleItem$Subscription;->image:Ljava/lang/String;

    .line 11
    invoke-virtual {v1}, Lcom/noinnion/android/reader/webservice/feedly/model/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/noinnion/android/reader/common/subscription/BundleItem$Subscription;->url:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog$b;->a:Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog$b;->a:Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog$b;->a:Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;

    iget v2, v1, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;->i:I

    if-lez v2, :cond_1

    .line 6
    iget-object v1, v1, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;->g:Ljava/lang/String;

    invoke-static {p1, v2, v1}, Lcom/noinnion/android/reader/common/subscription/BundleUtils;->parseSubscription(Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, v1, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;->h:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog$b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog$b;->a:Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog$b;->a:Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;->f:Lzu6;

    .line 4
    iput-object p1, v0, Lqm6;->f:Ljava/util/List;

    .line 5
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 6
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog$b;->a:Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;->vLoading:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog$b;->a:Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;->vEmptyMessage:Landroid/widget/TextView;

    const v0, 0x7f1101c6

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_0
    return-void
.end method
