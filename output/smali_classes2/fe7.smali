.class public final Lfe7;
.super Lhb7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfe7$a;
    }
.end annotation


# instance fields
.field public final a:Llb7;

.field public final b:Luc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luc7<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Llb7;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llb7;Luc7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llb7;",
            "Luc7<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Llb7;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lhb7;-><init>()V

    .line 2
    iput-object p1, p0, Lfe7;->a:Llb7;

    .line 3
    iput-object p2, p0, Lfe7;->b:Luc7;

    return-void
.end method


# virtual methods
.method public i(Ljb7;)V
    .locals 2

    .line 1
    new-instance v0, Lfe7$a;

    iget-object v1, p0, Lfe7;->b:Luc7;

    invoke-direct {v0, p1, v1}, Lfe7$a;-><init>(Ljb7;Luc7;)V

    .line 2
    invoke-interface {p1, v0}, Ljb7;->c(Lic7;)V

    .line 3
    iget-object p1, p0, Lfe7;->a:Llb7;

    invoke-interface {p1, v0}, Llb7;->a(Ljb7;)V

    return-void
.end method
