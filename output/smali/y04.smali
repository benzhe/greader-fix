.class public Ly04;
.super Lc14;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Ly04<",
        "TM;>;>",
        "Lc14;"
    }
.end annotation


# instance fields
.field public f:Lz04;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc14;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lw04;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p0, Ly04;->f:Lz04;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Ly04;->f:Lz04;

    .line 1
    iget v1, v0, Lz04;->g:I

    if-ge p1, v1, :cond_1

    .line 2
    iget-object v0, v0, Lz04;->f:[La14;

    aget-object v0, v0, p1

    .line 3
    invoke-virtual {v0}, La14;->b()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Ly04;->g()Ly04;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 4

    iget-object v0, p0, Ly04;->f:Lz04;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ly04;->f:Lz04;

    .line 1
    iget v3, v2, Lz04;->g:I

    if-ge v0, v3, :cond_0

    .line 2
    iget-object v2, v2, Lz04;->f:[La14;

    aget-object v2, v2, v0

    .line 3
    invoke-virtual {v2}, La14;->c()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public synthetic f()Lc14;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Ly04;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly04;

    return-object v0
.end method

.method public g()Ly04;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lc14;->f()Lc14;

    move-result-object v0

    check-cast v0, Ly04;

    .line 1
    sget-object v1, Lb14;->a:Ljava/lang/Object;

    iget-object v1, p0, Ly04;->f:Lz04;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lz04;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz04;

    iput-object v1, v0, Ly04;->f:Lz04;

    :cond_0
    return-object v0
.end method
