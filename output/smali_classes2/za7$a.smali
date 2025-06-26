.class public final Lza7$a;
.super Ls37$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lza7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Ls37$a<",
        "TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lza7;


# direct methods
.method public constructor <init>(Lza7;La37;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La37<",
            "TReqT;TRespT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lza7$a;->b:Lza7;

    .line 2
    invoke-direct {p0, p2}, Ls37$a;-><init>(La37;)V

    return-void
.end method


# virtual methods
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
    iget-object v0, p0, Lza7$a;->b:Lza7;

    .line 2
    iget-object v0, v0, Lza7;->a:Li47;

    .line 3
    invoke-virtual {p2, v0}, Li47;->f(Li47;)V

    .line 4
    invoke-super {p0, p1, p2}, Ls37;->e(La37$a;Li47;)V

    return-void
.end method
