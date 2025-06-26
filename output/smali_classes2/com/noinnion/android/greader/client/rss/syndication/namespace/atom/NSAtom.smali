.class public Lcom/noinnion/android/greader/client/rss/syndication/namespace/atom/NSAtom;
.super Lcom/noinnion/android/greader/client/rss/syndication/namespace/Namespace;
.source "SourceFile"


# static fields
.field private static final AUTHOR:Ljava/lang/String; = "author"

.field private static final CONTENT:Ljava/lang/String; = "content"

.field private static final ENTRY:Ljava/lang/String; = "entry"

.field private static final FEED:Ljava/lang/String; = "feed"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final IMAGE:Ljava/lang/String; = "logo"

.field private static final LINK:Ljava/lang/String; = "link"

.field private static final LINK_HREF:Ljava/lang/String; = "href"

.field private static final LINK_LENGTH:Ljava/lang/String; = "length"

.field private static final LINK_REL:Ljava/lang/String; = "rel"

.field private static final LINK_REL_ALTERNATE:Ljava/lang/String; = "alternate"

.field private static final LINK_REL_ENCLOSURE:Ljava/lang/String; = "enclosure"

.field private static final LINK_REL_PAYMENT:Ljava/lang/String; = "payment"

.field private static final LINK_REL_RELATED:Ljava/lang/String; = "related"

.field private static final LINK_REL_SELF:Ljava/lang/String; = "self"

.field private static final LINK_TITLE:Ljava/lang/String; = "title"

.field private static final LINK_TYPE:Ljava/lang/String; = "type"

.field private static final LINK_TYPE_ATOM:Ljava/lang/String; = "application/atom+xml"

.field private static final LINK_TYPE_HTML:Ljava/lang/String; = "text/html"

.field private static final LINK_TYPE_RSS:Ljava/lang/String; = "application/rss+xml"

.field private static final LINK_TYPE_XHTML:Ljava/lang/String; = "application/xml+xhtml"

.field public static final NSTAG:Ljava/lang/String; = "atom"

.field public static final NSURI:Ljava/lang/String; = "http://www.w3.org/2005/Atom"

.field private static final PUBLISHED:Ljava/lang/String; = "published"

.field private static final SUBTITLE:Ljava/lang/String; = "subtitle"

.field private static final TAG:Ljava/lang/String; = "NSAtom"

.field private static final TEXT_TYPE:Ljava/lang/String; = "type"

.field private static final TITLE:Ljava/lang/String; = "title"

.field private static final UPDATED:Ljava/lang/String; = "updated"

.field public static final isFeed:Ljava/lang/String; = "feed|channel"

.field public static final isFeedItem:Ljava/lang/String; = "entry|item"

.field private static final isText:Ljava/lang/String; = "title|content||subtitle"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/syndication/namespace/Namespace;-><init>()V

    return-void
.end method


