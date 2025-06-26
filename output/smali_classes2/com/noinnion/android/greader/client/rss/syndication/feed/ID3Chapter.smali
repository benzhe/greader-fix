.class public Lcom/noinnion/android/greader/client/rss/syndication/feed/ID3Chapter;
.super Lcom/noinnion/android/greader/client/rss/syndication/feed/Chapter;
.source "SourceFile"


# static fields
.field public static final CHAPTERTYPE_ID3CHAPTER:I = 0x2


# instance fields
.field private id3ID:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p5}, Lcom/noinnion/android/greader/client/rss/syndication/feed/Chapter;-><init>(JLjava/lang/String;Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/noinnion/android/greader/client/rss/syndication/feed/Chapter;-><init>(J)V

    .line 2
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/ID3Chapter;->id3ID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChapterType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getId3ID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/ID3Chapter;->id3ID:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "ID3Chapter [id3ID="

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/ID3Chapter;->id3ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Chapter;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Chapter;->start:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Chapter;->link:Ljava/lang/String;

    const-string v2, "]"

    invoke-static {v0, v1, v2}, Ljo;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
