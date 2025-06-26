.class public abstract Lcom/noinnion/android/greader/client/rss/syndication/feed/Chapter;
.super Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;
.source "SourceFile"


# instance fields
.field public link:Ljava/lang/String;

.field public start:J

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Chapter;->start:J

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;-><init>()V

    .line 5
    iput-wide p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Chapter;->start:J

    .line 6
    iput-object p3, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Chapter;->title:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Chapter;->link:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getChapterType()I
.end method

.method public getHumanReadableIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Chapter;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Chapter;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Chapter;->start:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Chapter;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Chapter;->link:Ljava/lang/String;

    return-void
.end method

.method public setStart(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Chapter;->start:J

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Chapter;->title:Ljava/lang/String;

    return-void
.end method
