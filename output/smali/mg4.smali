.class public final Lmg4;
.super Ljg4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljg4<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final transient g:I

.field public final transient h:I

.field public final synthetic i:Ljg4;


# direct methods
.method public constructor <init>(Ljg4;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmg4;->i:Ljg4;

    invoke-direct {p0}, Ljg4;-><init>()V

    .line 2
    iput p2, p0, Lmg4;->g:I

    .line 3
    iput p3, p0, Lmg4;->h:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lmg4;->h:I

    invoke-static {p1, v0}, Lhh4;->a(II)I

    .line 2
    iget-object v0, p0, Lmg4;->i:Ljg4;

    iget v1, p0, Lmg4;->g:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final h()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lmg4;->i:Ljg4;

    invoke-virtual {v0}, Lig4;->h()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final j()I
    .locals 2

    .line 1
    iget-object v0, p0, Lmg4;->i:Ljg4;

    invoke-virtual {v0}, Lig4;->j()I

    move-result v0

    iget v1, p0, Lmg4;->g:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final l()I
    .locals 2

    .line 1
    iget-object v0, p0, Lmg4;->i:Ljg4;

    invoke-virtual {v0}, Lig4;->j()I

    move-result v0

    iget v1, p0, Lmg4;->g:I

    add-int/2addr v0, v1

    iget v1, p0, Lmg4;->h:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final n(II)Ljg4;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljg4<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lmg4;->h:I

    invoke-static {p1, p2, v0}, Lhh4;->c(III)V

    .line 2
    iget-object v0, p0, Lmg4;->i:Ljg4;

    iget v1, p0, Lmg4;->g:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Ljg4;->subList(II)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljg4;

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 1
    iget v0, p0, Lmg4;->h:I

    return v0
.end method

.method public final synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lmg4;->n(II)Ljg4;

    move-result-object p1

    return-object p1
.end method
