.class public Lcom/noinnion/android/greader/client/rss/syndication/handler/UnsupportedFeedtypeException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x7e5e94ac703ecaadL


# instance fields
.field private type:Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/UnsupportedFeedtypeException;->type:Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/UnsupportedFeedtypeException;->type:Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;

    sget-object v1, Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;->INVALID:Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;

    if-ne v0, v1, :cond_0

    const-string v0, "Invalid type"

    return-object v0

    :cond_0
    const-string v0, "Type "

    .line 2
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/UnsupportedFeedtypeException;->type:Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/UnsupportedFeedtypeException;->type:Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;

    return-object v0
.end method