# virtual methods
.method public handleElementEnd(Ljava/lang/String;Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;)V
    .locals 7

    const-string v0, "entry"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p2, v1}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->setCurrentItem(Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;)V

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getTagstack()Ljava/util/Stack;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result p1

    const/4 v2, 0x2

    if-lt p1, v2, :cond_b

    .line 4
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getContentBuf()Ljava/lang/StringBuffer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getContentBuf()Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 6
    :goto_0
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getTagstack()Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;

    .line 7
    invoke-virtual {v2}, Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;->getName()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getSecondTag()Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;

    move-result-object v4

    .line 9
    invoke-virtual {v4}, Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "title|content||subtitle"

    .line 10
    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 11
    check-cast v2, Lcom/noinnion/android/greader/client/rss/syndication/namespace/atom/AtomText;

    .line 12
    invoke-virtual {v2, p1}, Lcom/noinnion/android/greader/client/rss/syndication/namespace/atom/AtomText;->setContent(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    const-string v5, "id"

    .line 13
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "feed"

    if-eqz v5, :cond_4

    .line 14
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getFeed()Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->setFeedIdentifier(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 16
    :cond_3
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 17
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getCurrentItem()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->setItemIdentifier(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    const-string v5, "title"

    .line 18
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 19
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 20
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getFeed()Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;

    move-result-object p1

    invoke-virtual {v2}, Lcom/noinnion/android/greader/client/rss/syndication/namespace/atom/AtomText;->getProcessedContent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 21
    :cond_5
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 22
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getCurrentItem()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    move-result-object p1

    .line 23
    invoke-virtual {v2}, Lcom/noinnion/android/greader/client/rss/syndication/namespace/atom/AtomText;->getProcessedContent()Ljava/lang/String;

    move-result-object p2

    .line 24
    invoke-virtual {p1, p2}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    const-string v5, "subtitle"

    .line 25
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 26
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 27
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getFeed()Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;

    move-result-object p1

    .line 28
    invoke-virtual {v2}, Lcom/noinnion/android/greader/client/rss/syndication/namespace/atom/AtomText;->getProcessedContent()Ljava/lang/String;

    move-result-object p2

    .line 29
    invoke-virtual {p1, p2}, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->setDescription(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const-string v5, "content"

    .line 30
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 31
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 32
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getCurrentItem()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    move-result-object p1

    .line 33
    invoke-virtual {v2}, Lcom/noinnion/android/greader/client/rss/syndication/namespace/atom/AtomText;->getProcessedContent()Ljava/lang/String;

    move-result-object p2

    .line 34
    invoke-virtual {p1, p2}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->setDescription(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const-string v2, "updated"

    .line 35
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 36
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 37
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getCurrentItem()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->getPubDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_b

    .line 38
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getCurrentItem()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    move-result-object p2

    .line 39
    invoke-static {p1}, Lcom/noinnion/android/greader/client/rss/syndication/util/SyndDateUtils;->parseRFC3339Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 40
    invoke-virtual {p2, p1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->setPubDate(Ljava/util/Date;)V

    goto :goto_2

    :cond_9
    const-string v2, "published"

    .line 41
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 42
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 43
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getCurrentItem()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    move-result-object p2

    .line 44
    invoke-static {p1}, Lcom/noinnion/android/greader/client/rss/syndication/util/SyndDateUtils;->parseRFC3339Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 45
    invoke-virtual {p2, p1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->setPubDate(Ljava/util/Date;)V

    goto :goto_2

    :cond_a
    const-string v0, "logo"

    .line 46
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 47
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getFeed()Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;

    move-result-object p2

    new-instance v0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;

    invoke-direct {v0, p1, v1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->setImage(Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;)V

    :cond_b
    :goto_2
    return-void
.end method

.method public handleElementStart(Ljava/lang/String;Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;Lorg/xml/sax/Attributes;)Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;
    .locals 8

    const-string v0, "entry"

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

    goto/16 :goto_2

    :cond_0
    const-string v0, "title|content||subtitle"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "type"

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {p3, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 7
    new-instance p3, Lcom/noinnion/android/greader/client/rss/syndication/namespace/atom/AtomText;

    invoke-direct {p3, p1, p0, p2}, Lcom/noinnion/android/greader/client/rss/syndication/namespace/atom/AtomText;-><init>(Ljava/lang/String;Lcom/noinnion/android/greader/client/rss/syndication/namespace/Namespace;Ljava/lang/String;)V

    return-object p3

    :cond_1
    const-string v0, "link"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "href"

    .line 9
    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "rel"

    .line 10
    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getTagstack()Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;

    .line 12
    invoke-virtual {v2}, Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "entry|item"

    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    const-string v5, "payment"

    const-string v6, "alternate"

    if-eqz v3, :cond_7

    if-eqz v0, :cond_6

    .line 13
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "enclosure"

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "length"

    .line 15
    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_3

    .line 16
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    move-wide v5, v2

    .line 17
    invoke-interface {p3, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 18
    invoke-static {p3}, Lcom/noinnion/android/greader/client/rss/syndication/util/SyndTypeUtils;->enclosureTypeValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 19
    invoke-static {v4}, Lcom/noinnion/android/greader/client/rss/syndication/util/SyndTypeUtils;->getValidMimeTypeFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_f

    :cond_4
    move-object v7, p3

    .line 20
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getCurrentItem()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    move-result-object p3

    new-instance v0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;

    .line 21
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getCurrentItem()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    move-result-object v3

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;-><init>(Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;Ljava/lang/String;JLjava/lang/String;)V

    .line 22
    invoke-virtual {p3, v0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->setMedia(Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;)V

    goto/16 :goto_2

    .line 23
    :cond_5
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_f

    .line 24
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getCurrentItem()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->setPaymentLink(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 25
    :cond_6
    :goto_0
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getCurrentItem()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->setLink(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 26
    :cond_7
    invoke-virtual {v2}, Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "feed|channel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    if-eqz v0, :cond_9

    .line 27
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_1

    .line 28
    :cond_8
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_f

    .line 29
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getFeed()Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->setPaymentLink(Ljava/lang/String;)V

    goto :goto_2

    .line 30
    :cond_9
    :goto_1
    invoke-interface {p3, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    .line 31
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getFeed()Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->getLink()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    :cond_a
    if-eqz v0, :cond_c

    const-string v1, "text/html"

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "application/xml+xhtml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 33
    :cond_b
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getFeed()Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->setLink(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    if-eqz v0, :cond_f

    const-string v1, "application/atom+xml"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "application/rss+xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    const-string v0, "title"

    .line 35
    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_e

    move-object p3, v4

    .line 36
    :cond_e
    invoke-virtual {p2, p3, v4}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->addAlternateFeedUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_f
    :goto_2
    new-instance p2, Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;

    invoke-direct {p2, p1, p0}, Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;-><init>(Ljava/lang/String;Lcom/noinnion/android/greader/client/rss/syndication/namespace/Namespace;)V

    return-object p2
.end method
