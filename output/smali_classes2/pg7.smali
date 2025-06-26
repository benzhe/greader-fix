.class public final Lpg7;
.super Lyf7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpg7$a;,
        Lpg7$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lyf7<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final f:Lzb7;


# direct methods
.method public constructor <init>(Lvb7;Lzb7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvb7<",
            "TT;>;",
            "Lzb7;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lyf7;-><init>(Lvb7;)V

    .line 2
    iput-object p2, p0, Lpg7;->f:Lzb7;

    return-void
.end method


# virtual methods
.method public m(Ltb7;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltb7<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lpg7$a;

    invoke-direct {v0, p1}, Lpg7$a;-><init>(Ltb7;)V

    .line 2
    invoke-interface {p1, v0}, Ltb7;->c(Lic7;)V

    .line 3
    iget-object p1, v0, Lpg7$a;->e:Lcd7;

    iget-object v1, p0, Lpg7;->f:Lzb7;

    new-instance v2, Lpg7$b;

    iget-object v3, p0, Lyf7;->e:Lvb7;

    invoke-direct {v2, v0, v3}, Lpg7$b;-><init>(Ltb7;Lvb7;)V

    invoke-virtual {v1, v2}, Lzb7;->b(Ljava/lang/Runnable;)Lic7;

    move-result-object v0

    .line 4
    invoke-static {p1, v0}, Lyc7;->t(Ljava/util/concurrent/atomic/AtomicReference;Lic7;)Z

    return-void
.end method
