.class public final Lgw0;
.super Lzv0;
.source "SourceFile"


# static fields
.field public static final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Ljava/text/DecimalFormat;


# instance fields
.field public h:Ljava/io/File;

.field public i:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lgw0;->j:Ljava/util/Set;

    .line 2
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgw0;->k:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Liu0;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lzv0;-><init>(Liu0;)V

    .line 2
    iget-object p1, p0, Lzv0;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Context.getCacheDir() returned null"

    .line 3
    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "admobVideoStreams"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lgw0;->h:Ljava/io/File;

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lgw0;->h:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "Could not create preload cache directory at "

    .line 6
    iget-object v1, p0, Lgw0;->h:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    :goto_0
    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V

    .line 7
    iput-object v0, p0, Lgw0;->h:Ljava/io/File;

    return-void

    .line 8
    :cond_2
    iget-object p1, p0, Lgw0;->h:Ljava/io/File;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lgw0;->h:Ljava/io/File;

    .line 9
    invoke-virtual {p1, v1, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    :goto_1
    const-string p1, "Could not set cache file permissions at "

    .line 10
    iget-object v1, p0, Lgw0;->h:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    :goto_2
    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V

    .line 11
    iput-object v0, p0, Lgw0;->h:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lgw0;->i:Z

    return-void
.end method

.method public final r(Ljava/lang/String;)Z
    .locals 28

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 1
    iget-object v0, v7, Lgw0;->h:Ljava/io/File;

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-nez v0, :cond_0

    const-string v0, "noCacheDir"

    .line 2
    invoke-virtual {v7, v8, v9, v0, v9}, Lzv0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v10

    .line 3
    :cond_0
    iget-object v0, v7, Lgw0;->h:Ljava/io/File;

    if-nez v0, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v4, v0, v2

    .line 5
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".done"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_3
    :goto_1
    sget-object v0, Ly40;->n:Lo40;

    .line 7
    invoke-static {}, Los3;->a()Lu40;

    move-result-object v1

    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v3, v0, :cond_9

    .line 9
    iget-object v0, v7, Lgw0;->h:Ljava/io/File;

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    const-wide v1, 0x7fffffffffffffffL

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v3, v0

    move-object v5, v9

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_6

    aget-object v6, v0, v4

    .line 11
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, ".done"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 12
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    cmp-long v13, v11, v1

    if-gez v13, :cond_5

    move-object v5, v6

    move-wide v1, v11

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    if-eqz v5, :cond_7

    .line 13
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    .line 14
    invoke-virtual {v7, v5}, Lgw0;->t(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 16
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    and-int/2addr v0, v1

    goto :goto_4

    :cond_7
    :goto_3
    const/4 v0, 0x0

    :cond_8
    :goto_4
    if-nez v0, :cond_0

    const-string v0, "Unable to expire stream cache"

    .line 17
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    const-string v0, "expireFailed"

    .line 18
    invoke-virtual {v7, v8, v9, v0, v9}, Lzv0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v10

    .line 19
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lzv0;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    new-instance v11, Ljava/io/File;

    iget-object v1, v7, Lgw0;->h:Ljava/io/File;

    invoke-direct {v11, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v7, v11}, Lgw0;->t(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 22
    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v1

    const/4 v12, 0x1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 23
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v1, v0

    const-string v0, "Stream cache hit at "

    .line 24
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_a
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_5
    invoke-static {v0}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v8, v0, v1}, Lzv0;->k(Ljava/lang/String;Ljava/lang/String;I)V

    return v12

    .line 26
    :cond_b
    iget-object v1, v7, Lgw0;->h:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    goto :goto_6

    :cond_c
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v13, v2

    .line 27
    :goto_6
    sget-object v1, Lgw0;->j:Ljava/util/Set;

    monitor-enter v1

    .line 28
    :try_start_0
    invoke-interface {v1, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v0, "Stream cache already in progress at "

    .line 29
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_d
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_7
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "inProgress"

    invoke-virtual {v7, v8, v0, v2, v9}, Lzv0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    monitor-exit v1

    return v10

    .line 32
    :cond_e
    invoke-interface {v1, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v14, "error"

    .line 34
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlh()Lws0;

    sget-object v1, Ly40;->s:Lo40;

    .line 35
    invoke-static {}, Los3;->a()Lu40;

    move-result-object v2

    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 37
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_8
    add-int/2addr v3, v12

    const/16 v4, 0x14

    if-gt v3, v4, :cond_25

    .line 38
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    .line 39
    invoke-virtual {v5, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 40
    invoke-virtual {v5, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 41
    instance-of v6, v5, Ljava/net/HttpURLConnection;

    if-eqz v6, :cond_24

    .line 42
    check-cast v5, Ljava/net/HttpURLConnection;

    .line 43
    new-instance v6, Lds0;

    invoke-direct {v6}, Lds0;-><init>()V

    .line 44
    invoke-virtual {v6, v5, v9}, Lds0;->e(Ljava/net/HttpURLConnection;[B)V

    .line 45
    invoke-virtual {v5, v10}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 46
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v15

    .line 47
    invoke-virtual {v6, v5, v15}, Lds0;->d(Ljava/net/HttpURLConnection;I)V

    .line 48
    div-int/lit8 v15, v15, 0x64
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_20
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1f

    const/4 v6, 0x3

    if-ne v15, v6, :cond_14

    :try_start_2
    const-string v4, "Location"

    .line 49
    invoke-virtual {v5, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 50
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v2, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    const-string v15, "http"

    .line 52
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_10

    const-string v15, "https"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_10

    .line 53
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsupported scheme: "

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_f
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    const-string v2, "Redirecting to "

    .line 54
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_11

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    :cond_11
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    :goto_a
    invoke-static {v2}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v2, v6

    goto/16 :goto_8

    .line 56
    :cond_12
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Protocol is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_13
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing Location header in redirect"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto/16 :goto_e

    :catch_1
    move-exception v0

    goto/16 :goto_e

    .line 58
    :cond_14
    :try_start_3
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_20
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1f

    const/16 v2, 0x190

    if-lt v1, v2, :cond_16

    :try_start_4
    const-string v14, "badUrl"

    const-string v0, "HTTP request failed. Code: "

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_b

    :cond_15
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 60
    :goto_b
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "HTTP status code "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v0

    goto/16 :goto_f

    :catch_3
    move-exception v0

    goto/16 :goto_f

    .line 61
    :cond_16
    :try_start_6
    invoke-virtual {v5}, Ljava/net/URLConnection;->getContentLength()I

    move-result v15
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_20
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1f

    if-gez v15, :cond_18

    :try_start_7
    const-string v0, "Stream cache aborted, missing content-length header at "

    .line 62
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_17
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_c
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contentLengthMissing"

    invoke-virtual {v7, v8, v0, v1, v9}, Lzv0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    sget-object v0, Lgw0;->j:Ljava/util/Set;

    invoke-interface {v0, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    return v10

    .line 65
    :cond_18
    :try_start_8
    sget-object v1, Lgw0;->k:Ljava/text/DecimalFormat;

    int-to-long v2, v15

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 66
    sget-object v2, Ly40;->o:Lo40;

    .line 67
    invoke-static {}, Los3;->a()Lu40;

    move-result-object v3

    invoke-virtual {v3, v2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 68
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_20
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1f

    if-le v15, v3, :cond_1a

    .line 69
    :try_start_9
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x21

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Content length "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " exceeds limit at "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    const-string v0, "File too big for full file cache. Size: "

    .line 70
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_19
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 71
    :goto_d
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sizeExceeded"

    invoke-virtual {v7, v8, v1, v2, v0}, Lzv0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lgw0;->j:Ljava/util/Set;

    invoke-interface {v0, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    return v10

    :goto_e
    move-object v2, v9

    :goto_f
    move-object v1, v13

    goto/16 :goto_25

    .line 73
    :cond_1a
    :try_start_a
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v4

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Caching "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bytes from "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 75
    invoke-static {v1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v5

    .line 76
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_20
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1f

    .line 77
    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    const/high16 v1, 0x100000

    .line 78
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 79
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v16

    .line 80
    invoke-interface/range {v16 .. v16}, Lb20;->a()J

    move-result-wide v17

    .line 81
    sget-object v6, Ly40;->r:Lo40;

    .line 82
    invoke-static {}, Los3;->a()Lu40;

    move-result-object v9

    invoke-virtual {v9, v6}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v6

    .line 83
    check-cast v6, Ljava/lang/Long;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1c
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_1b

    move-object v9, v13

    :try_start_c
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 84
    new-instance v6, Lcom/google/android/gms/ads/internal/util/zzbp;

    invoke-direct {v6, v12, v13}, Lcom/google/android/gms/ads/internal/util/zzbp;-><init>(J)V

    .line 85
    sget-object v12, Ly40;->q:Lo40;

    .line 86
    invoke-static {}, Los3;->a()Lu40;

    move-result-object v13

    invoke-virtual {v13, v12}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v12

    .line 87
    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 88
    :goto_10
    invoke-interface {v5, v1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v20
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1a
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_19

    if-ltz v20, :cond_21

    add-int v10, v10, v20

    if-le v10, v3, :cond_1c

    :try_start_d
    const-string v14, "sizeExceeded"

    const-string v0, "File too big for full file cache. Size: "

    .line 89
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_11

    :cond_1b
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_6

    .line 90
    :goto_11
    :try_start_e
    new-instance v0, Ljava/io/IOException;

    const-string v2, "stream cache file size limit exceeded"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_4

    :catch_4
    move-exception v0

    goto :goto_13

    :catch_5
    move-exception v0

    goto :goto_13

    :catch_6
    move-exception v0

    goto :goto_12

    :catch_7
    move-exception v0

    :goto_12
    const/4 v1, 0x0

    :goto_13
    move-object v2, v1

    move-object v1, v9

    move-object v9, v4

    goto/16 :goto_25

    .line 91
    :cond_1c
    :try_start_f
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 92
    :cond_1d
    invoke-virtual {v2, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v20

    if-gtz v20, :cond_1d

    .line 93
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 94
    invoke-interface/range {v16 .. v16}, Lb20;->a()J

    move-result-wide v20

    sub-long v20, v20, v17

    const-wide/16 v22, 0x3e8

    mul-long v22, v22, v12

    cmp-long v24, v20, v22

    if-gtz v24, :cond_20

    move-object/from16 v20, v1

    .line 95
    iget-boolean v1, v7, Lgw0;->i:Z

    if-nez v1, :cond_1f

    .line 96
    invoke-virtual {v6}, Lcom/google/android/gms/ads/internal/util/zzbp;->tryAcquire()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 97
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    .line 98
    sget-object v1, Lzr0;->b:Landroid/os/Handler;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_10

    move-object/from16 v22, v14

    :try_start_10
    new-instance v14, Lyv0;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_8

    move-object/from16 v23, v9

    move-object v9, v1

    move-object v1, v14

    move-object/from16 v24, v2

    move-object/from16 v2, p0

    move/from16 v25, v3

    move-object/from16 v3, p1

    move-object/from16 v26, v4

    move-object/from16 v4, v21

    move-object/from16 v21, v5

    move v5, v10

    move-object/from16 v19, v6

    const/16 v27, 0x3

    move v6, v15

    :try_start_11
    invoke-direct/range {v1 .. v6}, Lyv0;-><init>(Lzv0;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v9, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_16

    :catch_8
    move-exception v0

    :goto_14
    move-object/from16 v26, v4

    move-object/from16 v23, v9

    goto :goto_15

    :catch_9
    move-exception v0

    goto :goto_14

    :goto_15
    move-object/from16 v1, v23

    goto/16 :goto_21

    :cond_1e
    move-object/from16 v24, v2

    move/from16 v25, v3

    move-object/from16 v26, v4

    move-object/from16 v21, v5

    move-object/from16 v19, v6

    move-object/from16 v23, v9

    move-object/from16 v22, v14

    const/16 v27, 0x3

    :goto_16
    move-object/from16 v6, v19

    move-object/from16 v1, v20

    move-object/from16 v5, v21

    move-object/from16 v14, v22

    move-object/from16 v9, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    move-object/from16 v4, v26

    goto/16 :goto_10

    :cond_1f
    move-object/from16 v26, v4

    move-object/from16 v23, v9

    move-object/from16 v22, v14

    const-string v1, "externalAbort"
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_12

    .line 99
    :try_start_12
    new-instance v0, Ljava/io/IOException;

    const-string v2, "abort requested"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_a

    :catch_a
    move-exception v0

    :goto_17
    move-object v14, v1

    goto :goto_1b

    :catch_b
    move-exception v0

    goto :goto_17

    :cond_20
    move-object/from16 v26, v4

    move-object/from16 v23, v9

    move-object/from16 v22, v14

    :try_start_13
    const-string v14, "downloadTimeout"
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_12

    .line 100
    :try_start_14
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Timeout exceeded. Limit: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " sec"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_e

    .line 101
    :try_start_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream cache time limit exceeded"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_c

    :catch_c
    move-exception v0

    goto :goto_18

    :catch_d
    move-exception v0

    :goto_18
    move-object v2, v9

    move-object/from16 v1, v23

    move-object/from16 v9, v26

    goto/16 :goto_25

    :catch_e
    move-exception v0

    goto :goto_1b

    :catch_f
    move-exception v0

    goto :goto_1b

    :catch_10
    move-exception v0

    :goto_19
    move-object/from16 v26, v4

    move-object/from16 v23, v9

    move-object/from16 v22, v14

    goto :goto_1a

    :catch_11
    move-exception v0

    goto :goto_19

    :goto_1a
    move-object/from16 v14, v22

    :goto_1b
    move-object/from16 v1, v23

    goto/16 :goto_22

    :cond_21
    move-object/from16 v26, v4

    move-object/from16 v23, v9

    move-object/from16 v22, v14

    const/16 v27, 0x3

    .line 102
    :try_start_16
    invoke-virtual/range {v26 .. v26}, Ljava/io/FileOutputStream;->close()V

    .line 103
    invoke-static/range {v27 .. v27}, Lis0;->isLoggable(I)Z

    move-result v1
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_17

    if-eqz v1, :cond_22

    .line 104
    :try_start_17
    sget-object v1, Lgw0;->k:Ljava/text/DecimalFormat;

    int-to-long v2, v10

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x16

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Preloaded "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bytes from "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lis0;->zzdz(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_12

    goto :goto_1c

    :catch_12
    move-exception v0

    goto :goto_1a

    :catch_13
    move-exception v0

    goto :goto_1a

    :cond_22
    :goto_1c
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 106
    :try_start_18
    invoke-virtual {v11, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 107
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_17

    if-eqz v1, :cond_23

    .line 108
    :try_start_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_12

    goto :goto_1d

    .line 109
    :cond_23
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_14
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_12

    .line 110
    :catch_14
    :goto_1d
    :try_start_1b
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v8, v0, v10}, Lzv0;->k(Ljava/lang/String;Ljava/lang/String;I)V

    .line 111
    sget-object v0, Lgw0;->j:Ljava/util/Set;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_17

    move-object/from16 v1, v23

    :try_start_1c
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_16
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_15

    const/4 v0, 0x1

    return v0

    :catch_15
    move-exception v0

    goto :goto_21

    :catch_16
    move-exception v0

    goto :goto_21

    :catch_17
    move-exception v0

    goto/16 :goto_15

    :catch_18
    move-exception v0

    goto/16 :goto_15

    :catch_19
    move-exception v0

    :goto_1e
    move-object/from16 v26, v4

    move-object v1, v9

    :goto_1f
    move-object/from16 v22, v14

    goto :goto_21

    :catch_1a
    move-exception v0

    goto :goto_1e

    :catch_1b
    move-exception v0

    :goto_20
    move-object/from16 v26, v4

    move-object v1, v13

    goto :goto_1f

    :catch_1c
    move-exception v0

    goto :goto_20

    :goto_21
    move-object/from16 v14, v22

    :goto_22
    move-object/from16 v9, v26

    const/4 v2, 0x0

    goto :goto_25

    :cond_24
    move-object v1, v13

    move-object/from16 v22, v14

    .line 112
    :try_start_1d
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid protocol."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    move-object v1, v13

    move-object/from16 v22, v14

    .line 113
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Too many redirects (20)"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_1e
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    move-exception v0

    goto :goto_24

    :catch_1e
    move-exception v0

    goto :goto_24

    :catch_1f
    move-exception v0

    :goto_23
    move-object v1, v13

    move-object/from16 v22, v14

    goto :goto_24

    :catch_20
    move-exception v0

    goto :goto_23

    :goto_24
    move-object/from16 v14, v22

    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 114
    :goto_25
    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_26

    .line 115
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v3

    const-string v4, "VideoStreamFullFileCache.preload"

    invoke-virtual {v3, v0, v4}, Lor0;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 116
    :cond_26
    :try_start_1e
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_21
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_1e} :catch_21

    goto :goto_26

    :catch_21
    nop

    .line 117
    :goto_26
    iget-boolean v3, v7, Lgw0;->i:Z

    if-eqz v3, :cond_27

    .line 118
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Preload aborted for URL \""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lis0;->zzey(Ljava/lang/String;)V

    goto :goto_27

    .line 119
    :cond_27
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x19

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Preload failed for URL \""

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    :goto_27
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "Could not delete partial cache file at "

    .line 121
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_28

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    :cond_28
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    :goto_28
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    .line 122
    :cond_29
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v8, v0, v14, v2}, Lzv0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    sget-object v0, Lgw0;->j:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    return v1

    :catchall_0
    move-exception v0

    .line 124
    :try_start_1f
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    throw v0
.end method

.method public final t(Ljava/io/File;)Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lgw0;->h:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, ".done"

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
