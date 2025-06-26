.class public final Ldu2;
.super Lnt2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnt2<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final transient g:[Ljava/lang/Object;

.field public final transient h:I

.field public final transient i:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnt2;-><init>()V

    .line 2
    iput-object p1, p0, Ldu2;->g:[Ljava/lang/Object;

    .line 3
    iput p2, p0, Ldu2;->h:I

    .line 4
    iput p3, p0, Ldu2;->i:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Ldu2;->i:I

    invoke-static {p1, v0}, Lc50;->F4(II)I

    .line 2
    iget-object v0, p0, Ldu2;->g:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    iget v1, p0, Ldu2;->h:I

    add-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget v0, p0, Ldu2;->i:I

    return v0
.end method
