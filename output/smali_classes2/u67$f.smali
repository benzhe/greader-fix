.class public final Lu67$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz37$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu67;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz37$a<",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lu67$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)[B
    .locals 0

    .line 1
    check-cast p1, [B

    return-object p1
.end method

.method public b([B)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method
