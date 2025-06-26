.class public final Lff7;
.super Lhe7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lff7$a;
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


# direct methods
.method public constructor <init>(Lmb7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb7<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lhe7;-><init>(Lmb7;)V

    return-void
.end method


# virtual methods
.method public t(Lx38;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhe7;->f:Lmb7;

    new-instance v1, Lff7$a;

    invoke-direct {v1, p1}, Lff7$a;-><init>(Lx38;)V

    invoke-virtual {v0, v1}, Lmb7;->s(Lpb7;)V

    return-void
.end method
