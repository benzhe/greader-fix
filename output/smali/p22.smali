.class public final Lp22;
.super Lq22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lq22<",
        "Lj41;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lsy0;

.field public final b:Ln91$a;

.field public final c:Lx42;

.field public final d:Lyd1;

.field public final e:Lgi1;

.field public final f:Lkc1;

.field public final g:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lsy0;Ln91$a;Lx42;Lyd1;Lgi1;Lkc1;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lq22;-><init>()V

    .line 2
    iput-object p1, p0, Lp22;->a:Lsy0;

    .line 3
    iput-object p2, p0, Lp22;->b:Ln91$a;

    .line 4
    iput-object p3, p0, Lp22;->c:Lx42;

    .line 5
    iput-object p4, p0, Lp22;->d:Lyd1;

    .line 6
    iput-object p5, p0, Lp22;->e:Lgi1;

    .line 7
    iput-object p6, p0, Lp22;->f:Lkc1;

    .line 8
    iput-object p7, p0, Lp22;->g:Landroid/view/ViewGroup;

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
            "Lj41;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp22;->a:Lsy0;

    .line 2
    invoke-virtual {v0}, Lsy0;->l()Lc01;

    move-result-object v0

    iget-object v1, p0, Lp22;->b:Ln91$a;

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
    iput-object p1, v0, Lc01;->b:Ln91;

    .line 8
    iget-object p1, p0, Lp22;->d:Lyd1;

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iput-object p1, v0, Lc01;->a:Lyd1;

    .line 11
    iget-object p1, p0, Lp22;->c:Lx42;

    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iput-object p1, v0, Lc01;->c:Lx42;

    .line 14
    iget-object p1, p0, Lp22;->e:Lgi1;

    .line 15
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iput-object p1, v0, Lc01;->f:Lgi1;

    .line 17
    new-instance p1, Lc61;

    iget-object p2, p0, Lp22;->f:Lkc1;

    invoke-direct {p1, p2}, Lc61;-><init>(Lkc1;)V

    .line 18
    iput-object p1, v0, Lc01;->d:Lc61;

    .line 19
    new-instance p1, Li41;

    iget-object p2, p0, Lp22;->g:Landroid/view/ViewGroup;

    invoke-direct {p1, p2}, Li41;-><init>(Landroid/view/ViewGroup;)V

    .line 20
    iput-object p1, v0, Lc01;->e:Li41;

    .line 21
    invoke-virtual {v0}, Lc01;->e()Lg51;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lg51;->c()Lh71;

    move-result-object p1

    invoke-virtual {p1}, Lh71;->b()Law2;

    move-result-object p1

    return-object p1
.end method
