.class public abstract Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;
.super Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;
.source "SourceFile"


# instance fields
.field public download_url:Ljava/lang/String;

.field public downloaded:Z

.field public file_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, v0, v0, v1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;->file_url:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;->download_url:Ljava/lang/String;

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    iput-boolean p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;->downloaded:Z

    return-void
.end method


# virtual methods
.method public compareWithOther(Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;->compareWithOther(Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;->download_url:Ljava/lang/String;

    iget-object p1, p1, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;->download_url:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public fileExists()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;->file_url:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;->file_url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;->download_url:Ljava/lang/String;

    return-object v0
.end method

.method public getFile_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;->file_url:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getTypeAsInt()I
.end method

.method public isDownloaded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;->downloaded:Z

    return v0
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;->download_url:Ljava/lang/String;

    return-void
.end method

.method public setDownloaded(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;->downloaded:Z

    return-void
.end method

.method public setFileUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;->file_url:Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;->downloaded:Z

    :cond_0
    return-void
.end method

.method public updateFromOther(Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;->updateFromOther(Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedComponent;)V

    .line 2
    iget-object p1, p1, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;->download_url:Ljava/lang/String;

    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/FeedFile;->download_url:Ljava/lang/String;

    return-void
.end method
