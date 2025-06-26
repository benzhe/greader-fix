.class public Lk56;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lpc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpc7<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lpc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpc7<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lo26;

.field public final d:Lz86;

.field public final e:Lh26;

.field public final f:Lm66;

.field public final g:Ly36;

.field public final h:Lk66;

.field public final i:Lo96;

.field public final j:Lg26;

.field public final k:Lq66;

.field public final l:Lf26;

.field public final m:Lz96;

.field public final n:Lr26;


# direct methods
.method public constructor <init>(Lpc7;Lpc7;Lo26;Lz86;Lh26;Lg26;Lm66;Ly36;Lk66;Lo96;Lq66;Lz96;Lr26;Lf26;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpc7<",
            "Ljava/lang/String;",
            ">;",
            "Lpc7<",
            "Ljava/lang/String;",
            ">;",
            "Lo26;",
            "Lz86;",
            "Lh26;",
            "Lg26;",
            "Lm66;",
            "Ly36;",
            "Lk66;",
            "Lo96;",
            "Lq66;",
            "Lz96;",
            "Lr26;",
            "Lf26;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk56;->a:Lpc7;

    .line 3
    iput-object p2, p0, Lk56;->b:Lpc7;

    .line 4
    iput-object p3, p0, Lk56;->c:Lo26;

    .line 5
    iput-object p4, p0, Lk56;->d:Lz86;

    .line 6
    iput-object p5, p0, Lk56;->e:Lh26;

    .line 7
    iput-object p6, p0, Lk56;->j:Lg26;

    .line 8
    iput-object p7, p0, Lk56;->f:Lm66;

    .line 9
    iput-object p8, p0, Lk56;->g:Ly36;

    .line 10
    iput-object p9, p0, Lk56;->h:Lk66;

    .line 11
    iput-object p10, p0, Lk56;->i:Lo96;

    .line 12
    iput-object p11, p0, Lk56;->k:Lq66;

    .line 13
    iput-object p13, p0, Lk56;->n:Lr26;

    .line 14
    iput-object p12, p0, Lk56;->m:Lz96;

    .line 15
    iput-object p14, p0, Lk56;->l:Lf26;

    return-void
.end method

.method public static a()Lqg6;
    .locals 4

    .line 1
    invoke-static {}, Lqg6;->G()Lqg6$b;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lgj6$a;->o()V

    .line 3
    iget-object v1, v0, Lgj6$a;->f:Lgj6;

    check-cast v1, Lqg6;

    const-wide/16 v2, 0x1

    invoke-static {v1, v2, v3}, Lqg6;->C(Lqg6;J)V

    .line 4
    invoke-virtual {v0}, Lgj6$a;->l()Lgj6;

    move-result-object v0

    check-cast v0, Lqg6;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "ON_FOREGROUND"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
