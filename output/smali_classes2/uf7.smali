.class public final Luf7;
.super Lhe7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luf7$a;
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


# direct methods
.method public constructor <init>(Lmb7;Lzb7;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb7<",
            "TT;>;",
            "Lzb7;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lhe7;-><init>(Lmb7;)V

    .line 2
    iput-object p2, p0, Luf7;->g:Lzb7;

    .line 3
    iput-boolean p3, p0, Luf7;->h:Z

    return-void
.end method


# virtual methods
.method public t(Lx38;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Luf7;->g:Lzb7;

    invoke-virtual {v0}, Lzb7;->a()Lzb7$b;

    move-result-object v0

    .line 2
    new-instance v1, Luf7$a;

    iget-object v2, p0, Lhe7;->f:Lmb7;

    iget-boolean v3, p0, Luf7;->h:Z

    invoke-direct {v1, p1, v0, v2, v3}, Luf7$a;-><init>(Lx38;Lzb7$b;Lw38;Z)V

    .line 3
    invoke-interface {p1, v1}, Lx38;->e(Ly38;)V

    .line 4
    invoke-virtual {v0, v1}, Lzb7$b;->b(Ljava/lang/Runnable;)Lic7;

    return-void
.end method
