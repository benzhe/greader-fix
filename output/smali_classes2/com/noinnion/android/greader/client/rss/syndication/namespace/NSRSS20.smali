.class public Lcom/noinnion/android/greader/client/rss/syndication/namespace/NSRSS20;
.super Lcom/noinnion/android/greader/client/rss/syndication/namespace/Namespace;
.source "SourceFile"


# static fields
.field public static final CHANNEL:Ljava/lang/String; = "channel"

.field public static final DESCR:Ljava/lang/String; = "description"

.field public static final ENCLOSURE:Ljava/lang/String; = "enclosure"

.field public static final ENC_LEN:Ljava/lang/String; = "length"

.field public static final ENC_TYPE:Ljava/lang/String; = "type"

.field public static final ENC_URL:Ljava/lang/String; = "url"

.field public static final GUID:Ljava/lang/String; = "guid"

.field public static final IMAGE:Ljava/lang/String; = "image"

.field public static final ITEM:Ljava/lang/String; = "item"

.field public static final LANGUAGE:Ljava/lang/String; = "language"

.field public static final LINK:Ljava/lang/String; = "link"

.field public static final NSTAG:Ljava/lang/String; = "rss"

.field public static final NSURI:Ljava/lang/String; = ""

.field public static final PUBDATE:Ljava/lang/String; = "pubDate"

.field private static final TAG:Ljava/lang/String; = "NSRSS20"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final URL:Ljava/lang/String; = "url"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/syndication/namespace/Namespace;-><init>()V

    return-void
.end method


# virtual methods
.method public handleElementEnd(Ljava/lang/String;Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;)V
    .locals 8

    const-string v0, "item"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getCurrentItem()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getCurrentItem()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getCurrentItem()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    move-result-object p1

    .line 5
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getCurrentItem()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p1, v0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->setTitle(Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-virtual {p2, v2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->setCurrentItem(Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;)V

    goto/16 :goto_0

    .line 8
    :cond_1
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getTagstack()Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    const/4 v3, 0x2

    if-lt v1, v3, :cond_d

    .line 9
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getContentBuf()Ljava/lang/StringBuffer;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 10
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getContentBuf()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getTagstack()Ljava/util/Stack;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;

    .line 12
    invoke-virtual {v3}, Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;->getName()Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getSecondTag()Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;

    move-result-object v4

    .line 14
    invoke-virtual {v4}, Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;->getName()Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getTagstack()Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_2

    .line 16
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getThirdTag()Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_2
    const-string v5, "guid"

    .line 17
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 18
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_d

    .line 19
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getCurrentItem()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->setItemIdentifier(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v5, "title"

    .line 20
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "image"

    const-string v7, "channel"

    if-eqz v5, :cond_6

    .line 21
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 22
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getCurrentItem()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 23
    :cond_4
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 24
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getFeed()Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 25
    :cond_5
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    if-eqz v2, :cond_d

    .line 26
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 27
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getFeed()Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;

    move-result-object p1

    invoke-virtual {p1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->getImage()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v5, "link"

    .line 28
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 29
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 30
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getFeed()Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->setLink(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 31
    :cond_7
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 32
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getCurrentItem()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->setLink(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v5, "pubDate"

    .line 33
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 34
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getCurrentItem()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    move-result-object p1

    .line 35
    invoke-static {v1}, Lcom/noinnion/android/greader/client/rss/syndication/util/SyndDateUtils;->parseRFC822Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    .line 36
    invoke-virtual {p1, p2}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->setPubDate(Ljava/util/Date;)V

    goto :goto_0

    :cond_9
    const-string v5, "url"

    .line 37
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    if-eqz v2, :cond_a

    .line 38
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 39
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getFeed()Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;

    move-result-object p1

    invoke-virtual {p1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->getImage()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;->setDownloadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    const-string v2, "description"

    .line 40
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 41
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 42
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getFeed()Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->setDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_b
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 44
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getCurrentItem()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->setDescription(Ljava/lang/String;)V

    goto :goto_0

    :cond_c
    const-string v0, "language"

    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 46
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getFeed()Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->setLanguage(Ljava/lang/String;)V

    :cond_d
    :goto_0
    return-void
.end method

.method public handleElementStart(Ljava/lang/String;Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;Lorg/xml/sax/Attributes;)Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;
    .locals 8

    const-string v0, "item"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p3, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    invoke-direct {p3}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;-><init>()V

    invoke-virtual {p2, p3}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->setCurrentItem(Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;)V

    .line 3
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getItems()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getCurrentItem()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getCurrentItem()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    move-result-object p3

    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getFeed()Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->setFeed(Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "enclosure"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "type"

    .line 6
    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "url"

    .line 7
    invoke-interface {p3, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getCurrentItem()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->getMedia()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;

    move-result-object v1

    if-nez v1, :cond_3

    .line 9
    invoke-static {v0}, Lcom/noinnion/android/greader/client/rss/syndication/util/SyndTypeUtils;->enclosureTypeValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 10
    invoke-static {v4}, Lcom/noinnion/android/greader/client/rss/syndication/util/SyndTypeUtils;->getValidMimeTypeFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_1
    move-object v7, v0

    const-wide/16 v0, 0x0

    :try_start_0
    const-string v2, "length"

    .line 11
    invoke-interface {p3, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-wide v5, v0

    .line 12
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getCurrentItem()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    move-result-object p3

    new-instance v0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;

    .line 13
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getCurrentItem()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    move-result-object v3

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;-><init>(Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;Ljava/lang/String;JLjava/lang/String;)V

    .line 14
    invoke-virtual {p3, v0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->setMedia(Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;)V

    goto :goto_0

    :cond_2
    const-string p3, "image"

    .line 15
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 16
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getTagstack()Ljava/util/Stack;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Stack;->size()I

    move-result p3

    const/4 v0, 0x1

    if-lt p3, v0, :cond_3

    .line 17
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getTagstack()Ljava/util/Stack;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;

    invoke-virtual {p3}, Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;->getName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "channel"

    .line 18
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 19
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getFeed()Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;

    move-result-object p2

    new-instance p3, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;

    invoke-direct {p3}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;-><init>()V

    invoke-virtual {p2, p3}, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->setImage(Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;)V

    .line 20
    :cond_3
    :goto_0
    new-instance p2, Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;

    invoke-direct {p2, p1, p0}, Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;-><init>(Ljava/lang/String;Lcom/noinnion/android/greader/client/rss/syndication/namespace/Namespace;)V

    return-object p2
.end method
