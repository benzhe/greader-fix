.class public final Lwn6;
.super Lun6;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lun6;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method public e()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "endpoint"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lrn6;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lwn6;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?client=greader"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getClientName()Ljava/lang/String;
    .locals 1

    const-string v0, "inoreader"

    return-object v0
.end method

.method public getClientService()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public k(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "id"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lco7;->E(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lokhttp3/internal/Util;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    const/16 v2, 0x30

    const-string v3, "$this$padStart"

    .line 3
    invoke-static {v0, v3}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {v0, v3}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v1, v3, :cond_0

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    .line 7
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v1, v4

    const/4 v4, 0x1

    if-gt v4, v1, :cond_1

    .line 9
    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eq v4, v1, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-object v0, v3

    .line 11
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object p1, v0

    :cond_2
    return-object p1
.end method

.method public p(Lokhttp3/Request$Builder;)V
    .locals 2

    const-string v0, "builder"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AppId"

    const-string v1, "999999346"

    .line 1
    invoke-virtual {p1, v0, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v0, "AppKey"

    const-string v1, "mMJ988jRkf3FttaeEgNalb4n9W4In95x"

    .line 2
    invoke-virtual {p1, v0, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    return-void
.end method

.method public t(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcn6;->b:I

    const-string v0, "inoreader_base_url"

    const-string v1, "https://inoreader.com"

    .line 2
    invoke-static {p1, v0, v1}, Liw6;->G(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Prefs.getInoreaderBaseUrl(context)"

    .line 3
    invoke-static {p1, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
