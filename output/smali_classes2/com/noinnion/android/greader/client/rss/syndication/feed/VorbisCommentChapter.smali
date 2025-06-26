.class public Lcom/noinnion/android/greader/client/rss/syndication/feed/VorbisCommentChapter;
.super Lcom/noinnion/android/greader/client/rss/syndication/feed/Chapter;
.source "SourceFile"


# static fields
.field public static final CHAPTERTYPE_VORBISCOMMENT_CHAPTER:I = 0x3

.field private static final CHAPTERXXX_LENGTH:I = 0xa


# instance fields
.field private vorbisCommentId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/Chapter;-><init>()V

    .line 2
    iput p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/VorbisCommentChapter;->vorbisCommentId:I

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p5}, Lcom/noinnion/android/greader/client/rss/syndication/feed/Chapter;-><init>(JLjava/lang/String;Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedItem;Ljava/lang/String;)V

    return-void
.end method

.method public static getAttributeTypeFromKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/noinnion/android/greader/client/rss/syndication/feed/VorbisCommentChapter;->CHAPTERXXX_LENGTH:I

    if-le v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getIDFromKey(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentReaderException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/noinnion/android/greader/client/rss/syndication/feed/VorbisCommentChapter;->CHAPTERXXX_LENGTH:I

    if-lt v0, v1, :cond_0

    const/16 v0, 0x8

    const/16 v1, 0xa

    .line 2
    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 4
    new-instance v0, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentReaderException;

    invoke-direct {v0, p0}, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentReaderException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 5
    :cond_0
    new-instance v0, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentReaderException;

    const-string v1, "key is too short ("

    const-string v2, ")"

    invoke-static {v1, p0, v2}, Ljo;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentReaderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getStartTimeFromValue(Ljava/lang/String;)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentReaderException;
        }
    .end annotation

    const-string v0, "-->"

    const-string v1, ":"

    .line 1
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2
    array-length v1, p0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 3
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v2, 0x0

    aget-object v3, p0, v2

    .line 4
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 5
    invoke-virtual {v1, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    const/4 v5, 0x1

    .line 6
    aget-object v5, p0, v5

    .line 7
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 8
    invoke-virtual {v1, v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    const/4 v7, 0x2

    .line 9
    aget-object v8, p0, v7

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 10
    aget-object v8, p0, v7

    aget-object v9, p0, v7

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v7

    .line 11
    :cond_0
    aget-object p0, p0, v7

    .line 12
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    float-to-long v7, p0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 13
    invoke-virtual {v1, v7, v8, p0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v3, v5

    add-long/2addr v3, v0

    return-wide v3

    :catch_0
    move-exception p0

    .line 14
    new-instance v0, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentReaderException;

    invoke-direct {v0, p0}, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentReaderException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 15
    :cond_1
    new-instance p0, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentReaderException;

    const-string v0, "Invalid time string"

    invoke-direct {p0, v0}, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentReaderException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getChapterType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getVorbisCommentId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/VorbisCommentChapter;->vorbisCommentId:I

    return v0
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

.method public setVorbisCommentId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/VorbisCommentChapter;->vorbisCommentId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "VorbisCommentChapter [id="

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Chapter;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", link="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Chapter;->link:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Chapter;->start:J

    const-string v3, "]"

    invoke-static {v0, v1, v2, v3}, Ljo;->r(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
