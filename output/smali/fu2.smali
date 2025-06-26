.class public final Lfu2;
.super Lqt2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lqt2<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final m:Lfu2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfu2<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final transient h:[Ljava/lang/Object;

.field public final transient i:[Ljava/lang/Object;

.field public final transient j:I

.field public final transient k:I

.field public final transient l:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v6, Lfu2;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lfu2;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    sput-object v6, Lfu2;->m:Lfu2;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lqt2;-><init>()V

    .line 2
    iput-object p1, p0, Lfu2;->h:[Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lfu2;->i:[Ljava/lang/Object;

    .line 4
    iput p4, p0, Lfu2;->j:I

    .line 5
    iput p2, p0, Lfu2;->k:I

    .line 6
    iput p5, p0, Lfu2;->l:I

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lfu2;->i:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Lc50;->U3(I)I

    move-result v2

    .line 3
    :goto_0
    iget v3, p0, Lfu2;->j:I

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

.method public final d([Ljava/lang/Object;I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lfu2;->h:[Ljava/lang/Object;

    iget v1, p0, Lfu2;->l:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    iget p1, p0, Lfu2;->l:I

    add-int/2addr p2, p1

    return p2
.end method

.method public final h()Lhu2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhu2<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lqt2;->o()Lnt2;

    move-result-object v0

    invoke-virtual {v0}, Lnt2;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lhu2;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lfu2;->k:I

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfu2;->h()Lhu2;

    move-result-object v0

    return-object v0
.end method

.method public final j()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lfu2;->h:[Ljava/lang/Object;

    return-object v0
.end method

.method public final l()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final n()I
    .locals 1

    .line 1
    iget v0, p0, Lfu2;->l:I

    return v0
.end method

.method public final p()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget v0, p0, Lfu2;->l:I

    return v0
.end method

.method public final u()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final v()Lnt2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnt2<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfu2;->h:[Ljava/lang/Object;

    iget v1, p0, Lfu2;->l:I

    invoke-static {v0, v1}, Lnt2;->v([Ljava/lang/Object;I)Lnt2;

    move-result-object v0

    return-object v0
.end method
