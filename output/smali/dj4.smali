.class public final Ldj4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfj4$b;


# static fields
.field public static final b:Lsf5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsf5<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lbj4;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, Lfj4$b;

    .line 2
    invoke-static {v0}, Lsf5;->a(Ljava/lang/Class;)Lsf5$b;

    move-result-object v0

    const-class v1, Lbj4;

    .line 3
    new-instance v2, Lig5;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 4
    invoke-virtual {v0, v2}, Lsf5$b;->a(Lig5;)Lsf5$b;

    sget-object v1, Lcj4;->a:Lwf5;

    .line 5
    invoke-virtual {v0, v1}, Lsf5$b;->d(Lwf5;)Lsf5$b;

    .line 6
    invoke-virtual {v0}, Lsf5$b;->b()Lsf5;

    move-result-object v0

    sput-object v0, Ldj4;->b:Lsf5;

    return-void
.end method

.method public constructor <init>(Lbj4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldj4;->a:Lbj4;

    return-void
.end method


# virtual methods
.method public final a(Lgp4;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ldj4;->a:Lbj4;

    .line 2
    invoke-static {p1}, Lgp4;->p(Lgp4;)Lgp4$a;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lgp4;->q()Llq4;

    move-result-object p1

    invoke-static {p1}, Llq4;->p(Llq4;)Llq4$a;

    move-result-object p1

    .line 4
    iget-boolean v2, p1, Lpk4$b;->g:Z

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p1}, Lpk4$b;->f()V

    const/4 v2, 0x0

    .line 6
    iput-boolean v2, p1, Lpk4$b;->g:Z

    .line 7
    :cond_0
    iget-object v2, p1, Lpk4$b;->f:Lpk4;

    check-cast v2, Llq4;

    invoke-static {v2}, Llq4;->s(Llq4;)V

    .line 8
    invoke-virtual {v1, p1}, Lgp4$a;->l(Llq4$a;)Lgp4$a;

    .line 9
    invoke-virtual {v1}, Lpk4$b;->j()Lam4;

    move-result-object p1

    check-cast p1, Lpk4;

    check-cast p1, Lgp4;

    .line 10
    invoke-virtual {v0, p1}, Lbj4;->a(Lgp4;)V

    return-void
.end method
