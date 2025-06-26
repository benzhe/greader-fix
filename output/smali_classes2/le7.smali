.class public final Lle7;
.super Lhe7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lle7$a;
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
.field public final g:J

.field public final h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final i:Z


# direct methods
.method public constructor <init>(Lmb7;JLjava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb7<",
            "TT;>;JTT;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lhe7;-><init>(Lmb7;)V

    .line 2
    iput-wide p2, p0, Lle7;->g:J

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lle7;->h:Ljava/lang/Object;

    .line 4
    iput-boolean p5, p0, Lle7;->i:Z

    return-void
.end method


# virtual methods
.method public t(Lx38;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhe7;->f:Lmb7;

    new-instance v7, Lle7$a;

    iget-wide v3, p0, Lle7;->g:J

    iget-object v5, p0, Lle7;->h:Ljava/lang/Object;

    iget-boolean v6, p0, Lle7;->i:Z

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lle7$a;-><init>(Lx38;JLjava/lang/Object;Z)V

    invoke-virtual {v0, v7}, Lmb7;->s(Lpb7;)V

    return-void
.end method
