.class public final Luu2;
.super Lvu2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lvu2<",
        "TI;TO;",
        "Lcv2<",
        "-TI;+TO;>;",
        "Law2<",
        "+TO;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Law2;Lcv2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Law2<",
            "+TI;>;",
            "Lcv2<",
            "-TI;+TO;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lvu2;-><init>(Law2;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final synthetic B(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Law2;

    .line 2
    invoke-virtual {p0, p1}, Lsu2;->k(Law2;)Z

    return-void
.end method

.method public final synthetic C(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcv2;

    .line 2
    invoke-interface {p1, p2}, Lcv2;->a(Ljava/lang/Object;)Law2;

    move-result-object p2

    const-string v0, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    .line 3
    invoke-static {p2, v0, p1}, Lc50;->G1(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method
