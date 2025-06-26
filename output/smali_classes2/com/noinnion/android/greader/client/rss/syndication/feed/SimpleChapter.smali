.class public Lcom/noinnion/android/greader/client/rss/syndication/feed/SimpleChapter;
.super Lcom/noinnion/android/greader/client/rss/syndication/feed/Chapter;
.source "SourceFile"


# static fields
.field public static final CHAPTERTYPE_SIMPLECHAPTER:I


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/noinnion/android/greader/client/rss/syndication/feed/Chapter;-><init>(JLjava/lang/String;Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getChapterType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateFromOther(Lcom/noinnion/android/greader/client/rss/syndication/feed/SimpleChapter;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;->updateFromOther(Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;)V

    .line 2
    iget-wide v0, p1, Lcom/noinnion/android/greader/client/rss/syndication/feed/Chapter;->start:J

    iput-wide v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Chapter;->start:J

    .line 3
    iget-object v0, p1, Lcom/noinnion/android/greader/client/rss/syndication/feed/Chapter;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4
    iput-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Chapter;->title:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object p1, p1, Lcom/noinnion/android/greader/client/rss/syndication/feed/Chapter;->link:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 6
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Chapter;->link:Ljava/lang/String;

    :cond_1
    return-void
.end method
