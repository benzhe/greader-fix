.class public final Lb16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld16;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb16$b;
    }
.end annotation


# instance fields
.field public a:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lf06;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Landroid/view/LayoutInflater;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lj96;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lt06;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lv06;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lo06;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lr06;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lt16;Lb16$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Lu16;

    invoke-direct {p2, p1}, Lu16;-><init>(Lt16;)V

    .line 3
    sget-object v0, Lrz5;->c:Ljava/lang/Object;

    .line 4
    instance-of v0, p2, Lrz5;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lrz5;

    invoke-direct {v0, p2}, Lrz5;-><init>(Ljj7;)V

    move-object p2, v0

    .line 6
    :goto_0
    iput-object p2, p0, Lb16;->a:Ljj7;

    .line 7
    new-instance p2, Lw16;

    invoke-direct {p2, p1}, Lw16;-><init>(Lt16;)V

    .line 8
    instance-of v0, p2, Lrz5;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    new-instance v0, Lrz5;

    invoke-direct {v0, p2}, Lrz5;-><init>(Ljj7;)V

    move-object p2, v0

    .line 10
    :goto_1
    iput-object p2, p0, Lb16;->b:Ljj7;

    .line 11
    new-instance v0, Lv16;

    invoke-direct {v0, p1}, Lv16;-><init>(Lt16;)V

    .line 12
    iput-object v0, p0, Lb16;->c:Ljj7;

    .line 13
    iget-object p1, p0, Lb16;->a:Ljj7;

    .line 14
    new-instance v1, Lu06;

    invoke-direct {v1, p1, p2, v0}, Lu06;-><init>(Ljj7;Ljj7;Ljj7;)V

    .line 15
    instance-of p1, v1, Lrz5;

    if-eqz p1, :cond_2

    goto :goto_2

    .line 16
    :cond_2
    new-instance p1, Lrz5;

    invoke-direct {p1, v1}, Lrz5;-><init>(Ljj7;)V

    move-object v1, p1

    .line 17
    :goto_2
    iput-object v1, p0, Lb16;->d:Ljj7;

    .line 18
    iget-object p1, p0, Lb16;->a:Ljj7;

    iget-object p2, p0, Lb16;->b:Ljj7;

    iget-object v0, p0, Lb16;->c:Ljj7;

    .line 19
    new-instance v1, Lw06;

    invoke-direct {v1, p1, p2, v0}, Lw06;-><init>(Ljj7;Ljj7;Ljj7;)V

    .line 20
    instance-of p1, v1, Lrz5;

    if-eqz p1, :cond_3

    goto :goto_3

    .line 21
    :cond_3
    new-instance p1, Lrz5;

    invoke-direct {p1, v1}, Lrz5;-><init>(Ljj7;)V

    move-object v1, p1

    .line 22
    :goto_3
    iput-object v1, p0, Lb16;->e:Ljj7;

    .line 23
    iget-object p1, p0, Lb16;->a:Ljj7;

    iget-object p2, p0, Lb16;->b:Ljj7;

    iget-object v0, p0, Lb16;->c:Ljj7;

    .line 24
    new-instance v1, Lp06;

    invoke-direct {v1, p1, p2, v0}, Lp06;-><init>(Ljj7;Ljj7;Ljj7;)V

    .line 25
    instance-of p1, v1, Lrz5;

    if-eqz p1, :cond_4

    goto :goto_4

    .line 26
    :cond_4
    new-instance p1, Lrz5;

    invoke-direct {p1, v1}, Lrz5;-><init>(Ljj7;)V

    move-object v1, p1

    .line 27
    :goto_4
    iput-object v1, p0, Lb16;->f:Ljj7;

    .line 28
    iget-object p1, p0, Lb16;->a:Ljj7;

    iget-object p2, p0, Lb16;->b:Ljj7;

    iget-object v0, p0, Lb16;->c:Ljj7;

    .line 29
    new-instance v1, Ls06;

    invoke-direct {v1, p1, p2, v0}, Ls06;-><init>(Ljj7;Ljj7;Ljj7;)V

    .line 30
    instance-of p1, v1, Lrz5;

    if-eqz p1, :cond_5

    goto :goto_5

    .line 31
    :cond_5
    new-instance p1, Lrz5;

    invoke-direct {p1, v1}, Lrz5;-><init>(Ljj7;)V

    move-object v1, p1

    .line 32
    :goto_5
    iput-object v1, p0, Lb16;->g:Ljj7;

    return-void
.end method

.method public static a()Lb16$b;
    .locals 2

    .line 1
    new-instance v0, Lb16$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb16$b;-><init>(Lb16$a;)V

    return-object v0
.end method
