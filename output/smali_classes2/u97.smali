.class public Lu97;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh97;


# instance fields
.field public final a:Lxs7;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Lxs7;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lu97;->a:Lxs7;

    .line 3
    iput p2, p0, Lu97;->b:I

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lu97;->c:I

    return v0
.end method

.method public j([BII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu97;->a:Lxs7;

    invoke-virtual {v0, p1, p2, p3}, Lxs7;->L([BII)Lxs7;

    .line 2
    iget p1, p0, Lu97;->b:I

    sub-int/2addr p1, p3

    iput p1, p0, Lu97;->b:I

    .line 3
    iget p1, p0, Lu97;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Lu97;->c:I

    return-void
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lu97;->b:I

    return v0
.end method

.method public l(B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu97;->a:Lxs7;

    invoke-virtual {v0, p1}, Lxs7;->Q(I)Lxs7;

    .line 2
    iget p1, p0, Lu97;->b:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lu97;->b:I

    .line 3
    iget p1, p0, Lu97;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lu97;->c:I

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method
