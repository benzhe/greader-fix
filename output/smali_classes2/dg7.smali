.class public final Ldg7;
.super Lrb7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldg7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrb7<",
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

.field public final f:Lvc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvc7<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lec7;Lvc7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lec7<",
            "TT;>;",
            "Lvc7<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lrb7;-><init>()V

    .line 2
    iput-object p1, p0, Ldg7;->e:Lec7;

    .line 3
    iput-object p2, p0, Ldg7;->f:Lvc7;

    return-void
.end method


# virtual methods
.method public m(Ltb7;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltb7<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldg7;->e:Lec7;

    new-instance v1, Ldg7$a;

    iget-object v2, p0, Ldg7;->f:Lvc7;

    invoke-direct {v1, p1, v2}, Ldg7$a;-><init>(Ltb7;Lvc7;)V

    invoke-interface {v0, v1}, Lec7;->a(Lcc7;)V

    return-void
.end method
