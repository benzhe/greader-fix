.class public abstract Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentReader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FIRST_PAGE_LENGTH:I = 0x3a

.field private static final PACKET_TYPE_COMMENT:I = 0x3

.field private static final PACKET_TYPE_IDENTIFICATION:I = 0x1

.field private static final SECOND_PAGE_MAX_LENGTH:I = 0x4000000


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findCommentHeader(Ljava/io/InputStream;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x7

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/high16 v3, 0x4000000

    if-ge v2, v3, :cond_9

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v3

    int-to-char v3, v3

    const/4 v5, 0x6

    const/4 v6, 0x2

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/16 v9, 0x73

    const/16 v10, 0x72

    const/16 v11, 0x76

    const/16 v12, 0x6f

    const/16 v13, 0x69

    const/16 v14, 0x62

    const/4 v15, 0x1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_6

    if-eq v3, v14, :cond_5

    if-eq v3, v13, :cond_4

    if-eq v3, v12, :cond_3

    if-eq v3, v11, :cond_2

    if-eq v3, v10, :cond_1

    if-eq v3, v9, :cond_0

    const/16 v16, -0x1

    goto :goto_1

    :cond_0
    const/16 v16, 0x6

    goto :goto_1

    :cond_1
    const/16 v16, 0x3

    goto :goto_1

    :cond_2
    const/16 v16, 0x1

    goto :goto_1

    :cond_3
    const/16 v16, 0x2

    goto :goto_1

    :cond_4
    const/16 v16, 0x5

    goto :goto_1

    :cond_5
    const/16 v16, 0x4

    goto :goto_1

    :cond_6
    const/16 v16, 0x0

    :goto_1
    if-ltz v16, :cond_7

    .line 2
    aput-char v3, v0, v16

    .line 3
    aget-char v3, v0, v15

    if-ne v3, v11, :cond_8

    aget-char v3, v0, v6

    if-ne v3, v12, :cond_8

    aget-char v3, v0, v4

    if-ne v3, v10, :cond_8

    aget-char v3, v0, v8

    if-ne v3, v14, :cond_8

    aget-char v3, v0, v7

    if-ne v3, v13, :cond_8

    aget-char v3, v0, v5

    if-ne v3, v9, :cond_8

    aget-char v3, v0, v1

    if-ne v3, v4, :cond_8

    return v15

    .line 4
    :cond_7
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    return v1
.end method

.method private findIdentificationHeader(Ljava/io/InputStream;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x3a

    new-array v1, v0, [B

    .line 1
    invoke-static {p1, v1}, Lorg/apache/commons/io/IOUtils;->readFully(Ljava/io/InputStream;[B)V

    const/4 p1, 0x6

    :goto_0
    if-ge p1, v0, :cond_1

    add-int/lit8 v2, p1, -0x5

    .line 2
    aget-byte v2, v1, v2

    const/16 v3, 0x76

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, p1, -0x4

    aget-byte v2, v1, v2

    const/16 v3, 0x6f

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, p1, -0x3

    aget-byte v2, v1, v2

    const/16 v3, 0x72

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, p1, -0x2

    aget-byte v2, v1, v2

    const/16 v3, 0x62

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, p1, -0x1

    aget-byte v2, v1, v2

    const/16 v3, 0x69

    if-ne v2, v3, :cond_0

    aget-byte v2, v1, p1

    const/16 v3, 0x73

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, p1, -0x6

    aget-byte v2, v1, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    return v3

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private readCommentHeader(Ljava/io/InputStream;)Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentReaderException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Lorg/apache/commons/io/EndianUtils;->readSwappedUnsignedInteger(Ljava/io/InputStream;)J

    move-result-wide v0

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentReader;->readUTF8String(Ljava/io/InputStream;J)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lorg/apache/commons/io/EndianUtils;->readSwappedUnsignedInteger(Ljava/io/InputStream;)J

    move-result-wide v1

    .line 4
    new-instance p1, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentHeader;

    invoke-direct {p1, v0, v1, v2}, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentHeader;-><init>(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentReaderException;

    invoke-direct {v0, p1}, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentReaderException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private readContentVectorKey(Ljava/io/InputStream;J)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    int-to-long v2, v1

    cmp-long v4, v2, p2

    if-gez v4, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    int-to-char v2, v2

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private readUTF8String(Ljava/io/InputStream;J)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    long-to-int p3, p2

    .line 1
    new-array p2, p3, [B

    .line 2
    invoke-static {p1, p2}, Lorg/apache/commons/io/IOUtils;->readFully(Ljava/io/InputStream;[B)V

    const-string p1, "UTF-8"

    .line 3
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public abstract onContentVectorKey(Ljava/lang/String;)Z
.end method

.method public abstract onContentVectorValue(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentReaderException;
        }
    .end annotation
.end method

.method public abstract onEndOfComment()V
.end method

.method public abstract onError(Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentReaderException;)V
.end method

.method public abstract onNoVorbisCommentFound()V
.end method

.method public abstract onVorbisCommentFound()V
.end method

.method public abstract onVorbisCommentHeaderFound(Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentHeader;)V
.end method

.method public readInputStream(Ljava/io/InputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentReaderException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentReader;->findIdentificationHeader(Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p0}, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentReader;->onVorbisCommentFound()V

    .line 3
    new-instance v0, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/OggInputStream;

    invoke-direct {v0, p1}, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/OggInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentReader;->findCommentHeader(Ljava/io/InputStream;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    invoke-direct {p0, v0}, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentReader;->readCommentHeader(Ljava/io/InputStream;)Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentHeader;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 6
    invoke-virtual {p0, p1}, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentReader;->onVorbisCommentHeaderFound(Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentHeader;)V

    const/4 v1, 0x0

    :goto_0
    int-to-long v2, v1

    .line 7
    invoke-virtual {p1}, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentHeader;->getUserCommentLength()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 8
    :try_start_1
    invoke-static {v0}, Lorg/apache/commons/io/EndianUtils;->readSwappedUnsignedInteger(Ljava/io/InputStream;)J

    move-result-wide v2

    .line 9
    invoke-direct {p0, v0, v2, v3}, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentReader;->readContentVectorKey(Ljava/io/InputStream;J)Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-virtual {p0, v4}, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentReader;->onContentVectorKey(Ljava/lang/String;)Z

    move-result v5

    const-wide/16 v6, 0x1

    if-eqz v5, :cond_0

    .line 12
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    int-to-long v8, v5

    sub-long/2addr v2, v8

    sub-long/2addr v2, v6

    long-to-int v3, v2

    int-to-long v2, v3

    .line 13
    invoke-direct {p0, v0, v2, v3}, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentReader;->readUTF8String(Ljava/io/InputStream;J)Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-virtual {p0, v4, v2}, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentReader;->onContentVectorValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    sub-long/2addr v2, v6

    .line 16
    invoke-static {v0, v2, v3}, Lorg/apache/commons/io/IOUtils;->skipFully(Ljava/io/InputStream;J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 17
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {p0}, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentReader;->onEndOfComment()V

    goto :goto_2

    .line 19
    :cond_2
    new-instance p1, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentReaderException;

    const-string v0, "No comment header found"

    invoke-direct {p1, v0}, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentReaderException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentReader;->onError(Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentReaderException;)V

    goto :goto_2

    .line 20
    :cond_3
    invoke-virtual {p0}, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentReader;->onNoVorbisCommentFound()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 21
    new-instance v0, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentReaderException;

    invoke-direct {v0, p1}, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentReaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentReader;->onError(Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentReaderException;)V

    :cond_4
    :goto_2
    return-void
.end method
