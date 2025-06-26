.class public Lcom/noinnion/android/greader/client/rss/syndication/handler/FeedHandlerResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public alternateFeedUrls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public feed:Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;

.field public hasPodcast:Z


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;Ljava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/FeedHandlerResult;->feed:Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;

    .line 3
    iput-object p2, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/FeedHandlerResult;->alternateFeedUrls:Ljava/util/Map;

    .line 4
    iput-boolean p3, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/FeedHandlerResult;->hasPodcast:Z

    return-void
.end method
