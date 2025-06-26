.class public final Lk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyq7;

.field public static final b:Ltl7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltl7<",
            "Ljava/lang/Object;",
            "Lrk7$a;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ltl7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltl7<",
            "Lhq7<",
            "*>;",
            "Lrk7$a;",
            "Lhq7<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final d:Ltl7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltl7<",
            "Lcr7;",
            "Lrk7$a;",
            "Lcr7;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ltl7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltl7<",
            "Lcr7;",
            "Lrk7$a;",
            "Lcr7;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lyq7;

    const-string v1, "ZERO"

    invoke-direct {v0, v1}, Lyq7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lk;->a:Lyq7;

    .line 2
    sget-object v0, Lk$b;->e:Lk$b;

    sput-object v0, Lk;->b:Ltl7;

    .line 3
    sget-object v0, Lk$c;->e:Lk$c;

    sput-object v0, Lk;->c:Ltl7;

    .line 4
    sget-object v0, Lk$a;->g:Lk$a;

    sput-object v0, Lk;->d:Ltl7;

    .line 5
    sget-object v0, Lk$a;->f:Lk$a;

    sput-object v0, Lk;->e:Ltl7;

    return-void
.end method

.method public static final a(Lrk7;Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget-object v0, Lk;->a:Lyq7;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v0, p1, Lcr7;

    if-eqz v0, :cond_1

    .line 3
    move-object v0, p1

    check-cast v0, Lcr7;

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lcr7;->b:I

    .line 5
    sget-object v0, Lk;->e:Ltl7;

    invoke-interface {p0, p1, v0}, Lrk7;->m(Ljava/lang/Object;Ltl7;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    sget-object v1, Lk;->c:Ltl7;

    invoke-interface {p0, v0, v1}, Lrk7;->m(Ljava/lang/Object;Ltl7;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lhq7;

    .line 7
    invoke-interface {v0, p0, p1}, Lhq7;->k(Lrk7;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final b(Lrk7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lk;->b:Ltl7;

    invoke-interface {p0, v0, p1}, Lrk7;->m(Ljava/lang/Object;Ltl7;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lim7;->c(Ljava/lang/Object;)V

    :goto_0
    if-ne p1, v0, :cond_1

    .line 2
    sget-object p0, Lk;->a:Lyq7;

    goto :goto_1

    .line 3
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 4
    new-instance v0, Lcr7;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, Lcr7;-><init>(Lrk7;I)V

    sget-object p1, Lk;->d:Ltl7;

    invoke-interface {p0, v0, p1}, Lrk7;->m(Ljava/lang/Object;Ltl7;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 5
    :cond_2
    check-cast p1, Lhq7;

    .line 6
    invoke-interface {p1, p0}, Lhq7;->q(Lrk7;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0
.end method
