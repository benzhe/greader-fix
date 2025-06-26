.class public abstract Ls37$a;
.super Ls37;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls37;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Ls37<",
        "TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field public final a:La37;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La37<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La37;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La37<",
            "TReqT;TRespT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ls37;-><init>()V

    .line 2
    iput-object p1, p0, Ls37$a;->a:La37;

    return-void
.end method


# virtual methods
.method public f()La37;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La37<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls37$a;->a:La37;

    return-object v0
.end method
