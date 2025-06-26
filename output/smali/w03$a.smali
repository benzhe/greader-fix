.class public final Lw03$a;
.super Ls63$b;
.source "SourceFile"

# interfaces
.implements Lf83;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw03;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls63$b<",
        "Lw03;",
        "Lw03$a;",
        ">;",
        "Lf83;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lw03;->D()Lw03;

    move-result-object v0

    invoke-direct {p0, v0}, Ls63$b;-><init>(Ls63;)V

    return-void
.end method

.method public constructor <init>(Lx03;)V
    .locals 0

    .line 2
    invoke-static {}, Lw03;->D()Lw03;

    move-result-object p1

    invoke-direct {p0, p1}, Ls63$b;-><init>(Ls63;)V

    return-void
.end method
