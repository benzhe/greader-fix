.class public final Lo22;
.super Lq22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lq22<",
        "Ll61;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lsy0;

.field public final b:Lgi1;

.field public final c:Ln91$a;

.field public final d:Lyd1;


# direct methods
.method public constructor <init>(Lsy0;Lgi1;Ln91$a;Lyd1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lq22;-><init>()V

    .line 2
    iput-object p1, p0, Lo22;->a:Lsy0;

    .line 3
    iput-object p2, p0, Lo22;->b:Lgi1;

    .line 4
    iput-object p3, p0, Lo22;->c:Ln91$a;

    .line 5
    iput-object p4, p0, Lo22;->d:Lyd1;

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
            "Ll61;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo22;->a:Lsy0;

    .line 2
    invoke-virtual {v0}, Lsy0;->s()Lrz0;

    move-result-object v0

    iget-object v1, p0, Lo22;->c:Ln91$a;

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
    iput-object p1, v0, Lrz0;->b:Ln91;

    .line 8
    iget-object p1, p0, Lo22;->d:Lyd1;

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iput-object p1, v0, Lrz0;->a:Lyd1;

    .line 11
    iget-object p1, p0, Lo22;->b:Lgi1;

    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iput-object p1, v0, Lrz0;->c:Lgi1;

    .line 14
    new-instance p1, Li41;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Li41;-><init>(Landroid/view/ViewGroup;)V

    .line 15
    iput-object p1, v0, Lrz0;->d:Li41;

    .line 16
    invoke-virtual {v0}, Lrz0;->e()Lji1;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lji1;->c()Lh71;

    move-result-object p1

    invoke-virtual {p1}, Lh71;->b()Law2;

    move-result-object p1

    return-object p1
.end method
