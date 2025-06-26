.class public Lcv6;
.super Lvm6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvm6<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "Lcom/noinnion/android/reader/common/subscription/Feed;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lvm6;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Lcv6;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 7
    :try_start_1
    invoke-virtual {p0, p1}, Lcv6;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 11
    :try_start_2
    invoke-virtual {p0, p1}, Lcv6;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    return-object v0
.end method

.method public f(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/noinnion/android/reader/common/subscription/Feed;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/noinnion/android/reader/webservice/feedly/FeedlyService;->getService()Lcom/noinnion/android/reader/webservice/feedly/FeedlyEndpoint;

    move-result-object v1

    const/16 v2, 0x32

    invoke-interface {v1, p1, v2}, Lcom/noinnion/android/reader/webservice/feedly/FeedlyEndpoint;->findFeeds(Ljava/lang/String;I)Lretrofit2/Call;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/noinnion/android/reader/webservice/feedly/model/FeedSearchResult;

    .line 5
    iget-object p1, p1, Lcom/noinnion/android/reader/webservice/feedly/model/FeedSearchResult;->results:Ljava/util/List;

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/noinnion/android/reader/webservice/feedly/model/Feed;

    .line 7
    new-instance v2, Lcom/noinnion/android/reader/common/subscription/Feed;

    invoke-direct {v2}, Lcom/noinnion/android/reader/common/subscription/Feed;-><init>()V

    .line 8
    iget-object v3, v1, Lcom/noinnion/android/reader/webservice/feedly/model/Feed;->title:Ljava/lang/String;

    iput-object v3, v2, Lcom/noinnion/android/reader/common/subscription/Feed;->title:Ljava/lang/String;

    .line 9
    iget-object v3, v1, Lcom/noinnion/android/reader/webservice/feedly/model/Feed;->description:Ljava/lang/String;

    iput-object v3, v2, Lcom/noinnion/android/reader/common/subscription/Feed;->content:Ljava/lang/String;

    .line 10
    iget-object v3, v1, Lcom/noinnion/android/reader/webservice/feedly/model/Feed;->visualUrl:Ljava/lang/String;

    iput-object v3, v2, Lcom/noinnion/android/reader/common/subscription/Feed;->image:Ljava/lang/String;

    .line 11
    invoke-virtual {v1}, Lcom/noinnion/android/reader/webservice/feedly/model/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/noinnion/android/reader/common/subscription/Feed;->url:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public g(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/noinnion/android/reader/common/subscription/Feed;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string v1, "https://ajax.googleapis.com/ajax/services/feed/load?v=1.0"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "https://ajax.googleapis.com/ajax/services/feed/find?v=1.0"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    if-eqz p1, :cond_0

    const-string v1, "&q="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ln56;->u0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance v0, Lsy6;

    invoke-direct {v0, p1}, Lsy6;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object p1, v0, Lsy6;->c:Ljava/lang/String;

    .line 10
    invoke-virtual {p0, p1}, Lcv6;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 11
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 12
    new-instance v0, Lgw6;

    const-string v1, "data parse error"

    invoke-direct {v0, v1, p1}, Lgw6;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public h(Ljava/lang/String;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/noinnion/android/reader/common/subscription/Feed;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "."

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "http"

    .line 3
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance v3, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 6
    :goto_0
    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-object v4, v2

    if-eqz v4, :cond_1b

    .line 7
    new-instance v0, Lsy6;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x8

    const-string v6, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    move-object v3, v0

    .line 8
    invoke-direct/range {v3 .. v8}, Lsy6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokhttp3/OkHttpClient;I)V

    .line 9
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x2

    const-string v4, "<link(.*?)>"

    .line 10
    invoke-static {v4, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 11
    iget-object v0, v0, Lsy6;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    const-string v5, "(\n|\r|\t|\ufffd\ufffd|\\s{2,})"

    const-string v6, " "

    .line 13
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_1
    const-string v5, "HtmlUtils.stripWhitespaces(html)"

    .line 15
    invoke-static {v0, v5}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v4, ""

    move-object v5, v4

    .line 17
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_1a

    const/4 v6, 0x1

    .line 18
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "matcherTag.group(1)"

    invoke-static {v7, v8}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_3
    const/16 v12, 0x20

    if-gt v10, v8, :cond_a

    if-nez v11, :cond_5

    move v13, v10

    goto :goto_4

    :cond_5
    move v13, v8

    .line 20
    :goto_4
    invoke-virtual {v7, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 21
    invoke-static {v13, v12}, Lim7;->g(II)I

    move-result v13

    if-gtz v13, :cond_6

    const/4 v13, 0x1

    goto :goto_5

    :cond_6
    const/4 v13, 0x0

    :goto_5
    if-nez v11, :cond_8

    if-nez v13, :cond_7

    const/4 v11, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_8
    if-nez v13, :cond_9

    goto :goto_6

    :cond_9
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    :cond_a
    :goto_6
    add-int/lit8 v8, v8, 0x1

    .line 22
    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    .line 23
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "application/atom"

    .line 24
    invoke-static {v7, v8, v9, v3}, Lco7;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v8

    if-nez v8, :cond_b

    const-string v8, "application/rss"

    invoke-static {v7, v8, v9, v3}, Lco7;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_b
    const-string v8, "title=\"(.*?)\""

    .line 25
    invoke-static {v8, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 26
    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    const-string v10, "pattern.matcher(tag)"

    invoke-static {v8, v10}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    const-string v13, "matcherAttrs.group(1)"

    if-eqz v11, :cond_12

    .line 28
    invoke-virtual {v8, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v13}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v6

    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_7
    if-gt v11, v8, :cond_11

    if-nez v14, :cond_c

    move v15, v11

    goto :goto_8

    :cond_c
    move v15, v8

    .line 30
    :goto_8
    invoke-virtual {v4, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 31
    invoke-static {v15, v12}, Lim7;->g(II)I

    move-result v15

    if-gtz v15, :cond_d

    const/4 v15, 0x1

    goto :goto_9

    :cond_d
    const/4 v15, 0x0

    :goto_9
    if-nez v14, :cond_f

    if-nez v15, :cond_e

    const/4 v14, 0x1

    goto :goto_7

    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_f
    if-nez v15, :cond_10

    goto :goto_a

    :cond_10
    add-int/lit8 v8, v8, -0x1

    goto :goto_7

    :cond_11
    :goto_a
    add-int/lit8 v8, v8, 0x1

    .line 32
    invoke-virtual {v4, v11, v8}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 33
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_12
    const-string v8, "href=\"(.*?)\""

    .line 34
    invoke-static {v8, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 35
    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-static {v7, v10}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_19

    .line 37
    invoke-virtual {v7, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v13}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v6

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_b
    if-gt v8, v7, :cond_18

    if-nez v10, :cond_13

    move v11, v8

    goto :goto_c

    :cond_13
    move v11, v7

    .line 39
    :goto_c
    invoke-virtual {v5, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 40
    invoke-static {v11, v12}, Lim7;->g(II)I

    move-result v11

    if-gtz v11, :cond_14

    const/4 v11, 0x1

    goto :goto_d

    :cond_14
    const/4 v11, 0x0

    :goto_d
    if-nez v10, :cond_16

    if-nez v11, :cond_15

    const/4 v10, 0x1

    goto :goto_b

    :cond_15
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_16
    if-nez v11, :cond_17

    goto :goto_e

    :cond_17
    add-int/lit8 v7, v7, -0x1

    goto :goto_b

    :cond_18
    :goto_e
    add-int/lit8 v7, v7, 0x1

    .line 41
    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 42
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 43
    :cond_19
    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 44
    :cond_1a
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 45
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 46
    new-instance v5, Lcom/noinnion/android/reader/common/subscription/Feed;

    invoke-direct {v5, v4, v3}, Lcom/noinnion/android/reader/common/subscription/Feed;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1b
    return-object v1
.end method

.method public final i(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/noinnion/android/reader/common/subscription/Feed;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "responseStatus"

    .line 3
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 v2, 0xc8

    if-eq p1, v2, :cond_0

    return-object v0

    :cond_0
    const-string p1, "responseData"

    .line 4
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "entries"

    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "https://plus.google.com/_/favicon?domain="

    const-string v4, "link"

    const-string v5, "title"

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 8
    new-instance v2, Lcom/noinnion/android/reader/common/subscription/Feed;

    invoke-direct {v2}, Lcom/noinnion/android/reader/common/subscription/Feed;-><init>()V

    .line 9
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ln56;->l2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/noinnion/android/reader/common/subscription/Feed;->title:Ljava/lang/String;

    .line 10
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "contentSnippet"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ln56;->l2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/noinnion/android/reader/common/subscription/Feed;->content:Ljava/lang/String;

    .line 11
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "url"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/noinnion/android/reader/common/subscription/Feed;->url:Ljava/lang/String;

    .line 12
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 13
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 14
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/noinnion/android/reader/common/subscription/Feed;->image:Ljava/lang/String;

    .line 15
    iget-object v6, v2, Lcom/noinnion/android/reader/common/subscription/Feed;->title:Ljava/lang/String;

    invoke-static {v6}, Lorg/apache/commons/lang3/StringEscapeUtils;->unescapeHtml4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/noinnion/android/reader/common/subscription/Feed;->title:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 16
    :goto_1
    iget-object v6, v2, Lcom/noinnion/android/reader/common/subscription/Feed;->url:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 17
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "feed"

    .line 18
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 19
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 20
    new-instance v1, Lcom/noinnion/android/reader/common/subscription/Feed;

    invoke-direct {v1}, Lcom/noinnion/android/reader/common/subscription/Feed;-><init>()V

    .line 21
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ln56;->l2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/noinnion/android/reader/common/subscription/Feed;->title:Ljava/lang/String;

    const-string v2, "description"

    .line 22
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ln56;->l2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/noinnion/android/reader/common/subscription/Feed;->content:Ljava/lang/String;

    const-string v2, "feedUrl"

    .line 23
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/noinnion/android/reader/common/subscription/Feed;->url:Ljava/lang/String;

    .line 24
    :try_start_1
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 25
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/noinnion/android/reader/common/subscription/Feed;->image:Ljava/lang/String;

    .line 27
    iget-object p1, v1, Lcom/noinnion/android/reader/common/subscription/Feed;->title:Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/commons/lang3/StringEscapeUtils;->unescapeHtml4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/noinnion/android/reader/common/subscription/Feed;->title:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    nop

    .line 28
    :goto_2
    iget-object p1, v1, Lcom/noinnion/android/reader/common/subscription/Feed;->url:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method
