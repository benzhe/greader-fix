.class public final Lwf3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[B

.field public b:[B

.field public c:I

.field public d:[I

.field public e:[I

.field public f:I

.field public final g:Landroid/media/MediaCodec$CryptoInfo;

.field public final h:Lyf3;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lel3;->a:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    .line 3
    new-instance v2, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 4
    :goto_0
    iput-object v2, p0, Lwf3;->g:Landroid/media/MediaCodec$CryptoInfo;

    const/16 v3, 0x18

    if-lt v0, v3, :cond_1

    .line 5
    new-instance v0, Lyf3;

    invoke-direct {v0, v2, v1}, Lyf3;-><init>(Landroid/media/MediaCodec$CryptoInfo;Lvf3;)V

    move-object v1, v0

    :cond_1
    iput-object v1, p0, Lwf3;->h:Lyf3;

    return-void
.end method
