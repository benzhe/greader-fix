.class public Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;
.super Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;
.source "SourceFile"


# static fields
.field public static final FEEDFILETYPE_FEED:I = 0x0

.field public static final TYPE_ATOM1:Ljava/lang/String; = "atom"

.field public static final TYPE_RSS091:Ljava/lang/String; = "rss"

.field public static final TYPE_RSS2:Ljava/lang/String; = "rss"


# instance fields
.field private author:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private feedIdentifier:Ljava/lang/String;

.field private image:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;",
            ">;"
        }
    .end annotation
.end field

.field private language:Ljava/lang/String;

.field private lastUpdate:Ljava/util/Date;

.field private link:Ljava/lang/String;

.field private paymentLink:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->items:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->lastUpdate:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(JLjava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p13, p14, p15}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2
    iput-wide p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;->id:J

    .line 3
    iput-object p4, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->title:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p3}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->lastUpdate:Ljava/util/Date;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->lastUpdate:Ljava/util/Date;

    .line 6
    :goto_0
    iput-object p5, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->link:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->description:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->paymentLink:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->author:Ljava/lang/String;

    .line 10
    iput-object p9, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->language:Ljava/lang/String;

    .line 11
    iput-object p10, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->type:Ljava/lang/String;

    .line 12
    iput-object p11, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->feedIdentifier:Ljava/lang/String;

    .line 13
    iput-object p12, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->image:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->items:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-direct {p0, v0, p1, v1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p2, :cond_0

    .line 19
    invoke-virtual {p2}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/Date;

    :cond_0
    iput-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->lastUpdate:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    .line 21
    iput-object p3, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareWithOther(Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;)Z
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;->compareWithOther(Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->title:Ljava/lang/String;

    iget-object v2, p1, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p1, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->feedIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 4
    iget-object v2, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->feedIdentifier:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    return v1

    .line 6
    :cond_3
    iget-object v0, p1, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->link:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 7
    iget-object v2, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->link:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    return v1

    .line 8
    :cond_5
    iget-object v0, p1, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->description:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 9
    iget-object v2, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->description:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    return v1

    .line 10
    :cond_7
    iget-object v0, p1, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->language:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 11
    iget-object v2, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->language:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    return v1

    .line 12
    :cond_9
    iget-object v0, p1, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->author:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 13
    iget-object v2, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->author:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    return v1

    .line 14
    :cond_b
    iget-object p1, p1, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->paymentLink:Ljava/lang/String;

    if-eqz p1, :cond_d

    .line 15
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->paymentLink:Ljava/lang/String;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    :cond_c
    return v1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->feedIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getHumanReadableIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;->download_url:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->image:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->items:Ljava/util/List;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdate()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->lastUpdate:Ljava/util/Date;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentLink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->paymentLink:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeAsInt()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->author:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->description:Ljava/lang/String;

    return-void
.end method

.method public setFeedIdentifier(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->feedIdentifier:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;->setId(J)V

    return-void
.end method

.method public setImage(Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->image:Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedImage;

    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->items:Ljava/util/List;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->language:Ljava/lang/String;

    return-void
.end method

.method public setLastUpdate(Ljava/util/Date;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->lastUpdate:Ljava/util/Date;

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->link:Ljava/lang/String;

    return-void
.end method

.method public setPaymentLink(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->paymentLink:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->type:Ljava/lang/String;

    return-void
.end method

.method public updateFromOther(Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;->updateFromOther(Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;)V

    .line 2
    iget-object v0, p1, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    iput-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->title:Ljava/lang/String;

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->feedIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 5
    iput-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->feedIdentifier:Ljava/lang/String;

    .line 6
    :cond_1
    iget-object v0, p1, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->link:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 7
    iput-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->link:Ljava/lang/String;

    .line 8
    :cond_2
    iget-object v0, p1, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->description:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 9
    iput-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->description:Ljava/lang/String;

    .line 10
    :cond_3
    iget-object v0, p1, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->language:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 11
    iput-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->language:Ljava/lang/String;

    .line 12
    :cond_4
    iget-object v0, p1, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->author:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 13
    iput-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->author:Ljava/lang/String;

    .line 14
    :cond_5
    iget-object p1, p1, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->paymentLink:Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 15
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;->paymentLink:Ljava/lang/String;

    :cond_6
    return-void
.end method
