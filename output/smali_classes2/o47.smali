.class public Lo47;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ln47;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lp47;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ln47;

    check-cast p2, Ln47;

    .line 2
    invoke-virtual {p1}, Ln47;->d()I

    move-result p1

    invoke-virtual {p2}, Ln47;->d()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method
