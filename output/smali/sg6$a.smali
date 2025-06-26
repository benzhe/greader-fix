.class public final Lsg6$a;
.super Lwa7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsg6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwa7<",
        "Lsg6$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ly27;Lx27;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lwa7;-><init>(Ly27;Lx27;)V

    return-void
.end method

.method public constructor <init>(Ly27;Lx27;Lrg6;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lwa7;-><init>(Ly27;Lx27;)V

    return-void
.end method


# virtual methods
.method public a(Ly27;Lx27;)Lxa7;
    .locals 1

    .line 1
    new-instance v0, Lsg6$a;

    invoke-direct {v0, p1, p2}, Lsg6$a;-><init>(Ly27;Lx27;)V

    return-object v0
.end method
