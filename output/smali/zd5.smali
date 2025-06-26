.class public Lzd5;
.super Lwd5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lwd5<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final i:Lwd5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwd5<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final transient g:[Ljava/lang/Object;

.field public final transient h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lzd5;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lzd5;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lzd5;->i:Lwd5;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lwd5;-><init>()V

    .line 2
    iput-object p1, p0, Lzd5;->g:[Ljava/lang/Object;

    .line 3
    iput p2, p0, Lzd5;->h:I

    return-void
.end method


# virtual methods
.method public d([Ljava/lang/Object;I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lzd5;->g:[Ljava/lang/Object;

    iget v1, p0, Lzd5;->h:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    iget p1, p0, Lzd5;->h:I

    add-int/2addr p2, p1

    return p2
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lzd5;->h:I

    invoke-static {p1, v0}, Lc50;->w(II)I

    .line 2
    iget-object v0, p0, Lzd5;->g:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public h()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lzd5;->g:[Ljava/lang/Object;

    return-object v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lzd5;->h:I

    return v0
.end method

.method public l()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lzd5;->h:I

    return v0
.end method
