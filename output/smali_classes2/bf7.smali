.class public final Lbf7;
.super Lhe7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbf7$b;,
        Lbf7$c;,
        Lbf7$a;
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
.field public final g:Lzb7;

.field public final h:Z

.field public final i:I


# direct methods
.method public constructor <init>(Lmb7;Lzb7;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb7<",
            "TT;>;",
            "Lzb7;",
            "ZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lhe7;-><init>(Lmb7;)V

    .line 2
    iput-object p2, p0, Lbf7;->g:Lzb7;

    .line 3
    iput-boolean p3, p0, Lbf7;->h:Z

    .line 4
    iput p4, p0, Lbf7;->i:I

    return-void
.end method


# virtual methods
.method public t(Lx38;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lbf7;->g:Lzb7;

    invoke-virtual {v0}, Lzb7;->a()Lzb7$b;

    move-result-object v0

    .line 2
    instance-of v1, p1, Lfd7;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lhe7;->f:Lmb7;

    new-instance v2, Lbf7$b;

    check-cast p1, Lfd7;

    iget-boolean v3, p0, Lbf7;->h:Z

    iget v4, p0, Lbf7;->i:I

    invoke-direct {v2, p1, v0, v3, v4}, Lbf7$b;-><init>(Lfd7;Lzb7$b;ZI)V

    invoke-virtual {v1, v2}, Lmb7;->s(Lpb7;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lhe7;->f:Lmb7;

    new-instance v2, Lbf7$c;

    iget-boolean v3, p0, Lbf7;->h:Z

    iget v4, p0, Lbf7;->i:I

    invoke-direct {v2, p1, v0, v3, v4}, Lbf7$c;-><init>(Lx38;Lzb7$b;ZI)V

    invoke-virtual {v1, v2}, Lmb7;->s(Lpb7;)V

    :goto_0
    return-void
.end method
