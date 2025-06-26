.class public final Lrf7;
.super Lhe7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrf7$a;
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
.field public final g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final h:Z


# direct methods
.method public constructor <init>(Lmb7;Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb7<",
            "TT;>;TT;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lhe7;-><init>(Lmb7;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lrf7;->g:Ljava/lang/Object;

    .line 3
    iput-boolean p3, p0, Lrf7;->h:Z

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
    iget-object v0, p0, Lhe7;->f:Lmb7;

    new-instance v1, Lrf7$a;

    iget-object v2, p0, Lrf7;->g:Ljava/lang/Object;

    iget-boolean v3, p0, Lrf7;->h:Z

    invoke-direct {v1, p1, v2, v3}, Lrf7$a;-><init>(Lx38;Ljava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Lmb7;->s(Lpb7;)V

    return-void
.end method
