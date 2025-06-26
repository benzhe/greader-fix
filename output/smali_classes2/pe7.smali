.class public final Lpe7;
.super Lhe7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpe7$a;,
        Lpe7$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lhe7<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final g:Lvc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvc7<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmb7;Lvc7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb7<",
            "TT;>;",
            "Lvc7<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lhe7;-><init>(Lmb7;)V

    .line 2
    iput-object p2, p0, Lpe7;->g:Lvc7;

    return-void
.end method


# virtual methods
.method public t(Lx38;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lfd7;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lhe7;->f:Lmb7;

    new-instance v1, Lpe7$a;

    check-cast p1, Lfd7;

    iget-object v2, p0, Lpe7;->g:Lvc7;

    invoke-direct {v1, p1, v2}, Lpe7$a;-><init>(Lfd7;Lvc7;)V

    invoke-virtual {v0, v1}, Lmb7;->s(Lpb7;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lhe7;->f:Lmb7;

    new-instance v1, Lpe7$b;

    iget-object v2, p0, Lpe7;->g:Lvc7;

    invoke-direct {v1, p1, v2}, Lpe7$b;-><init>(Lx38;Lvc7;)V

    invoke-virtual {v0, v1}, Lmb7;->s(Lpb7;)V

    :goto_0
    return-void
.end method
