.class public Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public alternateUrls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public contentBuf:Ljava/lang/StringBuffer;

.field public currentItem:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

.field public defaultNamespaces:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/noinnion/android/greader/client/rss/syndication/namespace/Namespace;",
            ">;"
        }
    .end annotation
.end field

.field public feed:Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;

.field public items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;",
            ">;"
        }
    .end annotation
.end field

.field public namespaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/noinnion/android/greader/client/rss/syndication/namespace/Namespace;",
            ">;"
        }
    .end annotation
.end field

.field public tagstack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->feed:Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;

    .line 3
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->alternateUrls:Ljava/util/Map;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->items:Ljava/util/ArrayList;

    .line 5
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->tagstack:Ljava/util/Stack;

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->namespaces:Ljava/util/HashMap;

    .line 7
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->defaultNamespaces:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public addAlternateFeedUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->alternateUrls:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getContentBuf()Ljava/lang/StringBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->contentBuf:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public getCurrentItem()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->currentItem:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    return-object v0
.end method

.method public getFeed()Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->feed:Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;

    return-object v0
.end method

.method public getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSecondTag()Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->tagstack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;

    .line 2
    iget-object v1, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->tagstack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;

    .line 3
    iget-object v2, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->tagstack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public getTagstack()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->tagstack:Ljava/util/Stack;

    return-object v0
.end method

.method public getThirdTag()Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->tagstack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;

    .line 2
    iget-object v1, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->tagstack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;

    .line 3
    iget-object v2, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->tagstack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;

    .line 4
    iget-object v3, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->tagstack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->tagstack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public hasPodcast()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->namespaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "http://www.itunes.com/dtds/podcast-1.0.dtd"

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "http://search.yahoo.com/mrss/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public setCurrentItem(Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->currentItem:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    return-void
.end method

.method public setFeed(Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->feed:Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;

    return-void
.end method
