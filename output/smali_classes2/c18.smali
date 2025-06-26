.class public final Lc18;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lj18;

.field public final b:Lo18;

.field public final c:Lel7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lel7<",
            "Lj18;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lk08;Lo18;Lel7;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk08;",
            "Lo18;",
            "Lel7<",
            "+",
            "Lj18;",
            ">;)V"
        }
    .end annotation

    const-string v0, "koin"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "scope"

    invoke-static {p2, p1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lc18;->b:Lo18;

    iput-object p3, p0, Lc18;->c:Lel7;

    if-eqz p3, :cond_0

    .line 2
    invoke-interface {p3}, Lel7;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj18;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lj18;

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3}, Lj18;-><init>(Ljava/util/List;I)V

    .line 4
    :goto_0
    iput-object p1, p0, Lc18;->a:Lj18;

    return-void
.end method
