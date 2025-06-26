.class public final Lru2;
.super Lpu2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Throwable;",
        ">",
        "Lpu2<",
        "TV;TX;",
        "Lcv2<",
        "-TX;+TV;>;",
        "Law2<",
        "+TV;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Law2;Ljava/lang/Class;Lcv2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Law2<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcv2<",
            "-TX;+TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lpu2;-><init>(Law2;Ljava/lang/Class;Ljava/lang/Object;)V

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

.method public final synthetic C(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
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
