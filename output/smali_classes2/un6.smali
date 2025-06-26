.class public abstract Lun6;
.super Lrn6;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:J

.field public f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lrn6;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lun6;->f:Ljava/util/Set;

    const/16 p1, 0x7530

    .line 3
    invoke-static {p1}, Ln56;->M(I)Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lrn6;->mClient:Lokhttp3/OkHttpClient;

    .line 4
    iget-object p1, p0, Lrn6;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcn6;->b0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lun6;->a:Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lrn6;->mContext:Landroid/content/Context;

    const-string v0, "google_passwd"

    .line 6
    invoke-static {p1, v0}, Liw6;->F(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    iput-object p1, p0, Lun6;->b:Ljava/lang/String;

    return-void
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 1
    sget v0, Lcn6;->b:I

    const-string v0, "user_id"

    .line 2
    invoke-static {p0, v0}, Liw6;->F(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 4
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "type"

    invoke-static {p0, v3, v1, v2}, Llp6;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Llp6;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "-"

    return-object p0

    .line 5
    :cond_1
    iget-object v1, v1, Llp6;->f:Ljava/lang/String;

    const/4 v2, 0x5

    const-string v3, "/state"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {p0, v0, v1}, Liw6;->V(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lun6;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "GoogleLogin auth="

    .line 3
    invoke-static {v1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lun6;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Authorization"

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Lun6;->p(Lokhttp3/Request$Builder;)V

    .line 5
    :try_start_0
    iget-object v1, p0, Lrn6;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v2, 0x193

    if-eq v1, v2, :cond_5

    const/16 v2, 0x191

    if-eq v1, v2, :cond_4

    const/16 v2, 0x1f6

    if-eq v1, v2, :cond_3

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    .line 7
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    new-instance v0, Lun6$a;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lun6$a;-><init>(Lun6;Ljava/io/InputStream;)V

    return-object v0

    .line 9
    :cond_1
    new-instance p1, Lgw6;

    const-string v0, "null response body"

    invoke-direct {p1, v0}, Lgw6;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    new-instance v0, Lgw6;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid http status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lgw6;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_3
    new-instance p1, Lgw6;

    const-string v0, "The Service Is Currently Undergoing Maintenance"

    invoke-direct {p1, v0}, Lgw6;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_4
    new-instance v0, Lgw6$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication fails ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lgw6$b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_5
    new-instance p1, Lgw6$b;

    const-string v0, "Login failure"

    invoke-direct {p1, v0}, Lgw6$b;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :catch_0
    new-instance p1, Ljava/net/SocketTimeoutException;

    const-string v0, "Performance issue, check status.theoldreader.com"

    invoke-direct {p1, v0}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;)Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lun6;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0
.end method

.method public c(Ljava/lang/String;Lokhttp3/RequestBody;)Ljava/io/Reader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/InputStreamReader;

    .line 2
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 3
    iget-object v1, p0, Lun6;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "GoogleLogin auth="

    .line 4
    invoke-static {v1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lun6;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Authorization"

    invoke-virtual {p2, v2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 5
    :cond_0
    invoke-virtual {p0, p2}, Lun6;->p(Lokhttp3/Request$Builder;)V

    .line 6
    :try_start_0
    iget-object v1, p0, Lrn6;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {p2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p2

    invoke-virtual {v1, p2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p2

    invoke-interface {p2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p2
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v2, 0x193

    if-eq v1, v2, :cond_5

    const/16 v2, 0x191

    if-eq v1, v2, :cond_4

    const/16 v2, 0x1f6

    if-eq v1, v2, :cond_3

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    .line 8
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    new-instance p2, Ltn6;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Ltn6;-><init>(Lun6;Ljava/io/InputStream;)V

    const-string p1, "UTF-8"

    .line 10
    invoke-direct {v0, p2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0

    .line 11
    :cond_1
    new-instance p1, Lgw6;

    const-string p2, "null response body"

    invoke-direct {p1, p2}, Lgw6;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    new-instance p2, Lgw6;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid http status "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lgw6;-><init>(Ljava/lang/String;)V

    throw p2

    .line 13
    :cond_3
    new-instance p1, Lgw6;

    const-string p2, "The Service Is Currently Undergoing Maintenance"

    invoke-direct {p1, p2}, Lgw6;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_4
    new-instance p2, Lgw6$b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Authentication fails ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lgw6$b;-><init>(Ljava/lang/String;)V

    throw p2

    .line 15
    :cond_5
    new-instance p1, Lgw6$b;

    const-string p2, "Login failure"

    invoke-direct {p1, p2}, Lgw6$b;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :catch_0
    new-instance p1, Ljava/net/SocketTimeoutException;

    const-string p2, "Performance issue?!, Check your internet connection."

    invoke-direct {p1, p2}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()I
    .locals 1

    const/16 v0, 0x2710

    return v0
.end method

.method public disableTag(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lun6;->i()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lokhttp3/FormBody$Builder;

    invoke-direct {v1}, Lokhttp3/FormBody$Builder;-><init>()V

    const-string v2, "T"

    .line 3
    invoke-virtual {v1, v2, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v0

    const-string v1, "s"

    .line 4
    invoke-virtual {v0, v1, p1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object p1

    const-string v0, "t"

    .line 5
    invoke-virtual {p1, v0, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p1

    const-string p2, "/reader/api/0/disable-tag"

    .line 7
    invoke-virtual {p0, p2}, Lun6;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lun6;->c(Ljava/lang/String;Lokhttp3/RequestBody;)Ljava/io/Reader;

    move-result-object p1

    const/16 p2, 0x80

    :try_start_0
    new-array p2, p2, [C

    .line 8
    invoke-virtual {p1, p2}, Ljava/io/Reader;->read([C)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 9
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2, v2, v0}, Ljava/lang/String;-><init>([CII)V

    const-string p2, "OK"

    .line 10
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    return p2

    :cond_0
    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    return v2

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    .line 12
    throw p2
.end method

.method public e()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method public editItemTag([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lun6;->i()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lokhttp3/FormBody$Builder;

    invoke-direct {v1}, Lokhttp3/FormBody$Builder;-><init>()V

    const-string v2, "T"

    .line 3
    invoke-virtual {v1, v2, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    const-string v0, "a"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p4, v2, :cond_4

    const/4 v2, 0x2

    if-eq p4, v2, :cond_3

    const/4 v2, 0x3

    if-eq p4, v2, :cond_0

    goto/16 :goto_5

    :cond_0
    if-eqz p3, :cond_5

    .line 4
    array-length p4, p3

    if-lez p4, :cond_5

    const-string p4, "userId"

    const-string v2, "/reader/api/0/user-info"

    .line 5
    invoke-virtual {p0, v2}, Lun6;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lun6;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v4, 0x0

    .line 6
    :try_start_0
    invoke-static {v2}, Ln56;->C(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v6, p4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 10
    invoke-virtual {v6, p4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p4

    .line 11
    :try_start_1
    invoke-virtual {p4}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :cond_2
    :goto_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 13
    array-length p4, p3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p4, :cond_5

    aget-object v5, p3, v2

    .line 14
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "user/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/label/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 15
    :goto_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 16
    throw p1

    :cond_3
    if-eqz p3, :cond_5

    .line 17
    array-length p4, p3

    if-lez p4, :cond_5

    .line 18
    array-length p4, p3

    const/4 v0, 0x0

    :goto_3
    if-ge v0, p4, :cond_5

    aget-object v2, p3, v0

    const-string v4, "r"

    .line 19
    invoke-virtual {v1, v4, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    if-eqz p3, :cond_5

    .line 20
    array-length p4, p3

    if-lez p4, :cond_5

    .line 21
    array-length p4, p3

    const/4 v2, 0x0

    :goto_4
    if-ge v2, p4, :cond_5

    aget-object v4, p3, v2

    .line 22
    invoke-virtual {v1, v0, v4}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    if-eqz p1, :cond_8

    .line 23
    array-length p3, p1

    if-lez p3, :cond_8

    const/4 p3, 0x0

    .line 24
    :goto_6
    array-length p4, p1

    if-ge p3, p4, :cond_8

    .line 25
    aget-object p4, p1, p3

    if-nez p4, :cond_6

    const-string p4, ""

    goto :goto_7

    :cond_6
    const-string v0, "tag"

    .line 26
    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_7

    :cond_7
    const-string v0, "tag:google.com,2005:reader/item/"

    invoke-static {v0, p4}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :goto_7
    const-string v0, "i"

    .line 27
    invoke-virtual {v1, v0, p4}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 28
    aget-object p4, p2, p3

    const-string v0, "s"

    invoke-virtual {v1, v0, p4}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    add-int/lit8 p3, p3, 0x1

    goto :goto_6

    :cond_8
    const-string p1, "async"

    const-string p2, "true"

    .line 29
    invoke-virtual {v1, p1, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    const-string p1, "/reader/api/0/edit-tag"

    .line 30
    invoke-virtual {p0, p1}, Lun6;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lun6;->c(Ljava/lang/String;Lokhttp3/RequestBody;)Ljava/io/Reader;

    move-result-object p1

    const/16 p2, 0x80

    :try_start_2
    new-array p2, p2, [C

    .line 31
    invoke-virtual {p1, p2}, Ljava/io/Reader;->read([C)I

    move-result p3

    const/4 p4, -0x1

    if-eq p3, p4, :cond_9

    .line 32
    new-instance p4, Ljava/lang/String;

    invoke-direct {p4, p2, v3, p3}, Ljava/lang/String;-><init>([CII)V

    const-string p2, "OK"

    .line 33
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 34
    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    return p2

    :cond_9
    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    return v3

    :catchall_1
    move-exception p2

    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    .line 35
    throw p2
.end method

.method public editSubscription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lun6;->i()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lokhttp3/FormBody$Builder;

    invoke-direct {v1}, Lokhttp3/FormBody$Builder;-><init>()V

    const-string v2, "T"

    .line 3
    invoke-virtual {v1, v2, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    if-eqz p2, :cond_0

    const-string v0, "t"

    .line 4
    invoke-virtual {v1, v0, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    :cond_0
    const/4 p2, 0x1

    const-string v0, "edit"

    const/4 v2, 0x0

    const-string v3, "ac"

    if-eq p5, p2, :cond_5

    const/4 p2, 0x2

    const-string v4, "a"

    if-eq p5, p2, :cond_4

    const/4 p2, 0x3

    if-eq p5, p2, :cond_3

    const/4 p2, 0x4

    if-eq p5, p2, :cond_2

    const/4 p2, 0x5

    if-eq p5, p2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v1, v3, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 6
    array-length p2, p4

    if-lez p2, :cond_6

    aget-object p2, p4, v2

    const-string p3, "r"

    .line 7
    invoke-virtual {v1, p3, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v1, v3, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 9
    array-length p2, p4

    if-lez p2, :cond_6

    aget-object p2, p4, v2

    .line 10
    invoke-virtual {v1, v4, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_0

    :cond_3
    const-string p2, "unsubscribe"

    .line 11
    invoke-virtual {v1, v3, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_0

    :cond_4
    const-string p1, "subscribe"

    .line 12
    invoke-virtual {v1, v3, p1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "feed/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p4, :cond_6

    .line 14
    array-length p2, p4

    if-lez p2, :cond_6

    .line 15
    array-length p2, p4

    if-lez p2, :cond_6

    aget-object p2, p4, v2

    .line 16
    invoke-virtual {p0, p2}, Lun6;->getCategoryUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v4, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_0

    .line 17
    :cond_5
    invoke-virtual {v1, v3, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    :cond_6
    :goto_0
    if-eqz p1, :cond_7

    const-string p2, "s"

    .line 18
    invoke-virtual {v1, p2, p1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    :cond_7
    const-string p1, "/reader/api/0/subscription/edit"

    .line 19
    invoke-virtual {p0, p1}, Lun6;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lun6;->c(Ljava/lang/String;Lokhttp3/RequestBody;)Ljava/io/Reader;

    move-result-object p1

    const/16 p2, 0x80

    :try_start_0
    new-array p2, p2, [C

    .line 20
    invoke-virtual {p1, p2}, Ljava/io/Reader;->read([C)I

    move-result p3

    const/4 p4, -0x1

    if-eq p3, p4, :cond_8

    .line 21
    new-instance p4, Ljava/lang/String;

    invoke-direct {p4, p2, v2, p3}, Ljava/lang/String;-><init>([CII)V

    const-string p2, "OK"

    .line 22
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    return p2

    :cond_8
    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    return v2

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    .line 24
    throw p2
.end method

.method public abstract f(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getCategoryUid(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "user/"

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lrn6;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lun6;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/label/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTagUid(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "user/"

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lrn6;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lun6;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/label/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final h()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrn6;->mContext:Landroid/content/Context;

    .line 2
    sget v1, Lcn6;->b:I

    const-string v1, "google_auth"

    .line 3
    invoke-static {v0, v1}, Liw6;->F(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lun6;->c:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lrn6;->mContext:Landroid/content/Context;

    const-string v1, "google_auth_time"

    const-wide/16 v2, 0x0

    .line 6
    invoke-static {v0, v1, v2, v3}, Liw6;->A(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 7
    iget-object v2, p0, Lun6;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0xf731400

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .line 9
    iget-object v0, p0, Lun6;->c:Ljava/lang/String;

    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lun6;->a:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lun6;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 11
    new-instance v0, Lokhttp3/FormBody$Builder;

    invoke-direct {v0}, Lokhttp3/FormBody$Builder;-><init>()V

    const-string v1, "accountType"

    const-string v2, "GOOGLE"

    .line 12
    invoke-virtual {v0, v1, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v0

    iget-object v1, p0, Lun6;->a:Ljava/lang/String;

    const-string v2, "Email"

    .line 13
    invoke-virtual {v0, v2, v1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v0

    iget-object v1, p0, Lun6;->b:Ljava/lang/String;

    const-string v2, "Passwd"

    .line 14
    invoke-virtual {v0, v2, v1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v0

    const-string v1, "service"

    const-string v2, "reader"

    .line 15
    invoke-virtual {v0, v1, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v0

    .line 17
    new-instance v1, Ljava/io/BufferedReader;

    const-string v2, "/accounts/ClientLogin"

    invoke-virtual {p0, v2}, Lun6;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lun6;->c(Ljava/lang/String;Lokhttp3/RequestBody;)Ljava/io/Reader;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 18
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "Auth="

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x5

    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lun6;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 21
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 23
    iget-object v0, p0, Lun6;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 24
    iget-object v1, p0, Lrn6;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcn6;->f0(Landroid/content/Context;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lun6;->c:Ljava/lang/String;

    return-object v0

    .line 26
    :cond_3
    new-instance v0, Lgw6;

    const-string v1, "Login Failure"

    invoke-direct {v0, v1}, Lgw6;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 28
    throw v0

    .line 29
    :cond_4
    new-instance v0, Lgw6$b;

    const-string v1, "no login data"

    invoke-direct {v0, v1}, Lgw6$b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public handleItemIdList(Lrn6$a;J)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p1, p2}, Lun6;->r(Lrn6$a;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p2

    .line 2
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lun6;->l(Ljava/io/Reader;Lrn6$a;)Lvn6;

    move-result-object p3

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    iget-object v1, p3, Lvn6;->a:Ljava/util/List;

    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-interface {p1}, Lrn6$a;->c()I

    move-result v1

    .line 7
    invoke-virtual {p0}, Lun6;->d()I

    move-result v2

    .line 8
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 9
    iget-object p3, p3, Lvn6;->b:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_0
    if-eqz v1, :cond_0

    mul-int v5, v2, v4

    if-le v1, v5, :cond_1

    :cond_0
    if-eqz p3, :cond_1

    .line 10
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 11
    invoke-virtual {p2}, Ljava/io/Reader;->close()V

    .line 12
    invoke-virtual {p0, p1, p3}, Lun6;->r(Lrn6$a;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p2

    .line 13
    invoke-virtual {p0, p2, p1}, Lun6;->l(Ljava/io/Reader;Lrn6$a;)Lvn6;

    move-result-object p3

    .line 14
    iget-object v5, p3, Lvn6;->a:Ljava/util/List;

    .line 15
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 16
    iget-object p3, p3, Lvn6;->b:Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 17
    :cond_1
    invoke-interface {p1, v0}, Lrn6$a;->a(Ljava/util/List;)V
    :try_end_0
    .catch Lzo; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-virtual {p2}, Ljava/io/Reader;->close()V

    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    return v3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 20
    :try_start_1
    new-instance p3, Lgw6;

    const-string v0, "data parse error: parseItemIdList"

    invoke-direct {p3, v0, p1}, Lgw6;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :goto_2
    invoke-virtual {p2}, Ljava/io/Reader;->close()V

    .line 22
    throw p1
.end method

.method public handleItemList(Lrn6$b;J)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    .line 1
    invoke-interface/range {p1 .. p1}, Lrn6$b;->b()J

    move-result-wide v9

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move-wide v4, v9

    move-object/from16 v6, p1

    .line 2
    invoke-virtual/range {v1 .. v7}, Lun6;->q(JJLrn6$b;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v1

    .line 3
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lrn6$b;->g()Ljava/util/Set;

    move-result-object v11

    .line 4
    invoke-virtual {v8, v1, v0, v11}, Lun6;->m(Ljava/io/Reader;Lrn6$b;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-interface/range {p1 .. p1}, Lrn6$b;->c()I

    move-result v12

    .line 6
    invoke-virtual/range {p0 .. p0}, Lun6;->e()I

    move-result v3

    .line 7
    invoke-static {v12, v3}, Ljava/lang/Math;->min(II)I

    move-result v13
    :try_end_0
    .catch Lzo; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x1

    move-object v14, v1

    move-object v7, v2

    const/4 v15, 0x1

    :goto_0
    if-eqz v12, :cond_0

    mul-int v1, v13, v15

    if-le v12, v1, :cond_1

    .line 8
    :cond_0
    :try_start_1
    invoke-interface/range {p1 .. p1}, Lrn6$b;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 9
    invoke-virtual {v14}, Ljava/io/Reader;->close()V

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move-wide v4, v9

    move-object/from16 v6, p1

    .line 10
    invoke-virtual/range {v1 .. v7}, Lun6;->q(JJLrn6$b;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v14

    .line 11
    invoke-virtual {v8, v14, v0, v11}, Lun6;->m(Ljava/io/Reader;Lrn6$b;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Lzo; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v14}, Ljava/io/Reader;->close()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v14

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 13
    :goto_1
    :try_start_2
    new-instance v2, Lgw6;

    const-string v3, "data parse error: parseItemList"

    invoke-direct {v2, v3, v0}, Lgw6;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    move-object v14, v1

    .line 14
    :goto_3
    invoke-virtual {v14}, Ljava/io/Reader;->close()V

    .line 15
    throw v0
.end method

.method public handleReaderList(Lrn6$d;Lrn6$c;Lrn6$e;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lun6;->h()Ljava/lang/String;

    .line 2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/reader/api/0/tag/list"

    .line 3
    invoke-virtual {p0, v0}, Lun6;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&output=json&ck="

    .line 4
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    .line 6
    invoke-virtual {p0, v1}, Lun6;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p3

    .line 7
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, p3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 8
    :try_start_0
    invoke-virtual {p0, v1, p1}, Lun6;->o(Ljava/io/Reader;Lrn6$d;)V
    :try_end_0
    .catch Lzo; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    .line 10
    invoke-virtual {p0}, Lun6;->h()Ljava/lang/String;

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "/reader/api/0/subscription/list"

    .line 12
    invoke-virtual {p0, p3}, Lun6;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    .line 15
    invoke-virtual {p0, p3}, Lun6;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 16
    new-instance p3, Ljava/io/InputStreamReader;

    invoke-direct {p3, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 17
    :try_start_1
    invoke-virtual {p0, p3, p2}, Lun6;->n(Ljava/io/Reader;Lrn6$c;)V
    :try_end_1
    .catch Lzo; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    invoke-virtual {p3}, Ljava/io/Reader;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    :try_start_2
    new-instance p2, Lgw6;

    const-string p4, "data parse error: parseSubList"

    invoke-direct {p2, p4, p1}, Lgw6;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    :goto_0
    invoke-virtual {p3}, Ljava/io/Reader;->close()V

    .line 21
    throw p1

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 22
    :try_start_3
    new-instance p2, Lgw6;

    const-string p3, "data parse error: parseTagList"

    invoke-direct {p2, p3, p1}, Lgw6;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 23
    :goto_1
    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    .line 24
    throw p1
.end method

.method public final i()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lun6;->h()Ljava/lang/String;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lun6;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-wide v3, p0, Lun6;->e:J

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    return-object v2

    :cond_0
    const-string v2, "/reader/api/0/token"

    .line 4
    invoke-virtual {p0, v2}, Lun6;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lun6;->b(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v2

    const/16 v3, 0x40

    :try_start_0
    new-array v3, v3, [C

    .line 5
    invoke-virtual {v2, v3}, Ljava/io/Reader;->read([C)I

    move-result v4

    .line 6
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6, v4}, Ljava/lang/String;-><init>([CII)V

    iput-object v5, p0, Lun6;->d:Ljava/lang/String;

    const-wide/32 v3, 0xdbba0

    add-long/2addr v0, v3

    .line 7
    iput-wide v0, p0, Lun6;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 9
    iget-object v0, p0, Lun6;->d:Ljava/lang/String;

    return-object v0

    :catchall_0
    move-exception v0

    .line 10
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 11
    throw v0
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    .line 1
    iput-object p3, p0, Lun6;->c:Ljava/lang/String;

    .line 2
    iput-object p3, p0, Lun6;->d:Ljava/lang/String;

    .line 3
    :cond_0
    iput-object p1, p0, Lun6;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lun6;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lun6;->h()Ljava/lang/String;

    .line 6
    iget-object p1, p0, Lun6;->c:Ljava/lang/String;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public k(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public final l(Ljava/io/Reader;Lrn6$a;)Lvn6;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lzo;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lwo;

    invoke-direct {v0}, Lwo;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lwo;->a(Ljava/io/Reader;)Lap;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p1}, Lap;->g()Lbp;

    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {p1}, Lap;->g()Lbp;

    move-result-object v2

    sget-object v3, Lbp;->m:Lbp;

    if-eq v2, v3, :cond_5

    .line 6
    invoke-virtual {p1}, Lap;->b()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {p1}, Lap;->g()Lbp;

    const-string v3, "continuation"

    .line 8
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    invoke-virtual {p1}, Lap;->e()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v3, "itemRefs"

    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11
    :goto_1
    invoke-virtual {p1}, Lap;->g()Lbp;

    move-result-object v2

    sget-object v3, Lbp;->o:Lbp;

    if-eq v2, v3, :cond_3

    .line 12
    invoke-virtual {p1}, Lap;->b()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p1}, Lap;->g()Lbp;

    const-string v3, "id"

    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 15
    invoke-virtual {p1}, Lap;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lun6;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {p1}, Lap;->i()Lap;

    goto :goto_1

    .line 17
    :cond_3
    invoke-interface {p2, v0}, Lrn6$a;->a(Ljava/util/List;)V

    goto :goto_0

    .line 18
    :cond_4
    invoke-virtual {p1}, Lap;->i()Lap;

    goto :goto_0

    .line 19
    :cond_5
    new-instance p1, Lvn6;

    invoke-direct {p1, v0, v1}, Lvn6;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object p1
.end method

.method public final m(Ljava/io/Reader;Lrn6$b;Ljava/util/Set;)Ljava/lang/String;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Lrn6$b;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lzo;,
            Ljava/io/IOException;,
            Lgw6$a;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    .line 1
    new-instance v3, Lwo;

    invoke-direct {v3}, Lwo;-><init>()V

    move-object/from16 v4, p1

    .line 2
    invoke-virtual {v3, v4}, Lwo;->a(Ljava/io/Reader;)Lap;

    move-result-object v3

    .line 3
    new-instance v4, Lcp6;

    invoke-direct {v4}, Lcp6;-><init>()V

    .line 4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {v3}, Lap;->g()Lbp;

    const/4 v6, 0x0

    move-object v7, v6

    move-object v8, v7

    .line 6
    :goto_0
    invoke-virtual {v3}, Lap;->g()Lbp;

    move-result-object v9

    sget-object v10, Lbp;->m:Lbp;

    if-eq v9, v10, :cond_2c

    .line 7
    invoke-virtual {v3}, Lap;->b()Ljava/lang/String;

    move-result-object v9

    .line 8
    invoke-virtual {v3}, Lap;->g()Lbp;

    const-string v10, "continuation"

    .line 9
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 10
    invoke-virtual {v3}, Lap;->e()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    const-string v10, "items"

    .line 11
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 12
    :cond_1
    :goto_1
    invoke-virtual {v3}, Lap;->g()Lbp;

    move-result-object v9

    sget-object v10, Lbp;->o:Lbp;

    if-eq v9, v10, :cond_2a

    .line 13
    iget-boolean v9, v1, Lrn6;->mRequestStop:Z

    if-nez v9, :cond_29

    .line 14
    move-object v9, v3

    check-cast v9, Lhp;

    .line 15
    iget-object v10, v9, Lhp;->f:Lbp;

    .line 16
    sget-object v11, Lbp;->l:Lbp;

    if-ne v10, v11, :cond_2

    .line 17
    new-instance v8, Lap6;

    invoke-direct {v8}, Lap6;-><init>()V

    goto :goto_2

    .line 18
    :cond_2
    sget-object v11, Lbp;->m:Lbp;

    if-ne v10, v11, :cond_5

    if-eqz v8, :cond_3

    .line 19
    iget-object v10, v8, Lap6;->f:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 20
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    rem-int/lit16 v8, v8, 0xc8

    if-nez v8, :cond_4

    .line 22
    invoke-interface {v0, v5}, Lrn6$b;->a(Ljava/util/List;)V

    .line 23
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :cond_4
    move-object v8, v6

    .line 24
    :cond_5
    :goto_2
    invoke-virtual {v3}, Lap;->b()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    if-nez v8, :cond_6

    goto :goto_1

    .line 25
    :cond_6
    invoke-virtual {v3}, Lap;->g()Lbp;

    const-string v11, "id"

    .line 26
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, ""

    if-eqz v11, :cond_8

    .line 27
    invoke-virtual {v3}, Lap;->e()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_7

    goto :goto_3

    :cond_7
    const-string v10, "tag:google.com,2005:reader/item/"

    .line 28
    invoke-virtual {v9, v10, v12}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 29
    :goto_3
    iput-object v12, v8, Lap6;->f:Ljava/lang/String;

    goto :goto_1

    :cond_8
    const-string v11, "crawlTimeMsec"

    .line 30
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 31
    invoke-virtual {v3}, Lap;->e()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    iput-wide v9, v8, Lap6;->q:J

    goto :goto_1

    :cond_9
    const-string v11, "title"

    .line 32
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 33
    invoke-virtual {v3}, Lap;->e()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lun6;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lap6;->h:Ljava/lang/String;

    goto/16 :goto_1

    :cond_a
    const-string v11, "categories"

    .line 34
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v13, "type"

    if-eqz v11, :cond_13

    .line 35
    :cond_b
    :goto_4
    invoke-virtual {v3}, Lap;->g()Lbp;

    move-result-object v9

    sget-object v10, Lbp;->o:Lbp;

    if-eq v9, v10, :cond_1

    .line 36
    invoke-virtual {v3}, Lap;->e()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    if-eqz v9, :cond_12

    const-string v11, "/label/"

    .line 37
    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    const-string v12, "user/"

    if-eqz v11, :cond_f

    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 38
    iget-object v11, v1, Lun6;->f:Ljava/util/Set;

    if-nez v11, :cond_e

    .line 39
    iget-object v11, v1, Lrn6;->mContext:Landroid/content/Context;

    .line 40
    sget-object v12, Llp6;->n:Landroid/net/Uri;

    .line 41
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 42
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Llp6;->n:Landroid/net/Uri;

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v17, "type = 10"

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-nez v11, :cond_c

    goto :goto_6

    .line 43
    :cond_c
    :goto_5
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_d

    const-string v14, "_id"

    .line 44
    invoke-interface {v11, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v11, v14}, Landroid/database/Cursor;->getLong(I)J

    const-string v14, "uid"

    .line 45
    invoke-interface {v11, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v11, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 46
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v11, v15}, Landroid/database/Cursor;->getInt(I)I

    const-string v15, "label"

    .line 47
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v11, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    const-string v15, "unread_count"

    .line 48
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v11, v15}, Landroid/database/Cursor;->getInt(I)I

    const-string v15, "sync_time"

    .line 49
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v11, v15}, Landroid/database/Cursor;->getLong(I)J

    const-string v15, "sync_excluded"

    .line 50
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v11, v15}, Landroid/database/Cursor;->getInt(I)I

    const-string v15, "hidden"

    .line 51
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v11, v15}, Landroid/database/Cursor;->getInt(I)I

    .line 52
    invoke-virtual {v12, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    .line 53
    :cond_d
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 54
    :goto_6
    iput-object v12, v1, Lun6;->f:Ljava/util/Set;

    goto :goto_7

    :catchall_0
    move-exception v0

    .line 55
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 56
    throw v0

    .line 57
    :cond_e
    :goto_7
    iget-object v11, v1, Lun6;->f:Ljava/util/Set;

    .line 58
    invoke-interface {v11, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    goto :goto_9

    :cond_f
    const-string v11, "/state/com.google/starred"

    .line 59
    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 60
    iput-boolean v10, v8, Lap6;->r:Z

    goto :goto_8

    :cond_10
    const-string v11, "itemrecs"

    .line 61
    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_11

    :goto_8
    const/4 v11, 0x1

    goto :goto_9

    :cond_11
    const/4 v11, 0x0

    :goto_9
    if-eqz v11, :cond_12

    .line 62
    iget-object v11, v8, Lap6;->y:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    if-eqz v9, :cond_b

    const-string v11, "/state/com.google/read"

    .line 63
    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 64
    iput-boolean v10, v8, Lap6;->v:Z

    goto/16 :goto_4

    :cond_13
    const-string v11, "published"

    .line 65
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 66
    invoke-virtual {v3}, Lap;->c()J

    move-result-wide v9

    iput-wide v9, v8, Lap6;->p:J

    goto/16 :goto_1

    :cond_14
    const-string v11, "alternate"

    .line 67
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v14, "href"

    if-eqz v11, :cond_17

    .line 68
    :goto_a
    invoke-virtual {v3}, Lap;->g()Lbp;

    move-result-object v9

    sget-object v10, Lbp;->o:Lbp;

    if-eq v9, v10, :cond_1

    .line 69
    invoke-virtual {v3}, Lap;->b()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_15

    goto :goto_a

    .line 70
    :cond_15
    invoke-virtual {v3}, Lap;->g()Lbp;

    .line 71
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 72
    invoke-virtual {v3}, Lap;->e()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lap6;->k:Ljava/lang/String;

    goto :goto_a

    .line 73
    :cond_16
    invoke-virtual {v3}, Lap;->i()Lap;

    goto :goto_a

    :cond_17
    const-string v11, "enclosure"

    .line 74
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1e

    .line 75
    invoke-virtual {v4}, Lcp6;->a()V

    .line 76
    :cond_18
    :goto_b
    invoke-virtual {v3}, Lap;->g()Lbp;

    move-result-object v10

    sget-object v11, Lbp;->o:Lbp;

    if-eq v10, v11, :cond_1

    .line 77
    iget-object v10, v9, Lhp;->f:Lbp;

    .line 78
    sget-object v11, Lbp;->l:Lbp;

    if-ne v10, v11, :cond_19

    .line 79
    invoke-virtual {v4}, Lcp6;->a()V

    goto :goto_c

    .line 80
    :cond_19
    sget-object v11, Lbp;->m:Lbp;

    if-ne v10, v11, :cond_1a

    .line 81
    invoke-virtual {v8, v4}, Lap6;->i(Lcp6;)V

    .line 82
    :cond_1a
    :goto_c
    invoke-virtual {v3}, Lap;->b()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_1b

    goto :goto_b

    .line 83
    :cond_1b
    invoke-virtual {v3}, Lap;->g()Lbp;

    .line 84
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c

    .line 85
    invoke-virtual {v3}, Lap;->e()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcp6;->a:Ljava/lang/String;

    goto :goto_b

    .line 86
    :cond_1c
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 87
    invoke-virtual {v3}, Lap;->e()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcp6;->b:Ljava/lang/String;

    const-string v11, "image"

    .line 88
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_18

    const-string v10, "image/thumbnail"

    .line 89
    iput-object v10, v4, Lcp6;->b:Ljava/lang/String;

    goto :goto_b

    .line 90
    :cond_1d
    invoke-virtual {v3}, Lap;->i()Lap;

    goto :goto_b

    :cond_1e
    const-string v9, "summary"

    .line 91
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v11, "content"

    if-nez v9, :cond_26

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f

    goto :goto_e

    :cond_1f
    const-string v9, "author"

    .line 92
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    .line 93
    invoke-virtual {v3}, Lap;->e()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lap6;->j:Ljava/lang/String;

    goto/16 :goto_1

    :cond_20
    const-string v9, "origin"

    .line 94
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_25

    .line 95
    :goto_d
    invoke-virtual {v3}, Lap;->g()Lbp;

    move-result-object v9

    sget-object v10, Lbp;->m:Lbp;

    if-eq v9, v10, :cond_1

    .line 96
    invoke-virtual {v3}, Lap;->b()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_21

    goto :goto_d

    .line 97
    :cond_21
    invoke-virtual {v3}, Lap;->g()Lbp;

    const-string v10, "streamId"

    .line 98
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    .line 99
    invoke-virtual {v3}, Lap;->e()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_23

    if-eqz v2, :cond_22

    .line 100
    invoke-interface {v2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_23

    .line 101
    :cond_22
    iput-object v9, v8, Lap6;->z:Ljava/lang/String;

    goto :goto_d

    .line 102
    :cond_23
    iput-object v12, v8, Lap6;->f:Ljava/lang/String;

    goto :goto_d

    .line 103
    :cond_24
    invoke-virtual {v3}, Lap;->i()Lap;

    goto :goto_d

    .line 104
    :cond_25
    invoke-virtual {v3}, Lap;->i()Lap;

    goto/16 :goto_1

    .line 105
    :cond_26
    :goto_e
    invoke-virtual {v3}, Lap;->g()Lbp;

    move-result-object v9

    sget-object v10, Lbp;->m:Lbp;

    if-eq v9, v10, :cond_1

    .line 106
    invoke-virtual {v3}, Lap;->b()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_27

    goto :goto_e

    .line 107
    :cond_27
    invoke-virtual {v3}, Lap;->g()Lbp;

    .line 108
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_28

    .line 109
    invoke-virtual {v3}, Lap;->e()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lun6;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lap6;->i:Ljava/lang/String;

    goto :goto_e

    .line 110
    :cond_28
    invoke-virtual {v3}, Lap;->i()Lap;

    goto :goto_e

    .line 111
    :cond_29
    new-instance v0, Lgw6$a;

    invoke-direct {v0}, Lgw6$a;-><init>()V

    throw v0

    .line 112
    :cond_2a
    invoke-interface {v0, v5}, Lrn6$b;->a(Ljava/util/List;)V

    .line 113
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 114
    :cond_2b
    invoke-virtual {v3}, Lap;->i()Lap;

    goto/16 :goto_0

    :cond_2c
    return-object v7
.end method

.method public markAllAsRead(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "user/-/state/com.google/reading-list"

    const-string p2, "all"

    .line 1
    :cond_0
    invoke-virtual {p0}, Lun6;->i()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lokhttp3/FormBody$Builder;

    invoke-direct {v1}, Lokhttp3/FormBody$Builder;-><init>()V

    const-string v2, "T"

    .line 3
    invoke-virtual {v1, v2, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v0

    const-string v1, "s"

    .line 4
    invoke-virtual {v0, v1, p1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object p1

    const-string v0, "t"

    .line 5
    invoke-virtual {p1, v0, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "999"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ts"

    .line 6
    invoke-virtual {p1, p3, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p1

    const-string p2, "/reader/api/0/mark-all-as-read"

    .line 8
    invoke-virtual {p0, p2}, Lun6;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lun6;->c(Ljava/lang/String;Lokhttp3/RequestBody;)Ljava/io/Reader;

    move-result-object p1

    const/16 p2, 0x80

    :try_start_0
    new-array p2, p2, [C

    .line 9
    invoke-virtual {p1, p2}, Ljava/io/Reader;->read([C)I

    move-result p3

    const/4 p4, -0x1

    const/4 v0, 0x0

    if-eq p3, p4, :cond_1

    .line 10
    new-instance p4, Ljava/lang/String;

    invoke-direct {p4, p2, v0, p3}, Ljava/lang/String;-><init>([CII)V

    const-string p2, "OK"

    .line 11
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    return p2

    :cond_1
    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    return v0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    .line 13
    throw p2
.end method

.method public markAsRead(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-array p1, v0, [Ljava/lang/String;

    aput-object p2, p1, v2

    const-string p2, "user/-/state/com.google/read"

    .line 1
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v1, p1, p2, v0}, Lun6;->editItemTag([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public markAsRead([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    const-string v0, "user/-/state/com.google/read"

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lun6;->editItemTag([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public markAsUnread(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    const/4 p3, 0x1

    new-array v0, p3, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-array p1, p3, [Ljava/lang/String;

    aput-object p2, p1, v1

    const-string p2, "user/-/state/com.google/read"

    .line 1
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    invoke-virtual {p0, v0, p1, p2, p3}, Lun6;->editItemTag([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public markAsUnread([Ljava/lang/String;[Ljava/lang/String;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    const-string p3, "user/-/state/com.google/read"

    .line 2
    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, p3, v0}, Lun6;->editItemTag([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public final n(Ljava/io/Reader;Lrn6$c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lzo;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lwo;

    invoke-direct {v0}, Lwo;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lwo;->a(Ljava/io/Reader;)Lap;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p1}, Lap;->g()Lbp;

    const/4 v1, 0x0

    move-object v2, v1

    .line 5
    :goto_0
    invoke-virtual {p1}, Lap;->g()Lbp;

    move-result-object v3

    sget-object v4, Lbp;->m:Lbp;

    if-eq v3, v4, :cond_f

    .line 6
    invoke-virtual {p1}, Lap;->b()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {p1}, Lap;->g()Lbp;

    const-string v4, "subscriptions"

    .line 8
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 9
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lap;->g()Lbp;

    move-result-object v3

    sget-object v4, Lbp;->o:Lbp;

    if-eq v3, v4, :cond_d

    .line 10
    move-object v3, p1

    check-cast v3, Lhp;

    .line 11
    iget-object v3, v3, Lhp;->f:Lbp;

    .line 12
    sget-object v4, Lbp;->l:Lbp;

    if-ne v3, v4, :cond_1

    .line 13
    new-instance v2, Lip6;

    invoke-direct {v2}, Lip6;-><init>()V

    goto :goto_2

    .line 14
    :cond_1
    sget-object v4, Lbp;->m:Lbp;

    if-ne v3, v4, :cond_2

    .line 15
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    .line 16
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lap;->b()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 17
    :cond_3
    invoke-virtual {p1}, Lap;->g()Lbp;

    const-string v4, "id"

    .line 18
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 19
    invoke-virtual {p1}, Lap;->e()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lip6;->f:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v5, "title"

    .line 20
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 21
    invoke-virtual {p1}, Lap;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lun6;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lip6;->h:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string v5, "sortid"

    .line 22
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 23
    invoke-virtual {p1}, Lap;->e()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lip6;->g:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-string v5, "url"

    .line 24
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 25
    invoke-virtual {p1}, Lap;->e()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lip6;->i:Ljava/lang/String;

    goto :goto_1

    :cond_7
    const-string v5, "htmlUrl"

    .line 26
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 27
    invoke-virtual {p1}, Lap;->e()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lip6;->j:Ljava/lang/String;

    goto :goto_1

    :cond_8
    const-string v5, "iconUrl"

    .line 28
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 29
    invoke-virtual {p1}, Lap;->e()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lip6;->k:Ljava/lang/String;

    goto/16 :goto_1

    :cond_9
    const-string v5, "categories"

    .line 30
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 31
    :goto_3
    invoke-virtual {p1}, Lap;->g()Lbp;

    move-result-object v3

    sget-object v5, Lbp;->o:Lbp;

    if-eq v3, v5, :cond_0

    .line 32
    invoke-virtual {p1}, Lap;->b()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a

    goto :goto_3

    .line 33
    :cond_a
    invoke-virtual {p1}, Lap;->g()Lbp;

    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 35
    iget-object v3, v2, Lip6;->l:Ljava/util/List;

    invoke-virtual {p1}, Lap;->e()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 36
    :cond_b
    invoke-virtual {p1}, Lap;->i()Lap;

    goto :goto_3

    .line 37
    :cond_c
    invoke-virtual {p1}, Lap;->i()Lap;

    goto/16 :goto_1

    .line 38
    :cond_d
    :try_start_0
    move-object v3, p2

    check-cast v3, Lep6$b;

    invoke-virtual {v3, v0}, Lep6$b;->a(Ljava/util/List;)V
    :try_end_0
    .catch Lgw6; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    .line 39
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 40
    :cond_e
    invoke-virtual {p1}, Lap;->i()Lap;

    goto/16 :goto_0

    :cond_f
    return-void
.end method

.method public final o(Ljava/io/Reader;Lrn6$d;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lzo;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lwo;

    invoke-direct {v0}, Lwo;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lwo;->a(Ljava/io/Reader;)Lap;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p1}, Lap;->g()Lbp;

    const/4 v1, 0x0

    move-object v2, v1

    .line 5
    :goto_0
    invoke-virtual {p1}, Lap;->g()Lbp;

    move-result-object v3

    sget-object v4, Lbp;->m:Lbp;

    if-eq v3, v4, :cond_9

    .line 6
    invoke-virtual {p1}, Lap;->b()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {p1}, Lap;->g()Lbp;

    const-string v4, "tags"

    .line 8
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 9
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lap;->g()Lbp;

    move-result-object v3

    sget-object v4, Lbp;->o:Lbp;

    if-eq v3, v4, :cond_7

    .line 10
    move-object v3, p1

    check-cast v3, Lhp;

    .line 11
    iget-object v3, v3, Lhp;->f:Lbp;

    .line 12
    sget-object v4, Lbp;->l:Lbp;

    if-ne v3, v4, :cond_1

    .line 13
    new-instance v2, Llp6;

    invoke-direct {v2}, Llp6;-><init>()V

    goto :goto_2

    .line 14
    :cond_1
    sget-object v4, Lbp;->m:Lbp;

    if-ne v3, v4, :cond_2

    .line 15
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    .line 16
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lap;->b()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 17
    :cond_3
    invoke-virtual {p1}, Lap;->g()Lbp;

    const-string v4, "id"

    .line 18
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 19
    invoke-virtual {p1}, Lap;->e()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Llp6;->f:Ljava/lang/String;

    const-string v4, "/label/"

    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 21
    iget-object v4, v2, Llp6;->f:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x7

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Llp6;->i:Ljava/lang/String;

    const/16 v3, 0xa

    .line 22
    iput v3, v2, Llp6;->g:I

    goto :goto_1

    .line 23
    :cond_4
    iget-object v3, v2, Llp6;->f:Ljava/lang/String;

    const-string v4, "state/com.google/starred"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 24
    iput-object v4, v2, Llp6;->i:Ljava/lang/String;

    const/4 v3, 0x1

    .line 25
    iput v3, v2, Llp6;->g:I

    goto :goto_1

    :cond_5
    const-string v4, "sortid"

    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 27
    invoke-virtual {p1}, Lap;->e()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Llp6;->h:Ljava/lang/String;

    goto :goto_1

    .line 28
    :cond_6
    invoke-virtual {p1}, Lap;->i()Lap;

    goto :goto_1

    .line 29
    :cond_7
    :try_start_0
    move-object v3, p2

    check-cast v3, Lep6$a;

    invoke-virtual {v3, v0}, Lep6$a;->a(Ljava/util/List;)V
    :try_end_0
    .catch Lgw6; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    nop

    goto/16 :goto_0

    .line 30
    :cond_8
    invoke-virtual {p1}, Lap;->i()Lap;

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public abstract p(Lokhttp3/Request$Builder;)V
.end method

.method public final q(JJLrn6$b;Ljava/lang/String;)Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lun6;->h()Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/reader/api/0/stream/contents"

    .line 3
    invoke-virtual {p0, v1}, Lun6;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&output=json&ck="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5
    invoke-interface {p5}, Lrn6$b;->stream()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "user/-/state/com.google/reading-list"

    goto :goto_0

    :cond_0
    const-string p2, "state/starred"

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "user/-/state/com.google/starred"

    :cond_1
    :goto_0
    const-string p2, "&s="

    .line 7
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ln56;->u0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-interface {p5}, Lrn6$b;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "&xt="

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "user/-/state/com.google/read"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz p6, :cond_3

    .line 10
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3

    const-string p1, "&c="

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-wide/16 p1, 0x0

    cmp-long p6, p3, p1

    if-lez p6, :cond_4

    const-string p1, "&ot="

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_4
    const-string p1, "&r="

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p5}, Lrn6$b;->e()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "n"

    goto :goto_1

    :cond_5
    const-string p1, "o"

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-interface {p5}, Lrn6$b;->c()I

    move-result p1

    .line 15
    invoke-virtual {p0}, Lun6;->e()I

    move-result p2

    if-gt p1, p2, :cond_6

    if-nez p1, :cond_7

    :cond_6
    move p1, p2

    :cond_7
    if-lez p1, :cond_8

    const-string p3, "&n="

    .line 16
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lun6;->b(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p1

    return-object p1
.end method

.method public final r(Lrn6$a;Ljava/lang/String;)Ljava/io/Reader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lun6;->h()Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/reader/api/0/stream/items/ids"

    .line 3
    invoke-virtual {p0, v1}, Lun6;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&output=json"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-interface {p1}, Lrn6$a;->f()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "&s="

    if-eqz v1, :cond_3

    .line 6
    array-length v3, v1

    if-nez v3, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    const-string v6, "state/starred"

    .line 8
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v5, "user/-/state/com.google/starred"

    .line 9
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ln56;->u0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_2
    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    const-string v1, "&merge=true&includeAllDirectStreamIds=true"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 12
    :cond_3
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "user/-/state/com.google/reading-list"

    .line 13
    invoke-static {v1}, Ln56;->u0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_4
    :goto_2
    invoke-interface {p1}, Lrn6$a;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "&xt="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "user/-/state/com.google/read"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    if-eqz p2, :cond_6

    .line 16
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    const-string v1, "&c="

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    :cond_6
    invoke-interface {p1}, Lrn6$a;->b()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-lez p2, :cond_7

    const-string p2, "&ot="

    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_7
    const-string p2, "&r="

    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lrn6$a;->e()Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "n"

    goto :goto_3

    :cond_8
    const-string p2, "o"

    :goto_3
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-interface {p1}, Lrn6$a;->c()I

    move-result p1

    if-lez p1, :cond_9

    const-string p2, "&n="

    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lun6;->b(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p1

    return-object p1
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
    invoke-virtual {p0}, Lun6;->i()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lokhttp3/FormBody$Builder;

    invoke-direct {v1}, Lokhttp3/FormBody$Builder;-><init>()V

    const-string v2, "T"

    .line 3
    invoke-virtual {v1, v2, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v0

    const-string v1, "s"

    .line 4
    invoke-virtual {v0, v1, p1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v0

    const-string v1, "t"

    .line 5
    invoke-virtual {v0, v1, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/label/"

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    const/4 v2, 0x0

    .line 7
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "dest"

    invoke-virtual {p2, p3, p1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p1

    const-string p2, "/reader/api/0/rename-tag"

    .line 10
    invoke-virtual {p0, p2}, Lun6;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lun6;->c(Ljava/lang/String;Lokhttp3/RequestBody;)Ljava/io/Reader;

    move-result-object p1

    const/16 p2, 0x80

    :try_start_0
    new-array p2, p2, [C

    .line 11
    invoke-virtual {p1, p2}, Ljava/io/Reader;->read([C)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 12
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2, v2, p3}, Ljava/lang/String;-><init>([CII)V

    const-string p2, "OK"

    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    return p2

    :cond_0
    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    return v2

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    .line 15
    throw p2
.end method

.method public final s(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const-string v0, "&amp;"

    const-string v1, "&"

    .line 1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "&#39;"

    const-string v1, "\'"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "&quot;"

    const-string v1, "\""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
