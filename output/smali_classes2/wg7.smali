.class public final Lwg7;
.super Lac7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwg7$a;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Lxb7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxb7<",
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
.method public constructor <init>(Lxb7;Lvc7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxb7<",
            "TT;>;",
            "Lvc7<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lac7;-><init>()V

    .line 2
    iput-object p1, p0, Lwg7;->e:Lxb7;

    .line 3
    iput-object p2, p0, Lwg7;->f:Lvc7;

    return-void
.end method


# virtual methods
.method public g(Lcc7;)V
    .locals 3
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
    iget-object v0, p0, Lwg7;->e:Lxb7;

    new-instance v1, Lwg7$a;

    iget-object v2, p0, Lwg7;->f:Lvc7;

    invoke-direct {v1, p1, v2}, Lwg7$a;-><init>(Lcc7;Lvc7;)V

    invoke-interface {v0, v1}, Lxb7;->e(Lyb7;)V

    return-void
.end method
