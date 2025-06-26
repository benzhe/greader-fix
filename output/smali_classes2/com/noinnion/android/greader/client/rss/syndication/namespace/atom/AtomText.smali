.class public Lcom/noinnion/android/greader/client/rss/syndication/namespace/atom/AtomText;
.super Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;
.source "SourceFile"


# static fields
.field public static final TYPE_HTML:Ljava/lang/String; = "html"

.field public static final TYPE_TEXT:Ljava/lang/String; = "text"

.field public static final TYPE_XHTML:Ljava/lang/String; = "xhtml"


# instance fields
.field private content:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/noinnion/android/greader/client/rss/syndication/namespace/Namespace;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;-><init>(Ljava/lang/String;Lcom/noinnion/android/greader/client/rss/syndication/namespace/Namespace;)V

    .line 2
    iput-object p3, p0, Lcom/noinnion/android/greader/client/rss/syndication/namespace/atom/AtomText;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/namespace/atom/AtomText;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessedContent()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/namespace/atom/AtomText;->type:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/namespace/atom/AtomText;->content:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v1, "html"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/namespace/atom/AtomText;->content:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringEscapeUtils;->unescapeHtml4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/namespace/atom/AtomText;->type:Ljava/lang/String;

    const-string v1, "xhtml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/namespace/atom/AtomText;->content:Ljava/lang/String;

    return-object v0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/namespace/atom/AtomText;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/namespace/atom/AtomText;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/namespace/atom/AtomText;->content:Ljava/lang/String;

    return-void
.end method
