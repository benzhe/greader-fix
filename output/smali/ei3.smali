.class public final Lei3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lci3;


# instance fields
.field public final a:I

.field public b:[Landroid/media/MediaCodecInfo;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lei3;->a:I

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/media/MediaCodecInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lei3;->b:[Landroid/media/MediaCodecInfo;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/media/MediaCodecList;

    iget v1, p0, Lei3;->a:I

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    iput-object v0, p0, Lei3;->b:[Landroid/media/MediaCodecInfo;

    .line 3
    :cond_0
    iget-object v0, p0, Lei3;->b:[Landroid/media/MediaCodecInfo;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c()I
    .locals 2

    .line 1
    iget-object v0, p0, Lei3;->b:[Landroid/media/MediaCodecInfo;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/media/MediaCodecList;

    iget v1, p0, Lei3;->a:I

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    iput-object v0, p0, Lei3;->b:[Landroid/media/MediaCodecInfo;

    .line 3
    :cond_0
    iget-object v0, p0, Lei3;->b:[Landroid/media/MediaCodecInfo;

    array-length v0, v0

    return v0
.end method

.method public final d(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 0

    const-string p1, "secure-playback"

    .line 1
    invoke-virtual {p2, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
