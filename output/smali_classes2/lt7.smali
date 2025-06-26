.class public final Llt7;
.super Lbk7;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llt7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk7<",
        "Lbt7;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field public static final g:Llt7$a;


# instance fields
.field public final e:[Lbt7;

.field public final f:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Llt7$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llt7$a;-><init>(Lgm7;)V

    sput-object v0, Llt7;->g:Llt7$a;

    return-void
.end method

.method public constructor <init>([Lbt7;[ILgm7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lbk7;-><init>()V

    iput-object p1, p0, Llt7;->e:[Lbt7;

    iput-object p2, p0, Llt7;->f:[I

    return-void
.end method


# virtual methods
.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lbt7;

    if-eqz v0, :cond_0

    check-cast p1, Lbt7;

    .line 2
    invoke-super {p0, p1}, Lak7;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Llt7;->e:[Lbt7;

    array-length v0, v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Llt7;->e:[Lbt7;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lbt7;

    if-eqz v0, :cond_0

    check-cast p1, Lbt7;

    .line 2
    invoke-super {p0, p1}, Lbk7;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lbt7;

    if-eqz v0, :cond_0

    check-cast p1, Lbt7;

    .line 2
    invoke-super {p0, p1}, Lbk7;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
