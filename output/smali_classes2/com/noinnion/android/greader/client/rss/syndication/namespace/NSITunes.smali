.class public Lcom/noinnion/android/greader/client/rss/syndication/namespace/NSITunes;
.super Lcom/noinnion/android/greader/client/rss/syndication/namespace/Namespace;
.source "SourceFile"


# static fields
.field private static final AUTHOR:Ljava/lang/String; = "author"

.field private static final IMAGE:Ljava/lang/String; = "image"

.field private static final IMAGE_HREF:Ljava/lang/String; = "href"

.field private static final IMAGE_TITLE:Ljava/lang/String; = "image"

.field public static final NSTAG:Ljava/lang/String; = "itunes"

.field public static final NSURI:Ljava/lang/String; = "http://www.itunes.com/dtds/podcast-1.0.dtd"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/syndication/namespace/Namespace;-><init>()V

    return-void
.end method


# virtual methods
.method public handleElementEnd(Ljava/lang/String;Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;)V
    .locals 1

    const-string v0, "author"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getFeed()Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;

    move-result-object p1

    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getContentBuf()Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->setAuthor(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public handleElementStart(Ljava/lang/String;Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;Lorg/xml/sax/Attributes;)Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;
    .locals 3

    const-string v0, "image"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    new-instance v1, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;

    invoke-direct {v1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;-><init>()V

    .line 3
    invoke-virtual {v1, v0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;->setTitle(Ljava/lang/String;)V

    const-string v2, "href"

    .line 4
    invoke-interface {p3, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;->setDownloadUrl(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getCurrentItem()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getCurrentItem()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;->setTitle(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getCurrentItem()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->setImage(Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getFeed()Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;

    move-result-object p3

    invoke-virtual {p3}, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->getImage()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;

    move-result-object p3

    if-nez p3, :cond_1

    .line 9
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getFeed()Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->setImage(Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;)V

    .line 10
    :cond_1
    :goto_0
    new-instance p2, Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;

    invoke-direct {p2, p1, p0}, Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;-><init>(Ljava/lang/String;Lcom/noinnion/android/greader/client/rss/syndication/namespace/Namespace;)V

    return-object p2
.end method
