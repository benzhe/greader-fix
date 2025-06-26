.class public abstract Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareWithOther(Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract getHumanReadableIdentifier()Ljava/lang/String;
.end method

.method public getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;->id:J

    return-wide v0
.end method

.method public setId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;->id:J

    return-void
.end method

.method public updateFromOther(Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;)V
    .locals 0

    return-void
.end method
