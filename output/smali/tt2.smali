.class public final Ltt2;
.super Lkt2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkt2<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public d:[Ljava/lang/Object;

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lkt2;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lkt2;-><init>(I)V

    .line 3
    invoke-static {p1}, Lqt2;->y(I)I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Ltt2;->d:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljt2;
    .locals 5

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Ltt2;->d:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget v0, p0, Lkt2;->b:I

    invoke-static {v0}, Lqt2;->y(I)I

    move-result v0

    iget-object v1, p0, Ltt2;->d:[Ljava/lang/Object;

    array-length v2, v1

    if-gt v0, v2, :cond_2

    .line 3
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 5
    invoke-static {v1}, Lc50;->U3(I)I

    move-result v2

    :goto_0
    and-int/2addr v2, v0

    .line 6
    iget-object v3, p0, Ltt2;->d:[Ljava/lang/Object;

    aget-object v4, v3, v2

    if-nez v4, :cond_0

    .line 7
    aput-object p1, v3, v2

    .line 8
    iget v0, p0, Ltt2;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Ltt2;->e:I

    .line 9
    invoke-virtual {p0, p1}, Lkt2;->b(Ljava/lang/Object;)Lkt2;

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0

    :cond_2
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Ltt2;->d:[Ljava/lang/Object;

    .line 12
    invoke-virtual {p0, p1}, Lkt2;->b(Ljava/lang/Object;)Lkt2;

    return-object p0
.end method

.method public final d(Ljava/lang/Iterable;)Ljt2;
    .locals 1

    .line 1
    iget-object v0, p0, Ltt2;->d:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Ltt2;->a(Ljava/lang/Object;)Ljt2;

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lkt2;->d(Ljava/lang/Iterable;)Ljt2;

    :cond_1
    return-object p0
.end method

.method public final e()Lqt2;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqt2<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lkt2;->b:I

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    .line 2
    iget-object v3, p0, Ltt2;->d:[Ljava/lang/Object;

    if-eqz v3, :cond_2

    invoke-static {v0}, Lqt2;->y(I)I

    move-result v0

    iget-object v3, p0, Ltt2;->d:[Ljava/lang/Object;

    array-length v3, v3

    if-ne v0, v3, :cond_2

    .line 3
    iget v0, p0, Lkt2;->b:I

    iget-object v3, p0, Lkt2;->a:[Ljava/lang/Object;

    array-length v4, v3

    shr-int/lit8 v5, v4, 0x1

    shr-int/lit8 v4, v4, 0x2

    add-int/2addr v5, v4

    if-ge v0, v5, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    :cond_1
    move-object v5, v3

    .line 4
    new-instance v0, Lfu2;

    iget v6, p0, Ltt2;->e:I

    iget-object v7, p0, Ltt2;->d:[Ljava/lang/Object;

    array-length v1, v7

    add-int/lit8 v8, v1, -0x1

    iget v9, p0, Lkt2;->b:I

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lfu2;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    goto :goto_0

    .line 5
    :cond_2
    iget v0, p0, Lkt2;->b:I

    iget-object v1, p0, Lkt2;->a:[Ljava/lang/Object;

    .line 6
    invoke-static {v0, v1}, Lqt2;->r(I[Ljava/lang/Object;)Lqt2;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    iput v1, p0, Lkt2;->b:I

    .line 8
    :goto_0
    iput-boolean v2, p0, Lkt2;->c:Z

    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Ltt2;->d:[Ljava/lang/Object;

    return-object v0

    .line 10
    :cond_3
    iget-object v0, p0, Lkt2;->a:[Ljava/lang/Object;

    aget-object v0, v0, v1

    .line 11
    sget v1, Lqt2;->g:I

    .line 12
    new-instance v1, Lgu2;

    invoke-direct {v1, v0}, Lgu2;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 13
    :cond_4
    sget-object v0, Lfu2;->m:Lfu2;

    return-object v0
.end method
