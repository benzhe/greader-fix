.class public final Lxn6;
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

    invoke-virtual {p0, v2}, Lxn6;->t(Landroid/content/Context;)Ljava/lang/String;

    const-string v2, "https://theoldreader.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "?client=greader"

    .line 3
    invoke-static {v0, p1, v1}, Ljo;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getClientName()Ljava/lang/String;
    .locals 1

    const-string v0, "the old reader"

    return-object v0
.end method

.method public getClientService()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public p(Lokhttp3/Request$Builder;)V
    .locals 1

    const-string v0, "builder"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public t(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "https://theoldreader.com"

    return-object p1
.end method
