.class public Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;
.super Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;
    }
.end annotation


# instance fields
.field private chapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/noinnion/android/greader/client/rss/syndication/feed/Chapter;",
            ">;"
        }
    .end annotation
.end field

.field private contentEncoded:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private feed:Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;

.field private feedId:J

.field private image:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;

.field private itemIdentifier:Ljava/lang/String;

.field private link:Ljava/lang/String;

.field private media:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;

.field private paymentLink:Ljava/lang/String;

.field private pubDate:Ljava/util/Date;

.field private read:Z

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->read:Z

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ZLcom/noinnion/android/greader/client/rss/syndication/feed/Feed;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;->id:J

    .line 5
    iput-object p3, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->title:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->itemIdentifier:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->link:Ljava/lang/String;

    if-eqz p6, :cond_0

    .line 8
    invoke-virtual {p6}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->pubDate:Ljava/util/Date;

    .line 9
    iput-boolean p7, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->read:Z

    .line 10
    iput-object p8, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->feed:Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;

    return-void
.end method

.method private isInProgress()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->media:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPlaying()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->media:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getChapters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/noinnion/android/greader/client/rss/syndication/feed/Chapter;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->chapters:Ljava/util/List;

    return-object v0
.end method

.method public getContentEncoded()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->contentEncoded:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFeed()Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->feed:Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;

    return-object v0
.end method

.method public getFeedId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->feedId:J

    return-wide v0
.end method

.method public getHumanReadableIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifyingValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->itemIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->itemIdentifier:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->title:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->title:Ljava/lang/String;

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->hasItemImage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->image:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->feed:Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;

    invoke-virtual {v0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->getImage()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getItemIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->itemIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->link:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->link:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->hasMedia()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->getMedia()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMedia()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->media:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;

    return-object v0
.end method

.method public getPaymentLink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->paymentLink:Ljava/lang/String;

    return-object v0
.end method

.method public getPubDate()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->pubDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->hasMedia()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;->PLAYING:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;

    return-object v0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;->IN_PROGRESS:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;

    return-object v0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->isRead()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;->READ:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;->NEW:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem$State;

    :goto_0
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hasItemImage()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->image:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasItemImageDownloaded()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->image:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;->isDownloaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMedia()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->media:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRead()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->read:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setChapters(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/noinnion/android/greader/client/rss/syndication/feed/Chapter;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->chapters:Ljava/util/List;

    return-void
.end method

.method public setContentEncoded(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->contentEncoded:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->description:Ljava/lang/String;

    return-void
.end method

.method public setFeed(Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->feed:Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;

    return-void
.end method

.method public setFeedId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->feedId:J

    return-void
.end method

.method public setImage(Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->image:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;->setOwner(Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;)V

    :cond_0
    return-void
.end method

.method public setItemIdentifier(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->itemIdentifier:Ljava/lang/String;

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->link:Ljava/lang/String;

    return-void
.end method

.method public setMedia(Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->media:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->getItem()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->setItem(Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;)V

    :cond_0
    return-void
.end method

.method public setPaymentLink(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->paymentLink:Ljava/lang/String;

    return-void
.end method

.method public setPubDate(Ljava/util/Date;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->pubDate:Ljava/util/Date;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->pubDate:Ljava/util/Date;

    :goto_0
    return-void
.end method

.method public setRead(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->read:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->media:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->title:Ljava/lang/String;

    const-string v3, " - "

    invoke-static {v1, v2, v3, v0}, Ljo;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateFromOther(Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;->updateFromOther(Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;)V

    .line 2
    iget-object v0, p1, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    iput-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->title:Ljava/lang/String;

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->description:Ljava/lang/String;

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->getContentEncoded()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p1, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->contentEncoded:Ljava/lang/String;

    iput-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->contentEncoded:Ljava/lang/String;

    .line 8
    :cond_2
    iget-object v0, p1, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->link:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 9
    iput-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->link:Ljava/lang/String;

    .line 10
    :cond_3
    iget-object v0, p1, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->pubDate:Ljava/util/Date;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->pubDate:Ljava/util/Date;

    if-eq v0, v1, :cond_4

    .line 11
    iput-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->pubDate:Ljava/util/Date;

    .line 12
    :cond_4
    iget-object v0, p1, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->media:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;

    if-eqz v0, :cond_6

    .line 13
    iget-object v1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->media:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;

    if-nez v1, :cond_5

    .line 14
    invoke-virtual {p0, v0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->setMedia(Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;)V

    goto :goto_0

    .line 15
    :cond_5
    invoke-virtual {v1, p1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;->compareWithOther(Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->media:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;

    invoke-virtual {v0, p1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;->updateFromOther(Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;)V

    .line 17
    :cond_6
    :goto_0
    iget-object v0, p1, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->paymentLink:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 18
    iput-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->paymentLink:Ljava/lang/String;

    .line 19
    :cond_7
    iget-object v0, p1, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->chapters:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 20
    iget-object v1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->chapters:Ljava/util/List;

    if-nez v1, :cond_8

    .line 21
    iput-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->chapters:Ljava/util/List;

    .line 22
    :cond_8
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->image:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;

    if-nez v0, :cond_9

    .line 23
    iget-object p1, p1, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->image:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;

    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->image:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;

    :cond_9
    return-void
.end method
