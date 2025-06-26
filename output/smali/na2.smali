.class public final Lna2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqd2<",
        "Lka2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lzv2;

.field public final b:Lpq1;

.field public final c:Ljava/lang/String;

.field public final d:Lll2;


# direct methods
.method public constructor <init>(Lzv2;Lpq1;Lll2;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lna2;->a:Lzv2;

    .line 3
    iput-object p2, p0, Lna2;->b:Lpq1;

    .line 4
    iput-object p3, p0, Lna2;->d:Lll2;

    .line 5
    iput-object p4, p0, Lna2;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Law2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Law2<",
            "Lka2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lna2;->a:Lzv2;

    new-instance v1, Lma2;

    invoke-direct {v1, p0}, Lma2;-><init>(Lna2;)V

    invoke-interface {v0, v1}, Lzv2;->y(Ljava/util/concurrent/Callable;)Law2;

    move-result-object v0

    return-object v0
.end method
