.class public final Lde7;
.super Lhb7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde7$a;
    }
.end annotation


# instance fields
.field public final a:Llb7;

.field public final b:Lvc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvc7<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llb7;Lvc7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llb7;",
            "Lvc7<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lhb7;-><init>()V

    .line 2
    iput-object p1, p0, Lde7;->a:Llb7;

    .line 3
    iput-object p2, p0, Lde7;->b:Lvc7;

    return-void
.end method


# virtual methods
.method public i(Ljb7;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lde7;->a:Llb7;

    new-instance v1, Lde7$a;

    invoke-direct {v1, p0, p1}, Lde7$a;-><init>(Lde7;Ljb7;)V

    invoke-interface {v0, v1}, Llb7;->a(Ljb7;)V

    return-void
.end method
