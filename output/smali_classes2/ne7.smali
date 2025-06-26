.class public final Lne7;
.super Lac7;
.source "SourceFile"

# interfaces
.implements Lgd7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lne7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lac7<",
        "TT;>;",
        "Lgd7<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Lmb7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb7<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final f:J


# direct methods
.method public constructor <init>(Lmb7;JLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb7<",
            "TT;>;JTT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lac7;-><init>()V

    .line 2
    iput-object p1, p0, Lne7;->e:Lmb7;

    .line 3
    iput-wide p2, p0, Lne7;->f:J

    return-void
.end method


# virtual methods
.method public c()Lmb7;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmb7<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lle7;

    iget-object v1, p0, Lne7;->e:Lmb7;

    iget-wide v2, p0, Lne7;->f:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lle7;-><init>(Lmb7;JLjava/lang/Object;Z)V

    return-object v6
.end method

.method public g(Lcc7;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcc7<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lne7;->e:Lmb7;

    new-instance v1, Lne7$a;

    iget-wide v2, p0, Lne7;->f:J

    const/4 v4, 0x0

    invoke-direct {v1, p1, v2, v3, v4}, Lne7$a;-><init>(Lcc7;JLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lmb7;->s(Lpb7;)V

    return-void
.end method
