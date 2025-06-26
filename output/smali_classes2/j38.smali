.class public Lj38;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lu38;

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Lu38;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lj38;->a:Lu38;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lj38;->b:I

    return-void
.end method


# virtual methods
.method public a(B)I
    .locals 3

    .line 1
    iget-object v0, p0, Lj38;->a:Lu38;

    and-int/lit16 p1, p1, 0xff

    .line 2
    iget-object v0, v0, Lu38;->a:Ls38;

    invoke-virtual {v0, p1}, Ls38;->b(I)I

    move-result p1

    .line 3
    iget v0, p0, Lj38;->b:I

    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lj38;->d:I

    .line 5
    iget-object v1, p0, Lj38;->a:Lu38;

    .line 6
    iget-object v1, v1, Lu38;->d:[I

    aget v1, v1, p1

    .line 7
    iput v1, p0, Lj38;->c:I

    .line 8
    :cond_0
    iget-object v1, p0, Lj38;->a:Lu38;

    .line 9
    iget-object v2, v1, Lu38;->c:Ls38;

    iget v1, v1, Lu38;->b:I

    mul-int v0, v0, v1

    add-int/2addr v0, p1

    invoke-virtual {v2, v0}, Ls38;->b(I)I

    move-result p1

    .line 10
    iput p1, p0, Lj38;->b:I

    .line 11
    iget v0, p0, Lj38;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj38;->d:I

    return p1
.end method
