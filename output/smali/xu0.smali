.class public final Lxu0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkk3;


# static fields
.field public static final q:Ljava/util/regex/Pattern;

.field public static final r:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljavax/net/ssl/SSLSocketFactory;

.field public final b:I

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Lnk3;

.field public final f:Lsk3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsk3<",
            "-",
            "Lxu0;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljk3;

.field public h:Ljava/net/HttpURLConnection;

.field public i:Ljava/io/InputStream;

.field public j:Z

.field public k:J

.field public l:J

.field public m:J

.field public n:J

.field public o:I

.field public p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lxu0;->q:Ljava/util/regex/Pattern;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lxu0;->r:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lsk3;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lsk3<",
            "-",
            "Lxu0;",
            ">;III)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lav0;

    invoke-direct {v0, p0}, Lav0;-><init>(Lxu0;)V

    iput-object v0, p0, Lxu0;->a:Ljavax/net/ssl/SSLSocketFactory;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lxu0;->p:Ljava/util/Set;

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iput-object p1, p0, Lxu0;->d:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lxu0;->f:Lsk3;

    .line 7
    new-instance p1, Lnk3;

    invoke-direct {p1}, Lnk3;-><init>()V

    iput-object p1, p0, Lxu0;->e:Lnk3;

    .line 8
    iput p3, p0, Lxu0;->b:I

    .line 9
    iput p4, p0, Lxu0;->c:I

    .line 10
    iput p5, p0, Lxu0;->o:I

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lxu0;->h:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljk3;)J
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmk3;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "Unable to connect to "

    .line 1
    iput-object v2, v1, Lxu0;->g:Ljk3;

    const-wide/16 v4, 0x0

    .line 2
    iput-wide v4, v1, Lxu0;->n:J

    .line 3
    iput-wide v4, v1, Lxu0;->m:J

    .line 4
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v6, v2, Ljk3;->a:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 5
    iget-object v6, v2, Ljk3;->b:[B

    .line 6
    iget-wide v7, v2, Ljk3;->d:J

    .line 7
    iget-wide v9, v2, Ljk3;->e:J

    .line 8
    invoke-virtual/range {p1 .. p1}, Ljk3;->a()Z

    move-result v11

    const/4 v13, 0x0

    :goto_0
    add-int/lit8 v14, v13, 0x1

    const/16 v15, 0x14

    if-gt v13, v15, :cond_19

    .line 9
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    check-cast v13, Ljava/net/HttpURLConnection;

    .line 10
    instance-of v12, v13, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v12, :cond_0

    .line 11
    move-object v12, v13

    check-cast v12, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v15, v1, Lxu0;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v12, v15}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 12
    :cond_0
    iget v12, v1, Lxu0;->b:I

    invoke-virtual {v13, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 13
    iget v12, v1, Lxu0;->c:I

    invoke-virtual {v13, v12}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 14
    iget-object v12, v1, Lxu0;->e:Lnk3;

    invoke-virtual {v12}, Lnk3;->a()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v4, v18

    check-cast v4, Ljava/lang/String;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v13, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    goto :goto_1

    :cond_1
    const-wide/16 v4, -0x1

    const/16 v12, 0x1b

    const-wide/16 v20, 0x1

    const-wide/16 v18, 0x0

    cmp-long v15, v7, v18

    if-nez v15, :cond_3

    cmp-long v15, v9, v4

    if-eqz v15, :cond_2

    goto :goto_2

    :cond_2
    move-wide/from16 v22, v7

    goto :goto_4

    .line 16
    :cond_3
    :goto_2
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "bytes="

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "-"

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    cmp-long v15, v9, v4

    if-eqz v15, :cond_4

    .line 17
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    add-long v22, v7, v9

    sub-long v4, v22, v20

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v17, 0x14

    add-int/lit8 v15, v15, 0x14

    move-wide/from16 v22, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :cond_4
    move-wide/from16 v22, v7

    :goto_3
    const-string v4, "Range"

    .line 18
    invoke-virtual {v13, v4, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const-string v4, "User-Agent"

    .line 19
    iget-object v5, v1, Lxu0;->d:Ljava/lang/String;

    invoke-virtual {v13, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v11, :cond_5

    const-string v4, "Accept-Encoding"

    const-string v5, "identity"

    .line 20
    invoke-virtual {v13, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/4 v4, 0x0

    .line 21
    invoke-virtual {v13, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/4 v5, 0x1

    if-eqz v6, :cond_6

    const/4 v7, 0x1

    goto :goto_5

    :cond_6
    const/4 v7, 0x0

    .line 22
    :goto_5
    invoke-virtual {v13, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    if-eqz v6, :cond_7

    const-string v7, "POST"

    .line 23
    invoke-virtual {v13, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 24
    array-length v7, v6

    if-eqz v7, :cond_7

    .line 25
    array-length v7, v6

    invoke-virtual {v13, v7}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 26
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->connect()V

    .line 27
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 28
    invoke-virtual {v7, v6}, Ljava/io/OutputStream;->write([B)V

    .line 29
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    goto :goto_6

    .line 30
    :cond_7
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->connect()V

    .line 31
    :goto_6
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v8, 0x12c

    if-eq v7, v8, :cond_15

    const/16 v8, 0x12d

    if-eq v7, v8, :cond_15

    const/16 v8, 0x12e

    if-eq v7, v8, :cond_15

    const/16 v8, 0x12f

    if-eq v7, v8, :cond_15

    if-nez v6, :cond_8

    const/16 v6, 0x133

    if-eq v7, v6, :cond_15

    const/16 v6, 0x134

    if-ne v7, v6, :cond_8

    goto/16 :goto_d

    .line 32
    :cond_8
    iput-object v13, v1, Lxu0;->h:Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 33
    :try_start_1
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    const/16 v3, 0xc8

    if-lt v0, v3, :cond_12

    const/16 v4, 0x12b

    if-le v0, v4, :cond_9

    goto/16 :goto_b

    :cond_9
    if-ne v0, v3, :cond_a

    .line 34
    iget-wide v3, v2, Ljk3;->d:J

    const-wide/16 v6, 0x0

    cmp-long v0, v3, v6

    if-eqz v0, :cond_a

    goto :goto_7

    :cond_a
    const-wide/16 v3, 0x0

    :goto_7
    iput-wide v3, v1, Lxu0;->k:J

    .line 35
    invoke-virtual/range {p1 .. p1}, Ljk3;->a()Z

    move-result v0

    if-nez v0, :cond_10

    .line 36
    iget-wide v3, v2, Ljk3;->e:J

    const-wide/16 v6, -0x1

    cmp-long v0, v3, v6

    if-eqz v0, :cond_b

    .line 37
    iput-wide v3, v1, Lxu0;->l:J

    goto/16 :goto_a

    .line 38
    :cond_b
    iget-object v0, v1, Lxu0;->h:Ljava/net/HttpURLConnection;

    const-string v3, "Content-Length"

    .line 39
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 40
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v6, "]"

    if-nez v4, :cond_c

    .line 41
    :try_start_2
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_8

    .line 42
    :catch_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unexpected Content-Length ["

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lis0;->zzex(Ljava/lang/String;)V

    :cond_c
    const-wide/16 v7, -0x1

    :goto_8
    const-string v4, "Content-Range"

    .line 43
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 45
    sget-object v4, Lxu0;->q:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 46
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_e

    const/4 v9, 0x2

    .line 47
    :try_start_3
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    sub-long/2addr v9, v11

    add-long v9, v9, v20

    const-wide/16 v15, 0x0

    cmp-long v4, v7, v15

    if-gez v4, :cond_d

    move-wide v7, v9

    goto :goto_9

    :cond_d
    cmp-long v4, v7, v9

    if-eqz v4, :cond_e

    .line 48
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1a

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v4, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Inconsistent headers ["

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] ["

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lis0;->zzez(Ljava/lang/String;)V

    .line 49
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_9

    .line 50
    :catch_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x1b

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected Content-Range ["

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lis0;->zzex(Ljava/lang/String;)V

    :cond_e
    :goto_9
    const-wide/16 v3, -0x1

    cmp-long v0, v7, v3

    if-eqz v0, :cond_f

    .line 51
    iget-wide v3, v1, Lxu0;->k:J

    sub-long v3, v7, v3

    :cond_f
    iput-wide v3, v1, Lxu0;->l:J

    goto :goto_a

    .line 52
    :cond_10
    iget-wide v3, v2, Ljk3;->e:J

    iput-wide v3, v1, Lxu0;->l:J

    .line 53
    :goto_a
    :try_start_4
    iget-object v0, v1, Lxu0;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, v1, Lxu0;->i:Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 54
    iput-boolean v5, v1, Lxu0;->j:Z

    .line 55
    iget-object v0, v1, Lxu0;->f:Lsk3;

    if-eqz v0, :cond_11

    .line 56
    invoke-interface {v0, v1, v2}, Lsk3;->f(Ljava/lang/Object;Ljk3;)V

    .line 57
    :cond_11
    iget-wide v2, v1, Lxu0;->l:J

    return-wide v2

    :catch_2
    move-exception v0

    .line 58
    invoke-virtual/range {p0 .. p0}, Lxu0;->c()V

    .line 59
    new-instance v3, Lmk3;

    invoke-direct {v3, v0, v2, v5}, Lmk3;-><init>(Ljava/io/IOException;Ljk3;I)V

    throw v3

    .line 60
    :cond_12
    :goto_b
    iget-object v3, v1, Lxu0;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    .line 61
    invoke-virtual/range {p0 .. p0}, Lxu0;->c()V

    .line 62
    new-instance v4, Lok3;

    invoke-direct {v4, v0, v3, v2}, Lok3;-><init>(ILjava/util/Map;Ljk3;)V

    const/16 v2, 0x1a0

    if-ne v0, v2, :cond_13

    .line 63
    new-instance v0, Lgk3;

    invoke-direct {v0}, Lgk3;-><init>()V

    invoke-virtual {v4, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 64
    :cond_13
    throw v4

    :catch_3
    move-exception v0

    move-object v4, v0

    .line 65
    invoke-virtual/range {p0 .. p0}, Lxu0;->c()V

    .line 66
    new-instance v0, Lmk3;

    iget-object v5, v2, Ljk3;->a:Landroid/net/Uri;

    .line 67
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_14

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_c

    :cond_14
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    :goto_c
    invoke-direct {v0, v3, v4, v2}, Lmk3;-><init>(Ljava/lang/String;Ljava/io/IOException;Ljk3;)V

    throw v0

    :cond_15
    :goto_d
    const-wide/16 v15, 0x0

    const/4 v6, 0x0

    :try_start_5
    const-string v5, "Location"

    .line 68
    invoke-virtual {v13, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 69
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v5, :cond_18

    .line 70
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v0, v5}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v7}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v5, "https"

    .line 72
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    const-string v5, "http"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 73
    new-instance v4, Ljava/net/ProtocolException;

    const-string v5, "Unsupported protocol redirect: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_16

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_16
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_e
    invoke-direct {v4, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_17
    move-object v0, v7

    move v13, v14

    move-wide v4, v15

    move-wide/from16 v7, v22

    goto/16 :goto_0

    .line 74
    :cond_18
    new-instance v0, Ljava/net/ProtocolException;

    const-string v4, "Null location redirect"

    invoke-direct {v0, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_19
    new-instance v0, Ljava/net/NoRouteToHostException;

    const/16 v4, 0x1f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Too many redirects: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    move-exception v0

    .line 76
    new-instance v4, Lmk3;

    iget-object v5, v2, Ljk3;->a:Landroid/net/Uri;

    .line 77
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1a

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_f

    :cond_1a
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    :goto_f
    invoke-direct {v4, v3, v0, v2}, Lmk3;-><init>(Ljava/lang/String;Ljava/io/IOException;Ljk3;)V

    throw v4
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lxu0;->h:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Unexpected error while disconnecting"

    .line 3
    invoke-static {v1, v0}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lxu0;->h:Ljava/net/HttpURLConnection;

    :cond_0
    return-void
.end method

.method public final close()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmk3;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lxu0;->i:Ljava/io/InputStream;

    if-eqz v2, :cond_6

    .line 2
    iget-object v2, p0, Lxu0;->h:Ljava/net/HttpURLConnection;

    .line 3
    iget-wide v3, p0, Lxu0;->l:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v7, p0, Lxu0;->n:J

    sub-long/2addr v3, v7

    .line 4
    :goto_0
    sget v7, Lel3;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v8, 0x13

    if-eq v7, v8, :cond_1

    const/16 v8, 0x14

    if-ne v7, v8, :cond_5

    .line 5
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    .line 6
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_2
    const-wide/16 v5, 0x800

    cmp-long v7, v3, v5

    if-lez v7, :cond_5

    .line 7
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"

    .line 8
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"

    .line 9
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 10
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "unexpectedEndOfInput"

    new-array v5, v1, [Ljava/lang/Class;

    .line 11
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    .line 12
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v1, [Ljava/lang/Object;

    .line 13
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :catch_0
    :cond_5
    :goto_1
    :try_start_2
    iget-object v2, p0, Lxu0;->i:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v2

    .line 15
    :try_start_3
    new-instance v3, Lmk3;

    iget-object v4, p0, Lxu0;->g:Ljk3;

    const/4 v5, 0x3

    invoke-direct {v3, v2, v4, v5}, Lmk3;-><init>(Ljava/io/IOException;Ljk3;I)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16
    :cond_6
    :goto_2
    iput-object v0, p0, Lxu0;->i:Ljava/io/InputStream;

    .line 17
    invoke-virtual {p0}, Lxu0;->c()V

    .line 18
    iget-boolean v0, p0, Lxu0;->j:Z

    if-eqz v0, :cond_7

    .line 19
    iput-boolean v1, p0, Lxu0;->j:Z

    .line 20
    iget-object v0, p0, Lxu0;->f:Lsk3;

    if-eqz v0, :cond_7

    .line 21
    invoke-interface {v0, p0}, Lsk3;->e(Ljava/lang/Object;)V

    .line 22
    :cond_7
    iget-object v0, p0, Lxu0;->p:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void

    :catchall_0
    move-exception v2

    .line 23
    iput-object v0, p0, Lxu0;->i:Ljava/io/InputStream;

    .line 24
    invoke-virtual {p0}, Lxu0;->c()V

    .line 25
    iget-boolean v0, p0, Lxu0;->j:Z

    if-eqz v0, :cond_8

    .line 26
    iput-boolean v1, p0, Lxu0;->j:Z

    .line 27
    iget-object v0, p0, Lxu0;->f:Lsk3;

    if-eqz v0, :cond_8

    .line 28
    invoke-interface {v0, p0}, Lsk3;->e(Ljava/lang/Object;)V

    .line 29
    :cond_8
    iget-object v0, p0, Lxu0;->p:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 30
    throw v2
.end method

.method public final i0()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lxu0;->h:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final read([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmk3;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-wide v0, p0, Lxu0;->m:J

    iget-wide v2, p0, Lxu0;->k:J

    const/4 v4, 0x0

    const/4 v5, -0x1

    cmp-long v6, v0, v2

    if-eqz v6, :cond_4

    .line 2
    sget-object v0, Lxu0;->r:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 3
    :cond_0
    :goto_0
    iget-wide v1, p0, Lxu0;->m:J

    iget-wide v6, p0, Lxu0;->k:J

    cmp-long v3, v1, v6

    if-eqz v3, :cond_3

    sub-long/2addr v6, v1

    .line 4
    array-length v1, v0

    int-to-long v1, v1

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 5
    iget-object v1, p0, Lxu0;->i:Ljava/io/InputStream;

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 6
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_2

    if-eq v1, v5, :cond_1

    .line 7
    iget-wide v2, p0, Lxu0;->m:J

    int-to-long v6, v1

    add-long/2addr v2, v6

    iput-wide v2, p0, Lxu0;->m:J

    .line 8
    iget-object v2, p0, Lxu0;->f:Lsk3;

    if-eqz v2, :cond_0

    .line 9
    invoke-interface {v2, p0, v1}, Lsk3;->h(Ljava/lang/Object;I)V

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 11
    :cond_2
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 12
    :cond_3
    sget-object v1, Lxu0;->r:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_4
    if-nez p3, :cond_5

    return v4

    .line 13
    :cond_5
    iget-wide v0, p0, Lxu0;->l:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_7

    .line 14
    iget-wide v6, p0, Lxu0;->n:J

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-nez v4, :cond_6

    return v5

    :cond_6
    int-to-long v6, p3

    .line 15
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 16
    :cond_7
    iget-object v0, p0, Lxu0;->i:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v5, :cond_9

    .line 17
    iget-wide p1, p0, Lxu0;->l:J

    cmp-long p3, p1, v2

    if-nez p3, :cond_8

    return v5

    .line 18
    :cond_8
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 19
    :cond_9
    iget-wide p2, p0, Lxu0;->n:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lxu0;->n:J

    .line 20
    iget-object p2, p0, Lxu0;->f:Lsk3;

    if-eqz p2, :cond_a

    .line 21
    invoke-interface {p2, p0, p1}, Lsk3;->h(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    return p1

    :catch_0
    move-exception p1

    .line 22
    new-instance p2, Lmk3;

    iget-object p3, p0, Lxu0;->g:Ljk3;

    const/4 v0, 0x2

    invoke-direct {p2, p1, p3, v0}, Lmk3;-><init>(Ljava/io/IOException;Ljk3;I)V

    throw p2
.end method
