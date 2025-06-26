.class public Lc27;
.super Lj27;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc27$b;,
        Lc27$a;
    }
.end annotation


# instance fields
.field public final a:Lu17;

.field public final b:Ll27;


# direct methods
.method public constructor <init>(Lu17;Ll27;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj27;-><init>()V

    .line 2
    iput-object p1, p0, Lc27;->a:Lu17;

    .line 3
    iput-object p2, p0, Lc27;->b:Ll27;

    return-void
.end method


# virtual methods
.method public c(Lh27;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Lh27;->c:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "http"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public f(Lh27;I)Lj27$a;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le27$d;->h:Le27$d;

    sget-object v1, Le27$d;->g:Le27$d;

    const/4 v2, 0x0

    if-eqz p2, :cond_6

    and-int/lit8 v3, p2, 0x4

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 2
    sget-object p2, Lokhttp3/CacheControl;->FORCE_CACHE:Lokhttp3/CacheControl;

    goto :goto_3

    .line 3
    :cond_1
    new-instance v3, Lokhttp3/CacheControl$Builder;

    invoke-direct {v3}, Lokhttp3/CacheControl$Builder;-><init>()V

    and-int/lit8 v5, p2, 0x1

    if-nez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_3

    .line 4
    invoke-virtual {v3}, Lokhttp3/CacheControl$Builder;->noCache()Lokhttp3/CacheControl$Builder;

    :cond_3
    and-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_5

    .line 5
    invoke-virtual {v3}, Lokhttp3/CacheControl$Builder;->noStore()Lokhttp3/CacheControl$Builder;

    .line 6
    :cond_5
    invoke-virtual {v3}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object p2

    goto :goto_3

    :cond_6
    const/4 p2, 0x0

    .line 7
    :goto_3
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    iget-object p1, p1, Lh27;->c:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    if-eqz p2, :cond_7

    .line 8
    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    .line 9
    :cond_7
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 10
    iget-object p2, p0, Lc27;->a:Lu17;

    check-cast p2, Ld27;

    .line 11
    iget-object p2, p2, Ld27;->a:Lokhttp3/Call$Factory;

    invoke-interface {p2, p1}, Lokhttp3/Call$Factory;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    .line 13
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 14
    invoke-virtual {p1}, Lokhttp3/Response;->cacheResponse()Lokhttp3/Response;

    move-result-object p1

    if-nez p1, :cond_8

    move-object p1, v0

    goto :goto_4

    :cond_8
    move-object p1, v1

    :goto_4
    const-wide/16 v2, 0x0

    if-ne p1, v1, :cond_a

    .line 15
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_9

    goto :goto_5

    .line 16
    :cond_9
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->close()V

    .line 17
    new-instance p1, Lc27$a;

    const-string p2, "Received response with 0 content-length header."

    invoke-direct {p1, p2}, Lc27$a;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_5
    if-ne p1, v0, :cond_b

    .line 18
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_b

    .line 19
    iget-object v0, p0, Lc27;->b:Ll27;

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v1

    .line 20
    iget-object v0, v0, Ll27;->c:Landroid/os/Handler;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 21
    :cond_b
    new-instance v0, Lj27$a;

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->source()Lat7;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lj27$a;-><init>(Lvt7;Le27$d;)V

    return-object v0

    .line 22
    :cond_c
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->close()V

    .line 23
    new-instance p2, Lc27$b;

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result p1

    invoke-direct {p2, p1, v2}, Lc27$b;-><init>(II)V

    throw p2
.end method

.method public g(ZLandroid/net/NetworkInfo;)Z
    .locals 0

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
