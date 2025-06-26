.class public Lcom/noinnion/android/reader/webservice/feedly/model/FeedSearchResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public hint:Ljava/lang/String;

.field public results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/noinnion/android/reader/webservice/feedly/model/Feed;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/noinnion/android/reader/webservice/feedly/model/FeedSearchResult;->results:Ljava/util/List;

    return-void
.end method
