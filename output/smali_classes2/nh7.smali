.class public final Lnh7;
.super Lac7;
.source "SourceFile"


# annotations
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
.field public final e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lac7;-><init>()V

    .line 2
    iput-object p1, p0, Lnh7;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public g(Lcc7;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcc7<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lzc7;->e:Lzc7;

    invoke-interface {p1, v0}, Lcc7;->c(Lic7;)V

    .line 2
    iget-object v0, p0, Lnh7;->e:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcc7;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
