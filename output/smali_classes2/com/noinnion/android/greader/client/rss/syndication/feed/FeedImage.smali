.class public Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;
.super Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;
.source "SourceFile"


# static fields
.field public static final FEEDFILETYPE_FEEDIMAGE:I = 0x1


# instance fields
.field public owner:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;-><init>()V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 4
    invoke-direct {p0, p4, p5, p6}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5
    iput-wide p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;->id:J

    .line 6
    iput-object p3, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;->title:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, p1, v1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;->download_url:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHumanReadableIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;->owner:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;->getHumanReadableIdentifier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;->owner:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;

    invoke-virtual {v0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;->getHumanReadableIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;->download_url:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;->owner:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeAsInt()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setOwner(Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;->owner:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;->title:Ljava/lang/String;

    return-void
.end method
