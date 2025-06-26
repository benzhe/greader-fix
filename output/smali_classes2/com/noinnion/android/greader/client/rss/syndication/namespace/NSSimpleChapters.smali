.class public Lcom/noinnion/android/greader/client/rss/syndication/namespace/NSSimpleChapters;
.super Lcom/noinnion/android/greader/client/rss/syndication/namespace/Namespace;
.source "SourceFile"


# static fields
.field public static final CHAPTER:Ljava/lang/String; = "chapter"

.field public static final CHAPTERS:Ljava/lang/String; = "chapters"

.field public static final HREF:Ljava/lang/String; = "href"

.field public static final NSTAG:Ljava/lang/String; = "psc|sc"

.field public static final NSURI:Ljava/lang/String; = "http://podlove.org/simple-chapters"

.field public static final START:Ljava/lang/String; = "start"

.field public static final TITLE:Ljava/lang/String; = "title"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/syndication/namespace/Namespace;-><init>()V

    return-void
.end method


# virtual methods
.method public handleElementEnd(Ljava/lang/String;Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;)V
    .locals 0

    return-void
.end method

.method public handleElementStart(Ljava/lang/String;Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;Lorg/xml/sax/Attributes;)Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;
    .locals 8

    const-string v0, "chapters"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getCurrentItem()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    move-result-object p2

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p3}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->setChapters(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const-string v0, "chapter"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getCurrentItem()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->getChapters()Ljava/util/List;

    move-result-object v0

    new-instance v7, Lcom/noinnion/android/greader/client/rss/syndication/feed/SimpleChapter;

    const-string v1, "start"

    .line 6
    invoke-interface {p3, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/noinnion/android/greader/client/rss/syndication/util/SyndDateUtils;->parseTimeString(Ljava/lang/String;)J

    move-result-wide v2

    const-string v1, "title"

    .line 7
    invoke-interface {p3, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getCurrentItem()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    move-result-object v5

    const-string p2, "href"

    .line 8
    invoke-interface {p3, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/noinnion/android/greader/client/rss/syndication/feed/SimpleChapter;-><init>(JLjava/lang/String;Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;Ljava/lang/String;)V

    .line 9
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_1
    :goto_0
    new-instance p2, Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;

    invoke-direct {p2, p1, p0}, Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;-><init>(Ljava/lang/String;Lcom/noinnion/android/greader/client/rss/syndication/namespace/Namespace;)V

    return-object p2
.end method
