.class public Lcom/noinnion/android/reader/webservice/feedly/FeedlyService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BASE_URL:Ljava/lang/String; = "http://feedly.com/v3/"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getService()Lcom/noinnion/android/reader/webservice/feedly/FeedlyEndpoint;
    .locals 2

    .line 1
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v1, "http://feedly.com/v3/"

    .line 2
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 3
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    .line 5
    const-class v1, Lcom/noinnion/android/reader/webservice/feedly/FeedlyEndpoint;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/noinnion/android/reader/webservice/feedly/FeedlyEndpoint;

    return-object v0
.end method
