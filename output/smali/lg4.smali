.class public final Llg4;
.super Ljg4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljg4<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final i:Ljg4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljg4<",
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
    new-instance v0, Llg4;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Llg4;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Llg4;->i:Ljg4;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljg4;-><init>()V

    .line 2
    iput-object p1, p0, Llg4;->g:[Ljava/lang/Object;

    .line 3
    iput p2, p0, Llg4;->h:I

    return-void
.end method


# virtual methods
.method public final d([Ljava/lang/Object;I)I
    .locals 2

    .line 1
    iget-object p2, p0, Llg4;->g:[Ljava/lang/Object;

    iget v0, p0, Llg4;->h:I

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    iget p1, p0, Llg4;->h:I

    add-int/2addr p1, v1

    return p1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    iget v0, p0, Llg4;->h:I

    invoke-static {p1, v0}, Lhh4;->a(II)I

    .line 2
    iget-object v0, p0, Llg4;->g:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final h()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Llg4;->g:[Ljava/lang/Object;

    return-object v0
.end method

.method public final j()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final l()I
    .locals 1

    .line 1
    iget v0, p0, Llg4;->h:I

    return v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget v0, p0, Llg4;->h:I

    return v0
.end method
