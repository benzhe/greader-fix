.class public final Lj53;
.super Ll53;
.source "SourceFile"


# instance fields
.field public e:I

.field public final f:I

.field public final synthetic g:Lk53;


# direct methods
.method public constructor <init>(Lk53;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lj53;->g:Lk53;

    invoke-direct {p0}, Ll53;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lj53;->e:I

    .line 3
    invoke-virtual {p1}, Lk53;->size()I

    move-result p1

    iput p1, p0, Lj53;->f:I

    return-void
.end method


# virtual methods
.method public final b()B
    .locals 2

    .line 1
    iget v0, p0, Lj53;->e:I

    .line 2
    iget v1, p0, Lj53;->f:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 3
    iput v1, p0, Lj53;->e:I

    .line 4
    iget-object v1, p0, Lj53;->g:Lk53;

    invoke-virtual {v1, v0}, Lk53;->G(I)B

    move-result v0

    return v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lj53;->e:I

    iget v1, p0, Lj53;->f:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
