.class public Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentChapterReader;
.super Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentReader;
.source "SourceFile"


# static fields
.field private static final CHAPTER_ATTRIBUTE_LINK:Ljava/lang/String; = "url"

.field private static final CHAPTER_ATTRIBUTE_TITLE:Ljava/lang/String; = "name"

.field private static final CHAPTER_KEY:Ljava/lang/String; = "chapter\\d\\d\\d.*"

.field private static final TAG:Ljava/lang/String; = "VorbisCommentChapterReader"


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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentReader;-><init>()V

    return-void
.end method

.method private getChapterById(J)Lcom/noinnion/android/greader/client/rss/syndication/feed/Chapter;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentChapterReader;->chapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/noinnion/android/greader/client/rss/syndication/feed/Chapter;

    .line 2
    move-object v2, v1

    check-cast v2, Lcom/noinnion/android/greader/client/rss/syndication/feed/VorbisCommentChapter;

    invoke-virtual {v2}, Lcom/noinnion/android/greader/client/rss/syndication/feed/VorbisCommentChapter;->getVorbisCommentId()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
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
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentChapterReader;->chapters:Ljava/util/List;

    return-object v0
.end method

.method public onContentVectorKey(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "chapter\\d\\d\\d.*"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onContentVectorValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentReaderException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/VorbisCommentChapter;->getAttributeTypeFromKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/VorbisCommentChapter;->getIDFromKey(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    .line 3
    invoke-direct {p0, v2, v3}, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentChapterReader;->getChapterById(J)Lcom/noinnion/android/greader/client/rss/syndication/feed/Chapter;

    move-result-object v4

    if-nez v0, :cond_1

    .line 4
    invoke-direct {p0, v2, v3}, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentChapterReader;->getChapterById(J)Lcom/noinnion/android/greader/client/rss/syndication/feed/Chapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    invoke-static {p2}, Lcom/noinnion/android/greader/client/rss/syndication/feed/VorbisCommentChapter;->getStartTimeFromValue(Ljava/lang/String;)J

    move-result-wide p1

    .line 6
    new-instance v0, Lcom/noinnion/android/greader/client/rss/syndication/feed/VorbisCommentChapter;

    invoke-direct {v0, v1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/VorbisCommentChapter;-><init>(I)V

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/noinnion/android/greader/client/rss/syndication/feed/VorbisCommentChapter;->setStart(J)V

    .line 8
    iget-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentChapterReader;->chapters:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentReaderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found chapter with duplicate ID ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentReaderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "name"

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v4, :cond_3

    .line 11
    invoke-virtual {v4, p2}, Lcom/noinnion/android/greader/client/rss/syndication/feed/Chapter;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "url"

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v4, :cond_3

    .line 13
    invoke-virtual {v4, p2}, Lcom/noinnion/android/greader/client/rss/syndication/feed/Chapter;->setLink(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onEndOfComment()V
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "End of comment"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentChapterReader;->chapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/noinnion/android/greader/client/rss/syndication/feed/Chapter;

    .line 3
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onError(Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentReaderException;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public onNoVorbisCommentFound()V
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "No vorbis comment found"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onVorbisCommentFound()V
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Vorbis comment found"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onVorbisCommentHeaderFound(Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentHeader;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentChapterReader;->chapters:Ljava/util/List;

    .line 2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentHeader;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
