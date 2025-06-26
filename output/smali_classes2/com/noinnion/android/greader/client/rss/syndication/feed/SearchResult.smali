.class public Lcom/noinnion/android/greader/client/rss/syndication/feed/SearchResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private component:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;

.field private subtitle:Ljava/lang/String;

.field private value:I


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/SearchResult;->component:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;

    .line 3
    iput p2, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/SearchResult;->value:I

    .line 4
    iput-object p3, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/SearchResult;->subtitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getComponent()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/SearchResult;->component:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/SearchResult;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/SearchResult;->value:I

    return v0
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/SearchResult;->subtitle:Ljava/lang/String;

    return-void
.end method
