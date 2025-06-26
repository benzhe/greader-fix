.class public abstract Lok7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrk7$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B::",
        "Lrk7$a;",
        "E::TB;>",
        "Ljava/lang/Object;",
        "Lrk7$b<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final a:Lrk7$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrk7$b<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Lpl7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpl7<",
            "Lrk7$a;",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrk7$b;Lpl7;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrk7$b<",
            "TB;>;",
            "Lpl7<",
            "-",
            "Lrk7$a;",
            "+TE;>;)V"
        }
    .end annotation

    const-string v0, "baseKey"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeCast"

    invoke-static {p2, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lok7;->b:Lpl7;

    .line 2
    instance-of p2, p1, Lok7;

    if-eqz p2, :cond_0

    check-cast p1, Lok7;

    iget-object p1, p1, Lok7;->a:Lrk7$b;

    :cond_0
    iput-object p1, p0, Lok7;->a:Lrk7$b;

    return-void
.end method
