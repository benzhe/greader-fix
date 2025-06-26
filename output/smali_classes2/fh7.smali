.class public final Lfh7;
.super Lac7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfh7$a;
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
            "TT;>;"
        }
    .end annotation
.end field

.field public final f:Ltc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltc7<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lec7;Ltc7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lec7<",
            "TT;>;",
            "Ltc7<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lac7;-><init>()V

    .line 2
    iput-object p1, p0, Lfh7;->e:Lec7;

    .line 3
    iput-object p2, p0, Lfh7;->f:Ltc7;

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
    iget-object v0, p0, Lfh7;->e:Lec7;

    new-instance v1, Lfh7$a;

    invoke-direct {v1, p0, p1}, Lfh7$a;-><init>(Lfh7;Lcc7;)V

    invoke-interface {v0, v1}, Lec7;->a(Lcc7;)V

    return-void
.end method
