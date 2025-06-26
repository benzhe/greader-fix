.class public final Lt22;
.super Lq22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lq22<",
        "Ldp1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lsy0;

.field public final b:Ln91$a;

.field public final c:Lyd1;


# direct methods
.method public constructor <init>(Lsy0;Ln91$a;Lyd1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lq22;-><init>()V

    .line 2
    iput-object p1, p0, Lt22;->a:Lsy0;

    .line 3
    iput-object p2, p0, Lt22;->b:Ln91$a;

    .line 4
    iput-object p3, p0, Lt22;->c:Lyd1;

    return-void
.end method


# virtual methods
.method public final c(Lll2;Landroid/os/Bundle;)Law2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll2;",
            "Landroid/os/Bundle;",
            ")",
            "Law2<",
            "Ldp1;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt22;->a:Lsy0;

    .line 2
    invoke-virtual {v0}, Lsy0;->t()Lp01;

    move-result-object v0

    iget-object v1, p0, Lt22;->b:Ln91$a;

    .line 3
    iput-object p1, v1, Ln91$a;->b:Lll2;

    .line 4
    iput-object p2, v1, Ln91$a;->c:Landroid/os/Bundle;

    .line 5
    invoke-virtual {v1}, Ln91$a;->a()Ln91;

    move-result-object p1

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iput-object p1, v0, Lp01;->b:Ln91;

    .line 8
    iget-object p1, p0, Lt22;->c:Lyd1;

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iput-object p1, v0, Lp01;->a:Lyd1;

    .line 11
    invoke-virtual {v0}, Lp01;->e()Lgp1;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lgp1;->d()Lh71;

    move-result-object p1

    invoke-virtual {p1}, Lh71;->b()Law2;

    move-result-object p1

    return-object p1
.end method
