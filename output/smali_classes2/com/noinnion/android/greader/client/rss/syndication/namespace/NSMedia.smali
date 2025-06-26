.class public Lcom/noinnion/android/greader/client/rss/syndication/namespace/NSMedia;
.super Lcom/noinnion/android/greader/client/rss/syndication/namespace/Namespace;
.source "SourceFile"


# static fields
.field private static final CONTENT:Ljava/lang/String; = "content"

.field private static final DOWNLOAD_URL:Ljava/lang/String; = "url"

.field private static final DURATION:Ljava/lang/String; = "duration"

.field private static final MIME_TYPE:Ljava/lang/String; = "type"

.field public static final NSTAG:Ljava/lang/String; = "media"

.field public static final NSURI:Ljava/lang/String; = "http://search.yahoo.com/mrss/"

.field private static final SIZE:Ljava/lang/String; = "fileSize"

.field private static final TAG:Ljava/lang/String; = "NSMedia"


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
    .locals 7

    const-string v0, "content"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "url"

    .line 2
    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "type"

    .line 3
    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getCurrentItem()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->getMedia()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;

    move-result-object v1

    if-nez v1, :cond_2

    if-eqz v3, :cond_2

    .line 5
    invoke-static {v0}, Lcom/noinnion/android/greader/client/rss/syndication/util/SyndTypeUtils;->enclosureTypeValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-static {v3}, Lcom/noinnion/android/greader/client/rss/syndication/util/SyndTypeUtils;->getValidMimeTypeFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v6, v0

    const-wide/16 v0, 0x0

    :try_start_0
    const-string v2, "fileSize"

    .line 7
    invoke-interface {p3, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-wide v4, v0

    :try_start_1
    const-string v0, "duration"

    .line 8
    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 9
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 10
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11
    invoke-virtual {v0, v1, v2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 12
    :catch_1
    :cond_1
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getCurrentItem()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    move-result-object p3

    new-instance v0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;

    .line 13
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getCurrentItem()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    move-result-object v2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;-><init>(Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;Ljava/lang/String;JLjava/lang/String;)V

    .line 14
    invoke-virtual {p3, v0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->setMedia(Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;)V

    .line 15
    :cond_2
    new-instance p2, Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;

    invoke-direct {p2, p1, p0}, Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;-><init>(Ljava/lang/String;Lcom/noinnion/android/greader/client/rss/syndication/namespace/Namespace;)V

    return-object p2
.end method
