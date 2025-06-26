.class public Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private userCommentLength:J

.field private vendorString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentHeader;->vendorString:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentHeader;->userCommentLength:J

    return-void
.end method


# virtual methods
.method public getUserCommentLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentHeader;->userCommentLength:J

    return-wide v0
.end method

.method public getVendorString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentHeader;->vendorString:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "VorbisCommentHeader [vendorString="

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentHeader;->vendorString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userCommentLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/noinnion/android/greader/client/rss/syndication/vorbiscommentreader/VorbisCommentHeader;->userCommentLength:J

    const-string v3, "]"

    invoke-static {v0, v1, v2, v3}, Ljo;->r(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
