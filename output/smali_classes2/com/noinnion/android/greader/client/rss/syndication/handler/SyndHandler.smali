.class public Lcom/noinnion/android/greader/client/rss/syndication/handler/SyndHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# static fields
.field private static final ATOM_ROOT:Ljava/lang/String; = "feed"

.field private static final DEFAULT_PREFIX:Ljava/lang/String; = ""

.field private static final RSS_ROOT:Ljava/lang/String; = "rss"

.field private static final TAG:Ljava/lang/String; = "SyndHandler"


# instance fields
.field public state:Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 2
    new-instance v0, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;

    invoke-direct {v0, p1}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;-><init>(Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;)V

    iput-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/SyndHandler;->state:Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;

    return-void
.end method

.method private getHandlingNamespace(Ljava/lang/String;Ljava/lang/String;)Lcom/noinnion/android/greader/client/rss/syndication/namespace/Namespace;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/SyndHandler;->state:Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;

    iget-object v0, v0, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->namespaces:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/noinnion/android/greader/client/rss/syndication/namespace/Namespace;

    if-nez p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/SyndHandler;->state:Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;

    iget-object v0, v0, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->defaultNamespaces:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ":"

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    iget-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/SyndHandler;->state:Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;

    iget-object p1, p1, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->defaultNamespaces:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/noinnion/android/greader/client/rss/syndication/namespace/Namespace;

    :cond_0
    return-object p1
.end method

.method private handleFeedType(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/SyndHandler;->state:Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;

    invoke-virtual {v0}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getFeed()Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "feed"

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "atom"

    .line 4
    invoke-virtual {v0, p1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->setType(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v1, "rss"

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "version"

    .line 6
    invoke-interface {p2, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string p2, "2.0"

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {v0, v1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->setType(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p2, "0.91"

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "0.92"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    :cond_3
    invoke-virtual {v0, v1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->setType(Ljava/lang/String;)V

    .line 11
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/SyndHandler;->state:Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;

    iget-object p1, p1, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->defaultNamespaces:Ljava/util/Stack;

    new-instance p2, Lcom/noinnion/android/greader/client/rss/syndication/namespace/NSRSS20;

    invoke-direct {p2}, Lcom/noinnion/android/greader/client/rss/syndication/namespace/NSRSS20;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/SyndHandler;->state:Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;

    iget-object v0, v0, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->tagstack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/SyndHandler;->state:Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;

    invoke-virtual {v0}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getTagstack()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/SyndHandler;->state:Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;

    iget-object v0, v0, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->contentBuf:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/SyndHandler;->state:Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;

    invoke-virtual {v0}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getFeed()Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;

    move-result-object v0

    iget-object v1, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/SyndHandler;->state:Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;

    invoke-virtual {v1}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->setItems(Ljava/util/List;)V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/noinnion/android/greader/client/rss/syndication/handler/SyndHandler;->getHandlingNamespace(Ljava/lang/String;Ljava/lang/String;)Lcom/noinnion/android/greader/client/rss/syndication/namespace/Namespace;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p3, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/SyndHandler;->state:Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;

    invoke-virtual {p1, p2, p3}, Lcom/noinnion/android/greader/client/rss/syndication/namespace/Namespace;->handleElementEnd(Ljava/lang/String;Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;)V

    .line 3
    iget-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/SyndHandler;->state:Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;

    iget-object p1, p1, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->tagstack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/SyndHandler;->state:Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->contentBuf:Ljava/lang/StringBuffer;

    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/SyndHandler;->state:Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;

    iget-object v0, v0, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->defaultNamespaces:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/SyndHandler;->state:Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;

    iget-object p1, p1, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->defaultNamespaces:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public getState()Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/SyndHandler;->state:Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p4}, Lcom/noinnion/android/greader/client/rss/syndication/handler/SyndHandler;->handleFeedType(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/SyndHandler;->state:Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, v0, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->contentBuf:Ljava/lang/StringBuffer;

    .line 3
    invoke-direct {p0, p1, p3}, Lcom/noinnion/android/greader/client/rss/syndication/handler/SyndHandler;->getHandlingNamespace(Ljava/lang/String;Ljava/lang/String;)Lcom/noinnion/android/greader/client/rss/syndication/namespace/Namespace;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p3, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/SyndHandler;->state:Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;

    invoke-virtual {p1, p2, p3, p4}, Lcom/noinnion/android/greader/client/rss/syndication/namespace/Namespace;->handleElementStart(Ljava/lang/String;Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;Lorg/xml/sax/Attributes;)Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/SyndHandler;->state:Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;

    iget-object p2, p2, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->tagstack:Ljava/util/Stack;

    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/SyndHandler;->state:Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;

    iget-object v0, v0, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->namespaces:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "http://www.w3.org/2005/Atom"

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/SyndHandler;->state:Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;

    iget-object p1, p1, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->defaultNamespaces:Ljava/util/Stack;

    new-instance p2, Lcom/noinnion/android/greader/client/rss/syndication/namespace/atom/NSAtom;

    invoke-direct {p2}, Lcom/noinnion/android/greader/client/rss/syndication/namespace/atom/NSAtom;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_0
    const-string v0, "atom"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 6
    iget-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/SyndHandler;->state:Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;

    iget-object p1, p1, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->namespaces:Ljava/util/HashMap;

    new-instance v0, Lcom/noinnion/android/greader/client/rss/syndication/namespace/atom/NSAtom;

    invoke-direct {v0}, Lcom/noinnion/android/greader/client/rss/syndication/namespace/atom/NSAtom;-><init>()V

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1
    const-string v0, "http://purl.org/rss/1.0/modules/content/"

    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "content"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/SyndHandler;->state:Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;

    iget-object p1, p1, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->namespaces:Ljava/util/HashMap;

    new-instance v0, Lcom/noinnion/android/greader/client/rss/syndication/namespace/NSContent;

    invoke-direct {v0}, Lcom/noinnion/android/greader/client/rss/syndication/namespace/NSContent;-><init>()V

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v0, "http://www.itunes.com/dtds/podcast-1.0.dtd"

    .line 10
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "itunes"

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    iget-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/SyndHandler;->state:Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;

    iget-object p1, p1, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->namespaces:Ljava/util/HashMap;

    new-instance v0, Lcom/noinnion/android/greader/client/rss/syndication/namespace/NSITunes;

    invoke-direct {v0}, Lcom/noinnion/android/greader/client/rss/syndication/namespace/NSITunes;-><init>()V

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string v0, "http://podlove.org/simple-chapters"

    .line 13
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "psc|sc"

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    iget-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/SyndHandler;->state:Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;

    iget-object p1, p1, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->namespaces:Ljava/util/HashMap;

    new-instance v0, Lcom/noinnion/android/greader/client/rss/syndication/namespace/NSSimpleChapters;

    invoke-direct {v0}, Lcom/noinnion/android/greader/client/rss/syndication/namespace/NSSimpleChapters;-><init>()V

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const-string v0, "http://search.yahoo.com/mrss/"

    .line 16
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "media"

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 18
    iget-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/SyndHandler;->state:Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;

    iget-object p1, p1, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->namespaces:Ljava/util/HashMap;

    new-instance v0, Lcom/noinnion/android/greader/client/rss/syndication/namespace/NSMedia;

    invoke-direct {v0}, Lcom/noinnion/android/greader/client/rss/syndication/namespace/NSMedia;-><init>()V

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_0
    return-void
.end method
