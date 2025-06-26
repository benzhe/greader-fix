.class public Lqq5;
.super Leq5;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbu5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Leu5;Lbd6;)V
    .locals 1

    .line 1
    sget-object v0, Lfq5$a;->o:Lfq5$a;

    invoke-direct {p0, p1, v0, p2}, Leq5;-><init>(Leu5;Lfq5$a;Lbd6;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lqq5;->d:Ljava/util/List;

    .line 3
    invoke-static {v0, p2}, Lpq5;->e(Lfq5$a;Lbd6;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public b(Lyt5;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lqq5;->d:Ljava/util/List;

    .line 2
    iget-object p1, p1, Lfu5;->a:Lbu5;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
