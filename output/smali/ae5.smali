.class public final Lae5;
.super Lxd5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lxd5<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final l:Lae5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae5<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final transient g:[Ljava/lang/Object;

.field public final transient h:[Ljava/lang/Object;

.field public final transient i:I

.field public final transient j:I

.field public final transient k:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v6, Lae5;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lae5;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    sput-object v6, Lae5;->l:Lae5;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lxd5;-><init>()V

    .line 2
    iput-object p1, p0, Lae5;->g:[Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lae5;->h:[Ljava/lang/Object;

    .line 4
    iput p4, p0, Lae5;->i:I

    .line 5
    iput p2, p0, Lae5;->j:I

    .line 6
    iput p5, p0, Lae5;->k:I

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lae5;->h:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Lc50;->J0(I)I

    move-result v2

    .line 3
    :goto_0
    iget v3, p0, Lae5;->i:I

    and-int/2addr v2, v3

    .line 4
    aget-object v3, v0, v2

    if-nez v3, :cond_1

    return v1

    .line 5
    :cond_1
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public d([Ljava/lang/Object;I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lae5;->g:[Ljava/lang/Object;

    iget v1, p0, Lae5;->k:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    iget p1, p0, Lae5;->k:I

    add-int/2addr p2, p1

    return p2
.end method

.method public h()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lae5;->g:[Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lae5;->j:I

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lae5;->o()Lce5;

    move-result-object v0

    return-object v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lae5;->k:I

    return v0
.end method

.method public l()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o()Lce5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lce5<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lxd5;->f:Lwd5;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lae5;->v()Lwd5;

    move-result-object v0

    iput-object v0, p0, Lxd5;->f:Lwd5;

    .line 3
    :cond_0
    invoke-virtual {v0}, Lwd5;->p()Lud5;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lae5;->k:I

    return v0
.end method

.method public u()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public v()Lwd5;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lwd5<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lae5;->g:[Ljava/lang/Object;

    iget v1, p0, Lae5;->k:I

    .line 2
    sget-object v2, Lwd5;->f:Lud5;

    if-nez v1, :cond_0

    .line 3
    sget-object v0, Lzd5;->i:Lwd5;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v2, Lzd5;

    invoke-direct {v2, v0, v1}, Lzd5;-><init>([Ljava/lang/Object;I)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method
