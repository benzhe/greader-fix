.class public Lcom/noinnion/android/greader/client/rss/RssReaderClient;
.super Lrn6;
.source "SourceFile"


# static fields
.field public static final CLIENT_DIRECTORY:Ljava/lang/String; = "/gReader/.rss/"

.field public static final CLIENT_PATH:Ljava/lang/String;

.field public static final UNIQUE_GUID:I = 0x2

.field public static final UNIQUE_LINK:I = 0x1

.field public static final UNIQUE_TITLE:I = 0x3

.field public static final URL_API_FEED_PARSER:Ljava/lang/String; = "http://www.google.com/uds/Gfeeds?num=100&output=json&v=1.0&nocache=0&q="

.field public static final USER_CATEGORY:Ljava/lang/String; = "user/category/"

.field public static final USER_FEED:Ljava/lang/String; = "feed/"

.field public static final USER_STARRED:Ljava/lang/String; = "user/starred"

.field public static final USER_TAG:Ljava/lang/String; = "user/tag/"


# instance fields
.field private dataSet:Lcom/noinnion/android/greader/client/rss/DataSet;

.field private dataStarred:Lcom/noinnion/android/greader/client/rss/DataStarred;

.field public mDateFormat:Ljava/text/SimpleDateFormat;

.field public mSyncOptimized:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/gReader/.rss/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->CLIENT_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lrn6;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Ln56;->L()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lrn6;->mClient:Lokhttp3/OkHttpClient;

    .line 3
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss z"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 4
    new-instance v1, Ljava/util/SimpleTimeZone;

    const/4 v2, 0x0

    const-string v3, "GMT"

    invoke-direct {v1, v2, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const-string v0, "sync_local_opimized"

    .line 5
    invoke-static {p1, v0, v2}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    .line 6
    iput-boolean p1, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->mSyncOptimized:Z

    return-void
.end method

.method private itemAddLabel([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->loadDataSet()V

    .line 2
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p3, v2

    const-string v4, "user/starred"

    .line 3
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->loadStarred()V

    const/4 v3, 0x0

    .line 5
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 6
    aget-object v4, p1, v3

    .line 7
    aget-object v5, p2, v3

    .line 8
    iget-object v6, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataStarred:Lcom/noinnion/android/greader/client/rss/DataStarred;

    iget-object v6, v6, Lcom/noinnion/android/greader/client/rss/DataStarred;->items:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 9
    iget-object v6, p0, Lrn6;->mContext:Landroid/content/Context;

    const-string v7, "uid"

    .line 10
    invoke-static {v6, v7, v4, v1}, Lap6;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lap6;

    move-result-object v6

    .line 11
    new-instance v7, Lcom/noinnion/android/greader/client/rss/RssItem;

    invoke-direct {v7, v6}, Lcom/noinnion/android/greader/client/rss/RssItem;-><init>(Lap6;)V

    .line 12
    iput-object v5, v7, Lcom/noinnion/android/greader/client/rss/RssItem;->feed:Ljava/lang/String;

    .line 13
    iget-object v5, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataStarred:Lcom/noinnion/android/greader/client/rss/DataStarred;

    iget-object v5, v5, Lcom/noinnion/android/greader/client/rss/DataStarred;->items:Ljava/util/Map;

    invoke-interface {v5, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 14
    :cond_1
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->saveDataStarred()V

    goto :goto_2

    .line 15
    :cond_2
    iget-object v4, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataSet:Lcom/noinnion/android/greader/client/rss/DataSet;

    iget-object v4, v4, Lcom/noinnion/android/greader/client/rss/DataSet;->tags:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, ""

    const-string v5, "user/category/"

    .line 16
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "user/tag/"

    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 17
    new-instance v5, Lcom/noinnion/android/greader/client/rss/RssTag;

    invoke-direct {v5, v3, v4}, Lcom/noinnion/android/greader/client/rss/RssTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v4, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataSet:Lcom/noinnion/android/greader/client/rss/DataSet;

    iget-object v4, v4, Lcom/noinnion/android/greader/client/rss/DataSet;->tags:Ljava/util/Map;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 19
    :cond_4
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->saveDataSet()V

    return-void
.end method

.method private itemRemoveLabel([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p2, v2

    const-string v4, "user/starred"

    .line 2
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->loadStarred()V

    .line 4
    array-length v3, p1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, p1, v4

    .line 5
    iget-object v6, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataStarred:Lcom/noinnion/android/greader/client/rss/DataStarred;

    iget-object v6, v6, Lcom/noinnion/android/greader/client/rss/DataStarred;->items:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6
    iget-object v6, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataStarred:Lcom/noinnion/android/greader/client/rss/DataStarred;

    iget-object v6, v6, Lcom/noinnion/android/greader/client/rss/DataStarred;->items:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->saveDataStarred()V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private loadDataSet()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataSet:Lcom/noinnion/android/greader/client/rss/DataSet;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->CLIENT_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "data.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    new-instance v2, Lod6;

    invoke-direct {v2}, Lod6;-><init>()V

    .line 5
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    const-class v0, Lcom/noinnion/android/greader/client/rss/DataSet;

    .line 7
    invoke-virtual {v2, v3}, Lod6;->f(Ljava/io/Reader;)Leg6;

    move-result-object v1

    .line 8
    invoke-virtual {v2, v1, v0}, Lod6;->c(Leg6;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    .line 9
    invoke-static {v2, v1}, Lod6;->a(Ljava/lang/Object;Leg6;)V

    .line 10
    invoke-static {v0}, Ln56;->C2(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    check-cast v0, Lcom/noinnion/android/greader/client/rss/DataSet;

    iput-object v0, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataSet:Lcom/noinnion/android/greader/client/rss/DataSet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    goto :goto_1

    .line 12
    :cond_1
    :try_start_2
    new-instance v1, Lcom/noinnion/android/greader/client/rss/DataSet;

    invoke-direct {v1}, Lcom/noinnion/android/greader/client/rss/DataSet;-><init>()V

    iput-object v1, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataSet:Lcom/noinnion/android/greader/client/rss/DataSet;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataSet:Lcom/noinnion/android/greader/client/rss/DataSet;

    if-eqz v0, :cond_5

    .line 15
    iget-object v1, v0, Lcom/noinnion/android/greader/client/rss/DataSet;->tags:Ljava/util/Map;

    if-nez v1, :cond_3

    .line 16
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/noinnion/android/greader/client/rss/DataSet;->tags:Ljava/util/Map;

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataSet:Lcom/noinnion/android/greader/client/rss/DataSet;

    iget-object v1, v0, Lcom/noinnion/android/greader/client/rss/DataSet;->feeds:Ljava/util/Map;

    if-nez v1, :cond_4

    .line 18
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/noinnion/android/greader/client/rss/DataSet;->feeds:Ljava/util/Map;

    :cond_4
    return-void

    .line 19
    :cond_5
    new-instance v0, Lgw6;

    const-string v1, "data set load error"

    invoke-direct {v0, v1}, Lgw6;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v1

    :goto_1
    if-eqz v0, :cond_6

    .line 20
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    .line 21
    :cond_6
    throw v1
.end method

.method private loadStarred()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataStarred:Lcom/noinnion/android/greader/client/rss/DataStarred;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->CLIENT_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "starred.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    new-instance v2, Lod6;

    invoke-direct {v2}, Lod6;-><init>()V

    .line 5
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    const-class v0, Lcom/noinnion/android/greader/client/rss/DataStarred;

    .line 7
    invoke-virtual {v2, v3}, Lod6;->f(Ljava/io/Reader;)Leg6;

    move-result-object v1

    .line 8
    invoke-virtual {v2, v1, v0}, Lod6;->c(Leg6;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    .line 9
    invoke-static {v2, v1}, Lod6;->a(Ljava/lang/Object;Leg6;)V

    .line 10
    invoke-static {v0}, Ln56;->C2(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    check-cast v0, Lcom/noinnion/android/greader/client/rss/DataStarred;

    iput-object v0, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataStarred:Lcom/noinnion/android/greader/client/rss/DataStarred;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    goto :goto_1

    .line 12
    :cond_1
    :try_start_2
    new-instance v1, Lcom/noinnion/android/greader/client/rss/DataStarred;

    invoke-direct {v1}, Lcom/noinnion/android/greader/client/rss/DataStarred;-><init>()V

    iput-object v1, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataStarred:Lcom/noinnion/android/greader/client/rss/DataStarred;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataStarred:Lcom/noinnion/android/greader/client/rss/DataStarred;

    if-eqz v0, :cond_4

    .line 15
    iget-object v1, v0, Lcom/noinnion/android/greader/client/rss/DataStarred;->items:Ljava/util/Map;

    if-nez v1, :cond_3

    .line 16
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/noinnion/android/greader/client/rss/DataStarred;->items:Ljava/util/Map;

    :cond_3
    return-void

    .line 17
    :cond_4
    new-instance v0, Lgw6;

    const-string v1, "data starred load error"

    invoke-direct {v0, v1}, Lgw6;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v1

    :goto_1
    if-eqz v0, :cond_5

    .line 18
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    .line 19
    :cond_5
    throw v1
.end method

.method private parseFeed(Lcom/noinnion/android/greader/client/rss/RssFeed;Lrn6$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->parseFeedInternal(Lcom/noinnion/android/greader/client/rss/RssFeed;Lrn6$b;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private parseFeedInternal(Lcom/noinnion/android/greader/client/rss/RssFeed;Lrn6$b;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    move-object/from16 v1, p1

    .line 1
    iget-object v0, v1, Lcom/noinnion/android/greader/client/rss/RssFeed;->uid:Ljava/lang/String;

    const-string v2, "feed/"

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    .line 3
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v3, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 6
    :try_start_0
    new-instance v0, Lcom/noinnion/android/greader/client/rss/syndication/handler/FeedHandler;

    invoke-direct {v0}, Lcom/noinnion/android/greader/client/rss/syndication/handler/FeedHandler;-><init>()V

    invoke-virtual {v0, v3}, Lcom/noinnion/android/greader/client/rss/syndication/handler/FeedHandler;->parseFeed(Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;)Lcom/noinnion/android/greader/client/rss/syndication/handler/FeedHandlerResult;

    move-result-object v0

    .line 7
    iget-object v3, v0, Lcom/noinnion/android/greader/client/rss/syndication/handler/FeedHandlerResult;->feed:Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;

    invoke-virtual {v3}, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->getItems()Ljava/util/List;

    move-result-object v3

    .line 8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v5, :cond_3

    .line 9
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    .line 10
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    .line 11
    invoke-virtual {v6}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->getLink()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v6}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->getLink()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->getLink()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v6}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->getItemIdentifier()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v6}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->getItemIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->getItemIdentifier()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x2

    goto :goto_1

    :cond_2
    const/4 v6, 0x3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v6, 0x1

    .line 13
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    .line 14
    new-instance v9, Lap6;

    invoke-direct {v9}, Lap6;-><init>()V

    .line 15
    iget-object v10, v1, Lcom/noinnion/android/greader/client/rss/RssFeed;->uid:Ljava/lang/String;

    iput-object v10, v9, Lap6;->z:Ljava/lang/String;

    .line 16
    invoke-virtual {v8}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->getLink()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lap6;->k:Ljava/lang/String;

    if-ne v6, v5, :cond_4

    .line 17
    invoke-virtual {v8}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->getLink()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lap6;->f:Ljava/lang/String;

    goto :goto_3

    :cond_4
    if-ne v6, v7, :cond_5

    .line 18
    invoke-virtual {v8}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->getItemIdentifier()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lap6;->f:Ljava/lang/String;

    goto :goto_3

    .line 19
    :cond_5
    invoke-virtual {v8}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->getHumanReadableIdentifier()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lap6;->f:Ljava/lang/String;

    .line 20
    :goto_3
    invoke-virtual {v8}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lap6;->h:Ljava/lang/String;

    .line 21
    invoke-virtual {v8}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->getContentEncoded()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lap6;->i:Ljava/lang/String;

    .line 22
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 23
    invoke-virtual {v8}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->getDescription()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lap6;->i:Ljava/lang/String;

    .line 24
    :cond_6
    invoke-virtual {v8}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->getPubDate()Ljava/util/Date;

    move-result-object v10

    const-wide/16 v11, 0x3e8

    if-eqz v10, :cond_7

    .line 25
    invoke-virtual {v8}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->getPubDate()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    div-long/2addr v13, v11

    iput-wide v13, v9, Lap6;->p:J

    iput-wide v13, v9, Lap6;->q:J

    goto :goto_4

    .line 26
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    div-long/2addr v13, v11

    iput-wide v13, v9, Lap6;->q:J

    .line 27
    :goto_4
    invoke-virtual {v8}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->hasItemImage()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 28
    invoke-virtual {v8}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->getImage()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;

    move-result-object v10

    .line 29
    invoke-virtual {v10}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;->getDownloadUrl()Ljava/lang/String;

    move-result-object v10

    const-string v11, "image/thumbnail"

    invoke-virtual {v9, v10, v11}, Lap6;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_8
    invoke-virtual {v8}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->hasMedia()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 31
    invoke-virtual {v8}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->getMedia()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;

    move-result-object v8

    .line 32
    new-instance v10, Lcp6;

    invoke-virtual {v8}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;->getDownloadUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->getMime_type()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v11, v8}, Lcp6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lap6;->i(Lcp6;)V

    .line 33
    :cond_9
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_a
    move-object/from16 v3, p2

    .line 34
    invoke-interface {v3, v2}, Lrn6$b;->a(Ljava/util/List;)V

    .line 35
    iget-boolean v5, v0, Lcom/noinnion/android/greader/client/rss/syndication/handler/FeedHandlerResult;->hasPodcast:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v5, 0x0

    goto :goto_5

    :catch_1
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    if-nez v5, :cond_b

    .line 38
    iget-object v0, v1, Lcom/noinnion/android/greader/client/rss/RssFeed;->uid:Ljava/lang/String;

    move-object v1, p0

    invoke-direct {p0, v0, v4}, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->subscriptionEdit(Ljava/lang/String;Z)V

    goto :goto_6

    :cond_b
    move-object v1, p0

    :goto_6
    return-void
.end method

.method private declared-synchronized saveDataSet()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataSet:Lcom/noinnion/android/greader/client/rss/DataSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/noinnion/android/greader/client/rss/DataSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Lod6;

    invoke-direct {v0}, Lod6;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataSet:Lcom/noinnion/android/greader/client/rss/DataSet;

    invoke-virtual {v0, v1}, Lod6;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/gReader/.rss/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data.json"

    invoke-static {v1, v2, v0}, Lhy6;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    :goto_0
    monitor-exit p0

    return-void

    .line 7
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized saveDataStarred()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataStarred:Lcom/noinnion/android/greader/client/rss/DataStarred;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    new-instance v0, Lod6;

    invoke-direct {v0}, Lod6;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataStarred:Lcom/noinnion/android/greader/client/rss/DataStarred;

    invoke-virtual {v0, v1}, Lod6;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/gReader/.rss/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "starred.json"

    invoke-static {v1, v2, v0}, Lhy6;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private subscribe(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->loadDataSet()V

    const-string v0, "feed/"

    .line 2
    invoke-static {v0, p1}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataSet:Lcom/noinnion/android/greader/client/rss/DataSet;

    iget-object v0, v0, Lcom/noinnion/android/greader/client/rss/DataSet;->feeds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/noinnion/android/greader/client/rss/RssFeed;

    invoke-direct {v0, p1, p2}, Lcom/noinnion/android/greader/client/rss/RssFeed;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataSet:Lcom/noinnion/android/greader/client/rss/DataSet;

    iget-object p2, p2, Lcom/noinnion/android/greader/client/rss/DataSet;->feeds:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->saveDataSet()V

    if-eqz p3, :cond_3

    .line 7
    array-length p2, p3

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 8
    :goto_0
    array-length v0, p3

    if-ge p2, v0, :cond_2

    .line 9
    aget-object v0, p3, p2

    invoke-virtual {p0, v0}, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->getCategoryUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->subscriptionAddLabel(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private subscriptionAddLabel(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->loadDataSet()V

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataSet:Lcom/noinnion/android/greader/client/rss/DataSet;

    iget-object v0, v0, Lcom/noinnion/android/greader/client/rss/DataSet;->feeds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataSet:Lcom/noinnion/android/greader/client/rss/DataSet;

    iget-object v0, v0, Lcom/noinnion/android/greader/client/rss/DataSet;->feeds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/noinnion/android/greader/client/rss/RssFeed;

    .line 4
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p2, v1

    .line 5
    iget-object v3, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataSet:Lcom/noinnion/android/greader/client/rss/DataSet;

    iget-object v3, v3, Lcom/noinnion/android/greader/client/rss/DataSet;->tags:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "user/category/"

    const-string v4, ""

    .line 6
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "user/tag/"

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 7
    new-instance v4, Lcom/noinnion/android/greader/client/rss/RssTag;

    invoke-direct {v4, v2, v3}, Lcom/noinnion/android/greader/client/rss/RssTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v3, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataSet:Lcom/noinnion/android/greader/client/rss/DataSet;

    iget-object v3, v3, Lcom/noinnion/android/greader/client/rss/DataSet;->tags:Ljava/util/Map;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_1
    iget-object v3, p1, Lcom/noinnion/android/greader/client/rss/RssFeed;->categories:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 10
    iget-object v3, p1, Lcom/noinnion/android/greader/client/rss/RssFeed;->categories:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_3
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->saveDataSet()V

    return-void
.end method

.method private subscriptionEdit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->loadDataSet()V

    .line 7
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataSet:Lcom/noinnion/android/greader/client/rss/DataSet;

    iget-object v0, v0, Lcom/noinnion/android/greader/client/rss/DataSet;->feeds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataSet:Lcom/noinnion/android/greader/client/rss/DataSet;

    iget-object v0, v0, Lcom/noinnion/android/greader/client/rss/DataSet;->feeds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/noinnion/android/greader/client/rss/RssFeed;

    .line 9
    iput-object p2, p1, Lcom/noinnion/android/greader/client/rss/RssFeed;->title:Ljava/lang/String;

    .line 10
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->saveDataSet()V

    :cond_0
    return-void
.end method

.method private subscriptionEdit(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->loadDataSet()V

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataSet:Lcom/noinnion/android/greader/client/rss/DataSet;

    iget-object v0, v0, Lcom/noinnion/android/greader/client/rss/DataSet;->feeds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataSet:Lcom/noinnion/android/greader/client/rss/DataSet;

    iget-object v0, v0, Lcom/noinnion/android/greader/client/rss/DataSet;->feeds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/noinnion/android/greader/client/rss/RssFeed;

    .line 4
    iput-boolean p2, p1, Lcom/noinnion/android/greader/client/rss/RssFeed;->hasPodcast:Z

    .line 5
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->saveDataSet()V

    :cond_0
    return-void
.end method

.method private subscriptionRemoveLabel(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->loadDataSet()V

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataSet:Lcom/noinnion/android/greader/client/rss/DataSet;

    iget-object v0, v0, Lcom/noinnion/android/greader/client/rss/DataSet;->feeds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataSet:Lcom/noinnion/android/greader/client/rss/DataSet;

    iget-object v0, v0, Lcom/noinnion/android/greader/client/rss/DataSet;->feeds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/noinnion/android/greader/client/rss/RssFeed;

    .line 4
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    .line 5
    iget-object v3, p1, Lcom/noinnion/android/greader/client/rss/RssFeed;->categories:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    iget-object v3, p1, Lcom/noinnion/android/greader/client/rss/RssFeed;->categories:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->saveDataSet()V

    return-void
.end method

.method private unsubscribe(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->loadDataSet()V

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataSet:Lcom/noinnion/android/greader/client/rss/DataSet;

    iget-object v0, v0, Lcom/noinnion/android/greader/client/rss/DataSet;->feeds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataSet:Lcom/noinnion/android/greader/client/rss/DataSet;

    iget-object v0, v0, Lcom/noinnion/android/greader/client/rss/DataSet;->feeds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataSet:Lcom/noinnion/android/greader/client/rss/DataSet;

    iget-object v0, v0, Lcom/noinnion/android/greader/client/rss/DataSet;->feeds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->saveDataSet()V

    :cond_1
    return-void
.end method


# virtual methods
.method public disableTag(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->loadDataSet()V

    .line 2
    iget-object p2, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataSet:Lcom/noinnion/android/greader/client/rss/DataSet;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 3
    :cond_0
    iget-object p2, p2, Lcom/noinnion/android/greader/client/rss/DataSet;->tags:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    iget-object p2, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataSet:Lcom/noinnion/android/greader/client/rss/DataSet;

    iget-object p2, p2, Lcom/noinnion/android/greader/client/rss/DataSet;->tags:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataSet:Lcom/noinnion/android/greader/client/rss/DataSet;

    iget-object p2, p2, Lcom/noinnion/android/greader/client/rss/DataSet;->feeds:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/noinnion/android/greader/client/rss/RssFeed;

    .line 6
    iget-object v2, v1, Lcom/noinnion/android/greader/client/rss/RssFeed;->categories:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    iget-object v1, v1, Lcom/noinnion/android/greader/client/rss/RssFeed;->categories:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_3
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->saveDataSet()V

    return v0
.end method

.method public editItemTag([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1

    const/4 p2, 0x2

    if-eq p4, p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->itemRemoveLabel([Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->itemAddLabel([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public editSubscription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p5, v0, :cond_4

    const/4 v0, 0x2

    if-eq p5, v0, :cond_3

    const/4 p2, 0x3

    if-eq p5, p2, :cond_2

    const/4 p2, 0x4

    if-eq p5, p2, :cond_1

    const/4 p2, 0x5

    if-eq p5, p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p4}, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->subscriptionRemoveLabel(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_1
    invoke-direct {p0, p1, p4}, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->subscriptionAddLabel(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_2
    invoke-direct {p0, p1}, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->unsubscribe(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_3
    invoke-direct {p0, p3, p2, p4}, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->subscribe(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->subscriptionEdit(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getCategoryUid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "user/category/"

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getClientName()Ljava/lang/String;
    .locals 1

    const-string v0, "local"

    return-object v0
.end method

.method public getClientService()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public getTagUid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "user/tag/"

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public handleItemIdList(Lrn6$a;J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public handleItemList(Lrn6$b;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->loadDataSet()V

    .line 2
    iget-object p2, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataSet:Lcom/noinnion/android/greader/client/rss/DataSet;

    if-nez p2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-interface {p1}, Lrn6$b;->stream()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    .line 4
    iget-object p2, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataSet:Lcom/noinnion/android/greader/client/rss/DataSet;

    iget-object p2, p2, Lcom/noinnion/android/greader/client/rss/DataSet;->feeds:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/noinnion/android/greader/client/rss/RssFeed;

    .line 5
    iget-boolean v0, p0, Lrn6;->mRequestStop:Z

    if-nez v0, :cond_2

    .line 6
    invoke-interface {p1}, Lrn6$b;->g()Ljava/util/Set;

    move-result-object v0

    .line 7
    iget-object v1, p3, Lcom/noinnion/android/greader/client/rss/RssFeed;->uid:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0, p3, p1}, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->parseFeed(Lcom/noinnion/android/greader/client/rss/RssFeed;Lrn6$b;)V

    goto :goto_0

    .line 9
    :cond_2
    new-instance p1, Lgw6$a;

    invoke-direct {p1}, Lgw6$a;-><init>()V

    throw p1

    :cond_3
    const-string p3, "user/starred"

    .line 10
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 11
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->loadStarred()V

    .line 12
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iget-object p3, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataStarred:Lcom/noinnion/android/greader/client/rss/DataStarred;

    iget-object p3, p3, Lcom/noinnion/android/greader/client/rss/DataStarred;->items:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/noinnion/android/greader/client/rss/RssItem;

    .line 14
    invoke-virtual {v0}, Lcom/noinnion/android/greader/client/rss/RssItem;->getItem()Lap6;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_4
    invoke-interface {p1, p2}, Lrn6$b;->a(Ljava/util/List;)V

    goto :goto_3

    :cond_5
    const-string p3, "feed/"

    .line 16
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 17
    iget-object p3, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataSet:Lcom/noinnion/android/greader/client/rss/DataSet;

    iget-object p3, p3, Lcom/noinnion/android/greader/client/rss/DataSet;->feeds:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/noinnion/android/greader/client/rss/RssFeed;

    if-eqz p2, :cond_a

    .line 18
    invoke-direct {p0, p2, p1}, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->parseFeed(Lcom/noinnion/android/greader/client/rss/RssFeed;Lrn6$b;)V

    goto :goto_3

    :cond_6
    const-string p3, "user/category/"

    .line 19
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 20
    iget-object p3, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataSet:Lcom/noinnion/android/greader/client/rss/DataSet;

    iget-object p3, p3, Lcom/noinnion/android/greader/client/rss/DataSet;->feeds:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_7
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/noinnion/android/greader/client/rss/RssFeed;

    .line 21
    iget-boolean v1, p0, Lrn6;->mRequestStop:Z

    if-nez v1, :cond_9

    .line 22
    invoke-interface {p1}, Lrn6$b;->g()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 23
    iget-object v2, v0, Lcom/noinnion/android/greader/client/rss/RssFeed;->uid:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_2

    .line 24
    :cond_8
    iget-object v1, v0, Lcom/noinnion/android/greader/client/rss/RssFeed;->categories:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 25
    invoke-direct {p0, v0, p1}, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->parseFeed(Lcom/noinnion/android/greader/client/rss/RssFeed;Lrn6$b;)V

    goto :goto_2

    .line 26
    :cond_9
    new-instance p1, Lgw6$a;

    invoke-direct {p1}, Lgw6$a;-><init>()V

    throw p1

    :cond_a
    :goto_3
    return-void
.end method

.method public handleReaderList(Lrn6$d;Lrn6$c;Lrn6$e;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->loadDataSet()V

    .line 2
    iget-object p3, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataSet:Lcom/noinnion/android/greader/client/rss/DataSet;

    if-nez p3, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance p4, Llp6;

    invoke-direct {p4}, Llp6;-><init>()V

    const-string p5, "user/starred"

    .line 5
    iput-object p5, p4, Llp6;->f:Ljava/lang/String;

    const-string p5, "Starred items"

    .line 6
    iput-object p5, p4, Llp6;->i:Ljava/lang/String;

    const/4 p5, 0x1

    .line 7
    iput p5, p4, Llp6;->g:I

    .line 8
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object p4, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataSet:Lcom/noinnion/android/greader/client/rss/DataSet;

    iget-object p4, p4, Lcom/noinnion/android/greader/client/rss/DataSet;->tags:Ljava/util/Map;

    invoke-interface {p4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/noinnion/android/greader/client/rss/RssTag;

    .line 10
    new-instance v0, Llp6;

    invoke-direct {v0}, Llp6;-><init>()V

    .line 11
    iget-object v1, p5, Lcom/noinnion/android/greader/client/rss/RssTag;->uid:Ljava/lang/String;

    iput-object v1, v0, Llp6;->f:Ljava/lang/String;

    .line 12
    iget-object p5, p5, Lcom/noinnion/android/greader/client/rss/RssTag;->label:Ljava/lang/String;

    iput-object p5, v0, Llp6;->i:Ljava/lang/String;

    const-string p5, "user/category/"

    .line 13
    invoke-virtual {v1, p5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_1

    const/16 p5, 0xb

    goto :goto_1

    :cond_1
    const/16 p5, 0xa

    :goto_1
    iput p5, v0, Llp6;->g:I

    .line 14
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-lez p4, :cond_3

    .line 16
    check-cast p1, Lep6$a;

    invoke-virtual {p1, p3}, Lep6$a;->a(Ljava/util/List;)V

    .line 17
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iget-object p3, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataSet:Lcom/noinnion/android/greader/client/rss/DataSet;

    iget-object p3, p3, Lcom/noinnion/android/greader/client/rss/DataSet;->feeds:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/noinnion/android/greader/client/rss/RssFeed;

    .line 19
    new-instance p5, Lip6;

    invoke-direct {p5}, Lip6;-><init>()V

    .line 20
    iget-object v0, p4, Lcom/noinnion/android/greader/client/rss/RssFeed;->uid:Ljava/lang/String;

    iput-object v0, p5, Lip6;->f:Ljava/lang/String;

    .line 21
    iget-object v0, p4, Lcom/noinnion/android/greader/client/rss/RssFeed;->title:Ljava/lang/String;

    iput-object v0, p5, Lip6;->h:Ljava/lang/String;

    .line 22
    iget-object v0, p4, Lcom/noinnion/android/greader/client/rss/RssFeed;->htmlUrl:Ljava/lang/String;

    iput-object v0, p5, Lip6;->j:Ljava/lang/String;

    .line 23
    iget-object v0, p5, Lip6;->l:Ljava/util/List;

    iget-object p4, p4, Lcom/noinnion/android/greader/client/rss/RssFeed;->categories:Ljava/util/Set;

    invoke-interface {v0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 24
    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 25
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_5

    .line 26
    check-cast p2, Lep6$b;

    invoke-virtual {p2, p1}, Lep6$b;->a(Ljava/util/List;)V

    :cond_5
    return-void
.end method

.method public markAllAsRead(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public markAsRead(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public markAsRead([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public markAsUnread(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public markAsUnread([Ljava/lang/String;[Ljava/lang/String;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public renameTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->loadDataSet()V

    .line 2
    iget-object p2, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataSet:Lcom/noinnion/android/greader/client/rss/DataSet;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const-string p2, "user/category/"

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 4
    iget-object p2, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataSet:Lcom/noinnion/android/greader/client/rss/DataSet;

    iget-object p2, p2, Lcom/noinnion/android/greader/client/rss/DataSet;->tags:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 5
    iget-object p2, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataSet:Lcom/noinnion/android/greader/client/rss/DataSet;

    iget-object p2, p2, Lcom/noinnion/android/greader/client/rss/DataSet;->tags:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/noinnion/android/greader/client/rss/RssTag;

    .line 6
    invoke-virtual {p0, p3}, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->getCategoryUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/noinnion/android/greader/client/rss/RssTag;->uid:Ljava/lang/String;

    .line 7
    iput-object p3, p2, Lcom/noinnion/android/greader/client/rss/RssTag;->label:Ljava/lang/String;

    .line 8
    iget-object p3, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataSet:Lcom/noinnion/android/greader/client/rss/DataSet;

    iget-object p3, p3, Lcom/noinnion/android/greader/client/rss/DataSet;->tags:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p3, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataSet:Lcom/noinnion/android/greader/client/rss/DataSet;

    iget-object p3, p3, Lcom/noinnion/android/greader/client/rss/DataSet;->tags:Ljava/util/Map;

    iget-object v1, p2, Lcom/noinnion/android/greader/client/rss/RssTag;->uid:Ljava/lang/String;

    invoke-interface {p3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p3, p0, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->dataSet:Lcom/noinnion/android/greader/client/rss/DataSet;

    iget-object p3, p3, Lcom/noinnion/android/greader/client/rss/DataSet;->feeds:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/noinnion/android/greader/client/rss/RssFeed;

    .line 11
    iget-object v2, v1, Lcom/noinnion/android/greader/client/rss/RssFeed;->categories:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12
    iget-object v2, v1, Lcom/noinnion/android/greader/client/rss/RssFeed;->categories:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 13
    iget-object v1, v1, Lcom/noinnion/android/greader/client/rss/RssFeed;->categories:Ljava/util/Set;

    iget-object v2, p2, Lcom/noinnion/android/greader/client/rss/RssTag;->uid:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_2
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/RssReaderClient;->saveDataSet()V

    :cond_3
    return v0
.end method
