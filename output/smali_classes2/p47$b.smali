.class public final Lp47$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw47;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp47;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw47<",
        "Ln47;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lo47;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ln47;

    .line 2
    invoke-virtual {p1}, Ln47;->c()Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ln47;

    .line 2
    invoke-virtual {p1}, Ln47;->d()I

    move-result p1

    return p1
.end method
