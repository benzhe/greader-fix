.class public abstract Lq47;
.super La37;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "La37<",
        "TReqT;TRespT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, La37;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq47;->f()La37;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, La37;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq47;->f()La37;

    move-result-object v0

    invoke-virtual {v0}, La37;->b()V

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq47;->f()La37;

    move-result-object v0

    invoke-virtual {v0, p1}, La37;->c(I)V

    return-void
.end method

.method public abstract f()La37;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La37<",
            "**>;"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lc50;->K0(Ljava/lang/Object;)Lnd5;

    move-result-object v0

    invoke-virtual {p0}, Lq47;->f()La37;

    move-result-object v1

    const-string v2, "delegate"

    .line 2
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 3
    invoke-virtual {v0}, Lnd5;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
