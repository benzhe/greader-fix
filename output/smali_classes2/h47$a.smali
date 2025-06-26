.class public Lh47$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw47;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh47;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw47<",
        "Lh47;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lh47;

    .line 2
    invoke-virtual {p1}, Lh47;->b()Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lh47;

    .line 2
    invoke-virtual {p1}, Lh47;->c()I

    move-result p1

    return p1
.end method
