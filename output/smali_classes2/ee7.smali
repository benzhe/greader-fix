.class public final Lee7;
.super Lhb7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lee7$a;
    }
.end annotation


# instance fields
.field public final a:Llb7;

.field public final b:Ltc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltc7<",
            "-",
            "Lic7;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ltc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltc7<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lqc7;

.field public final e:Lqc7;

.field public final f:Lqc7;

.field public final g:Lqc7;


# direct methods
.method public constructor <init>(Llb7;Ltc7;Ltc7;Lqc7;Lqc7;Lqc7;Lqc7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llb7;",
            "Ltc7<",
            "-",
            "Lic7;",
            ">;",
            "Ltc7<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lqc7;",
            "Lqc7;",
            "Lqc7;",
            "Lqc7;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lhb7;-><init>()V

    .line 2
    iput-object p1, p0, Lee7;->a:Llb7;

    .line 3
    iput-object p2, p0, Lee7;->b:Ltc7;

    .line 4
    iput-object p3, p0, Lee7;->c:Ltc7;

    .line 5
    iput-object p4, p0, Lee7;->d:Lqc7;

    .line 6
    iput-object p5, p0, Lee7;->e:Lqc7;

    .line 7
    iput-object p6, p0, Lee7;->f:Lqc7;

    .line 8
    iput-object p7, p0, Lee7;->g:Lqc7;

    return-void
.end method


# virtual methods
.method public i(Ljb7;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lee7;->a:Llb7;

    new-instance v1, Lee7$a;

    invoke-direct {v1, p0, p1}, Lee7$a;-><init>(Lee7;Ljb7;)V

    invoke-interface {v0, v1}, Llb7;->a(Ljb7;)V

    return-void
.end method
