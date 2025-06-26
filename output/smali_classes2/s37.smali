.class public abstract Ls37;
.super Lq47;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls37$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lq47<",
        "TReqT;TRespT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lq47;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lq47;->f()La37;

    move-result-object v0

    invoke-virtual {v0, p1}, La37;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public e(La37$a;Li47;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La37$a<",
            "TRespT;>;",
            "Li47;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lq47;->f()La37;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, La37;->e(La37$a;Li47;)V

    return-void
.end method
