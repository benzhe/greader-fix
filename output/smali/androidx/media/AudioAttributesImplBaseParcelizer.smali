.class public final Landroidx/media/AudioAttributesImplBaseParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lui;)Lbe;
    .locals 3

    .line 1
    new-instance v0, Lbe;

    invoke-direct {v0}, Lbe;-><init>()V

    .line 2
    iget v1, v0, Lbe;->a:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lui;->k(II)I

    move-result v1

    iput v1, v0, Lbe;->a:I

    .line 3
    iget v1, v0, Lbe;->b:I

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lui;->k(II)I

    move-result v1

    iput v1, v0, Lbe;->b:I

    .line 4
    iget v1, v0, Lbe;->c:I

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lui;->k(II)I

    move-result v1

    iput v1, v0, Lbe;->c:I

    .line 5
    iget v1, v0, Lbe;->d:I

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lui;->k(II)I

    move-result p0

    iput p0, v0, Lbe;->d:I

    return-object v0
.end method

.method public static write(Lbe;Lui;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lbe;->a:I

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1, v1}, Lui;->p(I)V

    .line 4
    invoke-virtual {p1, v0}, Lui;->t(I)V

    .line 5
    iget v0, p0, Lbe;->b:I

    const/4 v1, 0x2

    .line 6
    invoke-virtual {p1, v1}, Lui;->p(I)V

    .line 7
    invoke-virtual {p1, v0}, Lui;->t(I)V

    .line 8
    iget v0, p0, Lbe;->c:I

    const/4 v1, 0x3

    .line 9
    invoke-virtual {p1, v1}, Lui;->p(I)V

    .line 10
    invoke-virtual {p1, v0}, Lui;->t(I)V

    .line 11
    iget p0, p0, Lbe;->d:I

    const/4 v0, 0x4

    .line 12
    invoke-virtual {p1, v0}, Lui;->p(I)V

    .line 13
    invoke-virtual {p1, p0}, Lui;->t(I)V

    return-void
.end method
