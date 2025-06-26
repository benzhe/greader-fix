.class public Lcom/noinnion/android/reader/webservice/feedly/model/Feed;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public contentType:Ljava/lang/String;

.field public coverUrl:Ljava/lang/String;

.field public coverage:D

.field public coverageScore:D

.field public curated:Z

.field public deliciousTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public description:Ljava/lang/String;

.field public estimatedEngagement:I

.field public featured:Z

.field public feedId:Ljava/lang/String;

.field public hint:Ljava/lang/String;

.field public iconUrl:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public lastUpdated:J

.field public scheme:Ljava/lang/String;

.field public score:D

.field public subscribers:I

.field public title:Ljava/lang/String;

.field public velocity:D

.field public visualUrl:Ljava/lang/String;

.field public website:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/noinnion/android/reader/webservice/feedly/model/Feed;->deliciousTags:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getFeedUrl()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/reader/webservice/feedly/model/Feed;->feedId:Ljava/lang/String;

    const-string v1, "feed/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
