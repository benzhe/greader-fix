.class public Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/OggInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private bytesLeft:J

.field private input:Ljava/io/InputStream;

.field private isInPage:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/OggInputStream;->isInPage:Z

    .line 3
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/OggInputStream;->input:Ljava/io/InputStream;

    return-void
.end method

.method private readOggPage()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :cond_0
    iget-object v3, p0, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/OggInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eq v3, v4, :cond_6

    const/4 v4, 0x2

    const/4 v6, 0x3

    const/16 v7, 0x53

    const/16 v8, 0x4f

    const/16 v9, 0x67

    if-eq v3, v8, :cond_4

    if-eq v3, v7, :cond_3

    if-eq v3, v9, :cond_1

    if-eqz v2, :cond_5

    .line 2
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    const/4 v2, 0x0

    goto :goto_0

    .line 3
    :cond_1
    aget v10, v0, v5

    if-eq v10, v3, :cond_2

    aput v3, v0, v5

    goto :goto_0

    :cond_2
    aput v3, v0, v4

    goto :goto_0

    :cond_3
    aput v3, v0, v6

    goto :goto_0

    :cond_4
    aput v3, v0, v1

    const/4 v2, 0x1

    .line 4
    :cond_5
    :goto_0
    aget v3, v0, v1

    if-ne v3, v8, :cond_0

    aget v3, v0, v5

    if-ne v3, v9, :cond_0

    aget v3, v0, v4

    if-ne v3, v9, :cond_0

    aget v3, v0, v6

    if-ne v3, v7, :cond_0

    .line 5
    :cond_6
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/OggInputStream;->input:Ljava/io/InputStream;

    const-wide/16 v2, 0x16

    invoke-static {v0, v2, v3}, Lorg/apache/commons/io/IOUtils;->skipFully(Ljava/io/InputStream;J)V

    const-wide/16 v2, 0x0

    .line 6
    iput-wide v2, p0, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/OggInputStream;->bytesLeft:J

    .line 7
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/OggInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_7

    .line 8
    iget-wide v2, p0, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/OggInputStream;->bytesLeft:J

    iget-object v4, p0, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/OggInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    int-to-long v6, v4

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/OggInputStream;->bytesLeft:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9
    :cond_7
    iput-boolean v5, p0, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/OggInputStream;->isInPage:Z

    return-void
.end method


# virtual methods
.method public read()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/OggInputStream;->isInPage:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/OggInputStream;->readOggPage()V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/OggInputStream;->isInPage:Z

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/OggInputStream;->bytesLeft:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 4
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/OggInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 5
    iget-wide v4, p0, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/OggInputStream;->bytesLeft:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/OggInputStream;->bytesLeft:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/OggInputStream;->isInPage:Z

    :cond_1
    return v0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method
