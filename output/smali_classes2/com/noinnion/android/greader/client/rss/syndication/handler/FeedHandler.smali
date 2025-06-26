.class public Lcom/noinnion/android/greader/client/rss/syndication/handler/FeedHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseFeed(Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;)Lcom/noinnion/android/greader/client/rss/syndication/handler/FeedHandlerResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lcom/noinnion/android/greader/client/rss/syndication/handler/UnsupportedFeedtypeException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 3
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 4
    invoke-static {}, Ln56;->L()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 5
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 6
    invoke-virtual {p1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 8
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    invoke-interface {v1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v1

    .line 9
    new-instance v2, Lorg/apache/commons/io/input/XmlStreamReader;

    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/apache/commons/io/input/XmlStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 10
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 11
    new-instance v3, Lcom/noinnion/android/greader/client/rss/syndication/handler/SyndHandler;

    invoke-direct {v3, p1}, Lcom/noinnion/android/greader/client/rss/syndication/handler/SyndHandler;-><init>(Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;)V

    .line 12
    invoke-virtual {v0, v1, v3}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 13
    invoke-virtual {v2}, Lorg/apache/commons/io/input/XmlStreamReader;->close()V

    .line 14
    new-instance p1, Lcom/noinnion/android/greader/client/rss/syndication/handler/FeedHandlerResult;

    iget-object v0, v3, Lcom/noinnion/android/greader/client/rss/syndication/handler/SyndHandler;->state:Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;

    iget-object v1, v0, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->feed:Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;

    iget-object v2, v0, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->alternateUrls:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->hasPodcast()Z

    move-result v0

    invoke-direct {p1, v1, v2, v0}, Lcom/noinnion/android/greader/client/rss/syndication/handler/FeedHandlerResult;-><init>(Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;Ljava/util/Map;Z)V

    return-object p1
.end method
