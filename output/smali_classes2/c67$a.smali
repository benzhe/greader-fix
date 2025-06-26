.class public Lc67$a;
.super Lc67$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc67;->readUnsignedByte()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lc67;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1}, Lc67$c;-><init>(Lc67$a;)V

    return-void
.end method


# virtual methods
.method public a(Ln87;I)I
    .locals 0

    .line 1
    invoke-interface {p1}, Ln87;->readUnsignedByte()I

    move-result p1

    return p1
.end method
