.class public final Lz74;
.super La84;
.source "SourceFile"


# instance fields
.field public e:I

.field public final f:I

.field public final synthetic g:Lg84;


# direct methods
.method public constructor <init>(Lg84;)V
    .locals 1

    iput-object p1, p0, Lz74;->g:Lg84;

    invoke-direct {p0}, La84;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lz74;->e:I

    invoke-virtual {p1}, Lg84;->j()I

    move-result p1

    iput p1, p0, Lz74;->f:I

    return-void
.end method


# virtual methods
.method public final a()B
    .locals 2

    iget v0, p0, Lz74;->e:I

    iget v1, p0, Lz74;->f:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 1
    iput v1, p0, Lz74;->e:I

    iget-object v1, p0, Lz74;->g:Lg84;

    .line 2
    invoke-virtual {v1, v0}, Lg84;->h(I)B

    move-result v0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 4
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lz74;->e:I

    iget v1, p0, Lz74;->f:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
