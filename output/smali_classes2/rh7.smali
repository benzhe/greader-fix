.class public final Lrh7;
.super Lac7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrh7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lac7<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Lec7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lec7<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final f:Lzb7;


# direct methods
.method public constructor <init>(Lec7;Lzb7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lec7<",
            "+TT;>;",
            "Lzb7;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lac7;-><init>()V

    .line 2
    iput-object p1, p0, Lrh7;->e:Lec7;

    .line 3
    iput-object p2, p0, Lrh7;->f:Lzb7;

    return-void
.end method


# virtual methods
.method public g(Lcc7;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcc7<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lrh7$a;

    iget-object v1, p0, Lrh7;->e:Lec7;

    invoke-direct {v0, p1, v1}, Lrh7$a;-><init>(Lcc7;Lec7;)V

    .line 2
    invoke-interface {p1, v0}, Lcc7;->c(Lic7;)V

    .line 3
    iget-object p1, p0, Lrh7;->f:Lzb7;

    invoke-virtual {p1, v0}, Lzb7;->b(Ljava/lang/Runnable;)Lic7;

    move-result-object p1

    .line 4
    iget-object v0, v0, Lrh7$a;->f:Lcd7;

    .line 5
    invoke-static {v0, p1}, Lyc7;->t(Ljava/util/concurrent/atomic/AtomicReference;Lic7;)Z

    return-void
.end method
