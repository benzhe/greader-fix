.class public final Lza7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb37;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lza7$a;
    }
.end annotation


# instance fields
.field public final a:Li47;


# direct methods
.method public constructor <init>(Li47;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "extraHeaders"

    .line 2
    invoke-static {p1, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Li47;

    iput-object p1, p0, Lza7;->a:Li47;

    return-void
.end method


# virtual methods
.method public a(Lj47;Lx27;Ly27;)La37;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lj47<",
            "TReqT;TRespT;>;",
            "Lx27;",
            "Ly27;",
            ")",
            "La37<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lza7$a;

    invoke-virtual {p3, p1, p2}, Ly27;->h(Lj47;Lx27;)La37;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lza7$a;-><init>(Lza7;La37;)V

    return-object v0
.end method
