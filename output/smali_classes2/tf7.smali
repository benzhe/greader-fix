.class public final Ltf7;
.super Lac7;
.source "SourceFile"

# interfaces
.implements Lgd7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltf7$a;
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


# direct methods
.method public constructor <init>(Lmb7;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb7<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lac7;-><init>()V

    .line 2
    iput-object p1, p0, Ltf7;->e:Lmb7;

    return-void
.end method


# virtual methods
.method public c()Lmb7;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmb7<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrf7;

    iget-object v1, p0, Ltf7;->e:Lmb7;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lrf7;-><init>(Lmb7;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public g(Lcc7;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcc7<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ltf7;->e:Lmb7;

    new-instance v1, Ltf7$a;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Ltf7$a;-><init>(Lcc7;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lmb7;->s(Lpb7;)V

    return-void
.end method
