.class public Lwd5$b;
.super Lwd5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwd5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd5<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final transient g:I

.field public final transient h:I

.field public final synthetic i:Lwd5;


# direct methods
.method public constructor <init>(Lwd5;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwd5$b;->i:Lwd5;

    invoke-direct {p0}, Lwd5;-><init>()V

    .line 2
    iput p2, p0, Lwd5$b;->g:I

    .line 3
    iput p3, p0, Lwd5$b;->h:I

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lwd5$b;->h:I

    invoke-static {p1, v0}, Lc50;->w(II)I

    .line 2
    iget-object v0, p0, Lwd5$b;->i:Lwd5;

    iget v1, p0, Lwd5$b;->g:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lwd5$b;->i:Lwd5;

    invoke-virtual {v0}, Lvd5;->h()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lwd5;->p()Lud5;

    move-result-object v0

    return-object v0
.end method

.method public j()I
    .locals 2

    .line 1
    iget-object v0, p0, Lwd5$b;->i:Lwd5;

    invoke-virtual {v0}, Lvd5;->l()I

    move-result v0

    iget v1, p0, Lwd5$b;->g:I

    add-int/2addr v0, v1

    iget v1, p0, Lwd5$b;->h:I

    add-int/2addr v0, v1

    return v0
.end method

.method public l()I
    .locals 2

    .line 1
    iget-object v0, p0, Lwd5$b;->i:Lwd5;

    invoke-virtual {v0}, Lvd5;->l()I

    move-result v0

    iget v1, p0, Lwd5$b;->g:I

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lwd5;->p()Lud5;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lwd5;->r(I)Lud5;

    move-result-object p1

    return-object p1
.end method

.method public s(II)Lwd5;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lwd5<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lwd5$b;->h:I

    invoke-static {p1, p2, v0}, Lc50;->C(III)V

    .line 2
    iget-object v0, p0, Lwd5$b;->i:Lwd5;

    iget v1, p0, Lwd5$b;->g:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lwd5;->s(II)Lwd5;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lwd5$b;->h:I

    return v0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lwd5$b;->s(II)Lwd5;

    move-result-object p1

    return-object p1
.end method
