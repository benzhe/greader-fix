.class public final Ljg7;
.super Lac7;
.source "SourceFile"

# interfaces
.implements Lhd7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljg7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lac7<",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object<",
        "TT;>;",
        "Lhd7<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Lvb7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvb7<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lvb7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvb7<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lac7;-><init>()V

    .line 2
    iput-object p1, p0, Ljg7;->e:Lvb7;

    return-void
.end method


# virtual methods
.method public b()Lrb7;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrb7<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lig7;

    iget-object v1, p0, Ljg7;->e:Lvb7;

    invoke-direct {v0, v1}, Lig7;-><init>(Lvb7;)V

    return-object v0
.end method

.method public g(Lcc7;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcc7<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljg7;->e:Lvb7;

    new-instance v1, Ljg7$a;

    invoke-direct {v1, p1}, Ljg7$a;-><init>(Lcc7;)V

    invoke-interface {v0, v1}, Lvb7;->a(Ltb7;)V

    return-void
.end method
