.class public final Lwe7;
.super Lmb7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwe7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmb7<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final f:Lwb7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwb7<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lwb7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwb7<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lmb7;-><init>()V

    .line 2
    iput-object p1, p0, Lwe7;->f:Lwb7;

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
    iget-object v0, p0, Lwe7;->f:Lwb7;

    new-instance v1, Lwe7$a;

    invoke-direct {v1, p1}, Lwe7$a;-><init>(Lx38;)V

    invoke-virtual {v0, v1}, Lwb7;->e(Lyb7;)V

    return-void
.end method
