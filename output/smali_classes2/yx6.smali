.class public Lyx6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lxx6;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lyx6;->a:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lyx6;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/Reader;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Ljava/util/ArrayList<",
            "Lxx6;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyx6;->c:Ljava/util/ArrayList;

    .line 2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 4
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 6
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    :goto_0
    if-eq p1, v1, :cond_8

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto/16 :goto_3

    .line 7
    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "opml"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iput-boolean v1, p0, Lyx6;->a:Z

    goto :goto_3

    .line 9
    :cond_1
    iget-boolean p1, p0, Lyx6;->a:Z

    if-eqz p1, :cond_7

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "outline"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    const-string v2, "type"

    .line 10
    invoke-interface {v0, p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "title"

    .line 11
    invoke-interface {v0, p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "text"

    .line 12
    invoke-interface {v0, p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, v4

    .line 13
    :goto_1
    iput-object v3, p0, Lyx6;->b:Ljava/lang/String;

    goto :goto_3

    .line 14
    :cond_3
    new-instance v2, Lxx6;

    invoke-direct {v2}, Lxx6;-><init>()V

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move-object v3, v4

    .line 15
    :goto_2
    iput-object v3, v2, Lxx6;->a:Ljava/lang/String;

    const-string v3, "xmlUrl"

    .line 16
    invoke-interface {v0, p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    .line 17
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 18
    :cond_5
    iput-object v4, v2, Lxx6;->b:Ljava/lang/String;

    const-string v3, "htmlUrl"

    .line 19
    invoke-interface {v0, p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    iget-object p1, p0, Lyx6;->b:Ljava/lang/String;

    .line 21
    iput-object p1, v2, Lxx6;->c:Ljava/lang/String;

    .line 22
    iget-object p1, v2, Lxx6;->b:Ljava/lang/String;

    if-eqz p1, :cond_7

    .line 23
    iget-object v3, v2, Lxx6;->a:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 24
    iput-object p1, v2, Lxx6;->a:Ljava/lang/String;

    .line 25
    :cond_6
    iget-object p1, p0, Lyx6;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_7
    :goto_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    goto :goto_0

    .line 27
    :cond_8
    iget-object p1, p0, Lyx6;->c:Ljava/util/ArrayList;

    return-object p1
.end method
