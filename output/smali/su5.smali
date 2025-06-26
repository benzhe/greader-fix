.class public final Lsu5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lru5;

.field public final b:Lju5;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltu5;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lqi6;

.field public final e:Ljn5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljn5<",
            "Lbu5;",
            "Lju5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lru5;Lju5;Ljava/util/List;Lqi6;Ljn5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru5;",
            "Lju5;",
            "Ljava/util/List<",
            "Ltu5;",
            ">;",
            "Lqi6;",
            "Ljn5<",
            "Lbu5;",
            "Lju5;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lsu5;->a:Lru5;

    .line 3
    iput-object p2, p0, Lsu5;->b:Lju5;

    .line 4
    iput-object p3, p0, Lsu5;->c:Ljava/util/List;

    .line 5
    iput-object p4, p0, Lsu5;->d:Lqi6;

    .line 6
    iput-object p5, p0, Lsu5;->e:Ljn5;

    return-void
.end method
