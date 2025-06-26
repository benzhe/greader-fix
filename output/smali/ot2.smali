.class public final Lot2;
.super Lnt2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnt2<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final transient g:I

.field public final transient h:I

.field public final synthetic i:Lnt2;


# direct methods
.method public constructor <init>(Lnt2;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lot2;->i:Lnt2;

    invoke-direct {p0}, Lnt2;-><init>()V

    .line 2
    iput p2, p0, Lot2;->g:I

    .line 3
    iput p3, p0, Lot2;->h:I

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
    iget v0, p0, Lot2;->h:I

    invoke-static {p1, v0}, Lc50;->F4(II)I

    .line 2
    iget-object v0, p0, Lot2;->i:Lnt2;

    iget v1, p0, Lot2;->g:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lot2;->i:Lnt2;

    invoke-virtual {v0}, Lit2;->j()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final l()I
    .locals 2

    .line 1
    iget-object v0, p0, Lot2;->i:Lnt2;

    invoke-virtual {v0}, Lit2;->l()I

    move-result v0

    iget v1, p0, Lot2;->g:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final n()I
    .locals 2

    .line 1
    iget-object v0, p0, Lot2;->i:Lnt2;

    invoke-virtual {v0}, Lit2;->l()I

    move-result v0

    iget v1, p0, Lot2;->g:I

    add-int/2addr v0, v1

    iget v1, p0, Lot2;->h:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget v0, p0, Lot2;->h:I

    return v0
.end method

.method public final synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lot2;->z(II)Lnt2;

    move-result-object p1

    return-object p1
.end method

.method public final z(II)Lnt2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lnt2<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lot2;->h:I

    invoke-static {p1, p2, v0}, Lc50;->Y3(III)V

    .line 2
    iget-object v0, p0, Lot2;->i:Lnt2;

    iget v1, p0, Lot2;->g:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lnt2;->subList(II)Ljava/util/List;

    move-result-object p1

    check-cast p1, Lnt2;

    return-object p1
.end method
