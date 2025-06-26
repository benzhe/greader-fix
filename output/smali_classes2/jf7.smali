.class public final Ljf7;
.super Lmb7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljf7$b;,
        Ljf7$c;,
        Ljf7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmb7<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmb7;-><init>()V

    .line 2
    iput p1, p0, Ljf7;->f:I

    add-int/2addr p1, p2

    .line 3
    iput p1, p0, Ljf7;->g:I

    return-void
.end method


# virtual methods
.method public t(Lx38;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lfd7;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljf7$b;

    move-object v1, p1

    check-cast v1, Lfd7;

    iget v2, p0, Ljf7;->f:I

    iget v3, p0, Ljf7;->g:I

    invoke-direct {v0, v1, v2, v3}, Ljf7$b;-><init>(Lfd7;II)V

    invoke-interface {p1, v0}, Lx38;->e(Ly38;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljf7$c;

    iget v1, p0, Ljf7;->f:I

    iget v2, p0, Ljf7;->g:I

    invoke-direct {v0, p1, v1, v2}, Ljf7$c;-><init>(Lx38;II)V

    invoke-interface {p1, v0}, Lx38;->e(Ly38;)V

    :goto_0
    return-void
.end method
