.class public final Lqb2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqd2<",
        "Lnb2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lzv2;

.field public final b:Lqk2;


# direct methods
.method public constructor <init>(Lzv2;Lqk2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lqb2;->a:Lzv2;

    .line 3
    iput-object p2, p0, Lqb2;->b:Lqk2;

    return-void
.end method


# virtual methods
.method public final a()Law2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Law2<",
            "Lnb2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lqb2;->a:Lzv2;

    new-instance v1, Lpb2;

    invoke-direct {v1, p0}, Lpb2;-><init>(Lqb2;)V

    invoke-interface {v0, v1}, Lzv2;->y(Ljava/util/concurrent/Callable;)Law2;

    move-result-object v0

    return-object v0
.end method
