.class public interface abstract Lcom/noinnion/android/reader/webservice/feedly/FeedlyEndpoint;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract findFeeds(Ljava/lang/String;I)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "query"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "count"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lretrofit2/Call<",
            "Lcom/noinnion/android/reader/webservice/feedly/model/FeedSearchResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "search/feeds?organic=true"
    .end annotation
.end method
