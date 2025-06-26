.class public Ld37$a;
.super Ly27;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld37;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ly27;

.field public final b:Lb37;


# direct methods
.method public constructor <init>(Ly27;Lb37;Lc37;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ly27;-><init>()V

    .line 2
    iput-object p1, p0, Ld37$a;->a:Ly27;

    const-string p1, "interceptor"

    .line 3
    invoke-static {p2, p1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Ld37$a;->b:Lb37;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ld37$a;->a:Ly27;

    invoke-virtual {v0}, Ly27;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(Lj47;Lx27;)La37;
    .locals 2
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
            ")",
            "La37<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld37$a;->b:Lb37;

    iget-object v1, p0, Ld37$a;->a:Ly27;

    invoke-interface {v0, p1, p2, v1}, Lb37;->a(Lj47;Lx27;Ly27;)La37;

    move-result-object p1

    return-object p1
.end method
