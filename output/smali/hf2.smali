.class public final Lhf2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqd2<",
        "Lif2;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lm40;

.field public b:Lzv2;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lm40;Lzv2;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm40;",
            "Lzv2;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lhf2;->a:Lm40;

    .line 3
    iput-object p2, p0, Lhf2;->b:Lzv2;

    .line 4
    iput-object p3, p0, Lhf2;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Law2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Law2<",
            "Lif2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhf2;->b:Lzv2;

    new-instance v1, Lkf2;

    invoke-direct {v1, p0}, Lkf2;-><init>(Lhf2;)V

    invoke-interface {v0, v1}, Lzv2;->y(Ljava/util/concurrent/Callable;)Law2;

    move-result-object v0

    return-object v0
.end method
