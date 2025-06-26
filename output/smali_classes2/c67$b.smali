.class public Lc67$b;
.super Lc67$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc67;->W([BII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public c:I

.field public final synthetic d:I

.field public final synthetic e:[B


# direct methods
.method public constructor <init>(Lc67;I[B)V
    .locals 0

    .line 1
    iput p2, p0, Lc67$b;->d:I

    iput-object p3, p0, Lc67$b;->e:[B

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lc67$c;-><init>(Lc67$a;)V

    .line 2
    iput p2, p0, Lc67$b;->c:I

    return-void
.end method


# virtual methods
.method public a(Ln87;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lc67$b;->e:[B

    iget v1, p0, Lc67$b;->c:I

    invoke-interface {p1, v0, v1, p2}, Ln87;->W([BII)V

    .line 2
    iget p1, p0, Lc67$b;->c:I

    add-int/2addr p1, p2

    iput p1, p0, Lc67$b;->c:I

    const/4 p1, 0x0

    return p1
.end method
