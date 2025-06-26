.class public Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;
.super Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;
.source "SourceFile"


# static fields
.field public static final FEEDFILETYPE_FEEDMEDIA:I = 0x2

.field public static final PLAYABLE_TYPE_FEEDMEDIA:I = 0x1

.field public static final PREF_FEED_ID:Ljava/lang/String; = "FeedMedia.PrefFeedId"

.field public static final PREF_MEDIA_ID:Ljava/lang/String; = "FeedMedia.PrefMediaId"

.field private static final TAG:Ljava/lang/String; = "FeedMedia"


# instance fields
.field private duration:I

.field private volatile item:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

.field private itemID:J

.field private mime_type:Ljava/lang/String;

.field private playbackCompletionDate:Ljava/util/Date;

.field private played_duration:I

.field private position:I

.field private size:J


# direct methods
.method public constructor <init>(JLcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;-><init>()V

    .line 15
    iput-wide p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;->id:J

    .line 16
    iput-object p3, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->item:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    return-void
.end method

.method public constructor <init>(JLcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Date;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p9, p10, p11}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6
    iput-wide p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;->id:J

    .line 7
    iput-object p3, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->item:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    .line 8
    iput p4, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->duration:I

    .line 9
    iput p5, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->position:I

    .line 10
    iput p13, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->played_duration:I

    .line 11
    iput-wide p6, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->size:J

    .line 12
    iput-object p8, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->mime_type:Ljava/lang/String;

    if-nez p12, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p12}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    :goto_0
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->playbackCompletionDate:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;Ljava/lang/String;JLjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, p2, v1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->item:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    .line 3
    iput-wide p3, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->size:J

    .line 4
    iput-object p5, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->mime_type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareWithOther(Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;)Z
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;->compareWithOther(Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->mime_type:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 3
    iget-object v2, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->mime_type:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return v1

    .line 4
    :cond_2
    iget-wide v2, p1, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->size:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_3

    iget-wide v4, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->size:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->duration:I

    return v0
.end method

.method public getHumanReadableIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->item:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->item:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    invoke-virtual {v0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->item:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    invoke-virtual {v0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;->download_url:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->item:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->item:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    invoke-virtual {v0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->hasItemImageDownloaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->item:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    invoke-virtual {v0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->getImage()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->item:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    invoke-virtual {v0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->getFeed()Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->getImage()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItem()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->item:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    return-object v0
.end method

.method public getMediaType()Lcom/noinnion/android/greader/client/rss/syndication/feed/MediaType;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->mime_type:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->mime_type:Ljava/lang/String;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcom/noinnion/android/greader/client/rss/syndication/feed/MediaType;->AUDIO:Lcom/noinnion/android/greader/client/rss/syndication/feed/MediaType;

    return-object v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->mime_type:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    sget-object v0, Lcom/noinnion/android/greader/client/rss/syndication/feed/MediaType;->VIDEO:Lcom/noinnion/android/greader/client/rss/syndication/feed/MediaType;

    return-object v0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->mime_type:Ljava/lang/String;

    const-string v1, "application/ogg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    sget-object v0, Lcom/noinnion/android/greader/client/rss/syndication/feed/MediaType;->AUDIO:Lcom/noinnion/android/greader/client/rss/syndication/feed/MediaType;

    return-object v0

    .line 8
    :cond_3
    sget-object v0, Lcom/noinnion/android/greader/client/rss/syndication/feed/MediaType;->UNKNOWN:Lcom/noinnion/android/greader/client/rss/syndication/feed/MediaType;

    return-object v0

    .line 9
    :cond_4
    :goto_0
    sget-object v0, Lcom/noinnion/android/greader/client/rss/syndication/feed/MediaType;->UNKNOWN:Lcom/noinnion/android/greader/client/rss/syndication/feed/MediaType;

    return-object v0
.end method

.method public getMime_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->mime_type:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaybackCompletionDate()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->playbackCompletionDate:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    :goto_0
    return-object v0
.end method

.method public getPlayedDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->played_duration:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->position:I

    return v0
.end method

.method public getSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->size:J

    return-wide v0
.end method

.method public getTypeAsInt()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isInProgress()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->position:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlaying()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->duration:I

    return-void
.end method

.method public setItem(Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->item:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->getMedia()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;->setMedia(Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;)V

    :cond_0
    return-void
.end method

.method public setMime_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->mime_type:Ljava/lang/String;

    return-void
.end method

.method public setPlaybackCompletionDate(Ljava/util/Date;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    :goto_0
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->playbackCompletionDate:Ljava/util/Date;

    return-void
.end method

.method public setPlayedDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->played_duration:I

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->position:I

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->size:J

    return-void
.end method

.method public updateFromOther(Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;->updateFromOther(Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;)V

    .line 2
    iget-wide v0, p1, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 3
    iput-wide v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->size:J

    .line 4
    :cond_0
    iget-object p1, p1, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->mime_type:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 5
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedMedia;->mime_type:Ljava/lang/String;

    :cond_1
    return-void
.end method
