.class public Lcom/noinnion/android/greader/client/rss/syndication/namespace/NSContent;
.super Lcom/noinnion/android/greader/client/rss/syndication/namespace/Namespace;
.source "SourceFile"


# static fields
.field private static final ENCODED:Ljava/lang/String; = "encoded"

.field public static final NSTAG:Ljava/lang/String; = "content"

.field public static final NSURI:Ljava/lang/String; = "http://purl.org/rss/1.0/modules/content/"


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

    const-string v0, "encoded"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getCurrentItem()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    move-result-object p1

    invoke-virtual {p2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;->getContentBuf()Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->setContentEncoded(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public handleElementStart(Ljava/lang/String;Lcom/noinnion/android/greader/client/rss/syndication/handler/HandlerState;Lorg/xml/sax/Attributes;)Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;
    .locals 0

    .line 1
    new-instance p2, Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;

    invoke-direct {p2, p1, p0}, Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;-><init>(Ljava/lang/String;Lcom/noinnion/android/greader/client/rss/syndication/namespace/Namespace;)V

    return-object p2
.end method
