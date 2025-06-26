.class public Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;
    }
.end annotation


# static fields
.field private static final ATOM_ROOT:Ljava/lang/String; = "feed"

.field private static final RSS_ROOT:Ljava/lang/String; = "rss"

.field private static final TAG:Ljava/lang/String; = "TypeGetter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createReader(Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;)Ljava/io/Reader;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lorg/apache/commons/io/input/XmlStreamReader;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;->getFile_url()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/apache/commons/io/input/XmlStreamReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-object v0

    :catch_1
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return-object v0
.end method


# virtual methods
.method public getType(Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;)Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/noinnion/android/greader/client/rss/syndication/handler/UnsupportedFeedtypeException;
        }
    .end annotation

    const-string v0, "rss"

    .line 1
    invoke-virtual {p1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;->getFile_url()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 2
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 4
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 5
    invoke-direct {p0, p1}, Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter;->createReader(Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;)Ljava/io/Reader;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 6
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    :goto_0
    if-eq v3, v2, :cond_6

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 7
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "feed"

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "atom"

    .line 9
    invoke-virtual {p1, v0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->setType(Ljava/lang/String;)V

    .line 10
    sget-object p1, Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;->ATOM:Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;

    return-object p1

    .line 11
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    const-string v3, "version"

    .line 12
    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "2.0"

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 14
    invoke-virtual {p1, v0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->setType(Ljava/lang/String;)V

    .line 15
    sget-object p1, Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;->RSS20:Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;

    return-object p1

    :cond_1
    const-string p1, "0.91"

    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "0.92"

    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 18
    :cond_2
    sget-object p1, Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;->RSS091:Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;

    return-object p1

    .line 19
    :cond_3
    new-instance p1, Lcom/noinnion/android/greader/client/rss/syndication/handler/UnsupportedFeedtypeException;

    sget-object v0, Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;->INVALID:Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;

    invoke-direct {p1, v0}, Lcom/noinnion/android/greader/client/rss/syndication/handler/UnsupportedFeedtypeException;-><init>(Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;)V

    throw p1

    .line 20
    :cond_4
    new-instance p1, Lcom/noinnion/android/greader/client/rss/syndication/handler/UnsupportedFeedtypeException;

    sget-object v0, Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;->INVALID:Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;

    invoke-direct {p1, v0}, Lcom/noinnion/android/greader/client/rss/syndication/handler/UnsupportedFeedtypeException;-><init>(Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;)V

    throw p1

    .line 21
    :cond_5
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 23
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 24
    :cond_6
    :goto_1
    new-instance p1, Lcom/noinnion/android/greader/client/rss/syndication/handler/UnsupportedFeedtypeException;

    sget-object v0, Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;->INVALID:Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;

    invoke-direct {p1, v0}, Lcom/noinnion/android/greader/client/rss/syndication/handler/UnsupportedFeedtypeException;-><init>(Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;)V

    throw p1
.end method
