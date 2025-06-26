.class public final Lsr6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/login/FeedlyLoginActivity;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/login/FeedlyLoginActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsr6;->e:Lcom/noinnion/android/greader/ui/login/FeedlyLoginActivity;

    iput-object p2, p0, Lsr6;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lsr6;->e:Lcom/noinnion/android/greader/ui/login/FeedlyLoginActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    new-instance v1, Lokhttp3/FormBody$Builder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;ILgm7;)V

    .line 3
    iget-object v2, p0, Lsr6;->f:Ljava/lang/String;

    const-string v3, "code"

    invoke-virtual {v1, v3, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    const-string v2, "client_id"

    const-string v3, "greader"

    .line 4
    invoke-virtual {v1, v2, v3}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    const-string v2, "client_secret"

    const-string v3, "1DFHBT3YNACQADNK9IZ0IOXG"

    .line 5
    invoke-virtual {v1, v2, v3}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    const-string v2, "redirect_uri"

    const-string v3, "greader://feedly"

    .line 6
    invoke-virtual {v1, v2, v3}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    const-string v2, "grant_type"

    const-string v3, "authorization_code"

    .line 7
    invoke-virtual {v1, v2, v3}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v1

    .line 9
    invoke-static {}, Ln56;->L()Lokhttp3/OkHttpClient;

    move-result-object v2

    .line 10
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    const-string v4, "https://feedly.com/v3/auth/token"

    const-string v5, "url"

    .line 11
    invoke-static {v4, v5}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 12
    invoke-virtual {v3, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 14
    invoke-virtual {v2, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    invoke-interface {v1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v2

    const-string v3, "Login failure"

    const/16 v4, 0x193

    if-eq v2, v4, :cond_3

    const/16 v4, 0x191

    if-eq v2, v4, :cond_2

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_1

    .line 16
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 17
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "access_token"

    .line 18
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "refresh_token"

    .line 19
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    .line 20
    invoke-static {v0, v1, v2, v3}, Lcn6;->i0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 21
    sget-object v0, Lyj7;->a:Lyj7;

    return-object v0

    .line 22
    :cond_0
    new-instance v0, Lgw6$b;

    invoke-direct {v0, v3}, Lgw6$b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_1
    new-instance v0, Lgw6;

    const-string v1, "Invalid http status "

    invoke-static {v1, v2}, Ljo;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lgw6;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_2
    new-instance v0, Lgw6$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication fails ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lgw6$b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_3
    new-instance v0, Lgw6$b;

    invoke-direct {v0, v3}, Lgw6$b;-><init>(Ljava/lang/String;)V

    throw v0
.end method
