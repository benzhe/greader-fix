.class public Lb26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ld26;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lc26;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Ld26;

    check-cast p2, Ld26;

    .line 2
    invoke-virtual {p1}, Ld26;->a()I

    move-result v0

    invoke-virtual {p2}, Ld26;->a()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ld26;->a()I

    move-result p1

    invoke-virtual {p2}, Ld26;->a()I

    move-result p2

    if-ge p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
